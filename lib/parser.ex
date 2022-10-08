defmodule GenReport.Parser do
  @month %{
    "1" => "janeiro",
    "2" => "fevereiro",
    "3" => "março",
    "4" => "abril",
    "5" => "maio",
    "6" => "junho",
    "7" => "julho",
    "8" => "agosto",
    "9" => "setembro",
    "10" => "outubro",
    "11" => "novembro",
    "12" => "dezembro"
  }

  def parse_file(filename) do
    "reports/#{filename}"
    |> File.stream!()
    |> Enum.map(fn one_line -> parse_line(one_line) end)
  end

  defp parse_line(one_line) do
    one_line
    |> String.trim()
    |> String.split(",")
    |> List.update_at(0, fn elem -> String.downcase(elem) end)
    |> List.update_at(1, fn elem -> String.to_integer(elem) end)
    |> List.update_at(2, fn elem -> String.to_integer(elem) end)
    |> List.update_at(3, fn elem -> @month[elem] end)
    |> List.update_at(4, fn elem -> String.to_integer(elem) end)
  end
end
