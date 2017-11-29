context("Test U-238 from Pre-loaded Data")

test_that("Test correctness of U-238 result from the pre-loaded data", {
        # Results from Method 1
        U_actual_1 <- 0.0786*c(1,2,3,4,5,6,7,8,9,10)-0.315
        # Results from Method 2
        U_actual_2 <- 0.0713*c(1,2,3,4,5,6,7,8,9,10)
        # Test Results 1 match Method 1
        expect_identical(U_238(test_data,1, plot_it = FALSE),U_actual_1)
        # Test Results 2 match Method 2
        expect_identical(U_238(test_data,2, plot_it = FALSE),U_actual_2)
        # Test Results 1 do not match Method 2
        expect_failure(expect_equal(U_238(test_data,1, plot_it = FALSE),U_actual_2))
        # Test Results 2 do not match Method 1
        expect_failure(expect_equal(U_238(test_data,2, plot_it = FALSE),U_actual_1))
})
