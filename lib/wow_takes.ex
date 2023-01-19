defmodule WowTakes do
  @moduledoc """
  WowTakes keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  def format() do
    Enum.at(formats(), Enum.random(0..length(formats()) - 1))
  end

  def topic() do
    topics = specs() ++ expansions() ++ dungeons() ++ systems()
    translate(Enum.at(topics, Enum.random(0..length(topics) - 1)))
  end
  def spec() do
    translate(Enum.at(specs(), Enum.random(0..length(specs()) - 1)))
  end
  def tank() do
    translate(Enum.at(tanks(), Enum.random(0..length(tanks()) - 1)))
  end
  def healer() do
    translate(Enum.at(healers(), Enum.random(0..length(healers()) - 1)))
  end
  def dps() do
    translate(Enum.at(dpses(), Enum.random(0..length(dpses()) - 1)))
  end
  def expansion() do
    translate(Enum.at(expansions(), Enum.random(0..length(expansions()) - 1)))
  end
  def dungeon() do
    translate(Enum.at(dungeons(), Enum.random(0..length(dungeons()) - 1)))
  end
  def raid() do
    translate(Enum.at(raids(), Enum.random(0..length(raids()) - 1)))
  end
  def system() do
    translate(Enum.at(systems(), Enum.random(0..length(systems()) - 1)))
  end
  def old_dungeon() do
    translate(Enum.at(old_dungeons(), Enum.random(0..length(old_dungeons()) - 1)))
  end
  def subjective_value() do
    translate(Enum.at(subjective_values(), Enum.random(0..length(subjective_values()) - 1)))
  end
  def buff_nerf() do
    translate(Enum.at(buff_nerfs(), Enum.random(0..length(buff_nerfs()) - 1)))
  end

  def translate(:havoc_dh), do: "havoc"
  def translate(:vengeance_dh), do: "vengeance"
  def translate(:balance_druid), do: "boomkin"
  def translate(:feral_druid), do: "feral"
  def translate(:guardian_druid), do: "bear"
  def translate(:restoration_druid), do: "resto druid"
  def translate(:protection_warrior), do: "prot warrior"
  def translate(:fury_warrior), do: "fury"
  def translate(:arms_warrior), do: "arms"
  def translate(:shadow_priest), do: "shadow"
  def translate(:discipline_priest), do: "disc"
  def translate(:holy_priest), do: "holy priest"
  def translate(:preservation_evoker), do: "prevoker"
  def translate(:devastation_evoker), do: "devoker"
  def translate(:destruction_warlock), do: "destro"
  def translate(:affliction_warlock), do: "aff"
  def translate(:demonology_warlock), do: "demo"
  def translate(:assassination_rogue), do: "sin"
  def translate(:subtlety_rogue), do: "sub"
  def translate(:outlaw_rogue), do: "outlaw"
  def translate(:restoration_shaman), do: "rsham"
  def translate(:enhancement_shaman), do: "enh"
  def translate(:elemental_shaman), do: "ele"
  def translate(:fire_mage), do: "fire"
  def translate(:frost_mage), do: "frost"
  def translate(:arcane_mage), do: "arcane"
  def translate(:survival_hunter), do: "surv"
  def translate(:marksmanship_hunter), do: "mm"
  def translate(:beastmastery_hunter), do: "bm"
  def translate(:protection_paladin), do: "prot pally"
  def translate(:holy_paladin), do: "hpal"
  def translate(:retribution_paladin), do: "ret"
  def translate(:blood_deathknight), do: "bdk"
  def translate(:unholy_deathknight), do: "unholy"
  def translate(:frost_deathknight), do: "frost dk"
  def translate(:windwalker), do: "windwalker"
  def translate(:mistweaver), do: "mistweaver"
  def translate(:brewmaster), do: "brewmaster"
  def translate(:shadowmoon_burial_grounds), do: "smbg"
  def translate(:temple_of_the_jade_serpant), do: "totjs"
  def translate(:court_of_stars), do: "cos"
  def translate(:ruby_life_pools), do: "rlp"
  def translate(:azure_vaults), do: "av"
  def translate(:algathar_academy), do: "aa"
  def translate(:nokhud_offensive), do: "nokhud"
  def translate(:classic_wow), do: "classic"
  def translate(:tbc), do: "tbc"
  def translate(:wotlk), do: "wotlk"
  def translate(:cataclysm), do: "cata"
  def translate(:mop), do: "mop"
  def translate(:wod), do: "wod"
  def translate(:legion), do: "legion"
  def translate(:bfa), do: "bfa"
  def translate(:shadowlands), do: "slands"
  def translate(:dragonflight), do: "df"
  def translate(:artifact_power), do: "ap"
  def translate(:torghast), do: "torghast"
  def translate(:warfronts), do: "warfronts"
  def translate(:anima), do: "anima"
  def translate(:world_bosses), do: "world bosses"
  def translate(:tier_sets), do: "tier sets"
  def translate(:artifact_weapons), do: "artifact weapons"
  def translate(:azerite_armor), do: "azerite armor"
  def translate(:maw_of_souls), do: "maw of souls"
  def translate(:cathedral_of_eternal_night), do: "cathedral"
  def translate(:black_rook_hold), do: "brh"
  def translate(:darkheart_thicket), do: "dht"
  def translate(:eye_of_azshara), do: "eoa"
  def translate(:halls_of_valor), do: "hov"
  def translate(:upper_karazhan), do: "upper kara"
  def translate(:lower_karazhan), do: "lower kara"
  def translate(:neltharions_lair), do: "nelths lair"
  def translate(:seat_of_the_triumvirate), do: "seat"
  def translate(:the_arcway), do: "arcway"
  def translate(:vault_of_the_wardens), do: "votw"
  def translate(:good), do: "good"
  def translate(:bad), do: "bad"
  def translate(:overpowered), do: "op"
  def translate(:useless), do: "useless"
  def translate(:broken), do: "broken"
  def translate(:fun), do: "fun"
  def translate(:boring), do: "boring"
  def translate(:sick), do: "sick"
  def translate(:garbage), do: "garbage"
  def translate(:buff), do: "buff"
  def translate(:nerf), do: "nerf"
  def translate(:gigabuff), do: "gigabuff"
  def translate(:giganerf), do: "giganerf"
  def translate(:vault_of_the_incarnates), do: "voti"
  def translate(:antorus), do: "antorus"
  def translate(:nighthold), do: "nighthold"
  def translate(:tomb_of_sargaras), do: "tomb"
  def translate(:battle_of_dazaralor), do: "bod"
  def translate(:firelands), do: "firelands"
  def translate(:nyalotha), do: "nyalotha"
  def translate(:emerald_nightmare), do: "en"
  def translate(:hellfire_citadel), do: "hfc"
  def translate(:blackrock_foundry), do: "brf"
  def translate(:sanctum_of_domination), do: "sod"
  def translate(:naxxramas_wotlk), do: "wotlk naxx"
  def translate(:naxxramas_vanilla), do: "vanilla naxx"
  def translate(:ulduar), do: "ulduar"
  def translate(:sepulcher), do: "sofo"
  def translate(:throne_of_thunder), do: "tot"
  def translate(:siege_of_org), do: "soo"
  def translate(:dragon_soul), do: "ds"
  def translate(:karazhan), do: "kara"
  def translate(:molten_core), do: "mc"
  def translate(:blackwing_lair), do: "bwl"
  def translate(:trial_of_valor), do: "tov"
  def translate(:uldir), do: "uldir"
  def translate(:mogushan_vaults), do: "mogushan vaults"
  def translate(:bastion_of_twilight), do: "bastion of twilight"
  def translate(:eternal_palance), do: "ep"
  def translate(:temple_of_anquiraj), do: "aq40"
  def translate(:the_eye), do: "the eye"
  def translate(:onyxia), do: "onyxia"
  def translate(:black_temple), do: "bt"
  def translate(:sunwell), do: "sunwell"
  def translate(:blackwing_descent), do: "bwd"
  def translate(:heart_of_fear), do: "hof"
  def translate(:castle_nathria), do: "nathria"
  def translate(:icecrown_citadel), do: "icc"
  def translate(:trial_of_the_crusader), do: "toc"
  def translate(:highmaul), do: "highmaul"
  def translate(:throne_of_four_winds), do: "totfw"
  def translate(:terrace_of_endless_spring), do: "terrace of endless spring"
  def translate(:serprentshrine_cavern), do: "ssc"
  def translate(:hyjal), do: "hyjal"
  def translate(:crucible_of_storms), do: "crucible"
  def translate(:eye_of_eternity), do: "eoe"
  def translate(:vault_of_archavon), do: "archavon"
  def translate(:obsidian_sanctum), do: "os"
  def translate(:baradin_hold), do: "bh"
  def translate(:ruins_of_ahnquiraj), do: "aq20"
  def translate(:gruuls_lair), do: "gruul"
  def translate(:magtheridons_lair), do: "magtheridon"
  def translate(:ruby_sanctum), do: "rs"

  def raids do
    [
      :vault_of_the_incarnates,
      :antorus,
      :nighthold,
      :tomb_of_sargaras,
      :battle_of_dazaralor,
      :firelands,
      :nyalotha,
      :emerald_nightmare,
      :hellfire_citadel,
      :blackrock_foundry,
      :sanctum_of_domination,
      :naxxramas_wotlk,
      :naxxramas_vanilla,
      :ulduar,
      :sepulcher,
      :throne_of_thunder,
      :siege_of_org,
      :dragon_soul,
      :karazhan,
      :molten_core,
      :blackwing_lair,
      :trial_of_valor,
      :uldir,
      :mogushan_vaults,
      :bastion_of_twilight,
      :eternal_palance,
      :temple_of_anquiraj,
      :the_eye,
      :onyxia,
      :black_temple,
      :sunwell,
      :blackwing_descent,
      :heart_of_fear,
      :castle_nathria,
      :icecrown_citadel,
      :trial_of_the_crusader,
      :highmaul,
      :throne_of_four_winds,
      :terrace_of_endless_spring,
      :serprentshrine_cavern,
      :hyjal,
      :crucible_of_storms,
      :eye_of_eternity,
      :vault_of_archavon,
      :obsidian_sanctum,
      :baradin_hold,
      :ruins_of_ahnquiraj,
      :gruuls_lair,
      :magtheridons_lair,
      :ruby_sanctum,
    ]
  end

  def tanks do
    [
      :vengeance_dh,
      :guardian_druid,
      :protection_warrior,
      :protection_paladin,
      :blood_deathknight,
      :brewmaster
    ]
  end

  def dpses do
    [
      :havoc_dh,
      :balance_druid,
      :feral_druid,
      :fury_warrior,
      :arms_warrior,
      :shadow_priest,
      :devastation_evoker,
      :destruction_warlock,
      :affliction_warlock,
      :demonology_warlock,
      :assassination_rogue,
      :subtlety_rogue,
      :outlaw_rogue,
      :enhancement_shaman,
      :elemental_shaman,
      :fire_mage,
      :frost_mage,
      :arcane_mage,
      :survival_hunter,
      :marksmanship_hunter,
      :beastmastery_hunter,
      :retribution_paladin,
      :unholy_deathknight,
      :frost_deathknight,
      :windwalker,
    ]
  end

  def healers do
    [
      :restoration_druid,
      :discipline_priest,
      :holy_priest,
      :preservation_evoker,
      :restoration_shaman,
      :holy_paladin,
      :mistweaver,
    ]
  end

  def specs do
    [
      :havoc_dh,
      :vengeance_dh,
      :balance_druid,
      :feral_druid,
      :guardian_druid,
      :restoration_druid,
      :protection_warrior,
      :fury_warrior,
      :arms_warrior,
      :shadow_priest,
      :discipline_priest,
      :holy_priest,
      :preservation_evoker,
      :devastation_evoker,
      :destruction_warlock,
      :affliction_warlock,
      :demonology_warlock,
      :assassination_rogue,
      :subtlety_rogue,
      :outlaw_rogue,
      :restoration_shaman,
      :enhancement_shaman,
      :elemental_shaman,
      :fire_mage,
      :frost_mage,
      :arcane_mage,
      :survival_hunter,
      :marksmanship_hunter,
      :beastmastery_hunter,
      :protection_paladin,
      :holy_paladin,
      :retribution_paladin,
      :blood_deathknight,
      :unholy_deathknight,
      :frost_deathknight,
      :brewmaster,
      :windwalker,
      :mistweaver,
    ]
  end

  def dungeons do
    [
      :halls_of_valor,
      :shadowmoon_burial_grounds,
      :temple_of_the_jade_serpant,
      :court_of_stars,
      :ruby_life_pools,
      :azure_vaults,
      :algathar_academy,
      :nokhud_offensive,
    ]
  end
  def expansions do
    [
      :classic_wow,
      :tbc,
      :wotlk,
      :cataclysm,
      :mop,
      :wod,
      :legion,
      :bfa,
      :shadowlands,
      :dragonflight
    ]
  end
  def systems do
    [
      :artifact_power,
      :torghast,
      :warfronts,
      :anima,
      :world_bosses,
      :tier_sets,
      :artifact_weapons,
      :azerite_armor,
    ]
  end
  def old_dungeons do
    [
      :maw_of_souls,
      :court_of_stars,
      :cathedral_of_eternal_night,
      :black_rook_hold,
      :darkheart_thicket,
      :eye_of_azshara,
      :halls_of_valor,
      :upper_karazhan,
      :lower_karazhan,
      :neltharions_lair,
      :seat_of_the_triumvirate,
      :the_arcway,
      :vault_of_the_wardens,
    ]
  end

  def subjective_values do
    [
      :good,
      :bad,
      :overpowered,
      :useless,
      :broken,
      :fun,
      :boring,
      :sick,
      :garbage,
    ]
  end

  def buff_nerfs do
    [
      :buff,
      :nerf,
      :gigabuff,
      :giganerf,
    ]
  end

  def formats do
    [
      :if_loving_wrong,
      :if_loving_right,
      :hasnt_been_fun,
      :was_good_actually,
      :i_miss,
      :remember_when,
      :can_we_go_back_to,
      :i_used_to,
      :buff_nerf,
      :ideal_mplus_comp,
      :top_five_raids,
    ]
  end

end
