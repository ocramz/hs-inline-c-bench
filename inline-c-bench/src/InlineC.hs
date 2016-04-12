{-# LANGUAGE QuasiQuotes, TemplateHaskell #-}
module InlineC where

import Language.C.Inline as C

import Data.Word (Word32)
import Foreign.C.Types (CSize(..))

import Internal

-- | Haskell-C type map
context ctx

-- | include headers
C.include "<test.h>"


-- | functions
queueInit' q buf sz =
  [C.exp|void{queue_init($(QuT q),$(Word32* buf),$(CSize sz))}|]
