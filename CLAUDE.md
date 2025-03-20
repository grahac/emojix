# Emojix Development Guidelines

## Build & Test Commands
- **Install Dependencies**: `mix deps.get`
- **Compile Project**: `mix compile`
- **Run All Tests**: `mix test`
- **Run Single Test**: `mix test test/emojix_test.exs:LINE_NUMBER`
- **Detailed Test Output**: `mix test test/emojix_test.exs:LINE_NUMBER --trace`
- **Format Code**: `mix format`

## Code Style Guidelines
- **Naming**: PascalCase for modules, snake_case for functions/variables
- **Modules**: Main module is `Emojix` with supporting modules in `lib/emojix/`
- **Documentation**: Use `@moduledoc` and `@doc` with examples in `iex>` format
- **Types**: Define with `@type` and use `@spec` for function specifications
- **Imports**: Prefer explicit aliases over imports (e.g., `alias Emojix.Repo`)
- **Formatting**: Follow standard Elixir style with default `.formatter.exs` config
- **Error Handling**: Return `nil` for not found items, empty lists `[]` for no results
- **Pattern Matching**: Prefer pattern matching for control flow

## Project Structure
- Main code in `lib/` directory
- Tests in `test/` directory
- Dataset in `priv/dataset_15.2.0.ets`