# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Homework.Repo.insert!(%Homework.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Homework.Merchants.Merchant
alias Homework.Users.User
alias Homework.Transactions.Transaction
alias Homework.Repo

merchant = Repo.insert!(%Merchant{
    description: "David Merch is a merchant",
    name: "David Merch"
}, returning: true)

user = Repo.insert!(%User{
    first_name: "David",
    last_name: "Barnes",
    dob: "12/11/1979"
}, returning: true)

transactions = [
  %Transaction{
    amount: 1,
    credit: true,
    debit: false,
    description: "candy bar",
    merchant: merchant,
    user: user
  }
]

Enum.each(transactions, fn(transaction) ->
  result = Repo.insert!(transaction, returning: true)
  IO.inspect result
end)

