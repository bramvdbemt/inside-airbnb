######################
### DOWNLOAD DATA ####
######################


download_data <- function(url, filename){
  download.file(url = url, destfile = paste0(filename, ".csv"))
}

url_reviews <- "http://data.insideairbnb.com/germany/be/berlin/2021-12-17/visualisations/reviews.csv"
url_listings <- "http://data.insideairbnb.com/germany/be/berlin/2021-12-17/visualisations/listings.csv"

download_data(url_reviews, "reviews")
download_data(url_listings, "listings")

