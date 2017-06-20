# 1. guide colorbar
# continuous color scales mapped onto values

# 2 guide legend

p <- ggplot(mtcars, aes(cyl, mpg)) +
  geom_point()
p + scale_y_continuous(sec.axis = dup_axis())
p
