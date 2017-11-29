context("Test Compensation Depth from Pre-loaded Data")

test_that("Test correctness of compensation depth from the pre-loaded data", {
        # This is the correct result for test_data
        expect_identical(compensation_depth(test_data),9)
        # Test the accuracy. Not 1 meter lower.
        expect_failure(expect_equal(compensation_depth(test_data), 10))
        # Test the accuracy. Not 1 meter higher.
        expect_failure(expect_equal(compensation_depth(test_data), 8))
})
