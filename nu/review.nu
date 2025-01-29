#!/usr/bin/env nu
# Author: hustcer
# Created: 2025/01/29 13:02:15
# TODO:
#   [√] Deepseek code reivew for Github PRs
#   [√] Deepseek code reivew for local commit changes
# Description: A script to do code review by deepseek
# Usage:
#

const DEFAULT_OPTIONS = {
  MODEL: 'deepseek-chat',
  BASE_URL: 'https://api.deepseek.com',
  USER_PROMPT: '请分析以下代码变更：',
  SYS_PROMPT: '你是一个专业的代码审查助手，负责分析GitHub Pull Request的代码变更，指出潜在的问题，如代码风格、逻辑错误、安全漏洞，并提供改进建议。请用简洁明了的语言列出问题及建议。',
}

export def deepseek-review [
  token: string,      # Your Deepseek API token
  --gh-token: string, # Your Github token, GITHUB_TOKEN by default
  --model: string = $DEFAULT_OPTIONS.MODEL,   # Model name, deepseek-chat by default
  --base-url: string = $DEFAULT_OPTIONS.BASE_URL,
  --sys-prompt: string = $DEFAULT_OPTIONS.SYS_PROMPT,
  --user-prompt: string = $DEFAULT_OPTIONS.USER_PROMPT,
] {

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
