# player_models
A pack for adding and posing player models in Minecraft Java Edition.

## How to use

### Installing

In the save folder of whichever world you want to use this pack in, paste `player_models_dp` into the world's `datapacks` folder. You will also need to paste `player_models_rp` into your `resourcepacks` folder and enable the resource pack. When you have joined your world, run `/tag @s add player_models`. This command will put items in your hotbar which will act as the interface for the data pack. The "Exit" item that will appear in your ninth hotbar slot can be used to free your hotbar, and you can run `/tag @s add player_models` again at any time to re-enter the interface.

### Features

The pack lets you spawn in new player models, change which skin they wear, and pose the player models to your liking. Clicking the "Position [+]" item from the home menu of your hotbar interface lets you move a player model in either 2 block, 1/2 block, or 1/16 block increments in any direction. Additionally, clicking the "Rotation [+]" item lets you rotate the whole player model around its vertical axis. The "Pose [+]" item opens a menu in which you can choose to rotate any of the player model's bones—its head, its body, its arms, or its legs. These bones can each be rotated on all three axes in increments of 90 degrees, 15 degrees, or 2.5 degrees.

### Uploading your own skin

This section might be difficult to understand... sorry in advance. In order to upload your own skin that can be flipped to via the "Previous Skin" and "Next Skin" items, you need to directly edit the resource pack, `player_models_rp`. I recommend using a text editor like VSCode that supports JSON syntax highlighting because it will make your life easier.

First, download the image file of whichever skin you want to upload to the pack. You can do this easily for any player by searching their name on NameMC, clicking on their skin under the "Skins" section of their profile, and then clicking the "Download" button. I recommend renaming the skin file to the IGN of whoever the skin belongs to. Let's say that the skin file is now called `ign.png`. Now, open the resouce pack's folder `player_models_rp`. Navigate to `assets/player_models/textures/skins` and drop your skin file into that folder.

Next, you need to create the model files for a player with your skin applied to it. In `assets/player_models/models/players`, you'll see two folders called `steve_skin` and `alex_skin`. If your skin uses the Steve player model, make a copy of the `steve_skin` folder and rename that folder to your IGN. If your skin uses the Alex model, then copy the `alex_skin` folder and rename it to your IGN. Make sure that the new folder is still in `assets/player_models/models/players`, and I'll say that the new folder is called `ign`. Now, inside `ign`, there will be 6 files: `body.json`, `head.json`, `left_arm.json`, `left_leg.json`, `right_arm.json`, and `right_leg.json`. Open *each* of these files, and change the text `player_models:skins/steve_skin` or `player_models:skins/alex_skin` to `player_models:skins/ign` (whatever you renamed skin file to be). Note: if you're using VSCode, you can right-click on the `ign` folder, select "Find in folder..." from the dropdown menu, and replace `steve_skin` or `alex_skin` (whichever is applicable) with `ign`. Ctrl+Alt+Enter is the hotkey for "replace all".

Lastly, you need to link the models that you just made to the "custom model data" of a melon slice. In `assets/minecraft/models/item`, there is a file called `melon_slice.json`. Open that file, and you'll see three chunks of six lines of code. Copy one of those chunks, and paste it *below* the last chunk in the file. Then, for each line in the chunk, replace the player name of the skin you copied with `ign` (whatever you named your folder in `assets/player_models/models/players`). For example, `player_models:players/steve_skin/head` would become `player_models:players/ign/head`. Finally, you need to change the "custom_model_data" values in the new chunk so that the numbers continue to increase by 1 for each line. Your file should now look like:
```json
{
  "parent": "minecraft:item/generated",
  "textures": {
    "layer0": "minecraft:item/melon_slice"
  },
  "overrides": [
    { "predicate": {"custom_model_data": 1}, "model": "player_models:players/steve_skin/head" },
    { "predicate": {"custom_model_data": 2}, "model": "player_models:players/steve_skin/body" },
    { "predicate": {"custom_model_data": 3}, "model": "player_models:players/steve_skin/right_arm" },
    { "predicate": {"custom_model_data": 4}, "model": "player_models:players/steve_skin/left_arm" },
    { "predicate": {"custom_model_data": 5}, "model": "player_models:players/steve_skin/right_leg" },
    { "predicate": {"custom_model_data": 6}, "model": "player_models:players/steve_skin/left_leg" },

    { "predicate": {"custom_model_data": 7}, "model": "player_models:players/alex_skin/head" },
    { "predicate": {"custom_model_data": 8}, "model": "player_models:players/alex_skin/body" },
    { "predicate": {"custom_model_data": 9}, "model": "player_models:players/alex_skin/right_arm" },
    { "predicate": {"custom_model_data": 10}, "model": "player_models:players/alex_skin/left_arm" },
    { "predicate": {"custom_model_data": 11}, "model": "player_models:players/alex_skin/right_leg" },
    { "predicate": {"custom_model_data": 12}, "model": "player_models:players/alex_skin/left_leg" },

    { "predicate": {"custom_model_data": 13}, "model": "player_models:players/melonbp/head" },
    { "predicate": {"custom_model_data": 14}, "model": "player_models:players/melonbp/body" },
    { "predicate": {"custom_model_data": 15}, "model": "player_models:players/melonbp/right_arm" },
    { "predicate": {"custom_model_data": 16}, "model": "player_models:players/melonbp/left_arm" },
    { "predicate": {"custom_model_data": 17}, "model": "player_models:players/melonbp/right_leg" },
    { "predicate": {"custom_model_data": 18}, "model": "player_models:players/melonbp/left_leg" }
    
    { "predicate": {"custom_model_data": 19}, "model": "player_models:players/ign/head" },
    { "predicate": {"custom_model_data": 20}, "model": "player_models:players/ign/body" },
    { "predicate": {"custom_model_data": 21}, "model": "player_models:players/ign/right_arm" },
    { "predicate": {"custom_model_data": 22}, "model": "player_models:players/ign/left_arm" },
    { "predicate": {"custom_model_data": 23}, "model": "player_models:players/ign/right_leg" },
    { "predicate": {"custom_model_data": 24}, "model": "player_models:players/ign/left_leg" }
  ]
}
```

Hopefully, your skin is now a player model in the resource pack. I added my own skin in the resource pack in case you want to reference it as a worked example. If your skin renders in-game as missing textures, double check that you haven't misspelled your ign anywhere and that your files and folders are in the right place.
