# facet_grid
p <- ggplot(mpg, aes(displ, cty)) + geom_point()
p <- p + facet_grid(. ~ cyl) 
p


p <- ggplot(mpg, aes(displ, cty)) + geom_point()
p <- p + facet_grid(drv ~ .) 
p

p <- ggplot(mpg, aes(displ, cty)) + geom_point()
p <- p + facet_grid(drv ~ cyl) 
p

# free scales
mt <- ggplot(mtcars, aes(mpg, wt, colour = factor(cyl))) +
  geom_point()

mt + facet_grid(. ~ cyl, scales = "free")

p <- ggplot(mpg, aes(displ, cty)) + geom_point()
p <- p + facet_grid(drv ~ cyl, switch = "both") 
p

p <- ggplot(mpg, aes(displ, cty)) + geom_point()
p <- p + facet_grid(drv ~ cyl, switch = "both") 
p <- p + theme(strip.background = element_blank())
p

# facet_wrap
ggplot(mtcars, aes(disp, mpg)) +
  geom_point() +
  facet_wrap(~gear)


ggplot(mtcars, aes(disp, mpg)) +
  geom_point() +
  facet_wrap(~gear, nrow = 2)

ggplot(mtcars, aes(disp, mpg)) +
  geom_point() +
  facet_wrap(~gear, nrow = 3)

ggplot(mtcars, aes(disp, mpg)) +
  geom_point() +
  facet_wrap(~gear + cyl)

ggplot(mtcars, aes(disp, mpg)) +
  geom_point() +
  facet_wrap(c("cyl", "gear"))

ggplot(mtcars, aes(disp, mpg)) +
  geom_point() +
  facet_wrap(~gear, scales = "free")

