# Test for ApiClient retry configuration
context("Test ApiClient Retry Configuration")

# Load the package functions
library(MosquitoAlert)

# Mock the httr2 functions for testing
test_that("ApiClient retry configuration uses correct parameters", {
  skip_if_not_installed("httr2")
  
  # Create client with retry settings
  client <- ApiClient$new(max_retry_attempts = 3, timeout = 30)
  
  # Verify the values are set correctly
  expect_equal(client$max_retry_attempts, 3)
  expect_equal(client$timeout, 30)
})

test_that("ApiClient retry configuration handles NULL values", {
  # Create client with no retry settings
  client <- ApiClient$new()
  
  # Verify NULL values
  expect_null(client$max_retry_attempts)
  expect_null(client$timeout)
})

test_that("ApiClient retry configuration with only max_retry_attempts", {
  # Create client with only max_retry_attempts (no timeout)
  client <- ApiClient$new(max_retry_attempts = 5)
  
  # Verify the values
  expect_equal(client$max_retry_attempts, 5)
  expect_null(client$timeout)
})

test_that("ApiClient retry configuration with only timeout", {
  # Create client with only timeout (no max_retry_attempts)
  client <- ApiClient$new(timeout = 60)
  
  # Verify the values
  expect_null(client$max_retry_attempts)
  expect_equal(client$timeout, 60)
})
