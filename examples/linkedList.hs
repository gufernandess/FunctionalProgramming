data List a = Empty | Node a (List a) deriving (Show)

{-

Aqui está sendo criado uma lista com um parâmetro de tipo,
que pode ser qualquer coisa. Essa lista pode ser vazia ou
pode ser um nó que contém um valor e uma referência para
outra lista.

-}

insert number Empty = Node number Empty
insert number list = Node number list


max' Empty = error "A lista está vazia."
max' (Node key Empty) = key
max' (Node key list) = max key (max' list)