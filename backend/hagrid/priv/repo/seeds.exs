# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Hagrid.Repo.insert!(%Hagrid.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Hagrid.Repo
alias Hagrid.Habit.Category

# Adding categories
Repo.insert!(%Category{name: "Relaxing"})
Repo.insert!(%Category{name: "Learning"})
