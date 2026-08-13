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
from model_tools.file_formats.message import convert_to_message_raw
from model_tools.file_formats.item_array import convert_to_item_array_raw
from model_tools.file_formats.bntx import convert_to_bntx
from model_tools.gfpacker import GFPak
from bseq_tool.cmdReference import CmdReference
from bseq_tool.sesd import SESD

# TODO: this should probably be modularized
directory = pathlib.Path(__file__).parent
resources = directory / "vanilla_resources"
schemas = directory / "schemas"
static = directory / "static"
sequences = directory / "sequences"
effects = directory / "effects"
models = directory / "models"
icons = directory / "icons"
build = directory / "build"
bseq_command_dict = (
    directory / "bseq_tool/commandDictionaries/SwShCommandReference.json"
)


def needs_to_build(output: pathlib.Path, dependencies: list[pathlib.Path]):
    if not output.exists():
        return True
    for dependency in dependencies:
        if dependency.is_dir():
            for file in dependency.glob("**/*"):
                if file.stat().st_mtime > output.stat().st_mtime:
                    return True
        if dependency.stat().st_mtime > output.stat().st_mtime:
            return True
    return False


def log_build_file(file_path: pathlib.Path) -> pathlib.Path:
    print(f"Built {file_path.relative_to(build)}")
    return file_path


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
    (658, 2),
    (668, 1),
    (670, 1),
    (678, 2),
    (687, 1),
    (689, 1),
    (691, 1),
    (701, 1),
    (718, 5),
    (719, 1),
    (740, 1),
    (768, 1),
    (780, 1),
    (801, 2),
    (801, 3, 52),
    (807, 1),
    (870, 1),
]

# TODO: other languages
NEW_ABILITIES = [
    (
        311,
        "Piercing Drill",
        "If the Pokémon uses moves that make direct contact,\nit can attack the target even if the target protects itself.",
    ),
    (
        312,
        "Dragonize",
        "The Pokémon's Normal-type moves become Dragon-type\nmoves and their power is boosted by 20%.",
    ),
    (
        313,
        "Eelevate",
        "By floating in the air, the Pokémon receives full\nimmunity to all Ground-type moves. When the\nPokémon knocks out a target with an attack, its\nhighest stat is boosted by 1 stage.",
    ),
    (
        315,
        "Mega Sol",
        "Even when the sunlight has not turned harsh, the\nPokémon can use its moves as if the weather\nwere harsh sunlight.",
    ),
    (
        316,
        "Fire Mane",
        "Boosts the power of the Pokémon’s Fire-type moves\nby 50%.",
    ),
]

MEGA_STONES = [
    (534,),
    (535,),
    (656,),
    (657,),
    (658,),
    (659,),
    (660,),
    (661,),
    (662,),
    (663,),
    (664,),
    (665,),
    (666,),
    (667,),
    (668,),
    (669,),
    (670,),
    (671,),
    (672,),
    (673,),
    (674,),
    (675,),
    (676,),
    (677,),
    (678,),
    (679,),
    (680,),
    (681,),
    (682,),
    (683,),
    (684,),
    (685,),
    (752,),
    (753,),
    (754,),
    (755,),
    (756,),
    (757,),
    (758,),
    (759,),
    (760,),
    (761,),
    (762,),
    (763,),
    (764,),
    (767,),
    (768,),
    (769,),
    (770,),
    (2559, "Clefable", "Clefablite"),
    (2560, "Victreebel", "Victreebelite"),
    (2561, "Starmie", "Starminite"),
    (2562, "Dragonite", "Dragoninite"),
    (2563, "Meganium", "Meganiumite"),
    (2564, "Feraligatr", "Feraligite"),
    (2565, "Skarmory", "Skarmorite"),
    (2566, "Frosslass", "Froslassite"),
    (2567, "Heatran", "Heatranite"),
    (2568, "Darkrai", "Darkranite"),
    (2569, "Emboar", "Emboarite"),
    (2570, "Excadrill", "Excadrite"),
    (2571, "Scolipede", "Scolipite"),
    (2572, "Scrafty", "Scraftinite"),
    (2573, "Eelektross", "Eelektrossite"),
    (2574, "Chandelure", "Chandelurite"),
    (2575, "Chesnaught", "Chesnaughtite"),
    (2576, "Delphox", "Delphoxite"),
    (2577, "Greninja", "Greninjite"),
    (2578, "Pyroar", "Pyroarite"),
    (2579, "Floette", "Floettite"),
    (2580, "Malamar", "Malamarite"),
    (2581, "Barbaracle", "Barbaracite"),
    (2582, "Dragalge", "Dragalgite"),
    (2583, "Hawlucha", "Hawluchanite"),
    (2584, "Zygarde", "Zygardite"),
    (2585, "Drampa", "Drampanite"),
    (2586, "Zeraora", "Zeraorite"),
    (2587, "Falinks", "Falinksite"),
    (2635, "Raichu", "Raichunite X"),
    (2636, "Raichu", "Raichunite Y"),
    (2637, "Chimecho", "Chimechite"),
    (2638, "Absol", "Absolite Z"),
    (2639, "Staraptor", "Staraptite"),
    (2640, "Garchomp", "Garchompite Z"),
    (2641, "Lucario", "Lucarionite Z"),
    (2642, "Golurk", "Golurkite"),
    (2643, "Meowstic", "Meowsticite"),
    (2644, "Crabominable", "Crabominite"),
    (2645, "Golisopod", "Golisopite"),
    (2646, "Magearna", "Magearnite"),
    (2647, "Scovillain", "Scovillainite"),
    (2648, "Baxcalibur", "Baxcalibrite"),
    (2648, "Tatsugiri", "Tatsugirinite"),
    (2650, "Glimmora", "Glimmoranite"),
]

build.mkdir(parents=True, exist_ok=True)


def fnv1a(str):
    hash_value = 0xCBF29CE484222645
    for char in str:
        hash_value = (hash_value ^ ord(char)) * 0x100000001B3
        hash_value = hash_value & 0xFFFFFFFFFFFFFFFF
    return hash_value


LANGUAGES = [
    "English",
    "French",
    "German",
    "Italian",
    "JPN",
    "JPN_KANJI",
    "Korean",
    "Simp_Chinese",
    "Spanish",
    "Trad_Chinese",
]


def read_json(path):
    return json.loads(path.read_text(encoding="utf-8"))


def read_message(path):
    return {language: read_json(path / f"{language}.json") for language in LANGUAGES}


DMAX_BUTTON = 0x3329DD8FA6F67BCF
DUMMY_BUTTON = 0x2EACC348C9671883
MEGA_BUTTON = fnv1a("mega_button")
ACTIVE_MEGA_BUTTON = fnv1a("active_mega_button")
CUSTOM_ARC = fnv1a("custom_arc")
CUSTOM_BFLYT = fnv1a("custom_bflyt")

# TODO: a few of these probably benefit from being csvs instead of json
LAYOUT = read_json(resources / "battle_skillSelect_00_lyt.json")
UIKIT = read_json(resources / "uikit_battle_skillSelect.json")
POKE_RESOURCE_TABLE = read_json(resources / "poke_resource_table.json")
SYMBOL_BEHAVIOR_TABLE = read_json(resources / "symbol_encount_mons_param.json")
EFFECT_RESOURCE_TABLE = read_json(resources / "effect_resource_table.json")
ABILITY_STRINGS = read_message(resources / "tokusei")
ABILITY_DESCRIPTION_STRINGS = read_message(resources / "tokuseiinfo")
ITEM_NAME_STRINGS = read_message(resources / "itemname")
ITEM_NAME_ACC_STRINGS = read_message(resources / "itemname_acc")
ITEM_NAME_ACC_CLASSIFIED_STRINGS = read_message(resources / "itemname_acc_classified")
ITEM_NAME_PLURAL_STRINGS = read_message(resources / "itemname_plural")
ITEM_NAME_PLURAL_CLASSIFIED_STRINGS = read_message(
    resources / "itemname_plural_classified"
)
ITEM_DESCRIPTION_STRINGS = read_message(resources / "iteminfo")
ITEM_TABLE = read_json(resources / "item.json")

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

    POKE_RESOURCE_TABLE["models"].extend(
        (
            {
                "model_info": {
                    "species": species,
                    "forme": form,
                    "gender": 0,
                    "shiny": 0,
                },
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
            },
            {
                "model_info": {
                    "species": species,
                    "forme": form,
                    "gender": 0,
                    "shiny": 1,
                },
                "model_path": "model/shiny_model.gfbmdl",
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
            },
        )
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

for language in LANGUAGES:
    ability_strings = ABILITY_STRINGS[language]
    ability_desc_strings = ABILITY_DESCRIPTION_STRINGS[language]
    for ability, name, description in NEW_ABILITIES:
        while len(ability_strings) <= ability + 1:
            ability_strings.insert(-1, [f"TOKUSEI_{ability:03d}", 0, "\u2014"])
        ability_strings[ability][2] = name

        while len(ability_desc_strings) <= ability + 1:
            ability_desc_strings.insert(-1, [f"TOKUSEIINFO_{ability:03d}", 0, "\u2014"])
        ability_desc_strings[ability][2] = description

for mega_stone in MEGA_STONES:
    item_id = mega_stone[0]
    pokemon = None
    item_name = None
    if len(mega_stone) > 1:
        pokemon = mega_stone[1]
        item_name = mega_stone[2]
    while len(ITEM_TABLE["item_data"]) <= item_id:
        ITEM_TABLE["item_data"].append(ITEM_TABLE["item_data"][0])
    ITEM_TABLE["item_data"][item_id] = {
        "price": 0,
        "price_watts": 0,
        "price_other": 0,
        # the rest of the sprites aren't made yet
        "item_sprite": item_id if item_id <= 2569 else 65535,
        "field_5": 0,
        "field_6": 0,
        "field_7": 0,
        "field_8": 0,
        "field_9": 30,
        "field_10": 0,
        "field_11": 31,
        "field_12": 0,
        "field_13": 0,
        "pouch": 2,
        "effect_field": 0,
        "field_16": 3,
        "can_use_on_pokemon": 1,
        "field_18": 4,
        "field_19": 0,
        "field_20": 0,
        "field_21": 8,
        "group_type": 0,
        "group_index": 0,
        "field_24": 1,
        "field_25": 1,
        "field_26": 0,
        "field_27": 0,
        "field_28": 0,
        "field_29": 0,
        "field_30": 0,
        "field_31": 0,
        "field_32": 0,
        "field_33": 0,
        "field_34": 0,
        "field_35": 0,
        "field_36": 0,
        "field_37": 0,
        "field_38": 0,
        "field_39": 0,
        "field_40": 0,
        "field_41": 0,
        "field_42": 0,
        "field_43": 0,
        "field_44": 0,
        "field_45": 0,
        "field_46": 0,
        "field_47": 0,
        "field_48": 0,
        "field_49": 0,
        "field_50": 0,
        "field_51": 0,
        "field_52": 0,
        "field_53": 0,
        "field_54": 0,
        "field_55": 0,
        "field_56": 0,
        "field_57": 0,
        "field_58": 0,
        "field_59": 0,
        "field_60": 0,
        "field_61": 0,
        "field_62": 0,
        "field_63": 0,
        "field_64": 0,
        "field_65": 0,
        "field_66": 0,
        "field_67": 0,
        "field_68": 0,
        "field_69": 0,
        "field_70": 0,
    }

    # already have strings
    if item_id <= 1607:
        continue
    for language in LANGUAGES:
        for name_strings in (
            ITEM_NAME_STRINGS,
            ITEM_NAME_ACC_STRINGS,
            ITEM_NAME_ACC_CLASSIFIED_STRINGS,
        ):
            name_strings = name_strings[language]
            while len(name_strings) <= item_id + 1:
                name_strings.insert(-1, [f"ITEMNAME_{item_id:03d}", 0, "\u2014"])
            name_strings[item_id][2] = item_name
        for name_strings_plural in (
            ITEM_NAME_PLURAL_STRINGS,
            ITEM_NAME_PLURAL_CLASSIFIED_STRINGS,
        ):
            name_strings_plural = name_strings_plural[language]
            while len(name_strings_plural) <= item_id + 1:
                name_strings_plural.insert(-1, [f"ITEMNAME_{item_id:03d}", 0, "\u2014"])
            name_strings_plural[item_id][2] = f"{item_name}s"

        desc_strings = ITEM_DESCRIPTION_STRINGS[language]
        while len(desc_strings) <= item_id + 1:
            desc_strings.insert(-1, [f"ITEMINFO_{item_id:03d}", 0, "\u2014"])
        desc_strings[item_id][
            2
        ] = f"One of a variety of mysterious Mega Stones.\nHave {pokemon} hold it, and this stone will enable it\nto Mega Evolve during battle."

parent = build / "bin/appli/battle/bin/"
parent.mkdir(parents=True, exist_ok=True)
log_build_file(parent / "battle_skillSelect_00_lyt.bin").write_bytes(
    json_to_flatbuffer_binary(
        json.dumps(LAYOUT), (schemas / "layout.fbs").read_text("utf-8")
    )
)

log_build_file(parent / "uikit_battle_skillSelect.bin").write_bytes(
    json_to_flatbuffer_binary(
        json.dumps(UIKIT), (schemas / "uikit.fbs").read_text("utf-8")
    )
)

parent = build / "bin/pml/item/"
parent.mkdir(parents=True, exist_ok=True)
log_build_file(parent / "item.dat").write_bytes(convert_to_item_array_raw(ITEM_TABLE))

parent = build / "bin/pokemon/table/"
parent.mkdir(parents=True, exist_ok=True)
log_build_file(parent / "poke_resource_table.gfbpmcatalog").write_bytes(
    json_to_flatbuffer_binary(
        json.dumps(POKE_RESOURCE_TABLE),
        (schemas / "gfbpmcatalog.fbs").read_text("utf-8"),
    )
)

parent = build / "bin/field/param/symbol_encount_mons_param/"
parent.mkdir(parents=True, exist_ok=True)
log_build_file(parent / "symbol_encount_mons_param.bin").write_bytes(
    json_to_flatbuffer_binary(
        json.dumps(SYMBOL_BEHAVIOR_TABLE),
        (schemas / "symbolbehave.fbs").read_text("utf-8"),
    )
)

parent = build / "bin/battle/waza/sequence"
parent.mkdir(parents=True, exist_ok=True)
input_ref = CmdReference(json.loads(bseq_command_dict.read_text("utf-8")))
for sequence in sequences.glob("*.json"):
    bseq_file = parent / sequence.with_suffix(".bseq").name
    if not needs_to_build(bseq_file, [sequence]):
        continue
    log_build_file(bseq_file).write_bytes(
        SESD.from_dict(
            json.loads(sequence.read_text("utf-8")), "SwSh", input_ref
        ).get_bseq()
    )

COMMON_MESSAGES = [
    ("tokusei", ABILITY_STRINGS),
    ("tokuseiinfo", ABILITY_DESCRIPTION_STRINGS),
    ("itemname", ITEM_NAME_STRINGS),
    ("itemname_acc", ITEM_NAME_ACC_STRINGS),
    ("itemname_acc_classified", ITEM_NAME_ACC_CLASSIFIED_STRINGS),
    ("itemname_plural", ITEM_NAME_PLURAL_STRINGS),
    ("itemname_plural_classified", ITEM_NAME_PLURAL_CLASSIFIED_STRINGS),
    ("iteminfo", ITEM_DESCRIPTION_STRINGS),
]

for language in LANGUAGES:
    parent = build / f"bin/message/{language}/common"
    parent.mkdir(parents=True, exist_ok=True)
    for name, strings in COMMON_MESSAGES:
        dat, tbl = convert_to_message_raw(strings[language])
        log_build_file(parent / f"{name}.dat").write_bytes(dat)
        log_build_file(parent / f"{name}.tbl").write_bytes(tbl)

parent = build / "bin/appli/icon_item"
parent.mkdir(parents=True, exist_ok=True)
for icon in (icons / "item").glob("*"):
    texture_path = parent / f"item_{icon.stem}.bntx"
    if not needs_to_build(texture_path, [icon]):
        continue
    convert_to_bntx(icon, log_build_file(texture_path), "BC7RgbaUnorm")

parent = build / "bin/archive/battle/effect"
parent.mkdir(parents=True, exist_ok=True)
parent2 = build / "bin/field/effect/particle/particle/"
parent2.mkdir(parents=True, exist_ok=True)
for effect in effects.glob("*"):
    name = effect.name
    folder_hash = fnv1a(name)
    absolute_hash = fnv1a(f"{name}/{name}.ptcl")
    file_hash = fnv1a(f"{name}.ptcl")
    output = parent / f"{name}.gfpak"
    raw_output = parent2 / f"{name}.ptcl"
    EFFECT_RESOURCE_TABLE["resources"].append(
        {"path": f"bin/field/effect/particle/particle/{name}.ptcl"}
    )
    if not (needs_to_build(output, [effect]) or needs_to_build(raw_output, [effect])):
        continue
    data = replace_shaders_raw(effect)
    raw_output.write_bytes(data)

    pak = GFPak()
    pak.absolute_hashes = [absolute_hash]
    pak.table = [pak.File(9, 2, -1, -1, 0xFF, -1, 0)]
    pak.folders = [
        GFPak.Folder(folder_hash, 1, 0xCC, [GFPak.FileMeta(file_hash, 0, 0xCC)])
    ]
    pak.decompressed_files = [data]
    pak.file_count = 1
    pak.folder_count = 1

    pak.serialize_gfpak(str(log_build_file(output)))

parent = build / "bin/field/param/effect/"
parent.mkdir(parents=True, exist_ok=True)
log_build_file(parent / "effect_resource_table.bin").write_bytes(
    json_to_flatbuffer_binary(
        json.dumps(EFFECT_RESOURCE_TABLE),
        (schemas / "resource_table.fbs").read_text("utf-8"),
    )
)

parent = build / "bin/archive/pokemon"
parent.mkdir(parents=True, exist_ok=True)

for folder in models.glob("*"):
    metadata_path = folder / "metadata.json"
    metadata = json.loads(metadata_path.read_text("utf-8"))
    output = parent / f"{folder.name}.gfpak"
    if not needs_to_build(
        output,
        [metadata_path]
        + list(
            folder / meta_folder["name"] / file["name"]
            for meta_folder in metadata["folders"]
            for file in meta_folder["files"]
        ),
    ):
        continue
    gfpak = GFPak()
    gfpak.from_files(folder)
    gfpak.serialize_gfpak(str(log_build_file(output)))

shutil.copytree(static, build, dirs_exist_ok=True)

skill_select_dir = build / "bin/appli/battle/bin"
base_skill_select = skill_select_dir / "battle_skillSelect_01_eng.arc"
for lang in ("fre", "ger", "ita", "kor", "sch", "spa", "tch"):
    shutil.copy(
        base_skill_select, skill_select_dir / f"battle_skillSelect_01_{lang}.arc"
    )
