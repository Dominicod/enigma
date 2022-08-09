# Enigma

In this project I used Ruby to build an algorithm to encrypt a word/sentence using a caesar cipher that took in the arguments of;
message, date, key. i then build am algorithm that can decrypt this word/sentence.

## Self Assessment

Functionality: 3. Meets Expectations
Object Oriented Programming: 4. Two modules created, both sensable.
Ruby Conventions and Mechanics: 4. No methods are more than 10 lines, code is proper, most enum's have been correctly choosen.
Test Driven Development: 4. Use of stubs and mocks, every method is tested. Coverage 100%.
Version Control: 4. More than 50 commits, 10 branches. All commits purposeful, branches named correctly.

## Test the encryption on your local machine

If you wish to edit or test my encryption on your local machine, go ahead and run..
```shell
git clone git@github.com:Dominicod/enigma.git
cd enigma
bundle install
ruby encryptor.rb [READ FILE] [WRITE FILE]
ruby decryptor.rb [READ FILE] [WRITE FILE] [KEY] [DATE]
```
Functionality works as so; read file will be the file that contains the word/sentence you wish to encrypt and/or decrypt. The write file
is the destination you wish the output to be located. Key and date will be provided to you once you create an encrypted cipher via the CLI.

If no date is provided, the program will assume the user wishes to use todays date as the date to use for the shift algorithm.
Optionally, if you wish to use your own key and date for the encryption, passing them in the order as seen below will allow you to do so, the key
must be 5 digits long, and the date must be in DD/MM/YY.

`ruby encryptor.rb [READ FILE] [WRITE FILE] [KEY] [DATE]`

## Project technology

This project is running the following languages and tools:

* Ruby
* RSpec
* SimpleCov

## What I learned

i learned how to further break down a program into logical components, build classes that demonstrate single responsibilities, test drive a
well-designed Object Oriented solution and work with file I/O. During this project I also focused a lot of my developement time making sure my
git workflow was industry standard by branching and committing often.

## Links

- Project homepage: https://github.com/Dominicod/enigma
- Repository: https://github.com/Dominicod/enigma



## Licensing

The code in this project is licensed under MIT license.
