{-# language QuasiQuotes, TemplateHaskell, OverloadedStrings #-}
module Internal (ctx, QuT) where

-- import qualified Language.C.Inline         as C
import qualified Language.C.Types          as CT
import           Language.C.Inline.Context

import Data.Monoid
import qualified Data.Map as Map
import qualified Language.Haskell.TH       as TH

import Types (QuT)


ctx :: Context
ctx = baseCtx <> funCtx <> vecCtx <> bsCtx <> pctx where
  pctx = mempty {ctxTypesTable = tt}

tt :: Map.Map CT.TypeSpecifier TH.TypeQ  
tt = Map.fromList
                  [
                    (CT.TypeName "queue_t", [t| QuT |] )
                    ]
