# 1. coord_cartesian
p <- ggplot(mtcars, aes(disp, mpg)) +
  geom_point() +
  geom_smooth()

p + scale_x_continuous(limits = c(325, 500))
p + coord_cartesian(xlim = c(325, 500))
p + coord_cartesian(xlim = c(325, 500), expand = FALSE)
p + coord_cartesian(expand = FALSE)
p


# 2. coord_fixed

# 3. coord_flip

# 4. coord_trans
# transform x and y axis to log10 
# using scale_x_log10
# coord_trans(x = 'log10')