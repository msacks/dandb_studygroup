
//http://www.bennadel.com/blog/2066-Seven-Languages-In-Seven-Weeks-Io-Day-2.htm


winningNum := Random value(10) ceil;
prev  := nil;
standardIO := File standardInput();

10 repeat(

//get guess
"Guess number : " println();

guess := standardIO readLine() asNumber();
//if guess is correct then end game
if(
    (guess == winningNum),
        (
        "you won the game!" println();
        break;
        ),
    (
    //if guess is incorrect
    //check if closer prev guess exists
        if(
            (prev != nil),
                (
                  if(
                    ((winningNum - guess) abs()) >= (( winningNum - prev) abs()),
                    "Getting colder :" println(),
                    "Getting warmer :" println()
                  ); 
                )
        );
                prev = guess;
    )
);


);

