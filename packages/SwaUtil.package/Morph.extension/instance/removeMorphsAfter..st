*SwaUtil
removeMorphsAfter: aMorph

	(self submorphs copyAfter: aMorph) do: [ :submorph | self removeMorph: submorph ]