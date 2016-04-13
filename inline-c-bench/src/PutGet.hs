module PutGet where

import InlineC

import qualified Language.C.Inline as LC
import qualified Foreign.Marshal.Array as MA
import qualified Foreign.Marshal.Utils as MU

queueInit buf = LC.withPtr $ \q ->
  MA.withArray buf $ \bufp ->
   queueInit' q bufp sz
  where
    sz = length buf

queueFin q = MU.with q queueFin'
