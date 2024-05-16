import gleeunit
import gleeunit/should

import gleam/int
import gleam/string

const ansi256: String = "\u{001b}[38;5;"

const reset: String = "\u{001b}[0m"

pub fn main() {
  gleeunit.main()
}

pub fn concat_test() {
  string.concat([ansi256, int.to_string(213), "m", "Tulip", reset])
  |> should.equal("\u{001b}[38;5;213mTulip\u{001b}[0m")
}
