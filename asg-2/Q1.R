#Q2 (a) Suppose there is a chest of coins with 20 gold, 30 silver and 50 bronze coins.
#You randomly draw 10 coins from this chest. Write an R code which will give us the
#sample space for this experiment. (use of sample(): an in-built function in R)
#(b) In a surgical procedure, the chances of success and failure are 90% and 10%
#respectively. Generate a sample space for the next 10 surgical procedures performed.
#(use of prob(): an in-built function in R)

#a
chest <- c(rep("Gold", 20), rep("Silver", 30), rep("Bronze", 50))

coinsToDraw <- 10

sampleSpace <- sample(chest, coinsToDraw, replace = FALSE)

print(sampleSpace)


#b
outcomes <- c("Success", "Failure")
probabilities <- c(0.90, 0.10)

numOfProcedures <- 10

sampleSpace <- sample(outcomes, numOfProcedures, replace = TRUE, prob = probabilities)

print(sampleSpace)
