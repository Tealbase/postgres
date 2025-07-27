-- migrate:up
grant authenticator to tealbase_storage_admin;
revoke anon, authenticated, service_role from tealbase_storage_admin;

-- migrate:down
