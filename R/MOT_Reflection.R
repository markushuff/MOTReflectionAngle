dat <- create_dataframe(3,100,0)

dat$pc <- (dat$t0+dat$t1+dat$t2+dat$t3)/4

plot(density(dat$pc))

t.test(dat$t0,dat$t1)
t.test(dat$t1,dat$t2)
t.test(dat$t2,dat$t3)

b <- numeric()
for (i in 1:100) {
  a <-
    c(rbinom(1, 1, 0.7),
      rbinom(1, 1, 0.4),
      rbinom(1, 1, 0.4),
      rbinom(1, 1, 0.4))
  print(a)
  b <- c(b,sum(a))
  i <- i + 1
  }
mean(b)

b <- numeric()
for (i in 1:100) {
  a <-
    c(rbinom(1, 1, 0.5),
      rbinom(1, 1, 0.5),
      rbinom(1, 1, 0.5),
      rbinom(1, 1, 0.5))
  print(a)
  b <- c(b,sum(a))
  i <- i + 1
}
mean(b)

