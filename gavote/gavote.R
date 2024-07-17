library(faraway)
data(gavote)
help(gavote)
dim(gavote)
head(gavote)

gavote$undercount <- (gavote$ballots-gavote$votes)/gavote$ballots
summary(gavote$undercount)

hist(gavote$undercount)
plot(density(gavote$undercount)); rug(gavote$undercount)

pie(table(gavote$equip))

gavote$pergore <- gavote$gore / gavote$votes
plot(pergore ~ perAA, gavote)

pairs(gavote)