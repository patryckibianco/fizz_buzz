defmodule FizzBuzzTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns a converted list" do
      expected_response =
        {:ok,
         [
           1,
           2,
           :fizz,
           4,
           :buzz,
           :fizz,
           7,
           8,
           :fizz,
           :buzz,
           11,
           :fizz,
           13,
           14,
           :fizz_buzz,
           16,
           17,
           :fizz,
           19,
           :buzz
         ]}

      assert FizzBuzz.build("numbers.txt") == expected_response
    end

    test "when an invalid file is provided, returns an error" do
      expected_response = {:error, "Error reading file: enoent"}
      assert FizzBuzz.build("sbrubles.txt") == expected_response
    end
  end
end
