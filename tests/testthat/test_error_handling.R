# Test for improved error handling
context("Test Error Handling")

# Load the package functions
library(MosquitoAlert)

test_that("MosquitoAlertError can be created and printed", {
  skip_if_not_installed("MosquitoAlert")
  
  error <- MosquitoAlert::MosquitoAlertError$new(
    status_code = 404,
    status_desc = "Not Found",
    message = "Resource not found",
    details = "Additional details"
  )
  
  expect_equal(error$status_code, 404)
  expect_equal(error$status_desc, "Not Found")
  expect_equal(error$message, "Resource not found")
  expect_equal(error$details, "Additional details")
  
  # Test toString method
  error_string <- error$toString()
  expect_true(grepl("404", error_string))
  expect_true(grepl("Resource not found", error_string))
})

test_that("check_api_response handles successful responses", {
  skip_if_not_installed("MosquitoAlert")
  
  # Mock successful response
  response <- list(
    status_code = 200,
    status_code_desc = "OK",
    response = charToRaw('{"success": true}')
  )
  class(response) <- "ApiResponse"
  
  # Should return the response without error
  result <- MosquitoAlert::check_api_response(response)
  expect_equal(result, response)
})

test_that("check_api_response throws error for 400 status", {
  # Mock 400 response with JSON error
  response <- list(
    status_code = 400,
    status_code_desc = "Bad Request",
    response = charToRaw('{"message": "Invalid input"}')
  )
  class(response) <- "ApiResponse"
  
  # Should throw MosquitoAlertError
  expect_error({
    check_api_response(response)
  }, "Bad Request: Invalid input")
})

test_that("check_api_response throws error for 401 status", {
  # Mock 401 response
  response <- list(
    status_code = 401,
    status_code_desc = "Unauthorized",
    response = charToRaw('{"detail": "Authentication required"}')
  )
  class(response) <- "ApiResponse"
  
  # Should throw MosquitoAlertError
  expect_error({
    check_api_response(response)
  }, "Unauthorized: Authentication required")
})

test_that("check_api_response throws error for 404 status", {
  # Mock 404 response
  response <- list(
    status_code = 404,
    status_code_desc = "Not Found",
    response = charToRaw('{"error": "Resource not found"}')
  )
  class(response) <- "ApiResponse"
  
  # Should throw MosquitoAlertError
  expect_error({
    check_api_response(response)
  }, "Not Found: Resource not found")
})

test_that("check_api_response throws error for 500 status", {
  # Mock 500 response
  response <- list(
    status_code = 500,
    status_code_desc = "Internal Server Error",
    response = charToRaw('{"message": "Database connection failed"}')
  )
  class(response) <- "ApiResponse"
  
  # Should throw MosquitoAlertError
  expect_error({
    check_api_response(response)
  }, "Server Error: Database connection failed")
})

test_that("check_api_response handles NULL response", {
  # Should throw error for NULL response
  expect_error({
    check_api_response(NULL)
  }, "No response received from API")
})

test_that("check_api_response handles malformed JSON", {
  # Mock response with invalid JSON
  response <- list(
    status_code = 400,
    status_code_desc = "Bad Request",
    response = charToRaw('invalid json{')
  )
  class(response) <- "ApiResponse"
  
  # Should still throw error, falling back to raw text
  expect_error({
    check_api_response(response)
  }, "Bad Request")
})

test_that("check_api_response handles empty response body", {
  # Mock response with no body
  response <- list(
    status_code = 404,
    status_code_desc = "Not Found",
    response = NULL
  )
  class(response) <- "ApiResponse"
  
  # Should throw error with default message
  expect_error({
    check_api_response(response)
  }, "Not Found: Unknown error")
})
