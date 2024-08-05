


# https://lmu-osc.github.io/Simulations-for-Advanced-Power-Analyses/ does not have a sitemap.xml file

links <- c(
  "https://lmu-osc.github.io/Collaborative-RStudio-GitHub/sitemap.xml",
  "https://lmu-osc.github.io/Introduction-RStudio-Git-GitHub/sitemap.xml",
  "https://lmu-osc.github.io/Introduction-Simulations-in-R/sitemap.xml",
  "https://lmu-osc.github.io/OSC-Open-Research-Summer-School-2023/sitemap.xml"
) %>%
  lapply(function(x) get_links_from_sitemaps(x))

links_vec <- links %>% 
  unlist() %>% 
  unname() %>%
  str_remove_all("https://lmu-osc.github.io/") 


parsed_table <- links_vec %>%
  tibble(link = .) %>%
  mutate(
    old_repo = stringr::str_extract(link,  "^[^/]*/") %>%
      stringr::str_remove("/"),
    page = stringr::str_remove(link,  "^[^/]*/") %>%
      stringr::str_remove(".html") 
    ) %>%
  dplyr::filter(page != "index")

purrr::map2(
  parsed_table$old_repo,
  parsed_table$page,
  ~ create_redirect_file(old_repo = .x, page = .y)
)
