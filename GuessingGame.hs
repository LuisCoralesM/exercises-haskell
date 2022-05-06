runGame :: Int -> IO ()
runGame incorrectGuesses = do
  let num = "7"

  if incorrectGuesses == 3
    then putStrLn "Sorry, you lose :("
    else do
      putStrLn "Enter a guess between 1 and 10: "
      userGuess <- getLine
      if userGuess == num
      then putStrLn "Yay, you win!"
      else runGame (incorrectGuesses + 1)

main :: IO ()
main = do
  runGame 0