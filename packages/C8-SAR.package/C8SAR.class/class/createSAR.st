utilities
createSAR

	| package folder zip mczStream workingCopy version | 

	package := 'c8'.
	folder := 'c8Resources'.
	zip := ZipArchive new.
	mczStream := RWBinaryOrTextStream on: (String new: 10000).
	workingCopy := MCWorkingCopy forPackage: (MCPackage new name: package).
	version := workingCopy newVersion fileOutOn: mczStream.

	(zip addString: mczStream contents as: package, '.mcz') desiredCompressionLevel: 0.
	zip addTree: Smalltalk imagePath match: [:e | e fullName beginsWith: Smalltalk imagePath , FileDirectory slash , folder].
	zip addString:  'self fileInMonticelloZipVersionNamed: ''' , package ,
		'.mcz''. (self membersMatching: ''' , folder , FileDirectory slash , '*'') do: [ :f | self extractMember: f].' as: 'install/preamble'.
	zip writeToFileNamed: package , '.sar'.