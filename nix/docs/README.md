# Documentation

This directory contains most of the "runbooks" and documentation on how to use
this repository.

## Getting Started

You probably want to start with the [starting guide](./start-here.md). Then,
learn how to play with `postgres` in the [build guide](./build-postgres.md).

## Development

- **[Nix tree structure](./nix-directory-structure.md)** - Overview of the Nix directory structure
- **[Development Workflow](./development-workflow.md)** - Complete development and testing workflow
- **[Build PostgreSQL](./build-postgres.md)** - Building PostgreSQL from source
- **[Receipt Files](./receipt-files.md)** - Understanding build receipts
- **[Start Client/Server](./start-client-server.md)** - Running PostgreSQL client and server
- **[Docker](./docker.md)** - Docker integration and usage
- **[Use direnv](./use-direnv.md)** - Development environment with direnv
- **[Pre-commit Hooks](./pre-commit-hooks.md)** - Automatic formatting and code checks before commits
- **[Nix Formatter](./nix-formatter.md)** - Code formatting with treefmt

## Package Management

- **[Adding New Packages](./adding-new-package.md)** - How to add new PostgreSQL extensions
- **[Update Extensions](./update-extension.md)** - How to update existing extensions
- **[New Major PostgreSQL](./new-major-postgres.md)** - Adding support for new PostgreSQL versions
- **[Nix Overlays](./nix-overlays.md)** - Understanding and using Nix overlays

## Testing

- **[Adding Tests](./adding-tests.md)** - How to add tests for extensions
- **[Migration Tests](./migration-tests.md)** - Testing database migrations
- **[Testing PG Upgrade Scripts](./testing-pg-upgrade-scripts.md)** - Testing PostgreSQL upgrades

## Reference

- **[References](./references.md)** - Useful links and resources
