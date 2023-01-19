defmodule WowTakesWeb.PageView do
  use WowTakesWeb, :view
  import WowTakes

  def tweet() do
    tweet(format())
  end
  def tweet(:if_loving_wrong) do
    topic = translate(topic())
    "if loving #{topic} is wrong i dont want to love #{topic}"
  end
  def tweet(:if_loving_right) do
    "if loving #{translate(topic())} is wrong i dont want to be right"
  end
  def tweet(:hasnt_been_fun) do
    "#{translate(spec())} hasnt been #{translate(subjective_value())} since #{translate(expansion())}"
  end
  def tweet(:was_good_actually) do
    "#{translate(system())} was #{translate(subjective_value())} actually"
  end
  def tweet(:i_miss) do
    "i miss grinding #{translate(old_dungeon())}"
  end
  def tweet(:remember_when) do
    "remember when #{translate(topic())} was #{translate(subjective_value())}"
  end
  def tweet(:can_we_go_back_to) do
    "can we go back to #{translate(expansion())}"
  end
  def tweet(:i_used_to) do
    "i used to play #{translate(spec())} in #{translate(old_dungeon())} but now its all #{translate(spec())} in #{translate(dungeon())}"
  end
  def tweet(:buff_nerf) do
    "honestly blizzard needs to #{translate(buff_nerf())} #{translate(spec())}"
  end
end
