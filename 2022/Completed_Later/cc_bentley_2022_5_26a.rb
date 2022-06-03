# Medium - Palindromic Dates
#
# The 2nd of February 2020 is a palindromic date in both dd/mm/yyyy and mm/dd/yyyy format (02/02/2020).
# Given a date in dd/mm/yyyy format, return true if the date is palindromic in both date formats, otherwise return false.
#
# Examples
#
# palindromic_date("02/02/2020") ➞ true
# palindromic_date("11/12/2019") ➞ false
# palindromic_date("11/02/2011") ➞ false
#
# Although 11/02/2011 is palindromic in dd/mm/yyyy format,
# it isn't in mm/dd/yyyy format (02/11/2011)
#
# Notes
# All dates will be valid in both date formats.
# The date must be palindromic in both dd/mm/yyyy and mm/dd/yyyy formats to pass.

def palindromic_date(date)
  date.delete('/') == date.delete('/').reverse && (date.split('/').rotate(-1).reverse.join('/').delete('/') == date.split('/').rotate(-1).reverse.join('/').delete('/').reverse)
end

puts palindromic_date("02/02/2020") == true
puts palindromic_date("11/12/2019") == false
puts palindromic_date("11/02/2011") == false
puts palindromic_date("06/10/1469") == false
puts palindromic_date("06/05/3133") == false
puts palindromic_date("12/12/2121") == true
puts palindromic_date("09/09/9090") == true
puts palindromic_date("11/04/2203") == false
puts palindromic_date("07/07/7070") == true
puts palindromic_date("06/11/2923") == false
puts palindromic_date("03/08/8030") == false
puts palindromic_date("01/01/1010") == true
puts palindromic_date("03/11/3369") == false
puts palindromic_date("11/03/2775") == false
puts palindromic_date("03/03/1822") == false