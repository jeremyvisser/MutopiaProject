\score {
  \new StaffGroupNoBar <<
    \new StaffGroup <<
      \new Staff << \instrumentName \markup "Violino I"
                    \global \clef "treble" \includeNotes "violino1" >>
      \new Staff << \instrumentName \markup "Violino II"
                    \global \clef "treble" \includeNotes "violino2" >>
      \new Staff << \instrumentName \markup Viola
                    \global \clef "alto" \includeNotes "viola" >>
    >>
    \new StaffGroup <<
      \new Staff << \instrumentName \markup "Oboe I"
                    \global \clef "treble" \includeNotes "oboe1" >>
      \new Staff << \instrumentName \markup "Oboe II"
                    \global \clef "treble" \includeNotes "oboe2" >>
    >>
    \new ChoirStaff <<
      \new Staff \withLyrics <<
        \characterName \markup Canto
        \global \clef "treble" \includeNotes "vcanto"
      >> \includeLyrics "lyrics1"
      \new Staff \withLyrics <<
        \characterName \markup Alto
        \global \clef "treble" \includeNotes "valto"
      >> \includeLyrics "lyrics2"
      \new Staff \withLyrics <<
        \characterName \markup Tenore
        \global \clef "G_8" \includeNotes "vtenore"
      >> \includeLyrics "lyrics3"
      \new Staff \withLyrics <<
        \characterName \markup Basso
        \global \clef "bass" \includeNotes "vbasso"
      >> \includeLyrics "lyrics4"
    >>
    \new Staff << \instrumentName \markup Bassi
                  \global \clef "bass" \includeNotes "bassi"
                  \includeFigures "figures" >>
  >>
  \layout { indent = \largeindent }
  \midi { \context { \Voice \remove "Dynamic_performer" } }
}