if (interactive()) {
  suppressMessages(require(devtools))
  suppressMessages(require(testthat))
}

# Create a package
# The CRAN version of engsoccerdata has data from the start of the league 
# until 2016 for england, germany, holland, italy and spain

dplyr::glimpse(engsoccerdata::england)
dplyr::glimpse(engsoccerdata::spain)
dplyr::glimpse(engsoccerdata::germany)

# First function
# So the first function in our ussie package will turn these in to standard formats:
# use only the common columns    give the same column the same data type

# Create a package
# Be deliberate about where you create your package
# Do not nest inside another RStudio project, R package or git repo.

