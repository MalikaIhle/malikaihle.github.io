

# Example of creating the fork.html page for the Collaborative-RStudio-GitHub repository
# Will automatically create a fork.html file in the Collaborative-RStudio-GitHub folder
# of the current working directory. This HTML file will redirect to the LMU-OSC equivalent

source("link_generator.R")

create_redirect_file(
  old_repo = "Collaborative-RStudio-GitHub",
  page = "fork"
)