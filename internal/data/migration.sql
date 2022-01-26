CREATE TABLE `tradehelper`.`users` (
`id`INT NOT NULL,
`email` VARCHAR(45) NOT NULL,
`username` VARCHAR(45) NULL,
`password` VARCHAR(255) NOT NULL,
`tokenhash` VARCHAR(15) NOT NULL,
`created` DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
`updated` DATETIME ON UPDATE CURRENT_TIMESTAMP,

PRIMARY KEY (`id`),
UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE,
UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE);

