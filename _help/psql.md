CREATE DATABSE datbasename;
=> connect to your database at the beggining of the shell. or you can just.
\c datbasename;


=> To delete a databse
```
DROP DATABASE datbasename;
```

=> To create a table inside a dtabase
```
CREATE TABLE tablename(
 Column name + data type + constraints if any
);

```
==> \d to list all the tables.

==> \d tablename to list all columns inside the table.


=> DROP TABLE tablename to Drop that table.


BIGSERAIL data type is int , and it is autoinceremental.


To add data into tables 

```
INSERT INTO tablename (
first_name,
last_name,
gender,
date_of)BIRTH)
 

VALUES ('shuja','shah','male', DATE 1999-11-27);
```

To see all the data inside a table

```
SELECT * FROM tablename
```

To find specific info , like data where a column ends with a letter or a string use.

``` 
SELECT * FROM tablename WHERE columnname LIKE '%thestringyouarelookingfor';

```


To find info at a specific range, you use Between AND like this :

```
SELECT * FROM tablename WHERE columnname BETWEEN 'ur_range-min' AND 'ur_range_max';

```



You can also chain two specifc columns using AND (it's plain english)

```
SELECT * FROM tablename WHERE columnname = bool AND columnname2 < 1;
```

==> You can also use operation to check for two conditions. LIKE OR


==> You can also use not equal operator like !=


==> You can also use IN operator to check for multiple values in a column.
like
```
SELECT * FROM tablename WHERE columnname IN ('value1','value2','value3');
```

==> You can also use NOT IN operator to check for multiple values in a column.
like
```
SELECT * FROM tablename WHERE columnname NOT IN ('value1','value2','value3');
```

==> You can also use ORDER BY to sort the data in a column.
like (default is ascending order for decending order use DESC)
```
SELECT * FROM tablename ORDER BY columnname;
```


==> You can also use LIMIT to limit the number of rows you want to see.
like
```
SELECT * FROM tablename LIMIT 2;
```

==> You can also use OFFSET to skip the first n rows.
like
```
SELECT * FROM tablename OFFSET 2;
```

==> You can also use LIMIT and OFFSET together.
like
```
SELECT * FROM tablename LIMIT 2 OFFSET 2;
```

==> You can also use DISTINCT to remove duplicate rows.
like
```
SELECT DISTINCT columnname FROM tablename;
```



# UPDATING RECORDS
**To seafly delete a record from a table use DELETE ;**
like
```
DELETE FROM tablename WHERE columnname = 'value';
```

**To update a record from a table use UPDATE ;**
like
```
UPDATE tablename SET columnname = 'value' WHERE columnname = 'value';
```

**To update a record from a table use UPDATE ;**
like
```
UPDATE tablename SET columnname = 'value' WHERE columnname = 'value';
```

**To update a record from a table use UPDATE ;**
like
```
UPDATE tablename SET columnname = 'value' WHERE columnname = 'value';
```
