#!/usr/bin/env nu
# Author: hustcer
# Created: 2025/01/29 13:02:15
# TODO:
#   [√] Deepseek code reivew for Github PRs
#   [√] Deepseek code reivew for local commit changes
# Description: A script to do code review by deepseek
# Usage:
#

export def deepseek-review [] {

}

# If current host is Windows
export def windows? [] {
  # Windows / Darwin / Linux
  (sys host | get name) == 'Windows'
}

# Check if some command available in current shell
export def is-installed [ app: string ] {
  (which $app | length) > 0
}

export def hr-line [
  width?: int = 90,
  --color(-c): string = 'g',
  --blank-line(-b),
  --with-arrow(-a),
] {
  # Create a line by repeating the unit with specified times
  def build-line [
    times: int,
    unit: string = '-',
  ] {
    0..<$times | reduce -f '' { |i, acc| $unit + $acc }
  }

  print $'(ansi $color)(build-line $width)(if $with_arrow {'>'})(ansi reset)'
  if $blank_line { char nl }
}

alias main = deepseek-review
