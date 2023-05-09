module Shapes (
    Point(..),
    Shape(..),
    surface,
    nudge
) where

-- A função module serve para que possamos exportar funções de um arquivo para outro.

data Point = Point Float Float deriving (Show)

-- O Point determina uma coordenada no plano cartesiano.

data Shape = Circle Point Float | Rectangle Point Point deriving (Show)

-- O data serve para criarmos nossos próprios tipos de dados.

{-

O deriving (Show) é utilizado para que o Haskell possa
imprimir o tipo de dado na tela no formato de string. 

-}

surface :: Shape -> Float
surface (Circle _ radius) = pi * radius ^ 2
surface (Rectangle (Point x1 y1)(Point x2 y2)) = abs (x2 - x1) * abs (y2 - y1)

-- A função surface calcula a área de um Shape, podendo este ser um círculo ou um retângulo.

nudge :: Shape -> Float -> Float -> Shape
nudge (Circle (Point x y) radius) a b = Circle (Point (x+a) (y+b)) radius
nudge (Rectangle (Point x1 y1)(Point x2 y2)) a b = Rectangle (Point (x1+a) (y1+b)) (Point (x2+a) (y2+b))

-- A função nudge move um Shape para a direita e para cima.
