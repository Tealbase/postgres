-- migrate:up

-- update owner for auth.uid, auth.role and auth.email functions
ALTER FUNCTION auth.uid owner to tealbase_auth_admin;
ALTER FUNCTION auth.role owner to tealbase_auth_admin;
ALTER FUNCTION auth.email owner to tealbase_auth_admin;

-- migrate:down
