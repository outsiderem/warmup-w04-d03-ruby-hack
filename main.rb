p "SCORPION"
p "FLOGGING"
p "CROPPERS"
p "MIGRAINE"
p "FOOTNOTE"
p "REFINERY"
p "DIZZYING"
p "VAULTING"
p "CONTINUE"
p "PROTECTS"
p "DESCENTS"
p "QUIZZING"

p "Enter password: "

words = ['SCORPION','FLOGGING', 'CROPPERS', 'MIGRAINE', 'FOOTNOTE', 'REFINERY', 'DIZZYING', 'VAULTING', 'CONTINUE', 'PROTECTS', 'DESCENTS', 'QUIZZING']

# choose a random from array
random = words.sample
# p random
guesses = 4
# keep guessing until reach 0
while guesses > 0 do
p "Guess (#{guesses} left)?"
        # user input
        guess = gets.chomp.upcase
        # correct letters counter
        correct = 0
        # make string to array of letters
        random_a = random.chars
        guess_a = guess.chars

        # loop and compare between letters value and location
        8.times do|i| 
            if random_a[i] == guess_a[i]
                correct +=1
            end
        end

        p "#{correct}/8 correct"
        # Exit loop when guess is correct
            if random_a == guess_a
            break p "welcome"
            else  
            end

        guesses -=1
end
p "You lose"