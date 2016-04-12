{-# LANGUAGE QuasiQuotes, TemplateHaskell #-}
module InlineC where

import Language.C.Inline as C

import Data.Word (Word32)
import Foreign.C.Types (CSize(..))

import Internal
import Types


-- | Haskell-C type map

context ctx

-- | C headers

C.include "<test.h>"


-- | functions

queueInit' q buf sz =
  [C.exp|void{queue_init($(QuT q),$(Word32* buf),$(CSize sz))}|]
