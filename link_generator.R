

create_redirect_file <- function(old_repo, page) {
  # Create a redirect file
  file_name <- paste0(old_repo, "/", page, ".html")
  new_link <- paste0("https://lmu-osc.github.io/", old_repo, "/", page, ".html")
  
  text <- c(
    "<!DOCTYPE html>\n",
    "<meta charset='utf-8'>\n",
    paste0("<title>Redirecting to ", new_link ,"</title>\n"),
    paste0("<meta http-equiv='refresh' content='0; URL=", new_link ,"'>\n"),
    paste0("<link rel='canonical' href='", new_link ,"'>\n")
  ) 
  cat(text, file = file_name, sep = "")
  
}

