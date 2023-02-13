SELECT count (distinct Affiliated_base_number) FROM `graceful-mile-376222.trips_data_all.ride_2019_internal` ;

SELECT count (*) FROM `graceful-mile-376222.trips_data_all.ride_2019_internal`
where PUlocationID is null and DOlocationID is null;


CREATE OR REPLACE TABLE `graceful-mile-376222.trips_data_all.rides_2019_partitoned_clustered`
PARTITION BY DATE(pickup_datetime)
CLUSTER BY Affiliated_base_number AS
SELECT * FROM `graceful-mile-376222.trips_data_all.ride_2019_internal` ;

SELECT count (distinct Affiliated_base_number) FROM `graceful-mile-376222.trips_data_all.ride_2019_internal`
where DATE(pickup_datetime) >= '2019-03-01' and DATE(pickup_datetime) <= '2019-03-31'


SELECT count (distinct Affiliated_base_number) FROM `graceful-mile-376222.trips_data_all.rides_2019_partitoned_clustered`
where DATE(pickup_datetime) >= '2019-03-01' and DATE(pickup_datetime) <= '2019-03-31';