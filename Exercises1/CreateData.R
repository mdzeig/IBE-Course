# create the timss data structures

library(TAM)
data("data.timssAusTwn.scored")
timssData <- data.timssAusTwn.scored[, 1:11]
timssCovar <- data.timssAusTwn.scored[, -(1:11)]
timssCovar$IDCNTRY <- factor(timssCovar$IDCNTRY, c(36, 158),
                             c("Australia", "Taiwan"))
names(timssCovar) <- c("country", "sex", "book")
save(timssData, timssCovar, file = "TimssData.Rdata")