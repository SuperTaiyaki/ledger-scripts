Various scripts I use for ledger-cli.

Probably makes too many assumptions to be generally useful.

File structure is:
* CURRENT contains an import for the current month file. Ledger's default file points here
* Each month is recorded in a file named %Y-%m
* Each month links back to the previous month with an include statement

Tools are:
* check_entries.sh: Consistency check (to find mis-dated entries)
* last_month, this_month: convenience scripts for displaying balance
* new_month.sh: Copy the template and adjust settings to open the record for the current month

For lack of anywhere better to put it, how I handle strange cases:

Non-cash point systems (mostly Rakuten points): total balance is ignored, they're marked as 'income'
when they're spent. A purchase is marked at full price against the correct account, then the portion
paid for in points is deducted from the value charged to my credit card.

Stuff bought for other people is charged to 'Assets:Reimbursable:{Client}' and then handled the same
way as a credit card.

For ease of handling, cash is handled in 10,000 yen blocks. When I break a 10,000 yen note from my
wallet I consider it spent (disappears into Expenses:Cash). Certain larger expenses paid in cash get
charged against the same Expenses:Cash so they end up on the correct line item instead of getting hidden
inside the Cash line.

Accounting for small credit card items (convenience store, etc.) is too much of a pain so I tend to pay
cash. This should probably be resolved at some point.

Nothing is ever depreciated over time (or paid for in instalments for that matter) so that doesn't factor
in. Money spent is considered spent immediately, mostly for simplicity.

