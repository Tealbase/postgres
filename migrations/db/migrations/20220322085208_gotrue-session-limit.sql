-- migrate:up
ALTER ROLE tealbase_auth_admin SET idle_in_transaction_session_timeout TO 60000;

-- migrate:down
