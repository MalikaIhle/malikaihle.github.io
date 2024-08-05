

# 
# xml2::read_xml("https://lmu-osc.github.io/Collaborative-RStudio-GitHub/sitemap.xml") %>%
#   xml2::as_list() %>%
#   magrittr::extract2(1) %>%
#   lapply(function(x) x$loc) %>%
#   unlist()

get_links_from_sitemaps <- function(sitemap_url) {
  xml2::read_xml(sitemap_url) %>%
    xml2::as_list() %>%
    magrittr::extract2(1) %>%
    lapply(function(x) x$loc) %>%
    unlist()
}



# https://lmu-osc.github.io/Simulations-for-Advanced-Power-Analyses/ does not have a sitemap.xml file

links <- c(
  "https://lmu-osc.github.io/Collaborative-RStudio-GitHub/sitemap.xml",
  "https://lmu-osc.github.io/Introduction-RStudio-Git-GitHub/sitemap.xml",
  "https://lmu-osc.github.io/Introduction-Simulations-in-R/sitemap.xml",
  "https://lmu-osc.github.io/OSC-Open-Research-Summer-School-2023/sitemap.xml"
)


get_links_from_sitemaps("https://lmu-osc.github.io/Collaborative-RStudio-GitHub/sitemap.xml")
