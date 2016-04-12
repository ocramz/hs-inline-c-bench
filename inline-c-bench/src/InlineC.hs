{-# LANGUAGE QuasiQuotes, TemplateHaskell #-}
module InlineC where

import Internal
import qualified Language.C.Inline as C

C.context ctx

C.include "<test.h>"


