# Complete the function exercises in the link provided below.
# https://www.practicepython.org/exercise/2014/12/27/24-draw-a-game-board.html


# 1 x 1

#  ---          1s 3d
# |   |         1b 3s 1b
#  ---          1s 3d

# 2 x 1 

#  --- ---      1s 3d 1s 3d
# |   |   |     1b 3s 1b 3s 1b
#  --- ---      1s 3d 1s 3d

# 1 x 2

#  ---          1s 3d
# |   |         1b 3s 1b
#  ---          1s 3d
# |   |         1b 3s 1b
#  ---          1s 3d

# 2 x 2 

#  --- ---      1s 3d 1s 3d
# |   |   |     1b 3s 1b 3s 1b
#  --- ---      1s 3d 1s 3d
# |   |   |     1b 3s 1b 3s 1b
#  --- ---      1s 3d 1s 3d

" --- ---"
"|   |   |"
" --- ---"
"|   |   |"
" --- ---"

# get size row and column

# create grid

def getInputs():
    while True:
        numberinput = int(input())
        return numberinput

def makegrid():
    print("Enter the height of the grid: ")
    height = getInputs()
    print("Enter the height of the grid: ")
    width = getInputs()

    dash = " ---"
    bar = "|   "

    dashes = width*dash
    bars = width*bar + "|"
    
    for _ in range(height):
        print(dashes)
        print(bars)
    
    print(dashes)

makegrid()