# Author: Daniel van der Meer
#

# Function to remind me of some things.
remind_me <- function(){
  message("Remember that there is a programming exam at some point!")
  message("Also: Julias birthday is on the 5th of february!")
}

# A list containing the formatted solutions to 4 of the problems
solutions <- c("3.1.17" =
"my_matrix <- matrix(1:9*rep(1:3, each = 3), 3, 3, T)\nmy_matrix",
               "3.1.5" =
"plot(jitter(mtcars$cyl, 0.15), mtcars$hp,
    col = factor(mtcars$cyl),
    pch = 21,
    xlab = 'Number of cylinders',
    ylab = 'Horsepower',
    frame = F,
    axes = F,
    ylim = c(50, 350))
axis(1, at = c(4, 6, 8))
axis(2, at = seq(50, 350, 50))",
               "3.1.6" =
"data('Orange')
# Create new data frame with ordered tree labels from 1 to 5 and the maximum
# circumference of the trees
max_circumferences <- data.frame(cbind('Tree' = c(1:5),
                                       'max_circumference' = unlist(lapply(1:5, function(n) max(Orange$circumference[Orange$Tree==n])))))
ggplot(max_circumferences)+
  geom_bar(aes(Tree, max_circumference), stat='identity')",
                "3.1.7" = "
Orange
ggplot(Orange, aes(age, circumference))+
  geom_smooth(formula = y~x, method='lm', se = TRUE)"


)

#creating the not in operator
`%notin%` <- Negate(`%in%`)

#A function that first checks if the input is correct and gives the solution
cheat <- function(exercise){
  if (exercise %notin% c("3.1.17", "3.1.5", "3.1.6", "3.1.7")){
    cat("Plase use one of the following otions: 3.1.17, 3.1.5, 3.1.6, 3.1.7")
  }
  else{
    message("The solution is:")
    cat(solutions[exercise])
  }
}




