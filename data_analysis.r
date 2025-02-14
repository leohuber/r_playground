# Load necessary library
library(ggplot2)

# Generate sample data
set.seed(123)
data <- data.frame(
    x = rnorm(100),
    y = rnorm(100)
)

# Create a scatter plot
plot <- ggplot(data, aes(x = x, y = y)) +
    geom_point() +
    labs(title = "Scatter Plot of Generated Data",
             x = "X-axis",
             y = "Y-axis")

# Save the plot
ggsave("scatter_plot.png", plot)

# Display the plot
print(plot)