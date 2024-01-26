
# Two USEFUL functions for the PIPS Assignment 3.2R.1
# Programmer: Frederik van der Meer

# remind_me function
remind_me <- function() {
  return(c("oat milk", "peanut butter", "butter", "olive oil", "oat meal", 
           "garlic", "pasta", "rice", "soy sauce", "bread", "potatoes"))
}

# cheat function
cheat <- function(cheat_exercise = "Q3.1.3") {
  if (cheat_exercise == "Q3.1.3") {
    warning(
      "titanic_passenger <- titanic_train
          passenger_plot <- ggplot(data = titanic_passenger, 
                                   aes(x = Sex, 
                                       fill = factor(Survived, 
                                                    labels = c(\"dead\", \"alive\")), 
                                       position = \"stack\")) + 
            geom_bar() +
            labs(fill = \"How did it go?\")
  print(passenger_plot)")
  } else if (cheat_exercise == "Q3.1.6") {
    warning(
      "chick_weight_data <- ChickWeight
      
  # Calculating the maximum weight per chick
  max_weight_chick <- aggregate(chick_weight_data$weight, 
                                by = list(chick_weight_data$Chick), 
                                max)

  # Renaming the columns of the new data frame to \"chick\" and \"max_weight\".
  names(max_weight_chick)[names(max_weight_chick) == \"Group.1\"] <- \"chick\"
  names(max_weight_chick)[names(max_weight_chick) == \"x\"] <- \"max_weight\"

  # Plot with maximum weights of chicks 1, 20, 5, 40, 19.
  chick_bar <- ggplot(subset(max_weight_chick, chick %in% c(1, 20, 5, 40, 19)), 
                      aes(x = factor(chick, 
                                     levels = c(1, 20, 5, 40, 19), 
                                      ordered = TRUE), y = max_weight)) + 
    geom_bar(stat = \"identity\") + xlab(\"chick\")
  print(chick_bar)")
  } else if (cheat_exercise == "Q3.1.13") {
    warning(
      "plotstock <- function(stock_symbol = \"SHEL\", 
                            year = \"2023\", 
                            saved_file = \"stock_plot_Shell2023.png\") {
    year <- paste0(year, \"-01-01/\", year, \"-12-31\") # Define the time period
    png(saved_file)
    print(chart_Series(get(getSymbols(stock_symbol)), # Create the plot
                       name = paste(\"fck\", stock_symbol), 
                      subset = year))
    dev.off()
    chart_Series(get(getSymbols(stock_symbol)), # Have the plot as an output
                 name = paste(\"fck\", stock_symbol), 
                subset = year)
    }
  plotstock()") 
  }
}
