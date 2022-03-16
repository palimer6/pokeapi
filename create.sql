CREATE TABLE IF NOT EXISTS "pokemon_moves"
(
    "pokemon_id"             INTEGER,
    "version_group_id"       INTEGER,
    "move_id"                INTEGER,
    "pokemon_move_method_id" INTEGER,
    "level"                  INTEGER,
    "order"                  TEXT,
    FOREIGN KEY ("pokemon_id") REFERENCES "pokemon" ("id"),
    FOREIGN KEY ("version_group_id") REFERENCES "version_groups" ("id"),
    FOREIGN KEY ("pokemon_move_method_id") REFERENCES "pokemon_move_methods" ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_max_links"
(
    "warrior_rank_id"    INTEGER,
    "pokemon_species_id" INTEGER,
    "max_link"           INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_species_names"
(
    "pokemon_species_id" INTEGER,
    "local_language_id"  INTEGER,
    "name"               TEXT,
    "genus"              TEXT
);
CREATE TABLE IF NOT EXISTS "move_names"
(
    "move_id"           INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT
);
CREATE TABLE IF NOT EXISTS "move_effect_prose"
(
    "move_effect_id"    INTEGER,
    "local_language_id" INTEGER,
    "short_effect"      TEXT,
    "effect"            TEXT
);
CREATE TABLE IF NOT EXISTS "pokemon_form_names"
(
    "pokemon_form_id"   INTEGER,
    "local_language_id" INTEGER,
    "form_name"         TEXT,
    "pokemon_name"      TEXT
);
CREATE TABLE IF NOT EXISTS "pokemon_dex_numbers"
(
    "species_id"     INTEGER,
    "pokedex_id"     INTEGER,
    "pokedex_number" INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_form_pokeathlon_stats"
(
    "pokemon_form_id"    INTEGER,
    "pokeathlon_stat_id" INTEGER,
    "minimum_stat"       INTEGER,
    "base_stat"          INTEGER,
    "maximum_stat"       INTEGER
);
CREATE TABLE IF NOT EXISTS "move_meta"
(
    "move_id"          INTEGER,
    "meta_category_id" INTEGER,
    "meta_ailment_id"  INTEGER,
    "min_hits"         TEXT,
    "max_hits"         TEXT,
    "min_turns"        TEXT,
    "max_turns"        TEXT,
    "drain"            INTEGER,
    "healing"          INTEGER,
    "crit_rate"        INTEGER,
    "ailment_chance"   INTEGER,
    "flinch_chance"    INTEGER,
    "stat_chance"      INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_types"
(
    "pokemon_id" INTEGER,
    "type_id"    INTEGER,
    "slot"       INTEGER
);
CREATE TABLE IF NOT EXISTS "move_flag_map"
(
    "move_id"      INTEGER,
    "move_flag_id" INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_species_prose"
(
    "pokemon_species_id" INTEGER,
    "local_language_id"  INTEGER,
    "form_description"   TEXT
);
CREATE TABLE IF NOT EXISTS "conquest_pokemon_stats"
(
    "pokemon_species_id" INTEGER,
    "conquest_stat_id"   INTEGER,
    "base_stat"          INTEGER
);
CREATE TABLE IF NOT EXISTS "conquest_move_effect_prose"
(
    "conquest_move_effect_id" INTEGER,
    "local_language_id"       INTEGER,
    "short_effect"            TEXT,
    "effect"                  TEXT
);
CREATE TABLE IF NOT EXISTS "conquest_warrior_rank_stat_map"
(
    "warrior_rank_id" INTEGER,
    "warrior_stat_id" INTEGER,
    "base_stat"       INTEGER
);
CREATE TABLE IF NOT EXISTS "pal_park"
(
    "species_id" INTEGER,
    "area_id"    INTEGER,
    "base_score" INTEGER,
    "rate"       INTEGER
);
CREATE TABLE IF NOT EXISTS "move_flag_prose"
(
    "move_flag_id"      INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    "description"       TEXT
);
CREATE TABLE IF NOT EXISTS "nature_names"
(
    "nature_id"         INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT
);
CREATE TABLE IF NOT EXISTS "pokedex_prose"
(
    "pokedex_id"        INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    "description"       TEXT
);
CREATE TABLE IF NOT EXISTS "type_efficacy"
(
    "damage_type_id" INTEGER,
    "target_type_id" INTEGER,
    "damage_factor"  INTEGER
);
CREATE TABLE IF NOT EXISTS "conquest_warrior_names"
(
    "warrior_id"        INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT
);
CREATE TABLE IF NOT EXISTS "move_effect_changelog_prose"
(
    "move_effect_changelog_id" INTEGER,
    "local_language_id"        INTEGER,
    "effect"                   TEXT
);
CREATE TABLE IF NOT EXISTS "conquest_warrior_specialties"
(
    "warrior_id" INTEGER,
    "type_id"    INTEGER,
    "slot"       INTEGER
);
CREATE TABLE IF NOT EXISTS "type_names"
(
    "type_id"           INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT
);
CREATE TABLE IF NOT EXISTS "pokemon_move_method_prose"
(
    "pokemon_move_method_id" INTEGER,
    "local_language_id"      INTEGER,
    "name"                   TEXT,
    "description"            TEXT
);
CREATE TABLE IF NOT EXISTS "move_target_prose"
(
    "move_target_id"    INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    "description"       TEXT
);
CREATE TABLE IF NOT EXISTS "conquest_move_range_prose"
(
    "conquest_move_range_id" INTEGER,
    "local_language_id"      INTEGER,
    "name"                   TEXT,
    "description"            TEXT
);
CREATE TABLE IF NOT EXISTS "pokemon_shape_prose"
(
    "pokemon_shape_id"  INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    "awesome_name"      TEXT,
    "description"       TEXT
);
CREATE TABLE IF NOT EXISTS "conquest_pokemon_moves"
(
    "pokemon_species_id" INTEGER,
    "move_id"            INTEGER
);
CREATE TABLE IF NOT EXISTS "super_contest_effect_prose"
(
    "super_contest_effect_id" INTEGER,
    "local_language_id"       INTEGER,
    "flavor_text"             TEXT
);
CREATE TABLE IF NOT EXISTS "conquest_move_displacement_prose"
(
    "move_displacement_id" INTEGER,
    "local_language_id"    INTEGER,
    "name"                 TEXT,
    "short_effect"         TEXT,
    "effect"               TEXT
);
CREATE TABLE IF NOT EXISTS "pokemon_color_names"
(
    "pokemon_color_id"  INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT
);
CREATE TABLE IF NOT EXISTS "move_damage_class_prose"
(
    "move_damage_class_id" INTEGER,
    "local_language_id"    INTEGER,
    "name"                 TEXT,
    "description"          TEXT
);
CREATE TABLE IF NOT EXISTS "conquest_warrior_skill_names"
(
    "skill_id"          INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT
);
CREATE TABLE IF NOT EXISTS "move_meta_ailment_names"
(
    "move_meta_ailment_id" INTEGER,
    "local_language_id"    INTEGER,
    "name"                 TEXT
);
CREATE TABLE IF NOT EXISTS "nature_battle_style_preferences"
(
    "nature_id"            INTEGER,
    "move_battle_style_id" INTEGER,
    "low_hp_preference"    INTEGER,
    "high_hp_preference"   INTEGER
);
CREATE TABLE IF NOT EXISTS "conquest_warrior_transformation"
(
    "transformed_warrior_rank_id" INTEGER,
    "is_automatic"                INTEGER,
    "required_link"               TEXT,
    "completed_episode_id"        TEXT,
    "current_episode_id"          TEXT,
    "distant_warrior_id"          TEXT,
    "female_warlord_count"        TEXT,
    "pokemon_count"               TEXT,
    "collection_type_id"          TEXT,
    "warrior_count"               TEXT
);
CREATE TABLE IF NOT EXISTS "conquest_transformation_pokemon"
(
    "transformation_id"  INTEGER,
    "pokemon_species_id" INTEGER
);
CREATE TABLE IF NOT EXISTS "move_meta_category_prose"
(
    "move_meta_category_id" INTEGER,
    "local_language_id"     INTEGER,
    "description"           TEXT
);
CREATE TABLE IF NOT EXISTS "region_names"
(
    "region_id"         INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT
);
CREATE TABLE IF NOT EXISTS "version_group_pokemon_move_methods"
(
    "version_group_id"       INTEGER,
    "pokemon_move_method_id" INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_form_types"
(
    "pokemon_form_id" INTEGER,
    "type_id"         INTEGER,
    "slot"            INTEGER
);
CREATE TABLE IF NOT EXISTS "nature_pokeathlon_stats"
(
    "nature_id"          INTEGER,
    "pokeathlon_stat_id" INTEGER,
    "max_change"         INTEGER
);
CREATE TABLE IF NOT EXISTS "pokemon_habitat_names"
(
    "pokemon_habitat_id" INTEGER,
    "local_language_id"  INTEGER,
    "name"               TEXT
);
CREATE TABLE IF NOT EXISTS "pokeathlon_stat_names"
(
    "pokeathlon_stat_id" INTEGER,
    "local_language_id"  INTEGER,
    "name"               TEXT
);
CREATE TABLE IF NOT EXISTS "pal_park_area_names"
(
    "pal_park_area_id"  INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT
);
CREATE TABLE IF NOT EXISTS "pokedex_version_groups"
(
    "pokedex_id"       INTEGER,
    "version_group_id" INTEGER
);
CREATE TABLE IF NOT EXISTS "conquest_stat_names"
(
    "conquest_stat_id"  INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT
);
CREATE TABLE IF NOT EXISTS "version_group_regions"
(
    "version_group_id" INTEGER,
    "region_id"        INTEGER
);
CREATE TABLE IF NOT EXISTS "conquest_warrior_stat_names"
(
    "warrior_stat_id"   INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT
);
CREATE TABLE IF NOT EXISTS "conquest_transformation_warriors"
(
    "transformation_id"  INTEGER,
    "present_warrior_id" INTEGER
);
CREATE TABLE IF NOT EXISTS "berry_firmness"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_episodes"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_move_displacements"
(
    "id"             INTEGER NOT NULL UNIQUE,
    "identifier"     TEXT,
    "affects_target" INTEGER,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_move_effects"
(
    "id" INTEGER NOT NULL UNIQUE,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_move_ranges"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    "targets"    INTEGER,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_stats"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    "is_base"    INTEGER,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_warrior_archetypes"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_warrior_ranks"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "warrior_id" INTEGER,
    "rank"       INTEGER,
    "skill_id"   INTEGER,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_warrior_skills"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_warrior_stats"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_warriors"
(
    "id"           INTEGER NOT NULL UNIQUE,
    "identifier"   TEXT,
    "gender_id"    INTEGER,
    "archetype_id" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "contest_effects"
(
    "id"     INTEGER NOT NULL UNIQUE,
    "appeal" INTEGER,
    "jam"    INTEGER,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "contest_types"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "egg_groups"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "encounter_conditions"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "encounter_methods"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    "order"      INTEGER,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "evolution_triggers"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "genders"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "growth_rates"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    "formula"    TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "item_flags"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "item_fling_effects"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "item_pockets"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "languages"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "iso639"     TEXT,
    "iso3166"    TEXT,
    "identifier" TEXT,
    "official"   INTEGER,
    "order"      INTEGER,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "move_battle_styles"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "move_damage_classes"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "move_effect_changelog"
(
    "id"                          INTEGER NOT NULL UNIQUE,
    "effect_id"                   INTEGER,
    "changed_in_version_group_id" INTEGER,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "move_effects"
(
    "id" INTEGER NOT NULL UNIQUE,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "move_flags"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "move_meta_ailments"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "move_meta_categories"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "move_targets"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "natures"
(
    "id"                INTEGER NOT NULL UNIQUE,
    "identifier"        TEXT,
    "decreased_stat_id" INTEGER,
    "increased_stat_id" INTEGER,
    "hates_flavor_id"   INTEGER,
    "likes_flavor_id"   INTEGER,
    "game_index"        INTEGER,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "pal_park_areas"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "pokeathlon_stats"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_colors"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_forms"
(
    "id"                             INTEGER NOT NULL UNIQUE,
    "identifier"                     TEXT,
    "form_identifier"                TEXT,
    "pokemon_id"                     INTEGER,
    "introduced_in_version_group_id" INTEGER,
    "is_default"                     INTEGER,
    "is_battle_only"                 INTEGER,
    "is_mega"                        INTEGER,
    "form_order"                     INTEGER,
    "order"                          INTEGER,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_habitats"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_move_methods"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_shapes"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "regions"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "super_contest_effects"
(
    "id"     INTEGER NOT NULL UNIQUE,
    "appeal" INTEGER,
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "abilities"
(
    "id"             INTEGER NOT NULL UNIQUE,
    "identifier"     TEXT,
    "generation_id"  INTEGER,
    "is_main_series" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("generation_id") REFERENCES "generations" ("id")
);
CREATE TABLE IF NOT EXISTS "ability_changelog"
(
    "id"                          INTEGER NOT NULL UNIQUE,
    "ability_id"                  INTEGER,
    "changed_in_version_group_id" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("ability_id") REFERENCES "abilities" ("id"),
    FOREIGN KEY ("changed_in_version_group_id") REFERENCES "version_groups" ("id")
);
CREATE TABLE IF NOT EXISTS "ability_changelog_prose"
(
    "ability_changelog_id" INTEGER,
    "local_language_id"    INTEGER,
    "effect"               TEXT,
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id"),
    FOREIGN KEY ("ability_changelog_id") REFERENCES "ability_changelog" ("id")
);
CREATE TABLE IF NOT EXISTS "ability_flavor_text"
(
    "ability_id"       INTEGER,
    "version_group_id" INTEGER,
    "language_id"      INTEGER,
    "flavor_text"      TEXT,
    FOREIGN KEY ("version_group_id") REFERENCES "version_groups" ("id"),
    FOREIGN KEY ("language_id") REFERENCES "languages" ("id"),
    FOREIGN KEY ("ability_id") REFERENCES "abilities" ("id")
);
CREATE TABLE IF NOT EXISTS "ability_names"
(
    "ability_id"        INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    FOREIGN KEY ("ability_id") REFERENCES "abilities" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "ability_prose"
(
    "ability_id"        INTEGER,
    "local_language_id" INTEGER,
    "short_effect"      TEXT,
    "effect"            TEXT,
    FOREIGN KEY ("ability_id") REFERENCES "abilities" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_pokemon_abilities"
(
    "pokemon_species_id" INTEGER,
    "slot"               INTEGER,
    "ability_id"         INTEGER,
    FOREIGN KEY ("pokemon_species_id") REFERENCES "pokemon_species" ("id"),
    FOREIGN KEY ("ability_id") REFERENCES "abilities" ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_abilities"
(
    "pokemon_id" INTEGER,
    "ability_id" INTEGER,
    "is_hidden"  INTEGER,
    "slot"       INTEGER,
    FOREIGN KEY ("ability_id") REFERENCES "abilities" ("id"),
    FOREIGN KEY ("pokemon_id") REFERENCES "pokemon" ("id")
);
CREATE TABLE IF NOT EXISTS "berries"
(
    "id"                   INTEGER NOT NULL UNIQUE,
    "item_id"              INTEGER,
    "firmness_id"          INTEGER,
    "natural_gift_power"   INTEGER,
    "natural_gift_type_id" INTEGER,
    "size"                 INTEGER,
    "max_harvest"          INTEGER,
    "growth_time"          INTEGER,
    "soil_dryness"         INTEGER,
    "smoothness"           INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("natural_gift_type_id") REFERENCES "types" ("id"),
    FOREIGN KEY ("item_id") REFERENCES "items" ("id"),
    FOREIGN KEY ("firmness_id") REFERENCES "berry_firmness" ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_pokemon_evolution"
(
    "evolved_species_id"     INTEGER,
    "required_stat_id"       TEXT,
    "minimum_stat"           TEXT,
    "minimum_link"           TEXT,
    "kingdom_id"             TEXT,
    "warrior_gender_id"      TEXT,
    "item_id"                TEXT,
    "recruiting_ko_required" INTEGER,
    FOREIGN KEY ("item_id") REFERENCES "items" ("id"),
    FOREIGN KEY ("required_stat_id") REFERENCES "conquest_stats" ("id"),
    FOREIGN KEY ("evolved_species_id") REFERENCES "pokemon_species" ("id"),
    FOREIGN KEY ("kingdom_id") REFERENCES "conquest_kingdoms" ("id"),
    FOREIGN KEY ("warrior_gender_id") REFERENCES "genders" ("id")
);
CREATE TABLE IF NOT EXISTS "item_flag_map"
(
    "item_id"      INTEGER,
    "item_flag_id" INTEGER,
    FOREIGN KEY ("item_id") REFERENCES "items" ("id"),
    FOREIGN KEY ("item_flag_id") REFERENCES "item_flags" ("id")
);
CREATE TABLE IF NOT EXISTS "item_flavor_summaries"
(
    "item_id",
    "local_language_id",
    "flavor_summary",
    FOREIGN KEY ("item_id") REFERENCES "items" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "item_flavor_text"
(
    "item_id"          INTEGER,
    "version_group_id" INTEGER,
    "language_id"      INTEGER,
    "flavor_text"      TEXT,
    FOREIGN KEY ("version_group_id") REFERENCES "version_groups" ("id"),
    FOREIGN KEY ("language_id") REFERENCES "languages" ("id"),
    FOREIGN KEY ("item_id") REFERENCES "items" ("id")
);
CREATE TABLE IF NOT EXISTS "item_game_indices"
(
    "item_id"       INTEGER,
    "generation_id" INTEGER,
    "game_index"    INTEGER,
    FOREIGN KEY ("item_id") REFERENCES "items" ("id"),
    FOREIGN KEY ("generation_id") REFERENCES "generations" ("id")
);
CREATE TABLE IF NOT EXISTS "item_names"
(
    "item_id"           INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    FOREIGN KEY ("item_id") REFERENCES "items" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "item_prose"
(
    "item_id"           INTEGER,
    "local_language_id" INTEGER,
    "short_effect"      TEXT,
    "effect"            TEXT,
    FOREIGN KEY ("item_id") REFERENCES "items" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "machines"
(
    "machine_number"   INTEGER,
    "version_group_id" INTEGER,
    "item_id"          INTEGER,
    "move_id"          INTEGER,
    FOREIGN KEY ("item_id") REFERENCES "items" ("id"),
    FOREIGN KEY ("version_group_id") REFERENCES "version_groups" ("id"),
    FOREIGN KEY ("move_id") REFERENCES "moves" ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_items"
(
    "pokemon_id" INTEGER,
    "version_id" INTEGER,
    "item_id"    INTEGER,
    "rarity"     INTEGER,
    FOREIGN KEY ("version_id") REFERENCES "versions" ("id"),
    FOREIGN KEY ("item_id") REFERENCES "items" ("id"),
    FOREIGN KEY ("pokemon_id") REFERENCES "pokemon" ("id")
);
CREATE TABLE IF NOT EXISTS "berry_firmness_names"
(
    "berry_firmness_id" INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    FOREIGN KEY ("berry_firmness_id") REFERENCES "berry_firmness" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "berry_flavors"
(
    "berry_id"        INTEGER,
    "contest_type_id" INTEGER,
    "flavor"          INTEGER,
    FOREIGN KEY ("berry_id") REFERENCES "berries" ("id"),
    FOREIGN KEY ("contest_type_id") REFERENCES "contest_types" ("id")
);
CREATE TABLE IF NOT EXISTS "characteristic_text"
(
    "characteristic_id" INTEGER,
    "local_language_id" INTEGER,
    "message"           TEXT,
    FOREIGN KEY ("characteristic_id") REFERENCES "characteristics" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "characteristics"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "stat_id"    INTEGER,
    "gene_mod_5" INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("stat_id") REFERENCES "stats" ("id")
);
CREATE TABLE IF NOT EXISTS "move_meta_stat_changes"
(
    "move_id" INTEGER,
    "stat_id" INTEGER,
    "change"  INTEGER,
    FOREIGN KEY ("stat_id") REFERENCES "stats" ("id"),
    FOREIGN KEY ("move_id") REFERENCES "moves" ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_stats"
(
    "pokemon_id" INTEGER,
    "stat_id"    INTEGER,
    "base_stat"  INTEGER,
    "effort"     INTEGER,
    FOREIGN KEY ("pokemon_id") REFERENCES "pokemon" ("id"),
    FOREIGN KEY ("stat_id") REFERENCES "stats" ("id")
);
CREATE TABLE IF NOT EXISTS "stat_names"
(
    "stat_id"           INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id"),
    FOREIGN KEY ("stat_id") REFERENCES "stats" ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_episode_names"
(
    "episode_id"        INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id"),
    FOREIGN KEY ("episode_id") REFERENCES "conquest_episodes" ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_episode_warriors"
(
    "episode_id" INTEGER,
    "warrior_id" INTEGER,
    FOREIGN KEY ("episode_id") REFERENCES "conquest_episodes" ("id"),
    FOREIGN KEY ("warrior_id") REFERENCES "conquest_warriors" ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_kingdom_names"
(
    "kingdom_id"        INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id"),
    FOREIGN KEY ("kingdom_id") REFERENCES "conquest_kingdoms" ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_kingdoms"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "identifier" TEXT,
    "type_id"    INTEGER,
    FOREIGN KEY ("type_id") REFERENCES "types" ("id"),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "contest_combos"
(
    "first_move_id"  INTEGER,
    "second_move_id" INTEGER,
    FOREIGN KEY ("second_move_id") REFERENCES "moves" ("id"),
    FOREIGN KEY ("first_move_id") REFERENCES "moves" ("id")
);
CREATE TABLE IF NOT EXISTS "super_contest_combos"
(
    "first_move_id"  INTEGER,
    "second_move_id" INTEGER,
    FOREIGN KEY ("second_move_id") REFERENCES "moves" ("id"),
    FOREIGN KEY ("first_move_id") REFERENCES "moves" ("id")
);
CREATE TABLE IF NOT EXISTS "contest_effect_prose"
(
    "contest_effect_id" INTEGER,
    "local_language_id" INTEGER,
    "flavor_text"       TEXT,
    "effect"            TEXT,
    FOREIGN KEY ("contest_effect_id") REFERENCES "contest_effects" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "moves"
(
    "id"                      INTEGER NOT NULL UNIQUE,
    "identifier"              TEXT,
    "generation_id"           INTEGER,
    "type_id"                 INTEGER,
    "power"                   TEXT,
    "pp"                      INTEGER,
    "accuracy"                TEXT,
    "priority"                INTEGER,
    "target_id"               INTEGER,
    "damage_class_id"         INTEGER,
    "effect_id"               INTEGER,
    "effect_chance"           TEXT,
    "contest_type_id"         INTEGER,
    "contest_effect_id"       INTEGER,
    "super_contest_effect_id" INTEGER,
    FOREIGN KEY ("generation_id") REFERENCES "generations" ("id"),
    FOREIGN KEY ("damage_class_id") REFERENCES "move_damage_classes" ("id"),
    FOREIGN KEY ("type_id") REFERENCES "types" ("id"),
    FOREIGN KEY ("effect_id") REFERENCES "move_effects" ("id"),
    FOREIGN KEY ("contest_type_id") REFERENCES "contest_types" ("id"),
    FOREIGN KEY ("super_contest_effect_id") REFERENCES "super_contest_effects" ("id"),
    FOREIGN KEY ("contest_effect_id") REFERENCES "contest_effects" ("id"),
    FOREIGN KEY ("target_id") REFERENCES "move_targets" ("id"),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "contest_type_names"
(
    "contest_type_id"   INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    "flavor"            TEXT,
    "color"             TEXT,
    FOREIGN KEY ("contest_type_id") REFERENCES "contest_types" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "egg_group_prose"
(
    "egg_group_id"      INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    FOREIGN KEY ("egg_group_id") REFERENCES "egg_groups" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_egg_groups"
(
    "species_id"   INTEGER,
    "egg_group_id" INTEGER,
    FOREIGN KEY ("egg_group_id") REFERENCES "egg_groups" ("id"),
    FOREIGN KEY ("species_id") REFERENCES "pokemon_species" ("id")
);
CREATE TABLE IF NOT EXISTS "encounter_condition_prose"
(
    "encounter_condition_id" INTEGER,
    "local_language_id"      INTEGER,
    "name"                   TEXT,
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id"),
    FOREIGN KEY ("encounter_condition_id") REFERENCES "encounter_conditions" ("id")
);
CREATE TABLE IF NOT EXISTS "encounter_condition_values"
(
    "id"                     INTEGER NOT NULL UNIQUE,
    "encounter_condition_id" INTEGER,
    "identifier"             TEXT,
    "is_default"             INTEGER,
    FOREIGN KEY ("encounter_condition_id") REFERENCES "encounter_conditions" ("id"),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "encounter_condition_value_map"
(
    "encounter_id"                 INTEGER,
    "encounter_condition_value_id" INTEGER,
    FOREIGN KEY ("encounter_condition_value_id") REFERENCES "encounter_condition_values" ("id"),
    FOREIGN KEY ("encounter_id") REFERENCES "encounters" ("id")
);
CREATE TABLE IF NOT EXISTS "encounter_condition_value_prose"
(
    "encounter_condition_value_id" INTEGER,
    "local_language_id"            INTEGER,
    "name"                         TEXT,
    FOREIGN KEY ("encounter_condition_value_id") REFERENCES "encounter_condition_values" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "encounter_method_prose"
(
    "encounter_method_id" INTEGER,
    "local_language_id"   INTEGER,
    "name"                TEXT,
    FOREIGN KEY ("encounter_method_id") REFERENCES "encounter_methods" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "encounter_slots"
(
    "id"                  INTEGER NOT NULL UNIQUE,
    "version_group_id"    INTEGER,
    "encounter_method_id" INTEGER,
    "slot"                INTEGER,
    "rarity"              INTEGER,
    FOREIGN KEY ("version_group_id") REFERENCES "version_groups" ("id"),
    FOREIGN KEY ("encounter_method_id") REFERENCES "encounter_methods" ("id"),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "location_area_encounter_rates"
(
    "location_area_id"    INTEGER,
    "encounter_method_id" INTEGER,
    "version_id"          INTEGER,
    "rate"                INTEGER,
    FOREIGN KEY ("encounter_method_id") REFERENCES "encounter_methods" ("id"),
    FOREIGN KEY ("location_area_id") REFERENCES "location_areas" ("id"),
    FOREIGN KEY ("version_id") REFERENCES "versions" ("id")
);
CREATE TABLE IF NOT EXISTS "encounters"
(
    "id"                INTEGER NOT NULL UNIQUE,
    "version_id"        INTEGER,
    "location_area_id"  INTEGER,
    "encounter_slot_id" INTEGER,
    "pokemon_id"        INTEGER,
    "min_level"         INTEGER,
    "max_level"         INTEGER,
    FOREIGN KEY ("pokemon_id") REFERENCES "pokemon" ("id"),
    FOREIGN KEY ("version_id") REFERENCES "versions" ("id"),
    FOREIGN KEY ("encounter_slot_id") REFERENCES "encounter_slots" ("id"),
    FOREIGN KEY ("location_area_id") REFERENCES "location_areas" ("id"),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_game_indices"
(
    "pokemon_id" INTEGER,
    "version_id" INTEGER,
    "game_index" INTEGER,
    FOREIGN KEY ("pokemon_id") REFERENCES "pokemon" ("id"),
    FOREIGN KEY ("version_id") REFERENCES "versions" ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_species_flavor_text"
(
    "species_id"  INTEGER,
    "version_id"  INTEGER,
    "language_id" INTEGER,
    "flavor_text" TEXT,
    FOREIGN KEY ("species_id") REFERENCES "pokemon_species" ("id"),
    FOREIGN KEY ("version_id") REFERENCES "versions" ("id"),
    FOREIGN KEY ("language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "version_names"
(
    "version_id"        INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    FOREIGN KEY ("version_id") REFERENCES "versions" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "evolution_trigger_prose"
(
    "evolution_trigger_id" INTEGER,
    "local_language_id"    INTEGER,
    "name"                 TEXT,
    FOREIGN KEY ("evolution_trigger_id") REFERENCES "evolution_triggers" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "experience"
(
    "growth_rate_id" INTEGER,
    "level"          INTEGER,
    "experience"     INTEGER,
    FOREIGN KEY ("growth_rate_id") REFERENCES "growth_rates" ("id")
);
CREATE TABLE IF NOT EXISTS "growth_rate_prose"
(
    "growth_rate_id"    INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id"),
    FOREIGN KEY ("growth_rate_id") REFERENCES "growth_rates" ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_species"
(
    "id"                      INTEGER NOT NULL UNIQUE,
    "identifier"              TEXT,
    "generation_id"           INTEGER,
    "evolves_from_species_id" TEXT,
    "evolution_chain_id"      INTEGER,
    "color_id"                INTEGER,
    "shape_id"                INTEGER,
    "habitat_id"              INTEGER,
    "gender_rate"             INTEGER,
    "capture_rate"            INTEGER,
    "base_happiness"          INTEGER,
    "is_baby"                 INTEGER,
    "hatch_counter"           INTEGER,
    "has_gender_differences"  INTEGER,
    "growth_rate_id"          INTEGER,
    "forms_switchable"        INTEGER,
    "is_legendary"            INTEGER,
    "is_mythical"             INTEGER,
    "order"                   INTEGER,
    "conquest_order"          TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("growth_rate_id") REFERENCES "growth_rates" ("id"),
    FOREIGN KEY ("color_id") REFERENCES "pokemon_colors" ("id"),
    FOREIGN KEY ("habitat_id") REFERENCES "pokemon_habitats" ("id"),
    FOREIGN KEY ("evolution_chain_id") REFERENCES "evolution_chains" ("id"),
    FOREIGN KEY ("shape_id") REFERENCES "pokemon_shapes" ("id"),
    FOREIGN KEY ("evolves_from_species_id") REFERENCES "pokemon_species" ("id"),
    FOREIGN KEY ("generation_id") REFERENCES "generations" ("id")
);
CREATE TABLE IF NOT EXISTS "generation_names"
(
    "generation_id"     INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    FOREIGN KEY ("generation_id") REFERENCES "generations" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "location_game_indices"
(
    "location_id"   INTEGER,
    "generation_id" INTEGER,
    "game_index"    INTEGER,
    FOREIGN KEY ("location_id") REFERENCES "locations" ("id"),
    FOREIGN KEY ("generation_id") REFERENCES "generations" ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_form_generations"
(
    "pokemon_form_id" INTEGER,
    "generation_id"   INTEGER,
    "game_index"      INTEGER,
    FOREIGN KEY ("pokemon_form_id") REFERENCES "pokemon_forms" ("id"),
    FOREIGN KEY ("generation_id") REFERENCES "generations" ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_types_past"
(
    "pokemon_id"    INTEGER,
    "generation_id" INTEGER,
    "type_id"       INTEGER,
    "slot"          INTEGER,
    FOREIGN KEY ("pokemon_id") REFERENCES "pokemon" ("id"),
    FOREIGN KEY ("generation_id") REFERENCES "generations" ("id"),
    FOREIGN KEY ("type_id") REFERENCES "types" ("id")
);
CREATE TABLE IF NOT EXISTS "type_efficacy_past"
(
    "damage_type_id" INTEGER,
    "target_type_id" INTEGER,
    "damage_factor"  INTEGER,
    "generation_id"  INTEGER,
    FOREIGN KEY ("target_type_id") REFERENCES "types" ("id"),
    FOREIGN KEY ("generation_id") REFERENCES "generations" ("id"),
    FOREIGN KEY ("damage_type_id") REFERENCES "types" ("id")
);
CREATE TABLE IF NOT EXISTS "type_game_indices"
(
    "type_id"       INTEGER,
    "generation_id" INTEGER,
    "game_index"    INTEGER,
    FOREIGN KEY ("type_id") REFERENCES "types" ("id"),
    FOREIGN KEY ("generation_id") REFERENCES "generations" ("id")
);
CREATE TABLE IF NOT EXISTS "types"
(
    "id"              INTEGER NOT NULL UNIQUE,
    "identifier"      TEXT,
    "generation_id"   INTEGER,
    "damage_class_id" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("damage_class_id") REFERENCES "move_damage_classes" ("id"),
    FOREIGN KEY ("generation_id") REFERENCES "generations" ("id")
);
CREATE TABLE IF NOT EXISTS "version_groups"
(
    "id"            INTEGER NOT NULL UNIQUE,
    "identifier"    TEXT,
    "generation_id" INTEGER,
    "order"         INTEGER,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("generation_id") REFERENCES "generations" ("id")
);
CREATE TABLE IF NOT EXISTS "generations"
(
    "id"             INTEGER NOT NULL UNIQUE,
    "main_region_id" INTEGER,
    "identifier"     TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("main_region_id") REFERENCES "regions" ("id")
);
CREATE TABLE IF NOT EXISTS "item_categories"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "pocket_id"  INTEGER,
    "identifier" TEXT,
    PRIMARY KEY ("id"),
    FOREIGN KEY ("pocket_id") REFERENCES "item_pockets" ("id")
);
CREATE TABLE IF NOT EXISTS "item_category_prose"
(
    "item_category_id"  INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    FOREIGN KEY ("item_category_id") REFERENCES "item_categories" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "item_flag_prose"
(
    "item_flag_id"      INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    "description"       TEXT,
    FOREIGN KEY ("item_flag_id") REFERENCES "item_flags" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "item_fling_effect_prose"
(
    "item_fling_effect_id" INTEGER,
    "local_language_id"    INTEGER,
    "effect"               TEXT,
    FOREIGN KEY ("item_fling_effect_id") REFERENCES "item_fling_effects" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "item_pocket_names"
(
    "item_pocket_id"    INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    FOREIGN KEY ("item_pocket_id") REFERENCES "item_pockets" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "items"
(
    "id"              INTEGER NOT NULL UNIQUE,
    "identifier"      TEXT,
    "category_id"     INTEGER,
    "cost"            INTEGER,
    "fling_power"     TEXT,
    "fling_effect_id" TEXT,
    FOREIGN KEY ("category_id") REFERENCES "item_categories" ("id"),
    FOREIGN KEY ("fling_effect_id") REFERENCES "item_fling_effects" ("id"),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "language_names"
(
    "language_id"       INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    FOREIGN KEY ("language_id") REFERENCES "languages" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "move_flavor_text"
(
    "move_id"          INTEGER,
    "version_group_id" INTEGER,
    "language_id"      INTEGER,
    "flavor_text"      TEXT,
    FOREIGN KEY ("language_id") REFERENCES "languages" ("id"),
    FOREIGN KEY ("version_group_id") REFERENCES "version_groups" ("id"),
    FOREIGN KEY ("move_id") REFERENCES "moves" ("id")
);
CREATE TABLE IF NOT EXISTS "location_area_prose"
(
    "location_area_id"  INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    FOREIGN KEY ("location_area_id") REFERENCES "location_areas" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "location_names"
(
    "location_id"       INTEGER,
    "local_language_id" INTEGER,
    "name"              TEXT,
    "subtitle"          TEXT,
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id"),
    FOREIGN KEY ("location_id") REFERENCES "locations" ("id")
);
CREATE TABLE IF NOT EXISTS "move_battle_style_prose"
(
    "move_battle_style_id" INTEGER,
    "local_language_id"    INTEGER,
    "name"                 TEXT,
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id"),
    FOREIGN KEY ("move_battle_style_id") REFERENCES "move_battle_styles" ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon"
(
    "id"              INTEGER NOT NULL UNIQUE,
    "identifier"      TEXT,
    "species_id"      INTEGER,
    "height"          INTEGER,
    "weight"          INTEGER,
    "base_experience" INTEGER,
    "order"           INTEGER,
    "is_default"      INTEGER,
    FOREIGN KEY ("species_id") REFERENCES "pokemon_species" ("id"),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "move_changelog"
(
    "move_id"                     INTEGER,
    "changed_in_version_group_id" INTEGER,
    "type_id"                     TEXT,
    "power"                       TEXT,
    "pp"                          TEXT,
    "accuracy"                    TEXT,
    "priority"                    TEXT,
    "target_id"                   TEXT,
    "effect_id"                   TEXT,
    "effect_chance"               TEXT,
    FOREIGN KEY ("effect_id") REFERENCES "move_effects" ("id"),
    FOREIGN KEY ("type_id") REFERENCES "types" ("id"),
    FOREIGN KEY ("changed_in_version_group_id") REFERENCES "version_groups" ("id"),
    FOREIGN KEY ("move_id") REFERENCES "moves" ("id"),
    FOREIGN KEY ("target_id") REFERENCES "move_targets" ("id")
);
CREATE TABLE IF NOT EXISTS "location_areas"
(
    "id"          INTEGER NOT NULL UNIQUE,
    "location_id" INTEGER,
    "game_index"  INTEGER,
    "identifier"  TEXT,
    FOREIGN KEY ("location_id") REFERENCES "locations" ("id"),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "locations"
(
    "id"         INTEGER NOT NULL UNIQUE,
    "region_id"  INTEGER,
    "identifier" TEXT,
    FOREIGN KEY ("region_id") REFERENCES "regions" ("id"),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "versions"
(
    "id"               INTEGER NOT NULL UNIQUE,
    "version_group_id" INTEGER,
    "identifier"       TEXT,
    FOREIGN KEY ("version_group_id") REFERENCES "version_groups" ("id"),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_species_flavor_summaries"
(
    "pokemon_species_id" INTEGER,
    "local_language_id"  INTEGER,
    "flavor_summary"     TEXT,
    FOREIGN KEY ("pokemon_species_id") REFERENCES "pokemon_species" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "move_flavor_summaries"
(
    "move_id"           INTEGER,
    "local_language_id" INTEGER,
    "flavor_summary"    TEXT,
    FOREIGN KEY ("move_id") REFERENCES "moves" ("id"),
    FOREIGN KEY ("local_language_id") REFERENCES "languages" ("id")
);
CREATE TABLE IF NOT EXISTS "conquest_move_data"
(
    "move_id"         INTEGER,
    "power"           INTEGER,
    "accuracy"        INTEGER,
    "effect_chance"   TEXT,
    "effect_id"       INTEGER,
    "range_id"        INTEGER,
    "displacement_id" INTEGER
);
CREATE TABLE IF NOT EXISTS "pokedexes"
(
    "id"             INTEGER NOT NULL UNIQUE,
    "region_id"      INTEGER,
    "identifier"     TEXT,
    "is_main_series" INTEGER,
    FOREIGN KEY ("region_id") REFERENCES "regions" ("id"),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "stats"
(
    "id"              INTEGER NOT NULL UNIQUE,
    "damage_class_id" INTEGER,
    "identifier"      TEXT,
    "is_battle_only"  INTEGER,
    "game_index"      TEXT,
    FOREIGN KEY ("damage_class_id") REFERENCES "move_damage_classes" ("id"),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "evolution_chains"
(
    "id"                   INTEGER NOT NULL UNIQUE,
    "baby_trigger_item_id" INTEGER,
    FOREIGN KEY ("baby_trigger_item_id") REFERENCES "items" ("id"),
    PRIMARY KEY ("id")
);
CREATE TABLE IF NOT EXISTS "pokemon_evolution"
(
    "id"                      INTEGER NOT NULL UNIQUE,
    "evolved_species_id"      INTEGER,
    "evolution_trigger_id"    INTEGER,
    "trigger_item_id"         INTEGER,
    "minimum_level"           TEXT,
    "gender_id"               INTEGER,
    "location_id"             INTEGER,
    "held_item_id"            INTEGER,
    "time_of_day"             TEXT,
    "known_move_id"           INTEGER,
    "known_move_type_id"      INTEGER,
    "minimum_happiness"       TEXT,
    "minimum_beauty"          TEXT,
    "minimum_affection"       TEXT,
    "relative_physical_stats" TEXT,
    "party_species_id"        INTEGER,
    "party_type_id"           INTEGER,
    "trade_species_id"        INTEGER,
    "needs_overworld_rain"    INTEGER,
    "turn_upside_down"        INTEGER,
    FOREIGN KEY ("party_type_id") REFERENCES "types" ("id"),
    FOREIGN KEY ("party_species_id") REFERENCES "pokemon_species" ("id"),
    FOREIGN KEY ("trigger_item_id") REFERENCES "items" ("id"),
    FOREIGN KEY ("trade_species_id") REFERENCES "pokemon_species" ("id"),
    FOREIGN KEY ("location_id") REFERENCES "locations" ("id"),
    FOREIGN KEY ("gender_id") REFERENCES "genders" ("id"),
    FOREIGN KEY ("known_move_id") REFERENCES "moves" ("id"),
    FOREIGN KEY ("evolved_species_id") REFERENCES "pokemon_species" ("id"),
    FOREIGN KEY ("known_move_type_id") REFERENCES "types" ("id"),
    FOREIGN KEY ("held_item_id") REFERENCES "items" ("id"),
    FOREIGN KEY ("evolution_trigger_id") REFERENCES "evolution_triggers" ("id"),
    PRIMARY KEY ("id")
);