# Exercise 1: Vowel or Consonant

def check_letter():
    # User se input le rahe hain aur lowercase mein convert kar rahe hain
    letter = input("Please enter a letter from the alphabet (a-z or A-Z): ").lower()

    # Pehle check karo ki input single letter hai ya nahi
    if len(letter) == 1 and letter.isalpha():
        if letter in 'aeiou':
            print(f"The letter {letter} is a vowel.")
        else:
            print(f"The letter {letter} is a consonant.")
    else:
        print("Invalid input. Please enter a single alphabetical character.")

# Function call karo
check_letter()