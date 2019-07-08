#' The data has been collected from a real-world ecommerce website.
#'
#' The dataset consists of three files: a file with behaviour data (events.csv),
#' a file with item properties (item_properties.сsv) and a file,
#' which describes category tree (category_tree.сsv).
#'
#' A dataset containing the behaviour data, i.e. events like clicks, add to carts, transactions,
#' represent interactions that were collected over a period of 4.5 months.
#' In total there are 2 756 101 events including 2 664 312 views, 69 332 add to carts
#' and 22 457 transactions produced by 1 407 580 unique visitors.
#'
#' @format A data frame with 2756101 rows and 5 variables:
#' \describe{
#'   \item{timestamp}{the time, when event is occurred,
#'   in milliseconds since 01-01-1970 (Standard Unix timestamp}
#'   \item{visitorid}{unique identifier of the visitor}
#'   \item{event}{type of the event {“view”, “addtocart”, “transaction”}}
#'   \item{itemid}{unique identifier of the item}
#'   \item{transactionid}{unique identifier of the transaction
#'   (non empty only for transaction event type).}
#' }
#' @source \url{https://www.kaggle.com/retailrocket/ecommerce-dataset/}
"events"


#'A flat representation of a tree-like 'parent-child' structure
#'
#' The variables of dataframe "category_tree" are as follows:
#'
#' @format A data frame with 1669 rows and 2 variables:
#' \describe{
#'   \item{categoryid}{unique identifier of the category}
#'   \item{parentid}{identifier of the parent category. It's empty, if parent doesn't exist}
#' }
#' @source \url{https://www.kaggle.com/retailrocket/ecommerce-dataset/}
"category_tree"


#' Properties corresponding to events.
#'
#' Since the property of an item can vary in time (e.g., price changes over time),
#' every row in the file has corresponding timestamp. In other words, the file consists of
#' concatenated snapshots for every week in the file with the behaviour data.
#' However, if a property of an item is constant over the observed period,
#' only a single snapshot value will be present in the file.
#'
#' @format A data frame with 20275902 rows and 4 variables:
#' \describe{
#'   \item{timestamp}{snapshot creation time (Unix timestamp in milliseconds)}
#'   \item{itemid}{unique identifier of the item}
#'   \item{property}{property of the Item. All of them had been hashed excluding "categoryid" and "available"}
#'   \item{value}{property value of the item}
#' }
#' @source \url{https://www.kaggle.com/retailrocket/ecommerce-dataset/}
"item_properties"

