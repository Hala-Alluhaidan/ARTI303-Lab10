% lab 10 - Task 1
% Calculate Area and Perimeter

% Square
square(Side, Area, Perimeter) :-
    Area is Side * Side,
    Perimeter is 4 * Side.

% Rectangle
rectangle(Width, Height, Area, Perimeter) :-
    Area is Width * Height,
    Perimeter is 2 * (Width + Height).

% Triangle
triangle(Base, Height, Side2, Side3, Area, Perimeter) :-
    Area is 0.5 * Base * Height,
    Perimeter is Base + Side2 + Side3.
