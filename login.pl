% lab 10 - Task 2: Login System

% User database
user_account(ali, 1234).
user_account(sara, 5678).

% Start login with 3 attempts
login :-
    login_attempts(3).

login_attempts(Remaining) :-
    write('Enter username: '),
    read(Username),
    write('Enter password: '),
    read(Password),
    ( user_account(Username, Password) ->
        writeln('Login Successful')
    ;
        writeln('Login Unsuccessful'),
        Next is Remaining - 1,
        ( Next > 0 ->
            login_attempts(Next)
        ;
            writeln('Sorry, you exceeded the maximum number of attempts, try again later.')
        )
    ).
