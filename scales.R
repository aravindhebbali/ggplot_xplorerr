library(ggplot2)

# if you have mapped alpha to a variable, use scale_alpha_* 
ggplot(mtcars) +
  geom_point(aes(disp, mpg, alpha = factor(cyl))) +
  scale_alpha_discrete(name = "Cylinders",
                       breaks = c("4", "6", "8"),
                       labels = c("Four", "Six", "Eight"))

# map alpha to a continuous variable
ggplot(mtcars) +
  geom_point(aes(disp, mpg, alpha = hp), color = 'blue') +
  scale_alpha_continuous("Horsepower",
                         breaks = c(0, 100, 200, 300, 400),
                         limits = c(0, 400),
                         labels = c("Zero", "Hundred", "2 Hundred", 
                                    "3 Hundred", "4 Hundred"),
                         range = c(0.4, 0.8))

# use scale_x|y_discrete|continuous to modify 
# 1. axis title
# 2. axis label
# 3. axis limits
# 4. axis breaks
# 5. axis position

# scale_x_continuous, scale_y_continuous
ggplot(mtcars) +
  geom_point(aes(disp, mpg)) +
  scale_x_continuous(name = "Displacement ('00s)",
                     limits = c(0, 600),
                     breaks = c(0, 150, 300, 450, 600),
                     labels = c('0', '1.5', '3', '4.5', '6'),
                     position = 'top')

# log10 transformation
ggplot(mtcars) +
  geom_point(aes(disp, mpg)) +
  scale_x_log10()

# square root transformation
ggplot(mtcars) +
  geom_point(aes(disp, mpg)) +
  scale_x_sqrt()

# reverse scale
ggplot(mtcars) +
  geom_point(aes(disp, mpg)) +
  scale_x_reverse()


# scale_y_continuous
ggplot(mtcars) +
  geom_point(aes(disp, mpg)) +
  scale_y_continuous(name = "Miles Per Gallon",
                     limits = c(0, 45),
                     breaks = c(0, 10, 20, 30, 40),
                     labels = c('0', '10', '20', '30', '40'),
                     position = 'right')

# log10 transformation
ggplot(mtcars) +
  geom_point(aes(disp, mpg)) +
  scale_y_log10()

# square root transformation
ggplot(mtcars) +
  geom_point(aes(disp, mpg)) +
  scale_y_sqrt()

# reverse scale
ggplot(mtcars) +
  geom_point(aes(disp, mpg)) +
  scale_y_reverse()

# scale_x|y_discrete
ggplot(mtcars) +
  geom_bar(aes(factor(cyl))) +
  scale_x_discrete(name = 'Cylinders',
                   labels = c('Four', 'Six', 'Eight'),
                   limits = c(4, 6, 8),
                   position = 'top')

# scale_color_identity
ggplot(mtcars) +
  geom_point(aes(disp, mpg, color = factor(cyl))) +
  scale_color_identity("Cylinders", labels = c('Four', 'Six', 'Eight'),
                       guide = 'legend')


# scale_color_manual 
ggplot(mtcars) +
  geom_point(aes(disp, mpg, color = factor(cyl))) +
  scale_color_manual(name = "Cylinders",
                     values = c("red", "blue", "green"),
                     labels = c('Four', 'Six', 'Eight'),
                     limits = c(4, 6, 8),
                     breaks = c(4, 6, 8),
                     guide = "legend")


# scale_fill_manual
ggplot(mtcars) +
  geom_point(aes(disp, mpg, fill = factor(cyl)), shape = 22) +
  scale_fill_manual(name = "Cylinders",
                     values = c("red", "blue", "green"),
                     labels = c('Four', 'Six', 'Eight'),
                     limits = c(4, 6, 8),
                     breaks = c(4, 6, 8),
                     guide = "legend")


# scale_size_manual
ggplot(mtcars) +
  geom_point(aes(disp, mpg, size = factor(cyl))) +
  scale_size_manual(name = "Cylinders",
                    values = c(2, 5, 8),
                    labels = c('Four', 'Six', 'Eight'),
                    limits = c(4, 6, 8),
                    breaks = c(4, 6, 8),
                    guide = "legend")

# scale_shape_manual
ggplot(mtcars) +
  geom_point(aes(disp, mpg, shape = factor(cyl))) +
  scale_shape_manual(name = "Cylinders",
                    values = c(4, 12, 24),
                    labels = c('Four', 'Six', 'Eight'),
                    limits = c(4, 6, 8),
                    breaks = c(4, 6, 8),
                    guide = "legend")

# scale_alpha_manual
ggplot(mtcars) +
  geom_point(aes(disp, mpg, alpha = factor(cyl)), color = 'blue') +
  scale_alpha_manual(name = "Cylinders",
                     values = c(0.25, 0.5, 0.75),
                     labels = c('Four', 'Six', 'Eight'),
                     limits = c(4, 6, 8),
                     breaks = c(4, 6, 8),
                     guide = "legend")

# scale_linetype_manual

# scale_shape
ggplot(mtcars) +
  geom_point(aes(disp, mpg, shape = factor(cyl))) +
  scale_shape()

ggplot(mtcars) +
  geom_point(aes(disp, mpg, shape = factor(cyl))) +
  scale_shape(solid = FALSE,
              name = 'Cylinders',
              labels = c('Four', 'Six', 'Eight'),
              limits = c(4, 6, 8),
              breaks = c(4, 6, 8))

# scale_size
ggplot(mtcars) +
  geom_point(aes(disp, mpg, size = hp)) +
  scale_size(name = "Horsepower")
