import fetch from "node-fetch";
import _fs, { promises as fs } from "fs";
import https from "https";
import readline from "readline";


// yoinked from cravatar
const skin_type = function (uuid: string) {
    if (uuid.length <= 16) {
        // we can't get the skin type by username
        return "steve";
    } else {
        // great thanks to Minecrell for research into Minecraft and Java's UUID hashing!
        // https://git.io/xJpV
        // MC uses `uuid.hashCode() & 1` for alex
        // that can be compacted to counting the LSBs of every 4th byte in the UUID
        // an odd sum means alex, an even sum means steve
        // XOR-ing all the LSBs gives us 1 for alex and 0 for steve
        const lsbs_even = parseInt(uuid[7], 16) ^
            parseInt(uuid[15], 16) ^
            parseInt(uuid[23], 16) ^
            parseInt(uuid[31], 16);
        return lsbs_even ? "alex" : "steve";
    }
};

async function init() {

    const rl = readline.createInterface({
        input: process.stdin,
        output: process.stdout
    });

    const ask = (query: string): Promise<string> => new Promise((resolve) => rl.question(query, resolve));

    const username = (await ask("> What is your username? ")).toLowerCase();
    rl.close();

    // const username = "razboy20";
    const uuid = (await (await fetch("https://api.mojang.com/users/profiles/minecraft/" + username)).json()).id;
    console.log(`${username} -> ${uuid}`);

    const encoded_skin_url = (await (await fetch("https://sessionserver.mojang.com/session/minecraft/profile/" + uuid)).json()).properties[0].value;

    const skin_url = "https://textures.minecraft.net" + new URL(JSON.parse(Buffer.from(encoded_skin_url, "base64").toString("utf8")).textures.SKIN.url).pathname;
    //console.log(skin_url);

    https.get(skin_url, async (res) => {
        // Image will be stored at this path
        const path = `../assets/player_models/textures/skins/${username.toLowerCase()}.png`;
        console.log(`Skin downloading to ${path}`);
        const skin_path = _fs.createWriteStream(path);
        res.pipe(skin_path);
        skin_path.on("finish", async () => {
            skin_path.close();
            console.log("Download Completed.");

            console.log("\nCreating models...\n");

            const model_types = ["body", "head", "left_arm", "left_leg", "right_arm", "right_leg"];

            if (!_fs.existsSync(`../assets/player_models/models/players/${username}`)) await fs.mkdir(`../assets/player_models/models/players/${username}`);

            for (const model of model_types) {
                const model_path = `../assets/player_models/models/players/${username}/${model}.json`;
                console.log(`${model_path}`);

                await fs.writeFile(model_path, JSON.stringify({
                    "parent": `player_models:template/${skin_type(uuid)}/${model}`,
                    "textures": {
                        "skin": "player_models:skins/" + username
                    }
                }, null, 4), { encoding: "utf8", flag: "w" });
            }

            console.log("\nModel/texture files generated. Generating melon_slice.json predicate data...");

            const predicates: Predicates = JSON.parse((await fs.readFile("../assets/minecraft/models/item/melon_slice.json")).toString("utf8"));

            if (!predicates.overrides || predicates.overrides.length <= 0) {
                console.log("\nError, melon_slice.json file seems to be missing data. Exiting...");
                return;
            }

            for (const predicate of predicates.overrides) {
                if (predicate.model.includes(username)) {
                    console.log(`\nError, model data for ${username} already exists within melon_slice.json. To fix, please remove. Exiting...`);
                    return;
                }
            }

            let last_num = predicates.overrides.slice(-1)[0].predicate.custom_model_data + 1;

            for (const model of model_types) {
                predicates.overrides.push({
                    predicate: {
                        custom_model_data: last_num++
                    },
                    model: `player_models:players/${username}/${model}`
                });
            }

            // const output_predicates: any = Object.assign({}, predicates);
            //
            // output_predicates.overrides = output_predicates.overrides.map((e: Override) => JSON.stringify(e));

            await fs.writeFile("../assets/minecraft/models/item/melon_slice.json", JSON.stringify(predicates, null, 4), { encoding: "utf8", flag: "w" });
        });
    });
}

interface Predicates {
    parent: string;
    textures: Textures;
    overrides: Override[];
}

interface OutputPredicates {
    parent: string;
    textures: Textures;
    overrides: string[];
}

interface Override {
    predicate: Predicate;
    model: string;
}

interface Predicate {
    custom_model_data: number;
}

interface Textures {
    layer0: string;
}


init().then();