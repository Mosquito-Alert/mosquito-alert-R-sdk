# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate

context("Test BreedingSite")

model_instance <- BreedingSite$new()

test_that("uuid", {
  # tests for the property `uuid` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`uuid`, "EXPECTED_RESULT")
})

test_that("short_id", {
  # tests for the property `short_id` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`short_id`, "EXPECTED_RESULT")
})

test_that("user_uuid", {
  # tests for the property `user_uuid` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`user_uuid`, "EXPECTED_RESULT")
})

test_that("created_at", {
  # tests for the property `created_at` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`created_at`, "EXPECTED_RESULT")
})

test_that("created_at_local", {
  # tests for the property `created_at_local` (character)
  # The date and time when the record was created, displayed in the local timezone specified for this entry.

  # uncomment below to test the property
  #expect_equal(model.instance$`created_at_local`, "EXPECTED_RESULT")
})

test_that("sent_at", {
  # tests for the property `sent_at` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`sent_at`, "EXPECTED_RESULT")
})

test_that("received_at", {
  # tests for the property `received_at` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`received_at`, "EXPECTED_RESULT")
})

test_that("updated_at", {
  # tests for the property `updated_at` (character)
  # Date and time when the report was last modified

  # uncomment below to test the property
  #expect_equal(model.instance$`updated_at`, "EXPECTED_RESULT")
})

test_that("location", {
  # tests for the property `location` (Location)

  # uncomment below to test the property
  #expect_equal(model.instance$`location`, "EXPECTED_RESULT")
})

test_that("note", {
  # tests for the property `note` (character)
  # Note user attached to report.

  # uncomment below to test the property
  #expect_equal(model.instance$`note`, "EXPECTED_RESULT")
})

test_that("tags", {
  # tests for the property `tags` (array[character])

  # uncomment below to test the property
  #expect_equal(model.instance$`tags`, "EXPECTED_RESULT")
})

test_that("published", {
  # tests for the property `published` (character)

  # uncomment below to test the property
  #expect_equal(model.instance$`published`, "EXPECTED_RESULT")
})

test_that("photos", {
  # tests for the property `photos` (array[SimplePhoto])

  # uncomment below to test the property
  #expect_equal(model.instance$`photos`, "EXPECTED_RESULT")
})

test_that("site_type", {
  # tests for the property `site_type` (character)
  # Breeding site type.

  # uncomment below to test the property
  #expect_equal(model.instance$`site_type`, "EXPECTED_RESULT")
})

test_that("has_water", {
  # tests for the property `has_water` (character)
  # Either if the user perceived water in the breeding site.

  # uncomment below to test the property
  #expect_equal(model.instance$`has_water`, "EXPECTED_RESULT")
})

test_that("in_public_area", {
  # tests for the property `in_public_area` (character)
  # Either if the breeding site is found in a public area.

  # uncomment below to test the property
  #expect_equal(model.instance$`in_public_area`, "EXPECTED_RESULT")
})

test_that("has_near_mosquitoes", {
  # tests for the property `has_near_mosquitoes` (character)
  # Either if the user perceived mosquitoes near the breeding site (less than 10 meters).

  # uncomment below to test the property
  #expect_equal(model.instance$`has_near_mosquitoes`, "EXPECTED_RESULT")
})

test_that("has_larvae", {
  # tests for the property `has_larvae` (character)
  # Either if the user perceived larvaes the breeding site.

  # uncomment below to test the property
  #expect_equal(model.instance$`has_larvae`, "EXPECTED_RESULT")
})
