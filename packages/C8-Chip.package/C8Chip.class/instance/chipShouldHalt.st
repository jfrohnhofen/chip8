actions
chipShouldHalt

	^ self debugger notNil and: [ self debugger chipShouldHalt: self cpu pc ]