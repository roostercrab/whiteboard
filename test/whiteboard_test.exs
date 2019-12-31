defmodule WhiteboardTest do
  use ExUnit.Case
  doctest Whiteboard

  test "greets the world" do
    assert Whiteboard.hello() == :world
  end
end
