
import hashmapsDemo 

ffr = hashmapsDemo.findFirstRepeat

emptyList = [] 
listWithUniqueValues = ['e', 't', 'i', 'j', 'l', 'z', 'y', 'a']
listWithMultipleRepeats = ['e', 't', 'e', 'j', 't', 'z', 'y', 'a']
listWithOneRepeat = ['e', 't', 'b', 'j', 'b', 'z', 'y', 'a']

def test_emptyList_returnsNull():
        assert(ffr(emptyList) == None)

def test_listWithUniqueValues_returnsNull():
        assert(ffr(listWithUniqueValues) == None)

def test_listWithMultipleRepeats_returnsFirstRepeat():
        assert(ffr(listWithMultipleRepeats) == 'e')

def test_listWithOneRepeat_returnsRepeat():
        assert(ffr(listWithOneRepeat) == 'b')
