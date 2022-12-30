\header {
  title = "A Silver Lining"
  composer = "Like a Dino OST"
}

\score {

\new PianoStaff <<
  \set PianoStaff.connectArpeggios = ##t
  \new Staff {
    \relative c''' {
      \repeat volta 2 {
        % \ottava #1
        r8 g-. a-. b-. d4 c-. |
        c8-. d-. e-. b~ b4 a-. |
        a8-. g-. f-. e-. f4 c'-. |
      }
      \alternative {
        { c8-. b-. c-. d-. <f, a e'>4\arpeggio d'-. | }
        { <d, f c'>8\arpeggio b'~ b <f c'>8~ <f c'> d f \grace d16 e8 }
      }
    }
  }

  \new Staff {
    \relative c'' {
      \repeat volta 2 {
        r2 c4 <e g>-. |
        r2 a,4 <cis e>-. |
        r2 d,4 <a' c>-. |
      }
      \alternative {
        { r2 g4\arpeggio r | }
        { g2 c,8 c'~ c g, }
      }
    }
  }
>>

  \layout {}
  \midi {}
}
