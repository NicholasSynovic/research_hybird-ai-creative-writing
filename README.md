# Base Template Repository

> A base template repository that all other *template repos* can inherit from to
> ensure tooling consistency

## Table of Contents

- [Base Template Repository](#base-template-repository)
  - [Table of Contents](#table-of-contents)
  - [About](#about)
  - [Supported Tooling](#supported-tooling)
    - [Visual Studio Code](#visual-studio-code)
      - [Development Containers](#development-containers)
    - [GitHub](#github)
      - [GitHub Pages](#github-pages)
      - [Discussion Templates](#discussion-templates)
      - [Actions](#actions)
      - [Issue Templates](#issue-templates)
    - [Pre-Commit](#pre-commit)
      - [Hooks](#hooks)
    - [Docker](#docker)
    - [Make](#make)
    - [RAD](#rad)
    - [EditorConfig](#editorconfig)
  - [Template Structure](#template-structure)

## About

This is a template repository that is intended to be inherited by other template
repositories *to ensure consistent common tool deployment across languages*.

This will also support *optional* tooling that services like GitHub offer in
order to provide repository owners access to these features without them having
to discover it themselves.

Additionally, while projects can leverage this template or its content, this
template is primarily intended to build other templates off of it.

## Supported Tooling

### Visual Studio Code

- Website: [https://code.visualstudio.com/](https://code.visualstudio.com/)
- File(s):
  - Development Containers: [.devcontainer/](.devcontainer/)

#### Development Containers

- File: [.devcontainer/devcontainer.json](.devcontainer/devcontainer.json)
- Documentation:
  [https://containers.dev/implementors/json_reference](https://containers.dev/implementors/json_reference)
- Base image: [alpine:latest](https://hub.docker.com/_/alpine/)
- Extensions:
  - [CodeSnap](https://marketplace.visualstudio.com/items?itemName=adpyke.codesnap)
  - [File Tree Generator](https://marketplace.visualstudio.com/items?itemName=Shinotatwu-DS.file-tree-generator)
  - [Markdown All In One](https://marketplace.visualstudio.com/items?itemName=yzhang.markdown-all-in-one)
  - [markdownlint](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)
    - Config file: [.markdownlint.json](.markdownlint.json)
  - [vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons)
  - [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)
  - [Makefile Tools](https://marketplace.visualstudio.com/items?itemName=ms-vscode.makefile-tools)
  - [EditorConfig](https://marketplace.visualstudio.com/items?itemName=EditorConfig.EditorConfig)
    - Config file: [.editorconfig](.editorconfig)

### GitHub

- Website: [https://github.com](https://github.com)
- File(s): [.github/](.github/)
- Documentation:
  [https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/creating-a-default-community-health-file](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/creating-a-default-community-health-file)
- Features
  - Code Of Conduct: [.github/CODE_OF_CONDUCT.md](.github/CODE_OF_CONDUCT.md)
  - Code Owners: [.github/CODEOWNERS](.github/CODEOWNERS)
  - Citations: [CITATION.cff](CITATION.cff)
  - Contributing Guide: [.github/CONTRIBUTING.md](.github/CONTRIBUTING.md)
  - Funding: [.github/FUNDING.yml](.github/FUNDING.yml)
  - Governance: [.github/GOVERNANCE.md](.github/GOVERNANCE.md)
  - Security: [.github/SECURITY.md](.github/SECURITY.md)
  - Support: [.github/SUPPORT.md](.github/SUPPORT.md)

#### GitHub Pages

- File: [\_config.yml](_config.yml)
- Documentation:
  [https://docs.github.com/en/pages](https://docs.github.com/en/pages)

#### Discussion Templates

- File(s): [.github/DISCUSSION_TEMPLATE/](.github/DISCUSSION_TEMPLATE/)
- Documentation:
  [https://docs.github.com/en/discussions/managing-discussions-for-your-community/creating-discussion-category-forms](https://docs.github.com/en/discussions/managing-discussions-for-your-community/creating-discussion-category-forms)
- Templates:
  - Implentation:
    [.github/DISCUSSION_TEMPLATE/implementations.yml](.github/DISCUSSION_TEMPLATE/implementations.yml)
  - Requests:
    [.github/DISCUSSION_TEMPLATE/requests.yml](.github/DISCUSSION_TEMPLATE/requests.yml)

#### Actions

- File(s): [.github/workflows/](.github/workflows/)
- Documentation:
  [https://docs.github.com/en/actions](https://docs.github.com/en/actions)
- Actions:
  - Pre-Commit:
    [.github/workflows/pre-commit.yml](.github/workflows/pre-commit.yml)
    - Documentation:
      [https://github.com/pre-commit/action](https://github.com/pre-commit/action)
  - GitHub Pages Publishing:
    [.github/workflows/jekyll-gh-pages.yml](.github/workflows/jekyll-gh-pages.yml)

#### Issue Templates

- File(s): [.github/ISSUE_TEMPLATE/](.github/ISSUE_TEMPLATE/)
- Templates:
  - Bug Reports:
    [.github/ISSUE_TEMPLATE/bug-report.yml](.github/ISSUE_TEMPLATE/bug-report.yml)

### Pre-Commit

- Website: [https://pre-commit.com/](https://pre-commit.com/)
- File: [.pre-commit.yaml](.pre-commit.yaml)

#### Hooks

- [mdformat](https://github.com/executablebooks/mdformat)
  - Config: [.mdformat.toml](.mdformat.toml)

### Docker

- Website: [https://www.docker.com/](https://www.docker.com/)
- File: [Dockerfile](Dockerfile)
- Base image: [alpine:latest](https://hub.docker.com/_/alpine/)

### Make

- Website: [https://makefiletutorial.com/](https://makefiletutorial.com/)
- File: [Makefile](Makefile)
- Targets:
  - `build`
  - `create-dev`

### RAD

- Website:
  [https://github.com/NicholasSynovic/tool_rad](https://github.com/NicholasSynovic/tool_rad)
- File: [.rad.json](.rad.json)

### EditorConfig

- Website: [https://editorconfig.org/](https://editorconfig.org/)
- File: [.editorconfig](.editorconfig)

## Template Structure

Generated with
[File Tree Generator](https://marketplace.visualstudio.com/items?itemName=Shinotatwu-DS.file-tree-generator)

```shell
📦template_base
 ┣ 📂.devcontainer
 ┃ ┗ 📜devcontainer.json
 ┣ 📂.github
 ┃ ┣ 📂DISCUSSION_TEMPLATE
 ┃ ┃ ┣ 📜implementations.yml
 ┃ ┃ ┗ 📜requests.yml
 ┃ ┣ 📂ISSUE_TEMPLATE
 ┃ ┃ ┗ 📜bug-report.yml
 ┃ ┣ 📂workflows
 ┃ ┃ ┣ 📜jekyll-gh-pages.yml
 ┃ ┃ ┗ 📜pre-commit.yml
 ┃ ┣ 📜CODEOWNERS
 ┃ ┣ 📜CODE_OF_CONDUCT.md
 ┃ ┣ 📜CONTRIBUTING.md
 ┃ ┣ 📜FUNDING.yml
 ┃ ┣ 📜GOVERNANCE.md
 ┃ ┣ 📜SECURITY.md
 ┃ ┗ 📜SUPPORT.md
 ┣ 📂docs
 ┃ ┗ 📜.gitkeep
 ┣ 📜.editorconfig
 ┣ 📜.markdownlint.json
 ┣ 📜.mdformat.toml
 ┣ 📜.pre-commit-config.yaml
 ┣ 📜.rad.json
 ┣ 📜CITATION.cff
 ┣ 📜Dockerfile
 ┣ 📜LICENSE
 ┣ 📜Makefile
 ┗ 📜README.md
```
