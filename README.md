# Divvy Homework Assignment
## Forked and submitted by David J Barnes

### Objectives Achieved:
1) **Seed the database.** Implemented the simplest approach by modifying the seeds.ex file. Execute seed with:
```
$ mix run priv/repo/seeds.exs
```
Admittedly after I researched, implemented and committed this solution, I found the Context entities. It would be best practice to implement a "create" method within the context and allow the Repo to work within the context instead of calling the repo directly.

2) **Bonus points - Find the bug with transactions.** Perhaps mnot THE bug but certainly A bug lives within the transaction.ex model on lines 10 and 11: https://github.com/DavidJBarnes/web-homework/blob/master/elixir/lib/homework/transactions/transaction.ex#L10 A transaction shall not be processed as both credit and debit. Consider extending the model by adding a validation method.

3) **Write a new schema, queries, and mutations to add companies to the app**