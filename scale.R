# 1. modify axis, legends and plot labels
ggplot(mtcars, aes(x = disp, y = mpg, color = cyl)) +
  geom_point() +
  labs(color = "Cylinder",
       x = "Displacement",
       y = "Miles Per Gallon",
       title = "Displacement vs Miles Per Gallon",
       subtitle = "Inversely related",
       caption = "based on data from mtcars")


# 2. set scale limits
ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_point() +
  lims(x = c(0, 600), y = c(0, 45))

# 3. expand plot limits using data
ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_point() +
  expand_limits(x = 0, y = 0)

# 4. scale alpha
ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_point(aes(alpha = factor(cyl))) +
  scale_alpha_discrete("Cylinders",
    range = c(0.4, 0.8))

# 5. scale color
dsamp <- diamonds[sample(nrow(diamonds), 1000), ]
(d <- ggplot(dsamp, aes(carat, price)) +
    geom_point(aes(colour = clarity)))
d + scale_colour_brewer("Diamond\nClarity")

# 6. scale axis
# add axis labels
ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_point() +
  scale_x_continuous("Displacement",
    limits = c(0, 600),
    breaks = c(0, 200, 400, 600),
    labels = c("Zero", "Two", "Four", "Six")) +
  scale_y_continuous("Miles Per Gallon",
                     labels = scales::dollar) +
  scale_y_reverse("Miles Per Gallon", labels = scales::percent)

# 7. scale date

# 8. scale discrete data
ggplot(mtcars, aes(x = factor(cyl), y = mpg)) +
  geom_jitter(width = 0.2) +
  scale_x_discrete("Cut",
    labels = c("Four", "Six", "Eight"),
    limits = c(6, 8))

# 9. scale gradient
# h = range of hues
# c = chroma
# l = luminence
# direction = 1, -1
# na.value = color for missing values
# h.start = hue to start at

# 10. scale color, fill, shape, size, alpha, linetype
ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_point(aes(color = factor(cyl))) +
  scale_color_manual(
    "Cylinders",
    values = c("red", "blue", "green"),
    breaks = c("4", "6", "8"),
    labels = c("four", "six", "eight")
  ) 
