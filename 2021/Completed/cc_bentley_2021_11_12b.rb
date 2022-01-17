# Easy - Join Two Portions of a Path
# Write a function that receives two portions of a path and joins them. The portions
# will be joined with the "/" separator. There could be only one separator and if it is
# not present it should be added.
# Examples
# join_path("portion1", "portion2") ➞ "portion1/portion2"
# join_path("portion1/", "portion2") ➞ "portion1/portion2"
# join_path("portion1", "/portion2") ➞ "portion1/portion2"
# join_path("portion1/", "/portion2") ➞ "portion1/portion2"
# Notes
# Try not to solve this challenge using only if-else conditions.
def join_path(portion1, portion2)
  (portion1+'/'+portion2).gsub(/\/+/, '/')
end

puts join_path("portion1", "portion2") == "portion1/portion2"
puts join_path("portion1/", "portion2") == "portion1/portion2"
puts join_path("portion1", "/portion2") == "portion1/portion2"
puts join_path("portion1/", "/portion2") == "portion1/portion2"
puts join_path("5wf7fny", "stJKXlc8") == "5wf7fny/stJKXlc8"
puts join_path("5wf7fny/", "stJKXlc8") == "5wf7fny/stJKXlc8"
puts join_path("5wf7fny", "/stJKXlc8") == "5wf7fny/stJKXlc8"
puts join_path("5wf7fny/", "/stJKXlc8") == "5wf7fny/stJKXlc8"
puts join_path("FKBZOBHo", "GNcYGnB") == "FKBZOBHo/GNcYGnB"
puts join_path("FKBZOBHo/", "GNcYGnB") == "FKBZOBHo/GNcYGnB"
puts join_path("FKBZOBHo", "/GNcYGnB") == "FKBZOBHo/GNcYGnB"
puts join_path("FKBZOBHo/", "/GNcYGnB") == "FKBZOBHo/GNcYGnB"
puts join_path("vL533Y3", "uVz3nul") == "vL533Y3/uVz3nul"
puts join_path("vL533Y3/", "uVz3nul") == "vL533Y3/uVz3nul"
puts join_path("vL533Y3", "/uVz3nul") == "vL533Y3/uVz3nul"
puts join_path("vL533Y3/", "/uVz3nul") == "vL533Y3/uVz3nul"
puts join_path("kfDOTwf", "Xr8viY8e") == "kfDOTwf/Xr8viY8e"
puts join_path("kfDOTwf/", "Xr8viY8e") == "kfDOTwf/Xr8viY8e"
puts join_path("kfDOTwf", "/Xr8viY8e") == "kfDOTwf/Xr8viY8e"
puts join_path("kfDOTwf/", "/Xr8viY8e") == "kfDOTwf/Xr8viY8e"
puts join_path("F4tBPmoV", "Lv18joOw") == "F4tBPmoV/Lv18joOw"
puts join_path("F4tBPmoV/", "Lv18joOw") == "F4tBPmoV/Lv18joOw"
puts join_path("F4tBPmoV", "/Lv18joOw") == "F4tBPmoV/Lv18joOw"
puts join_path("F4tBPmoV/", "/Lv18joOw") == "F4tBPmoV/Lv18joOw"
puts join_path("7ASOjVuT", "wwPOgKX") == "7ASOjVuT/wwPOgKX"
puts join_path("7ASOjVuT/", "wwPOgKX") == "7ASOjVuT/wwPOgKX"
puts join_path("7ASOjVuT", "/wwPOgKX") == "7ASOjVuT/wwPOgKX"
puts join_path("7ASOjVuT/", "/wwPOgKX") == "7ASOjVuT/wwPOgKX"
puts join_path("r1AiTrL", "KkyjD3K") == "r1AiTrL/KkyjD3K"
puts join_path("r1AiTrL/", "KkyjD3K") == "r1AiTrL/KkyjD3K"
puts join_path("r1AiTrL", "/KkyjD3K") == "r1AiTrL/KkyjD3K"
puts join_path("r1AiTrL/", "/KkyjD3K") == "r1AiTrL/KkyjD3K"
puts join_path("1h1gRAxu", "apQtQYgl") == "1h1gRAxu/apQtQYgl"
puts join_path("1h1gRAxu/", "apQtQYgl") == "1h1gRAxu/apQtQYgl"
puts join_path("1h1gRAxu", "/apQtQYgl") == "1h1gRAxu/apQtQYgl"
puts join_path("1h1gRAxu/", "/apQtQYgl") == "1h1gRAxu/apQtQYgl"
puts join_path("IYo5kuL", "QFEM6dSv") == "IYo5kuL/QFEM6dSv"
puts join_path("IYo5kuL/", "QFEM6dSv") == "IYo5kuL/QFEM6dSv"
puts join_path("IYo5kuL", "/QFEM6dSv") == "IYo5kuL/QFEM6dSv"
puts join_path("IYo5kuL/", "/QFEM6dSv") == "IYo5kuL/QFEM6dSv"
puts join_path("M6c7OnQI", "nj-CEAqV") == "M6c7OnQI/nj-CEAqV"
puts join_path("M6c7OnQI/", "nj-CEAqV") == "M6c7OnQI/nj-CEAqV"
puts join_path("M6c7OnQI", "/nj-CEAqV") == "M6c7OnQI/nj-CEAqV"
puts join_path("M6c7OnQI/", "/nj-CEAqV") == "M6c7OnQI/nj-CEAqV"