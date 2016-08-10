# Faker

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add `faker` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:faker, "~> 0.0.1"}]
    end
    ```

  2. Ensure `faker` is started before your application:

    ```elixir
    def application do
      [applications: [:faker]]
    end
    ```

## Usage

Call `Faker.word` or `Faker.paragraph/1` in your application to receive fake text data.
