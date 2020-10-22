library(stargazer)
data = read.csv('assignment1-research-methods.csv', sep = '\t')
lmElite = glm(calledback ~ ., data = data, family = binomial(link="logit"))
stargazer(lmElite, title = "Results", align = TRUE)
