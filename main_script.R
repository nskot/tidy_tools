# https://rstudio-conf-2022.github.io/build-tidy-tools/materials/day-1-session-1-introduction.html#/create_package-2

install.packages("devtools")
devtools::has_devel()
devtools::install_github("rstudio-conf-2022/btt22")

usethis::use_git_config(
  user.name = "nskot",          # actual first and last name
  user.email = "nils.skotara@gmail.com"  # email associated with GitHub account
)
usethis::create_github_token()
gitcreds::gitcreds_set()
usethis::git_sitrep()

usethis::edit_r_profile()

R.home()
list.files(R.home())
.Library
dir(.Library)

# There are five states a package can be in:
# source
# What you create and work on. 
# Specific directory structure with some particular components e.g., DESCRIPTION, an R/ directory.

# bundled
# Also known as “source tarballs”.
# Package files compressed to single file.
# Conventionally .tar.gz
# You don’t normally need to make one.
# Unpacked it looks very like the source package

# binary
# Package distribution for users w/o dev tools   Also a single file
# Platform specific: .tgz (Mac) .zip (Windows)
# Package developers submit a bundle to CRAN; CRAN makes and distributes binaries
# install.packages()

# installed
# A binary package that’s been decompressed into a package library
# Command line tool R CMD INSTALL powers all package installation

# in-memory
# If a package is installed, library() makes its function available by 
# loading the package into memory and attaching it to the search path.
# We do not use library() for packages we are working on 
# devtools::load_all() loads a source package directly into memory.

usethis::create_package("~/R/ussie")

create_package()

# What happens when we run create_package()?
# R will create a folder called ussie which is a package and an RStudio project
# restart R in the new project
# create some infrastructure for your package
# start the RStudio Build pane
# ussie.Rproj
# DESCRIPTION provides metadata about your package.
# The R/ directory is where we will put .R files with function definitions.
# NAMESPACE declares the functions your package exports and the 
# functions your package imports from other packages.

# .Rbuildignore lists files that we need but that should not be included 
# when building the R package from source.

# .gitignore anticipates Git usage and ignores some standard, 
# behind-the-scenes files created by R and RStudio.


