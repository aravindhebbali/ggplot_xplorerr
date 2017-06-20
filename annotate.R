# annotations
# 1. text
p <- ggplot(mtcars, aes(x = wt, y = mpg)) + 
  geom_point() +
  annotate("text", x = 4, y = 25, label = "Hello")

# 2. rect
p <- p + annotate("rect", xmin = 3, ymin = 12.5, xmax = 4, ymax = 20,
              alpha = 0.5)

# 3. segment
p <- p + annotate("segment", x = 2, y = 15, xend = 3, yend = 30,
                  color = "blue")

# 4. pointrange
p <- p + annotate("pointrange", x = 3.5, y = 20, 
                  ymin = 12, ymax = 28, color = "red",
                  size = 1.5)
