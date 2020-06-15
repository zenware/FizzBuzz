// zig 0.6.0

const std = @import("std");

pub fn main() !void {
  var i: i32 = 1;
  while (i <= 100) : (i += 1)  {
    try fizzBuzz(i);
  }
}

fn fizzBuzz(value: i32) !void {
  const stdout = std.io.getStdOut().outStream();
  var printed = false;

  if (@rem(value, 3) == 0) {
    try stdout.print("{}", .{"Fizz"});
    printed = true;
  }
  if (@rem(value, 5) == 0) {
    try stdout.print("{}", .{"Buzz"});
    printed = true;
  }

  if (printed) {
    try stdout.print("\n", .{});
  } else {
    try stdout.print("{}\n", .{value});
  }
}
