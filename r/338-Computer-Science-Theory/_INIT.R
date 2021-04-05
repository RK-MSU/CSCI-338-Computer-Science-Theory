source("assets/scripts/packages.R")
source("assets/scripts/copy_assets.R")

assets_to_copy <- c(
  "csci-338-course-overview.pdf",
  "homework",
  "lecture-slides",
  "exercises",
  "course-web-page-mirror"
)


assetFilesFnc.rm(assets_to_copy)
assetFilesFnc.cp(assets_to_copy)

if(dir.exists('docs')) {
  unlink('docs', recursive = TRUE)
}

# assetFilesFnc.rm(assets_to_copy)
# rm(list = ls())
