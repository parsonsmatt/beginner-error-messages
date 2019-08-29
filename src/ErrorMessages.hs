{-# LANGUAGE UndecidableInstances, DataKinds, TypeOperators #-}

-- | This module provides beginner-friendly error messages for common
-- mistakes in Haskell development.
module ErrorMessages () where

import GHC.TypeLits

type ShowFnErrorMsg ty
    = 'Text "You tried to 'show' a function with the type: "
    ':$$: 'Text "    " ':<>: ShowType ty
    ':$$: 'Text "You can't convert functions to strings in Haskell."
    ':$$: 'Text "You may want to apply more arguments to the function."

instance TypeError (ShowFnErrorMsg (a -> b)) => Show (a -> b) where
    show = undefined

type NumListErrorMsg ty
    = 'Text "You tried to treat a list as a number."
    ':$$: 'Text "Haskell uses <> or ++ to combine lists, not +."
    ':$$: 'Text "Or maybe you confused two arguments?"

instance TypeError (NumListErrorMsg [a]) => Num [a] where
