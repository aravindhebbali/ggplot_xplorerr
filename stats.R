p <- ggplot(data = mtcars) +
  stat_count(aes(x = cyl))
p

p <- ggplot(data = mtcars) +
  stat_boxplot(aes(x = 1, y = mpg))
p

p <- ggplot(data = mtcars) +
  stat_sum(aes(disp, mpg))
p

p <- ggplot(data = mtcars) +
  stat_bin(aes(mpg), bins = 10)
p

p <- ggplot(data = mtcars) +
  stat_identity(aes(disp, mpg))
p

p <- ggplot(data = mtcars) +
  stat_unique(aes(x = disp, y = mpg))
p
