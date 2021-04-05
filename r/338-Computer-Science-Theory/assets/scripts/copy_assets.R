current_working_dir <- getwd()
working_dir_assets_path <- paste(current_working_dir, 'assets', sep = '/')
git_root_dir <- dirname(dirname(current_working_dir))



assetFilesFnc.rm <- function(files) {
  for(i in files) {
    temp_to_path <- paste(working_dir_assets_path, i, sep = '/')
    if(file.exists(temp_to_path) || dir.exists(temp_to_path)) {
      unlink(temp_to_path, recursive = TRUE)
    }
  }
}

assetFilesFnc.cp <- function(files) {
  for(i in files) {
    source_content_path <- paste(git_root_dir, i, sep = '/')
    if(file.exists(source_content_path) || dir.exists(source_content_path)) {
      file.copy(from = source_content_path, to = working_dir_assets_path, recursive = TRUE, overwrite = TRUE)
    }
  }
}

