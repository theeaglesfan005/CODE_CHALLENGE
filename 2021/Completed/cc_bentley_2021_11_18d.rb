# Hard - Key Mouse (Logic)
# A keyboard and a mouse cost in total x, knowing that the keyboard costs y more
# than the mouse, calculate the price of the mouse. Round the price of the mouse.
# Examples
# km({"Total"=> "10.00$", "Difference"=> "0.40$", "Mouse"=> "?"}) ➞ {"Total"=> "10.00$", "Difference"=>"0.40$", "Mouse"=> "4.8$"}
# km({"Total"=> "90.00$", "Difference"=> "5.40$", "Mouse"=> "?"}) ➞ {"Total"=> "90.00$", "Difference"=> "5.40$", "Mouse"=> "42.3$"}
# km({"Total"=> "1.30$", "Difference"=> "0.80$", "Mouse"=> "?"}) ➞ {"Total"=> "1.30$", "Difference"=> "0.80$", "Mouse"=> "0.25$"}

def km(table)

  @total = table["Total"].chomp('$').to_f
  @difference = table["Difference"].chomp('$').to_f

  @mouse_math =  ((@total/2) - (@difference/2)).round(2)

  table["Total"] = table["Total"]
  table["Difference"] = table["Difference"]
  table["Mouse"] = @mouse_math.to_s + '$'

  table

end

puts km({"Total"=> "1.90$", "Difference"=> "0.90$", "Mouse"=> "?"}) == {"Total"=> "1.90$", "Difference"=>"0.90$", "Mouse"=> "0.5$"}
puts km({"Total"=> "1.30$", "Difference"=> "0.80$", "Mouse"=> "?"}) == {"Total"=> "1.30$", "Difference"=>"0.80$", "Mouse"=> "0.25$"}
puts km({"Total"=> "3.90$", "Difference"=> "0.20$", "Mouse"=> "?"}) == {"Total"=> "3.90$", "Difference"=>"0.20$", "Mouse"=> "1.85$"}
puts km({"Total"=> "0.801$", "Difference"=> "0.40$", "Mouse"=> "?"}) == {"Total"=> "0.801$", "Difference"=>"0.40$", "Mouse"=> "0.2$"}
puts km({"Total"=> "10.00$", "Difference"=> "0.40$", "Mouse"=> "?"}) == {"Total"=> "10.00$", "Difference"=>"0.40$", "Mouse"=> "4.8$"}
puts km({"Total"=> "20.00$", "Difference"=> "1.40$", "Mouse"=> "?"}) == {'Total'=> '20.00$', 'Difference'=> '1.40$', 'Mouse'=> '9.3$'}