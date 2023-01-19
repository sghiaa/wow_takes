defmodule WowTakesWeb.PageView do
  use WowTakesWeb, :view
  import WowTakes

  def tweet() do
    tweet(format())
  end
  def tweet(:if_loving) do
    topic = topic_text(topic())
    "if loving #{topic} is wrong i dont want to love #{topic}"
  end
  def tweet(:hasnt_been_fun) do
    "#{topic_text(topic())} hasnt been #{topic_text(subjective_value)} since #{topic_text(expansion())}"
  end
  def tweet(:was_good_actually) do
    "#{topic_text(system())} was #{topic_text(subjective_value())} actually"
  end
  def tweet(:i_miss) do
    "i miss grinding #{topic_text(old_dungeon())}"
  end
  def tweet(:remember_when) do
    "remember when #{topic_text(topic)} was #{topic_text(subjective_value)}"
  end
  def tweet(:can_we_go_back_to) do
    "can we go back to #{topic_text(expansion())}"
  end
end
