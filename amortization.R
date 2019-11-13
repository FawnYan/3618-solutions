outstanding_balance <- 200000
interest <- 0.03
monthly_interest <- (interest + 1)^(1/12) - 1
#monthly_interest <- interest/12
num_years <- 10
num_payments <- 12*num_years
payment_size <- (outstanding_balance*monthly_interest)/(1-(1+monthly_interest)^(-num_payments))
Interest_paid <- 0
principal_repaid <- 0

for (time in 1:num_payments) {
 Interest_paid[time] <- monthly_interest*outstanding_balance[time]
 principal_repaid[time] <- payment_size - Interest_paid[time]}
 outstanding_balance[time] <- outstanding_balance[time] - principal_repaid[time]
  

m1 <- matrix(c(Interestpaid, principal_repaid, outstandingbalance), ncol=3)

rownames(m1) = c("loan", 1:num_payments)
colnames(m1) = c("Interestpaid", "principalrepaid", "outstanding")
print(m1)







