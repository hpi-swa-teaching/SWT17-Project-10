accessing
collectNewData

	dataCollection := (self charts collect: [:aChart | aChart originalData]) reverse.