# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test User")

model_instance <- User$new()

test_that("uuid", {
  # tests for the property `uuid` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`uuid`, "EXPECTED_RESULT")
})

test_that("username", {
  # tests for the property `username` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`username`, "EXPECTED_RESULT")
})

test_that("first_name", {
  # tests for the property `first_name` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`first_name`, "EXPECTED_RESULT")
})

test_that("last_name", {
  # tests for the property `last_name` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`last_name`, "EXPECTED_RESULT")
})

test_that("full_name", {
  # tests for the property `full_name` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`full_name`, "EXPECTED_RESULT")
})

test_that("registration_time", {
  # tests for the property `registration_time` (character)
  # The date and time when user registered and consented to sharing data. Automatically set by server when user uploads registration.

  # uncomment below to test the property
  #expect_equal(model.instance$`registration_time`, "EXPECTED_RESULT")
})

test_that("locale", {
  # tests for the property `locale` (character)
  # The locale code representing the language preference selected by the user for displaying the interface text. Enter the locale following the BCP 47 standard in &#39;language&#39; or &#39;language-region&#39; format (e.g., &#39;en&#39; for English, &#39;en-US&#39; for English (United States), &#39;fr&#39; for French). The language is a two-letter ISO 639-1 code, and the region is an optional two-letter ISO 3166-1 alpha-2 code.

  # uncomment below to test the property
  #expect_equal(model.instance$`locale`, "EXPECTED_RESULT")
})

test_that("language_iso", {
  # tests for the property `language_iso` (character)
  # ISO 639-1 code

  # uncomment below to test the property
  #expect_equal(model.instance$`language_iso`, "EXPECTED_RESULT")
})

test_that("is_guest", {
  # tests for the property `is_guest` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`is_guest`, "EXPECTED_RESULT")
})

test_that("score", {
  # tests for the property `score` (UserScore)

  # uncomment below to test the property
  #expect_equal(model.instance$`score`, "EXPECTED_RESULT")
})
