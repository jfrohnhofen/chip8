| gitPath gitCache |
Transcript cr; show: 'travis---->travisCI.st'.

gitCache := 'git_cache'.
gitPath := (Smalltalk at: #'FileDirectory' ifAbsent: [  ])
  ifNil: [ ((Smalltalk at: #'FileSystem') workingDirectory / gitCache) pathString ]
  ifNotNil: [:fileDirectoryClass | (fileDirectoryClass default directoryNamed: gitCache ) fullName].

Metacello new
  baseline: 'C8';
  repository: 'filetree://', gitPath, '/chip8/packages';
  get.

Metacello new
  baseline: 'C8';
  repository: 'filetree://', gitPath, '/chip8/packages';
  load: 'TravisCI'.

"Run the tests"
TravisCIHarness
  value: #( 'BaselineOfC8' )
  value: 'TravisCISuccess.txt' 
  value: 'TravisCIFailure.txt'.
