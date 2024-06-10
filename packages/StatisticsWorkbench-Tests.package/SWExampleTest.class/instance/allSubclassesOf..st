as yet unclassified
allSubclassesOf: aClass

        ^ aClass allSubclasses select: [ :each | each isAbstract not ]