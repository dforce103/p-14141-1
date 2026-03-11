DO
$$
BEGIN
    CREATE EXTENSION IF NOT EXISTS pg_stat_statements;
EXCEPTION
    WHEN OTHERS THEN
        RAISE NOTICE 'skip pg_stat_statements extension: %', SQLERRM;
END
$$;

DO
$$
BEGIN
    CREATE EXTENSION IF NOT EXISTS pgroonga;
EXCEPTION
    WHEN OTHERS THEN
        RAISE NOTICE 'skip pgroonga extension: %', SQLERRM;
END
$$;

-- CREATE EXTENSION IF NOT EXISTS postgis;
-- CREATE EXTENSION IF NOT EXISTS vectorscale CASCADE;
