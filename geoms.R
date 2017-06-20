# 1. geom_abline, geom_vline, geom_hline, geom_smooth
m <- lm(mpg ~ wt, data = mtcars)
p <- ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_vline(xintercept = 5) +
  geom_hline(yintercept = 30) + 
  geom_abline(intercept = 10, slope = 1)


p <- p + geom_smooth(method = 'lm', se = FALSE)
p <- p + geom_smooth(method = 'loess', se = FALSE)
p


# 2. geom_bar: use when data is not in the form of table
# height of bar is proportional to number of cases in each group
p <- ggplot(mtcars, aes(cyl)) +
  geom_bar()

p

# total horsepower for each type of cylinder
p <- ggplot(mtcars, aes(cyl)) +
  geom_bar(aes(weight = hp))
p

# stacked bar plot
p <- ggplot(mtcars, aes(cyl)) +
  geom_bar(aes(fill = gear))
p

# flip the coordinates
p <- ggplot(mtcars, aes(cyl)) +
  geom_bar(aes(fill = gear)) +
  coord_flip()
p

# reverse order of the bars
p <- ggplot(mtcars, aes(cyl)) +
  geom_bar(aes(fill = gear), position = position_stack(reverse = TRUE)) +
  coord_flip() +
  theme(legend.position = 'top')
  
p

# 3. geom_col
device <- c('laptop', 'mobile', 'tablet')
visits <- c(30000, 12000, 5000)
traffic <- tibble::tibble(device, visits)
p <- ggplot(traffic, aes(x = device, y = visits)) +
  geom_col(fill = 'blue') 
p


# 4. geom_boxplot
p <- ggplot(mtcars, aes(x = 1, y = mpg)) + 
  geom_boxplot(notch = TRUE, fill = 'blue', color = 'black',
               outlier.color = 'red', outlier.fill = 'yellow',
               outlier.shape = 22, outlier.alpha = 0.8,
               outlier.size = 2) +
  geom_jitter(width = 0.1) +
  coord_flip()
p

# 5. geom_count
p <- ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_count() +
  scale_size_area()
p

# 6. geom_histogram
p <- ggplot(mtcars, aes(mpg, fill = cyl)) +
  geom_histogram(bins = 10)
p

# 7. geom_jitter
p <- ggplot(mtcars, aes(x = cyl, y = mpg)) +
  geom_jitter(aes(color = gear), width = 0.1)
p

p <- ggplot(mtcars, aes(x = disp, y = mpg)) +
  geom_jitter(aes(color = gear), width = 0.5, height = 0.5)
p

# 8. geom_line
p <- ggplot(economics_long, aes(x = date, y = value01, 
  color = variable)) +
  geom_line()
p

p <- ggplot(economics, aes(x = date, y = unemploy)) +
  geom_line(color = 'red', arrow = arrow()) +
  geom_point()
p

# 9. geom_label
p <- ggplot(mtcars, aes(disp, mpg, label = rownames(mtcars))) +
  geom_text(check_overlap = TRUE, size = 2)
p

p <- ggplot(mtcars, aes(disp, mpg, label = rownames(mtcars))) +
  geom_label()
p

p <- ggplot(mtcars, aes(x = disp, y = mpg, label = rownames(mtcars))) +
  geom_point() + 
  geom_text(aes(color = cyl), hjust = 0, nudge_x = 0.05, 
            size = 2, angle = 45)
p
