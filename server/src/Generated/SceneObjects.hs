module Generated.SceneObjects where

newtype SceneObject = SceneObject Int

directionalLight :: SceneObject
directionalLight = SceneObject 0

mainCamera :: SceneObject
mainCamera = SceneObject 1

eventSystem :: SceneObject
eventSystem = SceneObject 2

root :: SceneObject
root = SceneObject 3

center :: SceneObject
center = SceneObject 4

topTrick :: SceneObject
topTrick = SceneObject 5

rightTrick :: SceneObject
rightTrick = SceneObject 6

bottomHand :: SceneObject
bottomHand = SceneObject 7

leftTrick :: SceneObject
leftTrick = SceneObject 8

canvas :: SceneObject
canvas = SceneObject 9

rightHand :: SceneObject
rightHand = SceneObject 10

topHand :: SceneObject
topHand = SceneObject 11

bottomTrick :: SceneObject
bottomTrick = SceneObject 12

leftHand :: SceneObject
leftHand = SceneObject 13

nextFreeId :: Int
nextFreeId = 14
