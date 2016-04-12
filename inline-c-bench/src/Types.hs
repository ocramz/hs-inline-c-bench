{-# language GeneralizedNewtypeDeriving #-}
module Types (QuT) where


import Foreign.Storable
import Foreign.Ptr

newtype QuT = QuT (Ptr QuT) deriving Storable
