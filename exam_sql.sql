-- Section1
    SELECT name FROM singer WHERE balance=0;
-- Section2
    CREATE TABLE `producer`(
        `name` VARCHAR(20) NOT NULL,
        `PRIMARY KEY (name),
    );
    ALTER TABLE `producer` ADD name;
    SET producer.name = (SELECT song.producer FROM song)
    WHERE EXISTS (SELECT song.producer FROM song);
-- Section3
    SELECT name.song AND total_sell FROM song WHERE producer = dr.dre AND singer = (SELECT singer FROM song WHERE total_sell= (SELECT MAX(total_sell) FROM song WHERE total_sell NOT IN (SELECT Max(total_sell) FROM song)) AND producer=dr.dre)
