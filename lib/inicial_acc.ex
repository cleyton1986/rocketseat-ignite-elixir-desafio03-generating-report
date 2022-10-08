defmodule GenReport.InicialAcc do
  @names_freelas [
    "cleiton",
    "daniele",
    "danilo",
    "diego",
    "giuliano",
    "jakeliny",
    "joseph",
    "mayk",
    "rafael",
    "vinicius"
  ]

  @month [
    "janeiro",
    "fevereiro",
    "março",
    "abril",
    "maio",
    "junho",
    "julho",
    "agosto",
    "setembro",
    "outubro",
    "novembro",
    "dezembro"
  ]

  @year [
    2016,
    2017,
    2018,
    2019,
    2020
  ]
  def acc do
    all_hours = Enum.into(@names_freelas, %{}, fn freelas -> {freelas, 0} end)

    hours_per_month =
      Enum.into(@names_freelas, %{}, fn freelas -> {freelas, acc_month_or_year(@month)} end)

    hours_per_year =
      Enum.into(@names_freelas, %{}, fn freelas -> {freelas, acc_month_or_year(@year)} end)

    %{
      "all_hours" => all_hours,
      "hours_per_month" => hours_per_month,
      "hours_per_year" => hours_per_year
    }
  end

  defp acc_month_or_year(params) do
    Enum.into(params, %{}, fn elem -> {elem, 0} end)
  end
end
