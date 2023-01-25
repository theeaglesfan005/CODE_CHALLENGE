# Wiggled Strings
#
# Create a function that returns an array of the given string but offset by spaces. Here are some more precise instructions:
#
#   - Keep adding spaces on the left until you have the same number of spaces as the word length.
#   - Then keep removing spaces until you reach the original word.
#   - Below are some helpful examples!
#
# Examples
#
# wiggle_string("hello") ➞ [
#   "hello",
#   " hello",
#   "  hello",
#   "   hello",
#   "    hello",
#   "     hello"
#   "    hello",
#   "   hello",
#   "  hello",
#   " hello",
#   "hello"
# ]
#
# wiggle_string("EDABIT") ➞ [
#   "EDABIT",
#   " EDABIT",
#   "  EDABIT",
#   "   EDABIT",
#   "    EDABIT",
#   "     EDABIT",
#   "      EDABIT",
#   "     EDABIT",
#   "    EDABIT",
#   "   EDABIT",
#   "  EDABIT",
#   " EDABIT",
#   "EDABIT"
# ]
#
# wiggle_string("Wiggle Time") ➞ [
#   "Wiggle Time",
#   " Wiggle Time",
#   "  Wiggle Time",
#   "   Wiggle Time",
#   "    Wiggle Time",
#   "     Wiggle Time",
#   "      Wiggle Time",
#   "       Wiggle Time",
#   "        Wiggle Time",
#   "         Wiggle Time",
#   "          Wiggle Time",
#   "           Wiggle Time",
#   "          Wiggle Time",
#   "         Wiggle Time",
#   "        Wiggle Time",
#   "       Wiggle Time",
#   "      Wiggle Time",
#   "     Wiggle Time",
#   "    Wiggle Time",
#   "   Wiggle Time",
#   "  Wiggle Time",
#   " Wiggle Time",
#   "Wiggle Time"
# ]

def wiggle_string(s)
  wiggle_ary = []
  count = s.length

  while count >= 0
    wiggle_ary << ' ' * count + s
    count -= 1
  end

  wiggle_ary = wiggle_ary.reverse
  wiggle_ary.pop
  wiggle_ary.push(' ' * s.length + s, wiggle_ary.reverse).flatten!
end

puts wiggle_string("hello") == ["hello",  " hello",  "  hello",  "   hello",  "    hello",  "     hello",  "    hello",  "   hello",  "  hello",  " hello",  "hello"]
puts wiggle_string("EDABIT") == ["EDABIT",  " EDABIT",  "  EDABIT",  "   EDABIT",  "    EDABIT",  "     EDABIT",  "      EDABIT",  "     EDABIT",  "    EDABIT",  "   EDABIT",  "  EDABIT",  " EDABIT",  "EDABIT"]
puts wiggle_string("Wiggle Time") == ["Wiggle Time",  " Wiggle Time",  "  Wiggle Time",  "   Wiggle Time",  "    Wiggle Time",  "     Wiggle Time",  "      Wiggle Time",  "       Wiggle Time",  "        Wiggle Time",  "         Wiggle Time",  "          Wiggle Time",  "           Wiggle Time",  "          Wiggle Time",  "         Wiggle Time",  "        Wiggle Time",  "       Wiggle Time",  "      Wiggle Time",  "     Wiggle Time",  "    Wiggle Time",  "   Wiggle Time",  "  Wiggle Time",  " Wiggle Time",  "Wiggle Time"]
puts wiggle_string("the dog") == ["the dog", " the dog", "  the dog", "   the dog", "    the dog", "     the dog", "      the dog", "       the dog", "      the dog", "     the dog", "    the dog", "   the dog", "  the dog", " the dog", "the dog"]
puts wiggle_string("wiggle wiggle wiggle") == ["wiggle wiggle wiggle", " wiggle wiggle wiggle", "  wiggle wiggle wiggle", "   wiggle wiggle wiggle", "    wiggle wiggle wiggle", "     wiggle wiggle wiggle", "      wiggle wiggle wiggle", "       wiggle wiggle wiggle", "        wiggle wiggle wiggle", "         wiggle wiggle wiggle", "          wiggle wiggle wiggle", "           wiggle wiggle wiggle", "            wiggle wiggle wiggle", "             wiggle wiggle wiggle", "              wiggle wiggle wiggle", "               wiggle wiggle wiggle", "                wiggle wiggle wiggle", "                 wiggle wiggle wiggle", "                  wiggle wiggle wiggle", "                   wiggle wiggle wiggle", "                    wiggle wiggle wiggle", "                   wiggle wiggle wiggle", "                  wiggle wiggle wiggle", "                 wiggle wiggle wiggle", "                wiggle wiggle wiggle", "               wiggle wiggle wiggle", "              wiggle wiggle wiggle", "             wiggle wiggle wiggle", "            wiggle wiggle wiggle", "           wiggle wiggle wiggle", "          wiggle wiggle wiggle", "         wiggle wiggle wiggle", "        wiggle wiggle wiggle", "       wiggle wiggle wiggle", "      wiggle wiggle wiggle", "     wiggle wiggle wiggle", "    wiggle wiggle wiggle", "   wiggle wiggle wiggle", "  wiggle wiggle wiggle", " wiggle wiggle wiggle", "wiggle wiggle wiggle"]
puts wiggle_string("Hello World!") == ["Hello World!", " Hello World!", "  Hello World!", "   Hello World!", "    Hello World!", "     Hello World!", "      Hello World!", "       Hello World!", "        Hello World!", "         Hello World!", "          Hello World!", "           Hello World!", "            Hello World!", "           Hello World!", "          Hello World!", "         Hello World!", "        Hello World!", "       Hello World!", "      Hello World!", "     Hello World!", "    Hello World!", "   Hello World!", "  Hello World!", " Hello World!", "Hello World!"]
puts wiggle_string("Edabit is fun!") == ["Edabit is fun!", " Edabit is fun!", "  Edabit is fun!", "   Edabit is fun!", "    Edabit is fun!", "     Edabit is fun!", "      Edabit is fun!", "       Edabit is fun!", "        Edabit is fun!", "         Edabit is fun!", "          Edabit is fun!", "           Edabit is fun!", "            Edabit is fun!", "             Edabit is fun!", "              Edabit is fun!", "             Edabit is fun!", "            Edabit is fun!", "           Edabit is fun!", "          Edabit is fun!", "         Edabit is fun!", "        Edabit is fun!", "       Edabit is fun!", "      Edabit is fun!", "     Edabit is fun!", "    Edabit is fun!", "   Edabit is fun!", "  Edabit is fun!", " Edabit is fun!", "Edabit is fun!"]
puts wiggle_string("123456789") == ["123456789", " 123456789", "  123456789", "   123456789", "    123456789", "     123456789", "      123456789", "       123456789", "        123456789", "         123456789", "        123456789", "       123456789", "      123456789", "     123456789", "    123456789", "   123456789", "  123456789", " 123456789", "123456789"]
puts wiggle_string("qwertyuiop") == ["qwertyuiop", " qwertyuiop", "  qwertyuiop", "   qwertyuiop", "    qwertyuiop", "     qwertyuiop", "      qwertyuiop", "       qwertyuiop", "        qwertyuiop", "         qwertyuiop", "          qwertyuiop", "         qwertyuiop", "        qwertyuiop", "       qwertyuiop", "      qwertyuiop", "     qwertyuiop", "    qwertyuiop", "   qwertyuiop", "  qwertyuiop", " qwertyuiop", "qwertyuiop"]
puts wiggle_string("python javascript") == ["python javascript", " python javascript", "  python javascript", "   python javascript", "    python javascript", "     python javascript", "      python javascript", "       python javascript", "        python javascript", "         python javascript", "          python javascript", "           python javascript", "            python javascript", "             python javascript", "              python javascript", "               python javascript", "                python javascript", "                 python javascript", "                python javascript", "               python javascript", "              python javascript", "             python javascript", "            python javascript", "           python javascript", "          python javascript", "         python javascript", "        python javascript", "       python javascript", "      python javascript", "     python javascript", "    python javascript", "   python javascript", "  python javascript", " python javascript", "python javascript"]
