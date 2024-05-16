import gleam/int
import gleam/io
import gleam/string

// Author: johnnymayodev
// Date: May 16th, 2024

// ANSI color codes
//
// 0 - 7: standard colors
// 8 - 15: high intensity colors
// 16 - 231: 6x6x6 color cube
// 232 - 255: grayscale
// 
// For ANSI color codes see:
// https://raw.githubusercontent.com/fidian/ansi/master/images/color-codes.png

const ansi256: String = "\u{001b}[38;5;"

const reset: String = "\u{001b}[0m"

pub fn print(color: Int, string: String) -> Nil {
  io.print(string.concat([ansi256, int.to_string(color), "m", string, reset]))
}

pub fn println(color: Int, string: String) -> Nil {
  io.println(string.concat([ansi256, int.to_string(color), "m", string, reset]))
}
