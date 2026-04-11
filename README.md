## Create a web application with just ruby(No Framework)
<div id="top">

<!-- HEADER STYLE: CLASSIC -->
<div align="center">


# RUWEB

<em>Empowering Fast, Lightweight Web Innovation Seamlessly</em>

<!-- BADGES -->
<img src="https://img.shields.io/github/last-commit/syntaxmage05/ruweb?style=flat&logo=git&logoColor=white&color=0080ff" alt="last-commit">
<img src="https://img.shields.io/github/languages/top/syntaxmage05/ruweb?style=flat&color=0080ff" alt="repo-top-language">
<img src="https://img.shields.io/github/languages/count/syntaxmage05/ruweb?style=flat&color=0080ff" alt="repo-language-count">

<em>Built with the tools and technologies:</em>

<img src="https://img.shields.io/badge/Markdown-000000.svg?style=flat&logo=Markdown&logoColor=white" alt="Markdown">
<img src="https://img.shields.io/badge/Ruby-CC342D.svg?style=flat&logo=Ruby&logoColor=white" alt="Ruby">

</div>
<br>

---

## Table of Contents

- [Overview](#overview)
- [Getting Started](#getting-started)
    - [Prerequisites](#prerequisites)
    - [Installation](#installation)
    - [Usage](#usage)
    - [Testing](#testing)
- [Project Structure](#project-structure)

---

## Overview

ruweb is a minimalistic, framework-free Ruby web application toolkit that enables developers to build lightweight and modular web services with full control over the architecture. Designed with clarity and flexibility in mind, it demonstrates how to create a complete web app solely with Ruby, without external frameworks or dependencies.

**Why ruweb?**

This project simplifies web development by providing a clean, Ruby-based architecture that emphasizes transparency and customization. The core features include:

- 🧩 **Modular Design:** Clear separation of controllers, views, and routing for maintainable code.
- 🚦 **Dynamic Routing:** Singleton router that interprets URL paths and directs requests efficiently.
- 🛠️ **Middleware Support:** Seamless integration of development tools like auto-reloading.
- 🌐 **Static Content Serving:** Built-in handling for static assets and content delivery.
- ⚙️ **Framework-Free:** Pure Ruby implementation, ideal for learning, experimentation, or lightweight projects.

---

## Project Structure

```sh
└── ruweb/
    ├── Gemfile
    ├── Gemfile.lock
    ├── README.md
    ├── app.rb
    ├── config
    │   └── routes.rb
    ├── config.ru
    ├── controllers
    │   ├── application_controller.rb
    │   └── articles_controller.rb
    ├── lib
    │   └── router
    └── views
        └── index.html
```

---

## Getting Started

### Prerequisites

This project requires the following dependencies:

- **Programming Language:** Ruby
- **Package Manager:** Bundler

### Installation

Build ruweb from the source and install dependencies:

1. **Clone the repository:**

    ```sh
    ❯ git clone https://github.com/syntaxmage05/ruweb
    ```

2. **Navigate to the project directory:**

    ```sh
    ❯ cd ruweb
    ```

3. **Install the dependencies:**

**Using [bundler](https://www.ruby-lang.org/):**

```sh
❯ bundle install
```

### Usage

Run the project with:

**Using [bundler](https://www.ruby-lang.org/):**

```sh
bundle exec ruby {entrypoint}
```

### Testing

Ruweb uses the {__test_framework__} test framework. Run the test suite with:

**Using [bundler](https://www.ruby-lang.org/):**

```sh
bundle exec rspec
```

---

<div align="left"><a href="#top">⬆ Return</a></div>

---
