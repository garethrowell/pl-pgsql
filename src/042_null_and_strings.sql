
-- issues testing for NULLs
-- '' = NULL is neither true or false, its unknown
-- NULL = NULL is also unknown in PostgreSQL

-- the session setting transform_null_equals transforms
-- NULL into IS NULL and allows testing for NULLs

set transform_null_equals to ON;

-- now, NULL is interpreted as IS NULL
