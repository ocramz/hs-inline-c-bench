{-# LANGUAGE QuasiQuotes, TemplateHaskell #-}
module InlineC where

import Internal
import qualified Language.C.Inline as C

import Data.Word (Word32)
import Foreign.C.Types (CSize(..))

C.context ctx

C.include "<test.h>"


queueInit' q buf sz =
  [C.exp|void{queue_init($(qut q),$(Word32* buf),$(CSize sz))}|]
