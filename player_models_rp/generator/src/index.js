"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    Object.defineProperty(o, k2, { enumerable: true, get: function() { return m[k]; } });
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var node_fetch_1 = __importDefault(require("node-fetch"));
var fs_1 = __importStar(require("fs"));
var https_1 = __importDefault(require("https"));
var readline_1 = __importDefault(require("readline"));
// yoinked from cravatar
var skin_type = function (uuid) {
    if (uuid.length <= 16) {
        // we can't get the skin type by username
        return "steve";
    }
    else {
        // great thanks to Minecrell for research into Minecraft and Java's UUID hashing!
        // https://git.io/xJpV
        // MC uses `uuid.hashCode() & 1` for alex
        // that can be compacted to counting the LSBs of every 4th byte in the UUID
        // an odd sum means alex, an even sum means steve
        // XOR-ing all the LSBs gives us 1 for alex and 0 for steve
        var lsbs_even = parseInt(uuid[7], 16) ^
            parseInt(uuid[15], 16) ^
            parseInt(uuid[23], 16) ^
            parseInt(uuid[31], 16);
        return lsbs_even ? "alex" : "steve";
    }
};
var rl = readline_1.default.createInterface({
    input: process.stdin,
    output: process.stdout
});
var ask = function (query) { return new Promise(function (resolve) { return rl.question(query, resolve); }); };
function init2(username, uuid, skin_url) {
    var _this = this;
    return new Promise(function (resolve) {
        https_1.default.get(skin_url, function (res) { return __awaiter(_this, void 0, void 0, function () {
            var path, skin_path;
            var _this = this;
            return __generator(this, function (_a) {
                path = "../assets/player_models/textures/skins/" + username.toLowerCase() + ".png";
                console.log("Skin downloading to " + path);
                skin_path = fs_1.default.createWriteStream(path);
                res.pipe(skin_path);
                skin_path.on("finish", function () { return __awaiter(_this, void 0, void 0, function () {
                    var model_types, _i, model_types_1, model, model_path, generate_predicates, predicates, _a, _b, _c, _d, predicate, last_num, _e, model_types_2, model;
                    return __generator(this, function (_f) {
                        switch (_f.label) {
                            case 0:
                                skin_path.close();
                                console.log("Download Completed.");
                                console.log("\nCreating models...\n");
                                model_types = ["body", "head", "left_arm", "left_leg", "right_arm", "right_leg"];
                                if (!!fs_1.default.existsSync("../assets/player_models/models/players/" + username)) return [3 /*break*/, 2];
                                return [4 /*yield*/, fs_1.promises.mkdir("../assets/player_models/models/players/" + username)];
                            case 1:
                                _f.sent();
                                _f.label = 2;
                            case 2:
                                _i = 0, model_types_1 = model_types;
                                _f.label = 3;
                            case 3:
                                if (!(_i < model_types_1.length)) return [3 /*break*/, 6];
                                model = model_types_1[_i];
                                model_path = "../assets/player_models/models/players/" + username + "/" + model + ".json";
                                console.log("" + model_path);
                                return [4 /*yield*/, fs_1.promises.writeFile(model_path, JSON.stringify({
                                        "parent": "player_models:template/" + skin_type(uuid) + "/" + model,
                                        "textures": {
                                            "skin": "player_models:skins/" + username
                                        }
                                    }, null, 4), { encoding: "utf8", flag: "w" })];
                            case 4:
                                _f.sent();
                                _f.label = 5;
                            case 5:
                                _i++;
                                return [3 /*break*/, 3];
                            case 6:
                                console.log("\nModel/texture files generated.");
                                return [4 /*yield*/, ask("> Would you like to generate melon_slice.json predicates? (WARNING it will reformat the entire file) [y/n] ")];
                            case 7:
                                generate_predicates = _f.sent();
                                if (generate_predicates.toLowerCase().trim() != "y") {
                                    console.log("\nExiting generator. If you typed the wrong answer above, run the program again.");
                                    return [2 /*return*/, resolve()];
                                }
                                console.log("Generating melon_slice.json predicate data...");
                                _b = (_a = JSON).parse;
                                return [4 /*yield*/, fs_1.promises.readFile("../assets/minecraft/models/item/melon_slice.json")];
                            case 8:
                                predicates = _b.apply(_a, [(_f.sent()).toString("utf8")]);
                                if (!predicates.overrides || predicates.overrides.length <= 0) {
                                    console.log("\nError, melon_slice.json file seems to be missing data. Exiting...");
                                    return [2 /*return*/, resolve()];
                                }
                                for (_c = 0, _d = predicates.overrides; _c < _d.length; _c++) {
                                    predicate = _d[_c];
                                    if (predicate.model.includes(username)) {
                                        console.log("\nError, model data for " + username + " already exists within melon_slice.json. To fix, please remove. Exiting...");
                                        return [2 /*return*/, resolve()];
                                    }
                                }
                                last_num = predicates.overrides.slice(-1)[0].predicate.custom_model_data + 1;
                                for (_e = 0, model_types_2 = model_types; _e < model_types_2.length; _e++) {
                                    model = model_types_2[_e];
                                    predicates.overrides.push({
                                        predicate: {
                                            custom_model_data: last_num++
                                        },
                                        model: "player_models:players/" + username + "/" + model
                                    });
                                }
                                // const output_predicates: any = Object.assign({}, predicates);
                                //
                                // output_predicates.overrides = output_predicates.overrides.map((e: Override) => JSON.stringify(e));
                                return [4 /*yield*/, fs_1.promises.writeFile("../assets/minecraft/models/item/melon_slice.json", JSON.stringify(predicates, null, 4), {
                                        encoding: "utf8",
                                        flag: "w"
                                    })];
                            case 9:
                                // const output_predicates: any = Object.assign({}, predicates);
                                //
                                // output_predicates.overrides = output_predicates.overrides.map((e: Override) => JSON.stringify(e));
                                _f.sent();
                                return [2 /*return*/, resolve()];
                        }
                    });
                }); });
                return [2 /*return*/];
            });
        }); });
    });
}
function init() {
    return __awaiter(this, void 0, void 0, function () {
        var username, uuid, encoded_skin_url, skin_url;
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4 /*yield*/, ask("> What is your username? ")];
                case 1:
                    username = (_a.sent()).toLowerCase();
                    return [4 /*yield*/, node_fetch_1.default("https://api.mojang.com/users/profiles/minecraft/" + username)];
                case 2: return [4 /*yield*/, (_a.sent()).json()];
                case 3:
                    uuid = (_a.sent()).id;
                    console.log(username + " -> " + uuid);
                    return [4 /*yield*/, node_fetch_1.default("https://sessionserver.mojang.com/session/minecraft/profile/" + uuid)];
                case 4: return [4 /*yield*/, (_a.sent()).json()];
                case 5:
                    encoded_skin_url = (_a.sent()).properties[0].value;
                    skin_url = "https://textures.minecraft.net" + new URL(JSON.parse(Buffer.from(encoded_skin_url, "base64").toString("utf8")).textures.SKIN.url).pathname;
                    //console.log(skin_url);
                    return [4 /*yield*/, init2(username, uuid, skin_url)];
                case 6:
                    //console.log(skin_url);
                    _a.sent();
                    return [2 /*return*/];
            }
        });
    });
}
init().then(function () { return rl.close(); });
