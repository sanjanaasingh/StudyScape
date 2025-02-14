begin; -- start transaction
select plan(1); -- only one test to run

SELECT has_column(
    'schema_name',
    'table_name',
    'column_name',
    'output message'
);

select * from finish();
-- undoing changes as its only a test
rollback;