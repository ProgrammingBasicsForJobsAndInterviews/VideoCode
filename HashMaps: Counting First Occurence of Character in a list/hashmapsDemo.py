
def findFirstRepeat(inputList):
        mapOfVisited = dict.fromkeys(inputList)
        for char in inputList:
                if (mapOfVisited[char] == True):
                        return char
                else:
                        mapOfVisited[char] = True
        return None
