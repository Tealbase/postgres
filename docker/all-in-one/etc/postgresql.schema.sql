\set admin_pass `echo "${tealbase_ADMIN_PASSWORD:-$POSTGRES_PASSWORD}"`
\set pgrst_pass `echo "${AUTHENTICATOR_PASSWORD:-$POSTGRES_PASSWORD}"`
\set pgbouncer_pass `echo "${PGBOUNCER_PASSWORD:-$POSTGRES_PASSWORD}"`
\set auth_pass `echo "${tealbase_AUTH_ADMIN_PASSWORD:-$POSTGRES_PASSWORD}"`
\set storage_pass `echo "${tealbase_STORAGE_ADMIN_PASSWORD:-$POSTGRES_PASSWORD}"`
\set replication_pass `echo "${tealbase_REPLICATION_ADMIN_PASSWORD:-$POSTGRES_PASSWORD}"`
\set read_only_pass `echo "${tealbase_READ_ONLY_USER_PASSWORD:-$POSTGRES_PASSWORD}"`

ALTER USER tealbase_admin WITH PASSWORD :'admin_pass';
ALTER USER authenticator WITH PASSWORD :'pgrst_pass';
ALTER USER pgbouncer WITH PASSWORD :'pgbouncer_pass';
ALTER USER tealbase_auth_admin WITH PASSWORD :'auth_pass';
ALTER USER tealbase_storage_admin WITH PASSWORD :'storage_pass';
ALTER USER tealbase_replication_admin WITH PASSWORD :'replication_pass';
ALTER ROLE tealbase_read_only_user WITH PASSWORD :'read_only_pass';
ALTER ROLE tealbase_admin SET search_path TO "$user",public,auth,extensions;
