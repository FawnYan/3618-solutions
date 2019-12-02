C <- 10000
pay_years <- 10
nom_rate <- 0.04
annual_coupon <- 0.06
effective_rate <- nom_rate/2
coupon_rate <- annual_coupon/2
coupon_size <- C*coupon_rate
v <- 1/(1+effective_rate)
price <- coupon_size*(1-v^total_pay)/effective_rate+C/((1+effective_rate)^total_pay)
total_pay <- pay_years*2
interest <- 0
principal <- 0

for (time in 1:total_pay) {
  interest[time+1] <- effective_rate*price[time]
  principal[time+1] <- coupon_size-interest[time+1]
  price[time+1] <- price[time]-principal[time+1]
}
m <- matrix(c(interest, principal, price), ncol=3)

rownames(m) = c("loan", 1:total_pay)
colnames(m) = c("interest_repaid", "principal_repaid", "book_value")
print(m)
