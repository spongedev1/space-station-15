{-# LANGUAGE TypeFamilies               #-}

module Shared.Components.Mob( Mob(..)
                            ) where

import Apecs
import Data.DamageType

data Mob = Mob { name :: String
              , wearing :: [Entity]
              , limbs :: [Entity]
              , consciousness :: MobConsciousness
              , state :: MobState
              }
              deriving Show
instance Component Mob where type Storage Mob = Map Mob
