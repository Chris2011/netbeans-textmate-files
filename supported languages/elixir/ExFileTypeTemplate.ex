["T", "e", "s", "t"] = String.graphemes("Test")

# Contrast this with codepoints which may return
# multiple codepoints for a single character
["o?"]      = String.graphemes("o?")
["o", "?"] = String.codepoints("o?")

"1,2,3" = Enum.join(["1","2","3"], ",")


"  1\n  2\n  3\n" = """
  1
  2
  3
"""

# Whitespace before trailing `"""` will remove
# whitespace up to the same indentation
# on each line
  "1\n2\n3\n" = """
                1
                2
                3
                """  

# Heredoc sigils can also be used
# Interpolated
~s"""
\"#{1}\"
\"#{2}\"
"""
# Not Interpolated
~S"""
"1"
"2"
"""
