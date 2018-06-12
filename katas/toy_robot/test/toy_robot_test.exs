defmodule ToyRobotTest do
  use ExUnit.Case
  doctest ToyRobot

  alias ToyRobot.Position

  test "places the robot to the initial position" do
    position = %Position{x: 0, y: 0, direction: :north}

    assert ToyRobot.place(0, 0, :north) == {:ok, position}
  end

  test "report the robot position" do
    {:ok, position} = ToyRobot.place(1, 1, :north)

    assert ToyRobot.report(position) == {1, 1, :north}
  end

  test "moves the robot one position north" do
    {:ok, initial_position} = ToyRobot.place(1, 1, :north)
    position = ToyRobot.move(initial_position)

    assert ToyRobot.report(position) == {1, 2, :north}
  end

  test "moves the robot one position south" do
    {:ok, initial_position} = ToyRobot.place(1, 1, :south)
    position = ToyRobot.move(initial_position)

    assert ToyRobot.report(position) == {1, 0, :south}
  end

  test "moves the robot one position east" do
    {:ok, initial_position} = ToyRobot.place(1, 1, :east)
    position = ToyRobot.move(initial_position)

    assert ToyRobot.report(position) == {2, 1, :east}
  end

  test "moves the robot one position west" do
    {:ok, initial_position} = ToyRobot.place(1, 1, :west)
    position = ToyRobot.move(initial_position)

    assert ToyRobot.report(position) == {0, 1, :west}
  end
end
