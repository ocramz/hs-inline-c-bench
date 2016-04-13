{-# LANGUAGE QuasiQuotes, TemplateHaskell #-}
module InlineC where

import Language.C.Inline as C

-- import Data.Word (Word32)
-- import Foreign.C.Types (CSize(..))

import Internal (ctx, QuT)
import Types


-- | Haskell-C type map

C.context ctx

-- | C headers

C.include "<test.h>"


-- | functions

queueInit' q buf sz =
  [C.exp|void{queue_init($(queue_t* q),$(unsigned int* buf),$(size_t sz))}|]
