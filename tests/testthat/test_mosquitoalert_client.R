# Test for high-level MosquitoAlert client
context("Test MosquitoAlert High-Level Client")

test_that("MosquitoAlert client can be initialized", {
  # Test basic initialization
  client <- MosquitoAlert$new()
  
  expect_true(!is.null(client$api))
  expect_true(!is.null(client$client))
  expect_true(inherits(client$api, "mosquitoalert_api"))
  expect_true(inherits(client$client, "ApiClient"))
})

test_that("MosquitoAlert client can be initialized with token", {
  # Test initialization with token
  test_token <- "test_token_123"
  client <- MosquitoAlert$new(token = test_token)
  
  expect_equal(client$client$bearer_token, test_token)
  expect_true("Authorization" %in% names(client$client$default_headers))
  expect_equal(client$client$default_headers$Authorization, paste("Bearer", test_token))
})

test_that("MosquitoAlert client can be initialized with custom settings", {
  # Test initialization with custom settings
  client <- MosquitoAlert$new(
    base_url = "https://custom.api.com",
    timeout = 60,
    max_retries = 5
  )
  
  expect_equal(client$client$base_path, "https://custom.api.com")
  expect_equal(client$client$timeout, 60)
  expect_equal(client$client$max_retry_attempts, 5)
})

test_that("MosquitoAlert client can set token after initialization", {
  # Test setting token after creation
  client <- MosquitoAlert$new()
  test_token <- "new_token_456"
  
  client$set_token(test_token)
  
  expect_equal(client$client$bearer_token, test_token)
  expect_true("Authorization" %in% names(client$client$default_headers))
  expect_equal(client$client$default_headers$Authorization, paste("Bearer", test_token))
})

# Note: The following tests would require mocking the actual API calls
# In a real testing scenario, you would mock the HTTP responses

test_that("MosquitoAlert client has all expected methods", {
  client <- MosquitoAlert$new()
  
  # Check that all expected methods exist
  expect_true("get_observations" %in% names(client))
  expect_true("get_my_observations" %in% names(client))
  expect_true("get_countries" %in% names(client))
  expect_true("authenticate" %in% names(client))
  expect_true("test_connection" %in% names(client))
  expect_true("set_token" %in% names(client))
})

test_that("MosquitoAlert client methods are callable", {
  client <- MosquitoAlert$new()
  
  # Test that methods exist and are functions
  expect_true(is.function(client$get_observations))
  expect_true(is.function(client$get_my_observations))
  expect_true(is.function(client$get_countries))
  expect_true(is.function(client$authenticate))
  expect_true(is.function(client$test_connection))
  expect_true(is.function(client$set_token))
})
