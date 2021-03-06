%#######################################################################
%#             G E N E R A L I T E S   E T   E N T E T E               #
%#######################################################################
\version "2.18.2"
#(set-global-staff-size 15)

\paper {
	ragged-last-bottom = ##f
	ragged-bottom = ##f
}
%-----------------------------------------------------------------------
\layout {
}
%-----------------------------------------------------------------------
\include "markup.ily"
\include "globals.ily"
\include "02_DvorakAmericanQuartet_Mvt2_Voix1.ily"
\include "02_DvorakAmericanQuartet_Mvt2_Voix2.ily"
\include "02_DvorakAmericanQuartet_Mvt2_Voix3.ily"
\include "02_DvorakAmericanQuartet_Mvt2_Voix4.ily"
%#######################################################################
%#       C O N S T R U C T I O N   D E   L A   P A R T I T I O N       #
%#######################################################################
\book{
  \include "../header.ily"
	\score {
		\new StaffGroup <<
			\new Staff << \globalMvtDeux \MvtDeuxVoixUne >>
			\new Staff << \globalMvtDeux \MvtDeuxVoixDeux >>
			\new Staff << \globalMvtDeux \MvtDeuxVoixTrois >>
			\new Staff << \globalMvtDeux \MvtDeuxVoixQuatre >>
		>>
		\header {
			%breakbefore = ##t
		}
		\layout {
		}
		\midi {
		}
	}
}
