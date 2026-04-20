# Ruweb

A lightweight, framework-free Ruby web application that demonstrates how to build a Rack app with custom routing, controllers, and views.

## Overview

Ruweb is an educational, minimal web project focused on understanding web fundamentals without Rails or Sinatra. It includes:

- A Rack-compatible application entry point (`App#call`)
- A singleton router with declarative route definitions
- Basic controller/action dispatching for dynamic routes
- Static file serving from `public/`
- HTML views rendered directly from disk

## Architecture

The request flow is:

1. `config.ru` boots Rack middleware and runs `App`.
2. `App#call` delegates route resolution to `Router.instance`.
3. The router matches the path and either:
   - executes an inline block route (for `/`), or
   - infers controller/action for paths like `/articles/index`.
4. Controllers return HTML strings that become the response body.

## Project Structure

```text
ruweb/
├── app.rb                     # Rack app class
├── config.ru                  # Rack boot file and middleware
├── config/
│   └── routes.rb              # Route declarations
├── lib/router/
│   └── router.rb              # Singleton router implementation
├── controllers/
│   ├── application_controller.rb
│   └── articles_controller.rb # Example controller
├── views/
│   └── index.html             # Example view
└── public/
    ├── style.css
    └── images/
```

## Prerequisites

- Ruby 3.0+ (recommended)
- Bundler

## Setup

```bash
git clone https://github.com/syntaxmage05/ruweb.git
cd ruweb
bundle install
```

## Running the App

Start the Rack server:

```bash
bundle exec rackup
```

Then open:

- Home route: <http://localhost:9292/>
- Articles page: <http://localhost:9292/articles/index>

## Available Routes

Defined in `config/routes.rb`:

- `GET /` → inline response (`"Fred's Blog"`)
- `GET /articles/index` → `ArticlesController#index` rendering `views/index.html`

## Development Notes

- Static assets are served from `/public` via `Rack::Static`.
- `Rack::Reloader` is enabled in `config.ru` for easier local iteration.
- Routing uses a simple convention: `/<controller>/<action>`.

## Linting

Run RuboCop checks:

```bash
bundle exec rubocop
```

## Why this project?

Ruweb is ideal for:

- learning Rack request/response mechanics,
- understanding how routers and controllers can be built from scratch,
- experimenting with Ruby web architecture before adopting larger frameworks.

## License

No license file is currently included in this repository.
