module PutGet where

import InlineC

import qualified Language.C.Inline as LC
import qualified Foreign.Marshal.Array as MA

queueInit buf = LC.withPtr $ \q ->
  MA.withArray buf $ \bufp ->
   queueInit' q bufp sz
  where
    sz = length buf
