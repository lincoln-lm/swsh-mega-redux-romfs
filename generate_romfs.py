"""Generates the romfs files for the mod"""

import sys
import os
import json
import shutil
import pathlib

sys.path.extend(("model_tools", "bseq_tool"))

# pylint: disable=wrong-import-position
from model_tools.file_formats.util import json_to_flatbuffer_binary
from model_tools.file_formats.ptcl import replace_shaders_raw
from model_tools.gfpacker import GFPak
from bseq_tool.cmdReference import CmdReference
from bseq_tool.sesd import SESD

directory = pathlib.Path(__file__).parent
resources = directory / "vanilla_resources"
schemas = directory / "schemas"
static = directory / "static"
sequences = directory / "sequences"
effects = directory / "effects"
models = directory / "models"
build = directory / "build"
bseq_command_dict = (
    directory / "bseq_tool/commandDictionaries/SwShCommandReference.json"
)

MEGAS = [
    (3, 1),
    (6, 1),
    (6, 2, 52),
    (9, 1),
    (15, 1),
    (18, 1),
    (26, 2),
    (26, 3, 52),
    (36, 1),
    (65, 1),
    (71, 1),
    (80, 1),
    (94, 1),
    (115, 1),
    (121, 1),
    (127, 1),
    (130, 1),
    (142, 1),
    (149, 1),
    (150, 1),
    (150, 2, 52),
    (154, 1),
    (160, 1),
    (181, 1),
    (208, 1),
    (212, 1),
    (214, 1),
    (227, 1),
    (229, 1),
    (248, 1),
    (254, 1),
    (257, 1),
    (260, 1),
    (282, 1),
    (302, 1),
    (303, 1),
    (306, 1),
    (308, 1),
    (310, 1),
    (319, 1),
    (323, 1),
    (334, 1),
    (354, 1),
    (358, 1),
    (359, 1),
    (359, 2, 52),
    (362, 1),
    (373, 1),
    (376, 1),
    (380, 1),
    (381, 1),
    (382, 1),
    (383, 1),
    (384, 1),
    (398, 1),
    (428, 1),
    (445, 1),
    (445, 2, 52),
    (448, 1),
    (448, 2, 52),
    (460, 1),
    (475, 1),
    (478, 1),
    (485, 1),
    (491, 1),
    (500, 1),
    (530, 1),
    (531, 1),
    (545, 1),
    (560, 1),
    (604, 1),
    (609, 1),
    (623, 1),
    (652, 1),
    (655, 1),
    (658, 1),
    (668, 1),
    (670, 1),
    (678, 2),
    (687, 1),
    (689, 1),
    (691, 1),
    (701, 1),
    (718, 1),
    (719, 1),
    (740, 1),
    (768, 1),
    (780, 1),
    (801, 2),
    (801, 3, 52),
    (807, 1),
    (870, 1),
]


build.mkdir(parents=True, exist_ok=True)


def fnv1a(str):
    hash_value = 0xCBF29CE484222645
    for char in str:
        hash_value = (hash_value ^ ord(char)) * 0x100000001B3
        hash_value = hash_value & 0xFFFFFFFFFFFFFFFF
    return hash_value


DMAX_BUTTON = 0x3329DD8FA6F67BCF
DUMMY_BUTTON = 0x2EACC348C9671883
MEGA_BUTTON = fnv1a("mega_button")
ACTIVE_MEGA_BUTTON = fnv1a("active_mega_button")
CUSTOM_ARC = fnv1a("custom_arc")
CUSTOM_BFLYT = fnv1a("custom_bflyt")

with open(resources / "battle_skillSelect_00_lyt.json", "r", encoding="utf-8") as f:
    LAYOUT = json.load(f)
with open(resources / "uikit_battle_skillSelect.json", "r", encoding="utf-8") as f:
    UIKIT = json.load(f)
with open(resources / "poke_resource_table.json", "r", encoding="utf-8") as f:
    POKE_RESOURCE_TABLE = json.load(f)
with open(resources / "symbol_encount_mons_param.json", "r", encoding="utf-8") as f:
    SYMBOL_BEHAVIOR_TABLE = json.load(f)

for button in UIKIT["buttons"]:
    if button["hash"] == DMAX_BUTTON:
        mega_button = button.copy()
        mega_button["hash"] = MEGA_BUTTON
        mega_button["pane_part_hash"] = MEGA_BUTTON
        mega_button["hash_0x14"] = fnv1a("")
        mega_button["hash_0x1c"] = fnv1a("")
        mega_button["hash_0x24"] = fnv1a("")
        mega_button["hash_0x2c"] = fnv1a("")
        mega_button["key_select_anim_hash"] = fnv1a("")
        mega_button["active_anim_hash"] = fnv1a("")
        mega_button["passive_anim_hash"] = fnv1a("")
        mega_button["select_anim_hash"] = fnv1a("")
        mega_button["unselect_anim_hash"] = fnv1a("")
        mega_button["keep_anim_hash"] = fnv1a("")

        UIKIT["buttons"].append(mega_button)
        active_mega_button = button.copy()
        active_mega_button["hash"] = ACTIVE_MEGA_BUTTON
        active_mega_button["pane_part_hash"] = ACTIVE_MEGA_BUTTON
        active_mega_button["hash_0x14"] = fnv1a("")
        active_mega_button["hash_0x1c"] = fnv1a("")
        active_mega_button["hash_0x24"] = fnv1a("")
        active_mega_button["hash_0x2c"] = fnv1a("")
        active_mega_button["key_select_anim_hash"] = fnv1a("")
        active_mega_button["active_anim_hash"] = fnv1a("")
        active_mega_button["passive_anim_hash"] = fnv1a("")
        active_mega_button["select_anim_hash"] = fnv1a("")
        active_mega_button["unselect_anim_hash"] = fnv1a("")
        active_mega_button["keep_anim_hash"] = fnv1a("")
        UIKIT["buttons"].append(active_mega_button)
        break

UIKIT["base_elements"].append({"hash": ACTIVE_MEGA_BUTTON})

for container in UIKIT["containers"]:
    for element in container["placements"]:
        if (
            element["element_hash"] == DMAX_BUTTON
            or element["element_hash"] == DUMMY_BUTTON
        ):
            mega_element = element.copy()
            mega_element["element_hash"] = MEGA_BUTTON
            mega_element["height"] = 2
            container["placements"].append(mega_element)

            element["y"] += 2
            element["height"] = 2

            break

LAYOUT["arcs"].append(
    {"path": "bin/appli/battle/bin/battle_skillSelect_01.arc", "arc_hash": CUSTOM_ARC}
)

LAYOUT["bflyts"].append(
    {
        "arc_hash": CUSTOM_ARC,
        "bflyt": "battle_skillSelect_00.bflyt",
        "bflyt_hash": CUSTOM_BFLYT,
    }
)

LAYOUT["pane_parts"].append(
    {"bflyt_hash": CUSTOM_BFLYT, "name": "L_MButton_00", "pane_part_hash": MEGA_BUTTON}
)

LAYOUT["pane_parts"].append(
    {
        "bflyt_hash": CUSTOM_BFLYT,
        "name": "L_MButton_01",
        "pane_part_hash": ACTIVE_MEGA_BUTTON,
    }
)

for mega in MEGAS:
    species = mega[0]
    form = mega[1]
    model = mega[2] if len(mega) > 2 else 51

    POKE_RESOURCE_TABLE["models"].append(
        {
            "model_info": {"species": species, "forme": form, "gender": 0, "shiny": 0},
            "model_path": "model/model.gfbmdl",
            "config_path": "/poke_config.gfbpokecfg",
            "archive_path": f"bin/archive/pokemon/pm{species:04d}_{model:02d}.gfpak",
            "animations": [
                {
                    "name": "battle",
                    "path": "animations/battle_config.gfbanmcfg",
                },
                {
                    "name": "camp",
                    "path": "animations/camp_config.gfbanmcfg",
                },
                {
                    "name": "field",
                    "path": "animations/field_config.gfbanmcfg",
                },
            ],
        }
    )

    SYMBOL_BEHAVIOR_TABLE["behaviors"].append(
        {
            "field_0": 1.0,
            "field_1": 1.0,
            "attach_bone": "waist",
            "field_3": 2.1,
            "hash_1": 0xEB4799E8B29693BB,
            "hash_2": 0xCBF29CE484222645,
            "hitbox_radius": 100.0,
            "field_9": 8.0,
            "form": form,
            "species": species,
            "field_16": 1.0,
            "field_17": 1.0,
            "field_18": 112,
            "internal_name": "",
            "field_23": 8.0,
            "field_24": 5.0,
            "behavior": "Common",
            "field_32": 52,
            "field_37": 15.0,
            "field_38": 25.0,
            "field_39": 60.0,
            "field_40": 45.0,
            "field_41": 45.0,
            "field_44": 800.0,
            "field_45": 7.5,
        }
    )


parent = build / "bin/appli/battle/bin/"
parent.mkdir(parents=True, exist_ok=True)
(parent / "battle_skillSelect_00_lyt.bin").write_bytes(
    json_to_flatbuffer_binary(
        json.dumps(LAYOUT), (schemas / "layout.fbs").read_text("utf-8")
    )
)

(parent / "uikit_battle_skillSelect.bin").write_bytes(
    json_to_flatbuffer_binary(
        json.dumps(UIKIT), (schemas / "uikit.fbs").read_text("utf-8")
    )
)

parent = build / "bin/pokemon/table/"
parent.mkdir(parents=True, exist_ok=True)
(parent / "poke_resource_table.gfbpmcatalog").write_bytes(
    json_to_flatbuffer_binary(
        json.dumps(POKE_RESOURCE_TABLE),
        (schemas / "gfbpmcatalog.fbs").read_text("utf-8"),
    )
)

parent = build / "bin/field/param/symbol_encount_mons_param/"
parent.mkdir(parents=True, exist_ok=True)
(parent / "symbol_encount_mons_param.bin").write_bytes(
    json_to_flatbuffer_binary(
        json.dumps(SYMBOL_BEHAVIOR_TABLE),
        (schemas / "symbolbehave.fbs").read_text("utf-8"),
    )
)

parent = build / "bin/battle/waza/sequence"
parent.mkdir(parents=True, exist_ok=True)
input_ref = CmdReference(json.loads(bseq_command_dict.read_text("utf-8")))
for sequence in sequences.glob("*.json"):
    (parent / sequence.with_suffix(".bseq").name).write_bytes(
        SESD.from_dict(
            json.loads(sequence.read_text("utf-8")), "SwSh", input_ref
        ).get_bseq()
    )

parent = build / "bin/archive/battle/effect"
parent.mkdir(parents=True, exist_ok=True)
for effect in effects.glob("*"):
    name = effect.name
    folder_hash = fnv1a(name)
    absolute_hash = fnv1a(f"{name}/{name}.ptcl")
    file_hash = fnv1a(f"{name}.ptcl")
    data = replace_shaders_raw(effect)

    pak = GFPak()
    pak.absolute_hashes = [absolute_hash]
    pak.table = [pak.File(9, 2, -1, -1, 0xFF, -1, 0)]
    pak.folders = [
        GFPak.Folder(folder_hash, 1, 0xCC, [GFPak.FileMeta(file_hash, 0, 0xCC)])
    ]
    pak.decompressed_files = [data]
    pak.file_count = 1
    pak.folder_count = 1

    pak.serialize_gfpak(str(parent / f"{name}.gfpak"))

parent = build / "bin/archive/pokemon"
parent.mkdir(parents=True, exist_ok=True)

for folder in models.glob("*"):
    output = parent / f"{folder.name}.gfpak"
    if output.exists():
        output_mtime = os.path.getmtime(output)
        if not any(
            os.path.getmtime(file) > output_mtime for file in folder.glob("**/*")
        ):
            continue
    gfpak = GFPak()
    gfpak.from_files(folder)
    gfpak.serialize_gfpak(str(output))

shutil.copytree(static, build, dirs_exist_ok=True)
