### Create DB

```sql
CREATE DATABASE IF NOT EXISTS phpblogsite;
```

### Create table

```sql
CREATE TABLE IF NOT EXISTS `phpblogsite`.`posts` (`id` INT(255) UNSIGNED NOT NULL AUTO_INCREMENT , `title` VARCHAR(255) NOT NULL , `summary` TEXT NOT NULL , `content` LONGTEXT NOT NULL , `postdate` DATE NOT NULL DEFAULT CURRENT_TIMESTAMP , PRIMARY KEY (`id`)) ENGINE = InnoDB;
```
