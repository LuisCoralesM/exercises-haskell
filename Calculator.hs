calculate :: Double  -> String -> Double -> IO ()
calculate firstNum operatorStr secondNum = do 
  if operatorStr == "+"
  then print (firstNum + secondNum)
  else if operatorStr == "-"
  then print (firstNum - secondNum)
  else if operatorStr == "*"
  then print (firstNum * secondNum)
  else if operatorStr == "/"
  then print (firstNum / secondNum)
  else putStrLn "Invalid operator"

main = do
  putStrLn "Enter first number: "
  numOneStr <- getLine
  putStrLn "Enter an operator: "
  operatorStr <- getLine
  putStrLn "Enter second number: "
  numTwoStr <- getLine

  let firstNum = read numOneStr :: Double
  let secondNum = read numTwoStr :: Double

  calculate firstNum operatorStr secondNum