select @@global.sql_mode;

-- An expression containing a few values, separated by commas, will appear in the result grid. They correspond to various MySQL settings that influence the way in which MySQL will behave in different situations.

set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');

-- REPLACE() is the function that will remove the “only_full_group_by” value from the expression here. Thus, error 1055 will not show up in the future.
-- Finally, if for some reason you’d like to disallow this behavior you can always execute the following command which will do exactly the opposite: it will add the “only_full_group_by” value to the expression.
set @@global.sql_mode := concat('ONLY_FULL_GROUP_BY,', @@global.sql_mode);
-- That said, we must also add that there is a reason behind this functionality. If you think about it, it is not logical to allow a column value to be listed in the output alongside a value that has been included in the GROUP BY clause of the query. We just cannot be sure that the not-grouped value that has been retrieved is going to be correct. But for the sake of our exercises, and for the purpose of making them clearer, we have allowed such syntax.