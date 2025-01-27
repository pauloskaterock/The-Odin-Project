# def caesar_cipher(str, shift=1)
#     alphabet = ("a" .."z").to_a
#     caesar = ""
#     str.each_char do |letter|
#         if letter == " "
#            caesar += " "
#         else
#             old_idx = alphabet.find_index(letter)
#             new_idx = (old_idx + shift ) % alphabet.count
#             caesar += alphabet[new_idx]
#         end
#     end
#     caesar
# end

# Define a method called caesar_cipher that takes a string and an optional shift value (default is 1)
def caesar_cipher(str, shift=1)
    # Create an array of lowercase letters from 'a' to 'z'
    alphabet = ("a" .."z").to_a
    # Initialize an empty string to store the result
    caesar = ""
    # Iterate over each character in the input string
    str.each_char do |letter|
        # If the character is a space, add a space to the result
        if letter == " "
           caesar += " "
        else
            # Find the index of the character in the alphabet array
            old_idx = alphabet.find_index(letter)
            # Calculate the new index by adding the shift value and using modulo to wrap around
            new_idx = (old_idx + shift ) % alphabet.count
            # Add the character at the new index to the result
            caesar += alphabet[new_idx]
        end
    end
    # Return the resulting string
    caesar
end
