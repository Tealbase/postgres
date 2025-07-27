-- migrate:up
alter role tealbase_admin set log_statement = none;
alter role tealbase_auth_admin set log_statement = none;
alter role tealbase_storage_admin set log_statement = none;

-- migrate:down
