data Person = Person {
    firstName :: String,
    lastName :: String,
    age :: Int,
    height :: Float,
    phoneNumber :: String,
    flavor :: String
} deriving (Show)

{- 

É possível criar tipos de forma desestruturada, caso você queira
resgatar apenas alguns campos específicos de um tipo.
   
-}