-- migrate:up
revoke tealbase_storage_admin from postgres;
revoke create on schema storage from postgres;
revoke all on storage.migrations from anon, authenticated, service_role, postgres;

revoke tealbase_auth_admin from postgres;
revoke create on schema auth from postgres;
revoke all on auth.schema_migrations from dashboard_user, postgres;

-- migrate:down
