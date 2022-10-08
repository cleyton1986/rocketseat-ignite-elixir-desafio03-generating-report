defmodule GenReport do
  alias GenReport.InicialAcc
  alias GenReport.Parser

  def build(filename) when is_binary(filename) do
    filename
    |> Parser.parse_file()
    |> Enum.reduce(InicialAcc.acc(), fn one_line, report -> sum_hours_all(one_line, report) end)
  end

  def build, do: {:error, "Insira o nome de um arquivo"}

  def build_from_many, do: {:error, "Parameter sent must not be nil"}

  def build_from_many(file_names) when not is_list(file_names) do
    {:error, "Please send a list of string"}
  end

  def build_from_many(file_names) do
    report_complete =
      file_names
      |> Task.async_stream(fn elem -> build(elem) end)
      |> Enum.reduce(InicialAcc.acc(), fn {:ok, map}, report -> generate_report(map, report) end)

    {:ok, report_complete}
  end

  defp generate_report(
         %{
           "all_hours" => all_hours1,
           "hours_per_month" => hours_per_month1,
           "hours_per_year" => hours_per_year1
         },
         %{
           "all_hours" => all_hours2,
           "hours_per_month" => hours_per_month2,
           "hours_per_year" => hours_per_year2
         }
       ) do
    all_hours = Map.merge(all_hours1, all_hours2, fn _key, value1, valeu2 -> value1 + valeu2 end)

    hours_per_month = merge_month_or_yeart(hours_per_month1, hours_per_month2)

    hours_per_year = merge_month_or_yeart(hours_per_year1, hours_per_year2)

    retuns_maps(all_hours, hours_per_month, hours_per_year)
  end

  defp sum_hours_all(
         [name, hour, _day, month, year],
         %{
           "all_hours" => all_hours,
           "hours_per_month" => hours_per_month,
           "hours_per_year" => hours_per_year
         }
       ) do
    all_hours = Map.put(all_hours, name, all_hours[name] + hour)

    hours_per_month =
      Map.put(
        hours_per_month,
        name,
        sun_month_or_year(hours_per_month[name], month, hour)
      )

    hours_per_year =
      Map.put(
        hours_per_year,
        name,
        sun_month_or_year(hours_per_year[name], year, hour)
      )

    retuns_maps(all_hours, hours_per_month, hours_per_year)
  end

  defp sun_month_or_year(name_freela, month_or_year, hour) do
    Map.put(name_freela, month_or_year, name_freela[month_or_year] + hour)
  end

  defp merge_month_or_yeart(map1, map2) do
    Map.merge(map1, map2, fn _key, month_or_year1, month_or_year2 ->
      Map.merge(month_or_year1, month_or_year2, fn _key, value1, value2 -> value1 + value2 end)
    end)
  end

  defp retuns_maps(all_hours, hours_per_month, hours_per_year) do
    %{
      "all_hours" => all_hours,
      "hours_per_month" => hours_per_month,
      "hours_per_year" => hours_per_year
    }
  end
end
