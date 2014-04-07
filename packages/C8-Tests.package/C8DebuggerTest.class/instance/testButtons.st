tests
testButtons

	self assertButtons: #(Start Step Reset).

	(self debugger buttons at: #Start) doButtonAction.
	self assertButtons: #(Stop Reset).

	(self debugger buttons at: #Stop) doButtonAction.
	self assertButtons: #(Start Step Reset).

	(self debugger buttons at: #Step) doButtonAction.
	self assertButtons: #(Start Step Reset).

	(self debugger buttons at: #Reset) doButtonAction.
	self assertButtons: #(Start Step Reset).
