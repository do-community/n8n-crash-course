CREATE TABLE auth_tokens (
    id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    token VARCHAR(255) NOT NULL UNIQUE,
    inquiry_id VARCHAR(100) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    expires_at TIMESTAMPTZ NOT NULL,
    used_at TIMESTAMPTZ,
    resume_url TEXT
);