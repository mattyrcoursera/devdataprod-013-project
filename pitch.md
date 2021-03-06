Are you a criminal?  A Silly Shiny App
========================================================
author: Matt R
date: April 25, 2015

About the App
========================================================

Ever wonder if you are a criminal?  Have you ever asked yourself:

- Am I a criminal?
- Does my height suggest I'm a criminal?
- Does the length of my middle finger suggest I'm a criminal?

Well now you can find out!
========================================================

Head on over to:

https://mattyrcoursera.shinyapps.io/devdataprod-013-project/

Enter your height and middle finger length in the left, and you'll get your answers!

How it works
========================================================

Behind the scenes, we use a machine learning algorithm trained with data from the the R dataset "crimtab".  Here's a sampling of the data, which we've modified to be easier to use:


```r
library(reshape2)
data(crimtab)
head(melt(crimtab))
```

```
  Var1   Var2 value
1  9.4 142.24     0
2  9.5 142.24     0
3  9.6 142.24     0
4  9.7 142.24     0
5  9.8 142.24     0
6  9.9 142.24     0
```

Remember
========================================================

This was built just for fun, for homework, and for learning about Shiny.  Don't take the results seriously!
