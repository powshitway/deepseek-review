# Changelog
All notable changes to this project will be documented in this file.

## [1.1.0] - 2025-01-30

### Bug Fixes

- Do not override `GITHUB_TOKEN` env var (#30)
- Check `gh` installation status in GitHub Action (#31)
- Add git repo and git ref checking (#32)
- Add repo checking for GitHub PR review (#34)
- Polish CLI output for local code review (#44)

### Documentation

- Add features description to README (#29)
- Add CLI help doc (#36)
- Add planed features to doc (#39)
- Add local code review guide (#41)

### Features

- Add dot env conf for local code review (#33)
- Add more CLI short flags (#35)
- Add `DEFAULT_GITHUB_REPO` & `DEFAULT_LOCAL_REPO` config for local code review (#42)

### Miscellaneous Tasks

- Use `v1` in README docs (#17)

## [1.0.0] - 2025-01-29

### Bug Fixes

- Fix gh token error
- Fix add comment error
- Make action fail if no response returned from deepseek (#3)

### Documentation

- Update README.md (#16)

### Features

- Add Github PR code review support
- Add local code changes code review support

### Miscellaneous Tasks

- Update prompts to English (#5)
- Update prompts to English in action.yaml (#9)

