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
    Enum.at(topics, Enum.random(0..length(topics) - 1))
  end
  def spec() do
    Enum.at(specs(), Enum.random(0..length(specs()) - 1))
  end
  def expansion() do
    Enum.at(expansions(), Enum.random(0..length(expansions()) - 1))
  end
  def dungeon() do
    Enum.at(dungeons(), Enum.random(0..length(dungeons()) - 1))
  end
  def system() do
    Enum.at(systems(), Enum.random(0..length(systems()) - 1))
  end
  def old_dungeon() do
    Enum.at(old_dungeons(), Enum.random(0..length(old_dungeons()) - 1))
  end
  def subjective_value() do
    Enum.at(subjective_values(), Enum.random(0..length(subjective_values()) - 1))
  end
  def buff_nerf() do
    Enum.at(buff_nerfs(), Enum.random(0..length(buff_nerfs()) - 1))
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
    ]
  end

end
