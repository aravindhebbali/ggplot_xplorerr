# 1. color fill alpha
ggplot(mtcars, aes(factor(cyl))) +
  geom_bar(color = 'red',
           fill = 'blue',
           alpha = 0.2)

# 2. group order
# group data using color, shape, size, linetype

# 3. line type, size and shape
# 0 = blank, 1 = solid, 2 = dashed, 3 = dotted, 4 = dotdash, 
# 5 = longdash, 6 = twodash
df2 <- data.frame(x = 1:5 , y = 1:25, z = 1:25)
s <- ggplot(df2, aes(x, y))
s + geom_point(aes(shape = factor(z)), size = 4)

# 4. aes_position
# text, segment and arrows
