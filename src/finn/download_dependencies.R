
# enter your own destination directory, can be somewhere on your local machine
dest_dir <- "<enter directory>"
dest_dir <- "C:\\Users\\mitokic\\Downloads\\dep_folder"

# to make sure you are downloading packages with binaries
options(
  HTTPUserAgent =
    sprintf(
      "R/%s R (%s)",
      getRversion(),
      paste(getRversion(), R.version["platform"], R.version["arch"], R.version["os"])
    )
)

# download finnts dependencies
download.packages(c('arrow', 'glmnet', 'kernlab'), 
                  repos = 'https://packagemanager.rstudio.com/cran/__linux__/focal/2022-11-08', 
                  destdir = dest_dir)

download.packages(c('clock', 'Cubist', 'hts', 'V8', 'parsnip', 'plotrix',
                    'Formula', 'plotmo', 'TeachingDemos', 'timechange', 'DiceDesign', 
                    'earth', 'dials', "tidyselect", "tidyr", "stringr", "rsample", 
                    'modeldata', 'rules', 'recipes', 'purrr', 'plyr', 'magrittr', 
                    'lubridate', 'bitops', 'snakecase', 'reactR', 'lhs', 'GPfit', 'tictoc', 
                    'yardstick', 'reactable', 'gt', 'janitor', 'xgboost', 'gtools', 'fs', 
                    'generics', 'doParallel', 'foreach', 'digest', 'GPfit', 'lhs', 'tune', 
                    'modeltime', 'modeltime.gluonts', 'modeltime.resample', 'remotes'), 
                  repos = 'https://packagemanager.rstudio.com/cran/__linux__/focal/2022-04-08', 
                  destdir = dest_dir)
