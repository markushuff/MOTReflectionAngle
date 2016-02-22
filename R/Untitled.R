dat <- create_dataframe(3,100,0)

dat$pc <- (dat$t0+dat$t1+dat$t2+dat$t3)/4

plot(density(dat$pc))

t.test(dat$t0,dat$t1)
t.test(dat$t1,dat$t2)
t.test(dat$t2,dat$t3)

