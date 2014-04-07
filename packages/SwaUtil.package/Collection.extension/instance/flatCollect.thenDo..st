*SwaUtil
flatCollect: selectBlock thenDo: doBlock
	^ ((self collect: selectBlock) flatten) do: doBlock