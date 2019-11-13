outstandingbalance <- 200000
interest <- 0.03
monthly_interest <- 0.03 / 12
num_years <- 10
num_payments <- 120
r1 <- c(0, 0, 200000)
x = c(r1)
m1 <- matrix(x, nrow=121, ncol=3)
for (time in 1:num_payments) {
  for (row in 2: nrow 121)
    for (col in 2: ncol 3)
    Interest paid[time + 1] <- monthly_interest*outstandingbalance[time]
  principal repaid[time + 1] <- outstandingbalance*monthly_interest - interest paid[time + 1]
  outstandingbalance[time + 1] <- outstandingbalance[time] - principal repaid[time+1]
  
}

rownames(m1) = c("loan", 1:num_payments)
colnames(m1) = c("Interest paid", "principle repaid", "outstanding")
print(m1)







