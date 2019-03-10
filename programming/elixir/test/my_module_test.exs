defmodule MyModuleTest do
  use ExUnit.Case
  doctest MyModule

  test "greets the world" do
    assert MyModule.hello() == :world
  end
end
