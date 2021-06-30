# When a contiguous block of text is selected in a PDF viewer, the selection is highlighted with a blue rectangle. In this PDF viewer, each word is highlighted independently.

# There is a list of  character heights aligned by index to their letters. For example, 'a' is at index  and 'z' is at index . There will also be a string. Using the letter heights given, determine the area of the rectangle highlight in  assuming all letters are  wide.

# STEPS
# Create a method that takes in an array of 26 integers and a string
# Create a variable called letter_location and set it equal to a hash containing key-value pairings with each letter of the alphabet corresponding to a value (which will then correspond to the index location of values in the integer input array). Alphabetically, "a" will equal "0", "b" will equal "1", etc.
# Evaluate each letter in the input string, use letter_location to find the index value, then take that index value and retrieve the corresponding integer within the input array
# Multiply this integer by the length of the string, and that is the output

def designerPdfViewer(h, word)
  letter_location = { a: 0, b: 1, c: 2, d: 3, e: 4, f: 5, g: 6, h: 7, i: 8, j: 9, k: 10, l: 11, m: 12, n: 13, o: 14, p: 15, q: 16, r: 17, s: 18, t: 19, u: 20, v: 21, w: 22, x: 23, y: 24, z: 25 }
  i = 0
  max_letter_height = 0
  while i < word.length
    if letter_location[word[i]] > max_letter_height
      max_letter_height = letter_location[word[i]]   
    end
  end
end