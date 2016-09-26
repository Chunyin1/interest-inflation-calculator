Just paste calc.rb into any ruby compiler and replace the following:

`$monthly = 200
	$rates = 1.02
	$inflation = 1.02
	$years_waiting_before_withdrawing = 20
	$years_saving_monthly = 10

  #Additional controls
	$bank_bonus = 1
`

with whatever you want.
If you wish to check a sum of money's worth in a few years time, simply set $monthly to sum/12 and $years_saving_monthly to 1.

Criticism and suggestions welcomed!
