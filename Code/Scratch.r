
group4 <- IPO.sort[IPO.sort$group==6&IPO.sort$withdrawn_dummy==0,]

group4 <- group4[-1,]
l <- nrow(group4)

dif <- rep(0, (l)*(l-1)/2)

k <- 1

for (i in 1:(l-1)) {
  for (j in (i+1):l){
    dif[k] <- group4$year[i] - group4$year[j]
    k <- k + 1
  }
}

minyearinterval <- min(abs(dif))