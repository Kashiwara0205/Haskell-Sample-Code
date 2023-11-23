module VectorModule where
    data Vector a = Vector a a a 

    fstVector :: (Num a) =>  Vector a -> a
    fstVector (Vector i _ _) = i

    getTuple :: (Num a) =>  Vector a -> (a, a, a)
    getTuple (Vector i j k) = (i, j, k)

    vplus :: (Num a) => Vector a -> Vector a  -> Vector a 
    (Vector i j k) `vplus` (Vector l m n) = Vector (i+l) (j+m) (k+n)