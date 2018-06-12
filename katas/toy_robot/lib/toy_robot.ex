defmodule ToyRobot do
  alias ToyRobot.Position

  def place(x, y, direction) do
    {:ok, %Position{x: x, y: y, direction: direction}}
  end

  def report(%Position{x: x, y: y, direction: direction}) do
    {x, y, direction}
  end

  def move(%Position{x: _x, y: y, direction: :north} = position) do
    %Position{position | y: y + 1}
  end

  def move(%Position{x: _x, y: y, direction: :south} = position) do
    %Position{position | y: y - 1}
  end

  def move(%Position{x: x, y: _y, direction: :east} = position) do
    %Position{position | x: x + 1}
  end

  def move(%Position{x: x, y: _y, direction: :west} = position) do
    %Position{position | x: x - 1}
  end
end
