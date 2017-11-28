context("Test U-238 from Pre-loaded Data")

test_that("Test the accuracy and correctness of U-238 result from the pre-loaded data", {
        U_actual_1 <- 0.0786*c(1,2,3,4,5,6,7,8,9,10)-0.315
        U_actual_2 <- 0.0713*c(1,2,3,4,5,6,7,8,9,10)
        expect_identical(U_238(test_data,1, plot_it = FALSE),U_actual_1)
        expect_identical(U_238(test_data,2, plot_it = FALSE),U_actual_2)
        #expect_identical(U_238(test_data,1, plot_it = FALSE),U_actual_2)
        #expect_identical(U_238(test_data,2, plot_it = FALSE),U_actual_1)
})
