defmodule Codecovtest.Repo do
  use Ecto.Repo,
    otp_app: :codecovtest,
    adapter: Ecto.Adapters.Postgres
end
