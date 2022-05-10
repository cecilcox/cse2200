--Line Comments are done using two dashes. This is a comment.

--Haskell variables are not declared or initialized, but defined.
example_var_1 = 5

--Variables are immutable, so example_var_1 is, and will always be 5.

--The Haskell Compiler can infer the type of a variable, but by convention we always provide the type.
--The syntax for this is: variable_name :: Type

example_var_2 :: Int
example_var_2 = 6

--By convention variables begin with common letters and types with capitals.
--Haskell has basic Int, Char and Bool types

example_true :: Bool
example_true = True

example_false :: Bool
example_false = False

example_char :: Char
example_char = 'f'

--And the usual arithmetic and logic functions

variable_plus :: Int
variable_plus = 5 + 3 --Evaluates to 8

variable_minus :: Int
variable_minus =  5 - 3 --Evaluates to 2

variable_times :: Int
variable_times = 5 * 3 --Evaluates to 15

variable_divide :: Int
variable_divide = 5 `div` 3 --Evaluates to 1

variable_mod  :: Int
variable_mod = 5 `mod` 3 --Evaluates to 2

vand :: Bool
vand = True && False --Evaluates to False

vor :: Bool
vor = True || False --Evaluates to True

vnot :: Bool 
vnot = not True --Evaluates to False


--Haskell functions are defined using prefix notation
increment a = a + 1

--The type of a function is written using the -> arrow.
--We write type_of_argument -> type of result
double :: Int -> Int
double x = 2 * x

--TODO: Write a function square that takes an integer and returns its square.
square :: Int -> Int
square = undefined

--Haskell supports pattern-matching, where we define the value
--of a function for particular arguments
triple :: Int -> Int
triple 1 = 3
triple 2 = 6
triple n = 3 * n

--TODO: Write your own version of the not function using pattern matching.
pmnot :: Bool -> Bool
pmnot = undefined

--Consider the problem of writing an identity function that returns its argument.

identity_Int :: Int -> Int 
identity_Int x = x

identity_Char :: Char -> Char
identity_Char x = x

--Instead of writing an identity function for each type, we can write a single identify function that will work with any type.
--To do these, we use a type variable, which can represent any arbitrary type. Type variables are written with common letters

identity :: a -> a
identity x = x

--TODO: Write a type signature for this function which takes an argument of arbittrary type and returns the Int 5.


five x = 5

--Applying a functions to multiple arguments is done using prefix notation as before.
plus a b = a + b

--If a function is being applied to two arguments, it can be called with infix notation by enclosing the name of the function in backticks
example_plus_infix = 5 `plus` 3 --Evaluates to 8

--We can also define infix functions like NAND 
True  ~& True  = False
True  ~& False = True
False ~& True  = True
False ~& False = True

--These can be called with prefix notation by enclosing the name of the function in parentheses
example_infix :: Bool
example_infix = (~&) True True --Evaluates to False

--TODO: Define an infix function ~| representing NOR using pattern matching. You may omit the type.

--We generally do not use arrays in Haskell - lists are used instead. Haskell lists are homogeneous (All elements in a list must be the same type.).

--The type signature [Int] denotes a list of integers. More generally [a] denotes a list of type a. Lists are defined using square braces, with elements separated by commas.
example_intlist :: [Int]
example_intlist = [1,2,3]

--The function head returns the first element of a list.
example_head :: Int
example_head = head example_intlist --returns 1

--The function tail returns everything in a list except its head.
example_tail :: [Int]
example_tail = tail example_intlist --returns [2,3]

--You should never use the functions head or tail. Ask me why in a lab session so I know you've read this.

--The empty list is written []. Note that we can use type variables with lists to denote lists of arbitrary type.
empty_list :: [a]
empty_list = []

--In Haskell we can use a type synonym to give a name to a particular type. The type String, for example, is just a synonym for [Char].
type String_Example = [Char]

--TODO: Define a type synonym unary for functions that take an integer and return an integer.


--Strings are written with double quotes
example_string :: String
example_string = "example"

example_char_list :: [Char]
example_char_list = ['e', 'x', 'a', 'm', 'p', 'l' , 'e']

--Equality is done using ==
--Not equals is /=
example_equality :: Bool
example_equality = example_string == example_char_list --Evaluates to True

--Haskell supports ternary conditionals
example_if :: Int
example_if = if (5 > 3) then 5 else 3 --Evaluates to 5

-- case statements
example_case :: Int
example_case = case (5 > 3) of
                    True -> 5
                    False -> 3

--and guards
example_pm_guards :: Int
example_pm_guards | (5 > 3) = 5
                  | otherwise = 3


--It is common practice to use pattern matching in place of conditionals where possible.

--TODO: Write the factorial function.


--The main function has type IO (), meaning it performs input and output. 
--The function putStrln has type String -> IO; it outputs the provided string to stdout. 
--If you would like to print any of the values defined here, you can first convert them to a string with the function show :: a -> String
main :: IO ()
main = putStrLn "Hello world"