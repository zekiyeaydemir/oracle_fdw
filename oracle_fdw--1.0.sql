CREATE FUNCTION oracle_fdw_handler() RETURNS fdw_handler
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

COMMENT ON FUNCTION oracle_fdw_handler()
IS 'Oracle foreign data wrapper handler';

CREATE FUNCTION oracle_fdw_validator(text[], oid) RETURNS void
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

COMMENT ON FUNCTION oracle_fdw_validator(text[], oid)
IS 'Oracle foreign data wrapper options validator';

CREATE FUNCTION oracle_close_connections() RETURNS void
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

COMMENT ON FUNCTION oracle_close_connections()
IS 'closes all open Oracle connections';

CREATE FOREIGN DATA WRAPPER oracle_fdw
  HANDLER oracle_fdw_handler
  VALIDATOR oracle_fdw_validator;

COMMENT ON FOREIGN DATA WRAPPER oracle_fdw
IS 'Oracle foreign data wrapper';
