
sum' :: (Num a) => [a] -> a
sum' = foldl (\acc x -> acc + x) 0 xs

sub' :: (Num a) => [a] -> a
sub' = foldr (\acc x -> acc - x) 0 xs