exams <- read.csv("spring2008exams.csv")
str(exams)
q1 = quantile(exams$Midterm.2, .25, na.rm = TRUE)
q3 = quantile(exams$Midterm.2, .75, na.rm = TRUE)
iqr <- q3 - q1
iqr

exams[(exams$Midterm.2 > q3 + 1.5 * iqr), 3]
exams[(exams$Midterm.2 > q1 - 1.5 * iqr), 3]
boxplot(exams$Midterm.1,exams$Midterm.2, col="blue", main="Exam Scores",names= c("Exam1", "Exam2"),xlab=("Exam 2"),ylab="Exam Score")