library(readr)
library(usethis)

if (!file.exists('data-raw/events.csv') ||
    !file.exists('data-raw/category_tree.csv') ||
    !file.exists('data-raw/item_properties_part1.csv') ||
    !file.exists('data-raw/item_properties_part2.csv')
) {
  warning("Download zip from https://www.kaggle.com/retailrocket/ecommerce-dataset")
  warning("and unpack it into 'data-raw' folder")
  stop
}

events <- read_csv('data-raw/events.csv')
use_data(events, overwrite = TRUE)

category_tree <- read_csv('data-raw/category_tree.csv')
use_data(category_tree, overwrite = TRUE)

item_properties <- rbind(read_csv('data-raw/item_properties_part1.csv'),
                         read_csv('data-raw/item_properties_part2.csv')
                         )
use_data(item_properties, overwrite = TRUE)
