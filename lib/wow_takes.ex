defmodule WowTakes do
  @moduledoc """
  WowTakes keeps the contexts that define your domain
  and business logic.

  Contexts are also responsible for managing your data, regardless
  if it comes from the database, an external API or others.
  """
  def format() do
    Enum.at(formats, Enum.random(0..length(formats) - 1))
  end

  def topic() do
    topics = specs ++ expansions ++ dungeons ++ systems
    Enum.at(topics, Enum.random(0..length(topics) - 1))
  end
  def spec() do
    Enum.at(specs, Enum.random(0..length(specs) - 1))
  end
  def expansion() do
    Enum.at(expansions, Enum.random(0..length(expansions) - 1))
  end
  def dungeon() do
    Enum.at(dungeons, Enum.random(0..length(dungeons) - 1))
  end
  def system() do
    Enum.at(systems, Enum.random(0..length(systems) - 1))
  end
  def old_dungeon() do
    Enum.at(old_dungeons, Enum.random(0..length(old_dungeons) - 1))
  end
  def subjective_value() do
    Enum.at(subjective_values, Enum.random(0..length(subjective_values) - 1))
  end

  def topic_text(:havoc_dh), do: "havoc"
  def topic_text(:vengeance_dh), do: "vengeance"
  def topic_text(:balance_druid), do: "boomkin"
  def topic_text(:feral_druid), do: "feral"
  def topic_text(:guardian_druid), do: "bear"
  def topic_text(:restoration_druid), do: "resto druid"
  def topic_text(:protection_warrior), do: "prot warrior"
  def topic_text(:fury_warrior), do: "fury"
  def topic_text(:arms_warrior), do: "arms"
  def topic_text(:shadow_priest), do: "shadow"
  def topic_text(:discipline_priest), do: "disc"
  def topic_text(:holy_priest), do: "holy priest"
  def topic_text(:preservation_evoker), do: "prevoker"
  def topic_text(:devastation_evoker), do: "devoker"
  def topic_text(:destruction_warlock), do: "destro"
  def topic_text(:affliction_warlock), do: "aff"
  def topic_text(:demonology_warlock), do: "demo"
  def topic_text(:assassination_rogue), do: "sin"
  def topic_text(:subtlety_rogue), do: "sub"
  def topic_text(:outlaw_rogue), do: "outlaw"
  def topic_text(:restoration_shaman), do: "rsham"
  def topic_text(:enhancement_shaman), do: "enh"
  def topic_text(:elemental_shaman), do: "ele"
  def topic_text(:fire_mage), do: "fire"
  def topic_text(:frost_mage), do: "frost"
  def topic_text(:arcane_mage), do: "arcane"
  def topic_text(:survival_hunter), do: "surv"
  def topic_text(:marksmanship_hunter), do: "mm"
  def topic_text(:beastmastery_hunter), do: "bm"
  def topic_text(:protection_paladin), do: "prot pally"
  def topic_text(:holy_paladin), do: "hpal"
  def topic_text(:retribution_paladin), do: "ret"
  def topic_text(:blood_deathknight), do: "bdk"
  def topic_text(:unholy_deathknight), do: "unholy"
  def topic_text(:frost_deathknight), do: "frost dk"
  def topic_text(:halls_of_valor), do: "hov"
  def topic_text(:shadowmoon_burial_grounds), do: "smbg"
  def topic_text(:temple_of_the_jade_serpant), do: "totjs"
  def topic_text(:court_of_stars), do: "cos"
  def topic_text(:ruby_life_pools), do: "rlp"
  def topic_text(:azure_vaults), do: "av"
  def topic_text(:algathar_academy), do: "aa"
  def topic_text(:nokhud_offensive), do: "nokhud"
  def topic_text(:classic_wow), do: "classic"
  def topic_text(:tbc), do: "tbc"
  def topic_text(:wotlk), do: "wotlk"
  def topic_text(:cataclysm), do: "cata"
  def topic_text(:mop), do: "mop"
  def topic_text(:wod), do: "wod"
  def topic_text(:legion), do: "legion"
  def topic_text(:bfa), do: "bfa"
  def topic_text(:shadowlands), do: "slands"
  def topic_text(:dragonflight), do: "df"
  def topic_text(:artifact_power), do: "ap"
  def topic_text(:torghast), do: "torghast"
  def topic_text(:warfronts), do: "warfronts"
  def topic_text(:anima), do: "anima"
  def topic_text(:world_bosses), do: "world bosses"
  def topic_text(:tier_sets), do: "tier sets"
  def topic_text(:artifact_weapons), do: "artifact weapons"
  def topic_text(:azerite_armor), do: "azerite armor"
  def topic_text(:maw_of_souls), do: "maw of souls"
  def topic_text(:court_of_stars), do: "court of stars"
  def topic_text(:cathedral_of_eternal_night), do: "cathedral"
  def topic_text(:black_rook_hold), do: "brh"
  def topic_text(:darkheart_thicket), do: "dht"
  def topic_text(:eye_of_azshara), do: "eoa"
  def topic_text(:halls_of_valor), do: "hov"
  def topic_text(:upper_karazhan), do: "upper kara"
  def topic_text(:lower_karazhan), do: "lower kara"
  def topic_text(:neltharions_lair), do: "nelths lair"
  def topic_text(:seat_of_the_triumvirate), do: "seat"
  def topic_text(:the_arcway), do: "arcway"
  def topic_text(:vault_of_the_wardens), do: "votw"
  def topic_text(:good), do: "good"
  def topic_text(:bad), do: "bad"
  def topic_text(:overpowered), do: "op"
  def topic_text(:useless), do: "useless"
  def topic_text(:broken), do: "broken"
  def topic_text(:fun), do: "fun"
  def topic_text(:boring), do: "boring"
  def topic_text(:sick), do: "sick"
  def topic_text(:garbage), do: "garbage"

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

  def formats do
    [
      :if_loving,
      :hasnt_been_fun,
      :was_good_actually,
      :i_miss,
      :remember_when,
      :can_we_go_back_to
    ]
  end

end
