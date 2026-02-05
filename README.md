# Quote Editor

A modern Rails 7.2 Progressive Web App built with Hotwire (Turbo + Stimulus), PostgreSQL, and esbuild/Sass for asset bundling.

## Requirements

- Ruby 3.3.5
- Node.js 20.19.6
- PostgreSQL
- Chrome/Chromium (for system tests)

## Setup

```bash
bin/setup
```

This will install dependencies, prepare the database, and clear temporary files.

## Development

Start the development server with JS/CSS watchers:

```bash
bin/dev
```

The app will be available at http://localhost:3000

## Testing

```bash
# Run all tests (unit + system)
bin/rails test test:system

# Run unit tests only
bin/rails test

# Run system tests only
bin/rails test:system

# Run a specific test file
bin/rails test test/models/example_test.rb
```

## Code Quality

```bash
# Linting (RuboCop with Omakase styling)
bin/rubocop
bin/rubocop -A  # Auto-fix

# Security scanning
bin/brakeman --no-pager
```

## Docker

Build and run with Docker:

```bash
docker build -t quote-editor .
docker run -d -p 3000:3000 -e RAILS_MASTER_KEY=<your-master-key> quote-editor
```

## License

[MIT](LICENSE)
