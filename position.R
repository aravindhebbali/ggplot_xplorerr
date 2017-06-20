# 1. position_dodge
# grouped bar plots
ggplot(data = mtcars, aes(factor(cyl), fill = factor(vs))) +
  geom_bar()

ggplot(data = mtcars, aes(factor(cyl), fill = factor(vs))) +
  geom_bar(position = 'dodge')

# 2. position_identity
ggplot(data = mtcars, aes(factor(cyl), fill = factor(vs))) +
  geom_bar(position = position_identity())

# 3. position_jitter
# spread points 
ggplot(data = mtcars, aes(am, vs)) +
  geom_jitter()

ggplot(data = mtcars, aes(factor(am), factor(vs))) +
  geom_jitter()

ggplot(data = mtcars, aes(factor(am), factor(vs))) +
  geom_jitter(position = position_jitter(width = 0.1, height = 0.1))

ggplot(data = mtcars, aes(factor(am), factor(vs))) +
  geom_jitter(position = position_jitter(width = 0.05, height = 0.3))

ggplot(data = mtcars, aes(am, vs)) +
  geom_jitter(position = position_jitter(width = 0.1, height = 0.1))

# 4. position_nudge
# use with geom_text. useful for adjusting text around points
df <- data.frame(
  x = c(1,3,2,5),
  y = c("a","c","d","c")
)

ggplot(df, aes(x, y)) +
  geom_point() +
  geom_text(aes(label = y),
            position = position_nudge(y = -0.1, x = -0.2))

# 5. position_fill
# stacked bar plots
ggplot(data = mtcars, aes(factor(cyl), fill = factor(gear))) +
  geom_bar(position = "fill")

# 6. position_stack
# avoid overlapping lines
# modify label position in plots
# negative values in bar plots
series <- data.frame(
  time = c(rep(1, 4),rep(2, 4), rep(3, 4), rep(4, 4)),
  type = rep(c('a', 'b', 'c', 'd'), 4),
  value = rpois(16, 10)
)
series$type2 <- factor(series$type, levels = c('c', 'b', 'd', 'a'))

ggplot(series, aes(time, value)) +
  geom_area(aes(fill = type))

ggplot(series, aes(time, value)) +
  geom_area(aes(fill = type2))

ggplot(series, aes(time, value, group = type)) +
  geom_line(aes(colour = type)) +
  geom_point(aes(colour = type))

ggplot(series, aes(time, value, group = type)) +
  geom_line(aes(colour = type), position = "stack") +
  geom_point(aes(colour = type), position = "stack")




