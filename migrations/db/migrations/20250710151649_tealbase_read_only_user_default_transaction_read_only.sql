-- migrate:up
alter role tealbase_read_only_user set default_transaction_read_only = on;

-- migrate:down
