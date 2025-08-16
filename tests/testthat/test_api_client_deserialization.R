# Test for ApiClient deserialization edge cases
context("Test ApiClient Deserialization")

# Load the package functions
library(MosquitoAlert)

test_that("ApiClient deserializeObj handles empty objects safely", {
  client <- ApiClient$new()
  
  # Test with empty list
  empty_list <- list()
  result <- client$deserializeObj(empty_list, "array[character]", environment())
  expect_equal(length(result), 0)
  
  # Test with empty data frame
  empty_df <- data.frame()
  result <- client$deserializeObj(empty_df, "array[character]", environment())
  expect_equal(length(result), 0)
})

test_that("ApiClient deserializeObj handles primitive types", {
  client <- ApiClient$new()
  
  # Test with character vector
  char_vector <- c("a", "b", "c")
  result <- client$deserializeObj(char_vector, "array[character]", environment())
  expect_equal(length(result), 3)
  expect_true(is.list(result))
  
  # Test with single character
  single_char <- "test"
  result <- client$deserializeObj(single_char, "character", environment())
  expect_equal(result, "test")
})

test_that("ApiClient deserializeObj handles data frame objects", {
  client <- ApiClient$new()
  
  # Test with simple data frame
  test_df <- data.frame(
    id = c(1, 2, 3),
    name = c("a", "b", "c"),
    stringsAsFactors = FALSE
  )
  
  # This should not throw an error even if the return type is unknown
  expect_error({
    result <- client$deserializeObj(test_df, "array[UnknownType]", environment())
  }, NA) # NA means no error expected
})
