defmodule SystemStatEx do
  @moduledoc """
  Documentation for `Systemstat`.
  """
  use Rustler,
    otp_app: :systemstat,
    crate: :systemstatex

  @doc """
  Hello world.

  ## Examples

      iex> Systemstat.hello()
      :world

  """
  def cpu_temp(), do: :erlang.nif_error(:nif_not_loaded)
end
