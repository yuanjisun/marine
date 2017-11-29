context("Test GPS from Pre-loaded Data")

test_that("Test correctness of GPS result from the pre-loaded data", {
        # The correct output
        GPS_actual <- list(longitude=data@metadata$longitude, latitude=data@metadata$latitude)
        # Approximate results by converting GPS corrdinates into decimal form
        GPS_test_1 <- list(longitude=-123.6664, latitude=49.25022)
        # Raw results in the raw data
        GPS_test_2 <- list(longitude="123 39.983 W", latitude="49 15.013 N")
        # Making sure that the results is correct
        expect_identical(gps(data),GPS_actual)
        # Making sure that the results are the same within a very small tolerance, which is acceptable in Oceanography
        expect_equal(gps(data),GPS_test_1, tolerance=1e-5)
        # Make sure the result is not in text form with degrees, minutes and seconds
        expect_failure(expect_equal(gps(data),GPS_test_2))
})
