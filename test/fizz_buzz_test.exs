defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, retunrs the converted list" do
      expexted_result = {:ok, [1, 2, "Fizz", 4, "Buzz", "Buzz", "Fizz", "Buzz", "FizzBuzz"]}
      assert FizzBuzz.build("number.txt") == expexted_result
    end

    test "when a invalid file is provided, retunrs an error" do
      expexted_result = {:error, "Error reading the file enoent"}
      assert FizzBuzz.build("invalid.txt") == expexted_result
    end
  end
end
