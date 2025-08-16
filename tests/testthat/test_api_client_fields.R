# Test for ApiClient field definitions and initialization
context("Test ApiClient Fields")

test_that("ApiClient has all required fields defined", {
  # Create an ApiClient instance
  client <- ApiClient$new()
  
  # Test that all expected fields exist
  expect_true("access_token" %in% names(client))
  expect_true("bearer_token" %in% names(client))
  expect_true("api_keys" %in% names(client))
  expect_true("username" %in% names(client))
  expect_true("password" %in% names(client))
  expect_true("base_path" %in% names(client))
  expect_true("user_agent" %in% names(client))
  expect_true("default_headers" %in% names(client))
  expect_true("timeout" %in% names(client))
  expect_true("retry_status_codes" %in% names(client))
  expect_true("max_retry_attempts" %in% names(client))
})

test_that("ApiClient can be initialized with access_token", {
  # Test initialization with access_token
  test_token <- "test_access_token_123"
  client <- ApiClient$new(access_token = test_token)
  
  # Verify the access_token was set correctly
  expect_equal(client$access_token, test_token)
})

test_that("ApiClient can be initialized with bearer_token", {
  # Test initialization with bearer_token
  test_token <- "test_bearer_token_456"
  client <- ApiClient$new(bearer_token = test_token)
  
  # Verify the bearer_token was set correctly
  expect_equal(client$bearer_token, test_token)
})

test_that("ApiClient can be initialized with both tokens", {
  # Test initialization with both tokens
  access_token <- "access_123"
  bearer_token <- "bearer_456"
  client <- ApiClient$new(access_token = access_token, bearer_token = bearer_token)
  
  # Verify both tokens were set correctly
  expect_equal(client$access_token, access_token)
  expect_equal(client$bearer_token, bearer_token)
})

test_that("ApiClient default field values are correct", {
  # Create default client
  client <- ApiClient$new()
  
  # Test default values
  expect_equal(client$base_path, "https://api.mosquitoalert.com/v1")
  expect_equal(client$user_agent, "OpenAPI-Generator/0.1.21/r")
  expect_null(client$access_token)
  expect_null(client$bearer_token)
  expect_null(client$username)
  expect_null(client$password)
  expect_null(client$default_headers)
  expect_null(client$timeout)
  expect_null(client$retry_status_codes)
  expect_null(client$max_retry_attempts)
  expect_true(is.list(client$api_keys))
})
