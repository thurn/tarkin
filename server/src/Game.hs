module Game where

import           System.Random                  ( RandomGen )
import           System.Random.Shuffle          ( shuffle' )
import           Data.List.Split                ( chunksOf )

data Suit = Clubs | Diamonds | Hearts | Spades deriving (Show, Eq, Ord, Enum)
data Rank = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten |
            Jack | Queen | King | Ace deriving (Show, Eq, Ord, Enum)
data Card = Card Rank Suit deriving (Show, Eq, Ord)

newtype Deck = Deck [Card] deriving (Show, Eq)

newtype Hand = Hand [Card] deriving (Show, Eq)

data Position = BottomPlayer | LeftPlayer | TopPlayer | RightPlayer
                deriving (Show, Eq, Enum)

data Player = Player
  { position :: Position
  , hand :: Hand
  } deriving (Show, Eq)

data Game = Game
  { players :: [Player]
  } deriving (Show, Eq)

-- | Standard deck of cards in sorted order
deck :: Deck
deck = Deck [ Card rank suit | rank <- [Two ..], suit <- [Clubs ..] ]

-- | Shuffles 'deck' and creates a 'Game' with 13 cards assigned to each player
dealCards :: RandomGen gen => gen -> Game
dealCards gen = Game $ zipWith Player [BottomPlayer ..] hands
 where
  hands = map Hand $ chunksOf 13 $ shuffled deck
  shuffled (Deck cards) = shuffle' cards (length cards) gen
