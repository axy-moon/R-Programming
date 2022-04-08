library(party)
library(caTools)

data(readingSkills)
split <- sample.split(readingSkills, SplitRatio = 0.8)
train <- subset(readingSkills, split == TRUE)
test <- subset(readingSkills, split == FALSE)
model <- ctree(nativeSpeaker ~ ., train)

plot(model)