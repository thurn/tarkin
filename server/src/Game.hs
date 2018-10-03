module Game
  ()
where

import qualified Generated.Assets              as A
import qualified Generated.SceneObjects as SO
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
dealCards gen = Game $ map (uncurry Player) (zip [BottomPlayer ..] hands)
 where
  hands = map Hand $ chunksOf 13 $ shuffled deck
  shuffled (Deck cards) = shuffle' cards (length cards) gen

handParent :: Player -> SO.SceneObject
handParent Player{position = BottomPlayer} = SO.bottomTrick
handParent Player{position = LeftPlayer} = SO.leftTrick
handParent Player{position = TopPlayer} = SO.topTrick
handParent Player{position = RightPlayer} = SO.rightTrick

spriteForCard :: Card -> A.Sprite
spriteForCard (Card Ace   Spades  ) = A.cardList0
spriteForCard (Card Two   Spades  ) = A.cardList1
spriteForCard (Card Three Spades  ) = A.cardList2
spriteForCard (Card Four  Spades  ) = A.cardList3
spriteForCard (Card Five  Spades  ) = A.cardList4
spriteForCard (Card Six   Spades  ) = A.cardList5
spriteForCard (Card Seven Spades  ) = A.cardList6
spriteForCard (Card Eight Spades  ) = A.cardList7
spriteForCard (Card Nine  Spades  ) = A.cardList8
spriteForCard (Card Ten   Spades  ) = A.cardList9
spriteForCard (Card Jack  Spades  ) = A.cardList10
spriteForCard (Card Queen Spades  ) = A.cardList11
spriteForCard (Card King  Spades  ) = A.cardList12

spriteForCard (Card Ace   Diamonds) = A.cardList13
spriteForCard (Card Two   Diamonds) = A.cardList14
spriteForCard (Card Three Diamonds) = A.cardList15
spriteForCard (Card Four  Diamonds) = A.cardList16
spriteForCard (Card Five  Diamonds) = A.cardList17
spriteForCard (Card Six   Diamonds) = A.cardList18
spriteForCard (Card Seven Diamonds) = A.cardList19
spriteForCard (Card Eight Diamonds) = A.cardList20
spriteForCard (Card Nine  Diamonds) = A.cardList21
spriteForCard (Card Ten   Diamonds) = A.cardList22
spriteForCard (Card Jack  Diamonds) = A.cardList23
spriteForCard (Card Queen Diamonds) = A.cardList24
spriteForCard (Card King  Diamonds) = A.cardList25

spriteForCard (Card Ace   Hearts  ) = A.cardList26
spriteForCard (Card Two   Hearts  ) = A.cardList27
spriteForCard (Card Three Hearts  ) = A.cardList28
spriteForCard (Card Four  Hearts  ) = A.cardList29
spriteForCard (Card Five  Hearts  ) = A.cardList30
spriteForCard (Card Six   Hearts  ) = A.cardList31
spriteForCard (Card Seven Hearts  ) = A.cardList32
spriteForCard (Card Eight Hearts  ) = A.cardList33
spriteForCard (Card Nine  Hearts  ) = A.cardList34
spriteForCard (Card Ten   Hearts  ) = A.cardList35
spriteForCard (Card Jack  Hearts  ) = A.cardList36
spriteForCard (Card Queen Hearts  ) = A.cardList37
spriteForCard (Card King  Hearts  ) = A.cardList38

spriteForCard (Card Ace   Clubs   ) = A.cardList39
spriteForCard (Card Two   Clubs   ) = A.cardList40
spriteForCard (Card Three Clubs   ) = A.cardList41
spriteForCard (Card Four  Clubs   ) = A.cardList42
spriteForCard (Card Five  Clubs   ) = A.cardList43
spriteForCard (Card Six   Clubs   ) = A.cardList44
spriteForCard (Card Seven Clubs   ) = A.cardList45
spriteForCard (Card Eight Clubs   ) = A.cardList46
spriteForCard (Card Nine  Clubs   ) = A.cardList47
spriteForCard (Card Ten   Clubs   ) = A.cardList48
spriteForCard (Card Jack  Clubs   ) = A.cardList49
spriteForCard (Card Queen Clubs   ) = A.cardList50
spriteForCard (Card King  Clubs   ) = A.cardList51
