CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `cargo`.`status_times` AS
    SELECT 
        `o`.`id` AS `OrderID`,
        `o`.`location_id` AS `location_id`,
        `os`.`created_at` AS `created_at`,
        `os`.`status` AS `status`
    FROM
        (`cargo`.`orders` `o`
        JOIN `cargo`.`order_statuses` `os` ON ((`o`.`id` = `os`.`order_id`)))