library(ggplot2)

mtcars$cyl <- as.factor(mtcars$cyl)

# use variables to specify color, shape and size of points
gscatter <- function(data, x, y, title, xlab, ylab, color, shape, size,
                     x1, x2, y1, y2) {
  p <- ggplot(data = data) +
    geom_point(mapping = aes_string(x = x, y = y, 
      colour = color, shape = shape, size = size)) +
    ggtitle(title) + xlab(xlab) + ylab(ylab) +
    xlim(x1, x2) + ylim(y1, y2) + 
    geom_smooth(method = 'lm')
  p
}

# use fixed values for color, shape and size
gscatter2 <- function(data, x, y, title, xlab, ylab, color, shape, size, fill,
                      x1, x2, y1, y2) {
  p <- ggplot(data = data) +
    geom_point(mapping = aes_string(x = x, y = y), 
               colour = color, shape = shape, size = size, fill = fill) +
    ggtitle(title) + xlab(xlab) + ylab(ylab) +
    xlim(x1, x2) + ylim(y1, y2) +
    geom_smooth(method = 'lm')
  p
}

# add regression line to gscatter
gscatterl <- function(data, x, y, title, xlab, ylab, color, shape, size,
                     x1, x2, y1, y2) {
  p <- ggplot(data = data, mapping = aes_string(x = x, y = y, 
        colour = color, shape = shape, size = size)) +
    geom_point() +
    ggtitle(title) + xlab(xlab) + ylab(ylab) +
    xlim(x1, x2) + ylim(y1, y2) + 
    geom_smooth(method = 'lm')
  p
}

# add regression line to gscatter2
gscatterl2 <- function(data, x, y, title, xlab, ylab, color, shape, size, fill,
                      x1, x2, y1, y2) {
  p <- ggplot(data = data, mapping = aes_string(x = x, y = y)) +
    geom_point( colour = color, shape = shape, size = size, fill = fill) +
    ggtitle(title) + xlab(xlab) + ylab(ylab) +
    xlim(x1, x2) + ylim(y1, y2) +
    geom_smooth(method = 'lm')
  p
}

# modify appearance of title and axis labels
gscatter3 <- function(data, x, y, title, xlab, ylab, color, shape, size, fill,
                      x1, x2, y1, y2, title_col = 'black', 
                      title_fam = 'serif', title_face = 'plain', 
                      title_size = 10, title_hjust = 0.5, title_vjust = 0.5,
                      xax_col = 'black', xax_fam = 'serif', 
                      xax_face = 'plain', xax_size = 10, 
                      xax_hjust = 0.5, xax_vjust = 0.5,
                      yax_col = 'black', yax_fam = 'serif', 
                      yax_face = 'plain', yax_size = 10, 
                      yax_hjust = 0.5, yax_vjust = 0.5,
                      remove_xax = FALSE, remove_yax = FALSE) {
  
  p <- ggplot(data = data) +
    geom_point(mapping = aes_string(x = x, y = y), 
               colour = color, shape = shape, size = size, fill = fill) +
    ggtitle(title) + xlab(xlab) + ylab(ylab) +
    xlim(x1, x2) + ylim(y1, y2) + 
    theme(
      plot.title = element_text(color = title_col, family = title_fam,
        face = title_face, size = title_size, hjust = title_hjust,
        vjust = title_vjust),
      axis.title.x = element_text(color = xax_col, family = xax_fam,
        face = xax_face, size = xax_size, hjust = xax_hjust,
        vjust = xax_vjust),
      axis.title.y = element_text(color = yax_col, family = yax_fam,
        face = yax_face, size = yax_size, hjust = yax_hjust,
        vjust = yax_vjust)
    )
  
  if(remove_xax) {
    p <- p + theme(
      axis.title.x = element_blank()
    )
    p
  }
  
  if(remove_yax) {
    p <- p + theme(
      axis.title.y = element_blank()
    )
    p
  }
  
  p
}

# add text annotations
gscatter4 <- function(data, x, y, title = NULL, xlab = NULL, ylab = NULL, 
                      color = 'black', shape = 1, size = 1, fill = NA, 
                      xaxlimit = FALSE, yaxlimit = FALSE,
                      x1 = NA, x2 = NA, y1 = NA, y2 = NA, title_col = 'black', 
                      title_fam = 'serif', title_face = 'plain', 
                      title_size = 10, title_hjust = 0.5, title_vjust = 0.5,
                      xax_col = 'black', xax_fam = 'serif', 
                      xax_face = 'plain', xax_size = 10, 
                      xax_hjust = 0.5, xax_vjust = 0.5,
                      yax_col = 'black', yax_fam = 'serif', 
                      yax_face = 'plain', yax_size = 10, 
                      yax_hjust = 0.5, yax_vjust = 0.5,
                      remove_xax = FALSE, remove_yax = FALSE,
                      add_text = FALSE, xloc = NA, yloc = NA, label = NA,
                      tex_color = NA, tex_size = NA) {
  
  p <- ggplot(data = data) +
    geom_point(mapping = aes_string(x = x, y = y), 
               colour = color, shape = shape, size = size, fill = fill) +
    ggtitle(title) + xlab(xlab) + ylab(ylab) +
    theme(
      plot.title = element_text(color = title_col, family = title_fam,
                                face = title_face, size = title_size, hjust = title_hjust,
                                vjust = title_vjust),
      axis.title.x = element_text(color = xax_col, family = xax_fam,
                                  face = xax_face, size = xax_size, hjust = xax_hjust,
                                  vjust = xax_vjust),
      axis.title.y = element_text(color = yax_col, family = yax_fam,
                                  face = yax_face, size = yax_size, hjust = yax_hjust,
                                  vjust = yax_vjust)
    )
  
  if(xaxlimit) {
    p <- p + xlim(x1, x2)
    p
  }
  
  if (yaxlimit) {
    p <- p + ylim(y1, y2)
    p
  }
  
  if(remove_xax) {
    p <- p + theme(
      axis.title.x = element_blank()
    )
    p
  }
  
  if(remove_yax) {
    p <- p + theme(
      axis.title.y = element_blank()
    )
    p
  }
  
  if(add_text) {
    p <- p + annotate("text", x = xloc, y = yloc, label = label, 
                      color = tex_color, size = tex_size)
    p
  }
  
  p
}

# test
gscatter4(mtcars, 'disp', 'mpg', 'Scatter', 'Displacement', 
          'Miles Per Gallon', 'red', 22, 3, 'blue',
          0, 600, 0, 40, title_col = 'red', add_text = TRUE,
          label = 'Text', xloc = 200, yloc = 20, tex_color = 'blue',
          tex_size = 5)

gscatter4(mtcars, 'disp', 'mpg')
            