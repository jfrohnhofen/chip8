-- Regular Expression Matcher v 1.1 (C) 1996, 1999 Vassili Bykov
-- See `documentation' protocol of RxParser class for user's guide.
--
A Branch is a Piece followed by a Branch or an empty string.
Instance variables:
	piece		<RxsPiece>
	branch		<RxsBranch|RxsEpsilon>