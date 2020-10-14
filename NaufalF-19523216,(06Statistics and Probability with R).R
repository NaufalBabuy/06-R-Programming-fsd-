#Rabu, 14 oktober 2020; author Naufal Fadhlurrohman,19523216
install.packages("ISLR")
library(ISLR)
#statistika

dataCredit <- Credit
head(dataCredit)

#1.

mean(dataCredit$Rating)
mean(dataCredit$Cards)
mean(dataCredit$Age)

#2. 
library(lsr)

modeOf(dataCredit$Gender)
modeOf(dataCredit$Student)
modeOf(dataCredit$Married)

#3. 

quantile(x =dataCredit$Education, probs = 0.1)
quantile(x =dataCredit$Education, probs = 0.37)
quantile(x =dataCredit$Education, probs = 0.91)

#4

quantile(x = dataCredit$Balance, probs = c(0.25, 0.50, 0.75))
boxplot(dataCredit$Balance)

#5. 
newData <- data.frame(limit = dataCredit$Limit, rating = dataCredit$Rating)
newData1 <- data.frame(age = dataCredit$Age, card = dataCredit$Cards)
newData2 <- data.frame(income = dataCredit$Income, education = dataCredit$Education)

cor(newData)
cor(newData1)
cor(newData2)

plot(newData$limit, newData$rating)
plot(newData1$age, newData1$card)
plot(newData2$income, newData2$education)

# PROBABILITAS

# - diketahui : x = 2, n = 10, p=5%

dbinom(x = 2, size = 15, prob = 0.05)

