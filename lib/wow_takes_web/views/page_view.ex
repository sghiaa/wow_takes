defmodule WowTakesWeb.PageView do
  use WowTakesWeb, :view
  import WowTakes

  def tweet() do
    tweet(format())
  end
  def tweet(:if_loving_wrong) do
    topic = topic()
    "if loving #{topic} is wrong i dont want to love #{topic}"
  end
  def tweet(:if_loving_right) do
    "if loving #{topic()} is wrong i dont want to be right"
  end
  def tweet(:hasnt_been_fun) do
    "#{spec()} hasnt been #{subjective_value()} since #{expansion()}"
  end
  def tweet(:was_good_actually) do
    "#{system()} was #{subjective_value()} actually"
  end
  def tweet(:i_miss) do
    "i miss grinding #{old_dungeon()}"
  end
  def tweet(:remember_when) do
    "remember when #{topic()} was #{subjective_value()}"
  end
  def tweet(:can_we_go_back_to) do
    "can we go back to #{expansion()}"
  end
  def tweet(:i_used_to) do
    "i used to play #{spec()} in #{old_dungeon()} but now its all #{spec()} in #{dungeon()}"
  end
  def tweet(:buff_nerf) do
    "honestly blizzard needs to #{buff_nerf()} #{spec()}"
  end
  def tweet(:ideal_mplus_comp) do
    "the ideal comp for #{dungeon()} is #{tank()} #{healer()} #{dps()} #{dps()} #{dps()}"
  end
  def tweet(:top_five_raids) do
    "the top 5 raids in order are #{raid()}, #{raid()}, #{raid()}, #{raid()}, and #{raid()} "
  end
end
