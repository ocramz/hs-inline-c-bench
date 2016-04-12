module PutGet where

import InlineC

queueInit' q buf sz =
  [C.exp|void{queue_init($(qut q),$(Word32* buf),$(CSize sz))}|]
