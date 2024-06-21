testing
testObserverNotification

	self mainformModel addDependent: self.
	self mainformModel chart: 1 setSelected: true.
	
	self assert: self notified	
