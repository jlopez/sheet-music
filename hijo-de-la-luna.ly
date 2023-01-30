% LilyBin
\version "2.18.2"
\language "english"
\header {
	title = "Hijo de la Luna"
	composer = "José María Cano"
	tagline = ""
}

rhAa = \relative c''{ r4 <e gs>\( fs | r <b, ds> cs }
rhAb = \relative c''{ r <cs e> fs | r <b, ds> cs\) }
rhAc = \relative c' { r <e gs> fs | r <g as>4. b8 }
rhAd = \relative c' { r4 <e gs> fs | r <b, ds> cs }
rhAe = \relative c' { r <cs e> fs | r <b, ds> cs }
rhAf = \relative c' { r <cs e> fs | r <b, ds> b }
rhA  = { \rhAa \rhAb }

% { << { s4 gs' fs | s ds cs | s e fs | s ds cs } \\ { r4 e2 | r4 b2 | r4 cs2 | r4 b2 } >> }
lhAa = \relative c' { cs2. | cs | cs | cs }
lhAb = \relative c' { cs2. | gs | a  | gs }
lhAc = \relative c  { cs2. | cs' }
lhAd = \relative c  { cs2. | gs' | a  | gs }
lhAe = \relative c  { cs2. | ds }
lhAf = \relative c, { cs2. | cs' | cs | cs }
lhAg = \relative c, { cs2. | cs }
lhAh = \relative c  { cs2. | cs | cs | cs }

rhBa = \relative c' { r4 <e gs>2 | r4 <fs a>2 | r4 <e gs> a | r4 <ds, gs> fs }
lhBa = \relative c  { cs2 gs'4 | fs2 a4 | cs,2. | c }

rhC  = \relative c' { r4 <e gs>2 | r4 <fs cs'>2 | r4 <e gs>2 | r4 <b ds>2 | r4 <cs e>2 | r4 <ds fs>2 }
lhC  = \relative c  { e2 b'4 | gs2. | cs,2 gs'4 | b,2 \parenthesize fs'4 | a,2 e'4 | b2 fs'4 }

rhDa = \relative c' { r4 <gs ds'>2  | r4 fs'2 | r4 e2    | r4 ds2 }
rhDb = \relative c' { r4 <b ds gs>2 | r4 fs'2 | <e gs>2. | r4 ds2 }
rhDc = \relative c''{ b2 cs8 b | as2 b8 as | gs4. as8 b as | g2. }
rhDd = \relative c' { r4 gs'2 | r4 fs2 | r4 e2 | r4 ds2 }
rhD  = \relative c' { \rhDa \rhDb \rhDc \rhDd}
lhDa = \relative c  { fs4 cs' as | e b' gs | ds as' g }
lhDb = \relative c' { gs ds' b | \lhDa }
lhD  = \relative c  { gs2. | \lhDa | gs2 gs'4 | \lhDa | \lhDb \lhDb }

rhEa = \relative c' { r4. gs8~ <gs b ds>4 | r4 <cs e>2 }
rhE  = { \rhEa \rhEa }
lhEa = \relative c  { gs4 ds'2 | cs2 cs'4 }
lhE  = { \lhEa \lhEa }

rhFa = \relative c' { r4 <g' as> ds }
rhFb = \relative c' { r4 a8 b cs e | e2 \tuplet 3/2 { ds8 e ds } }
rhF  = { \repeat unfold 4 \rhFa \rhFb }
lhF  = \relative c  { ds2. | cs | b | as2 ds,4 | a'2. | gs }

rhG  = \relative c'' { e4. fs8 ds cs | c4 ds2 | e8 cs e gs fs e | ds b ds fs e ds | cs2. | r4 <ds, fs>2 }
lhG  = \relative c  { e4 b' e, | ds c' ds, | cs gs' cs, | b fs' b, | a e' a, | b fs' b, }

rhH  = {
	\rhA \rhAa
	\override TextSpanner.bound-details.left.text = "rit."
	\relative c'' {
		r\startTextSpan <cs e> fs | r <b, ds> b\stopTextSpan
		cs2.\)\fermata
	}
}
lhH  = { \lhAh \lhAh cs2.\fermata }

melody = \relative c'' {
	\clef treble
	\time 3/4
	\key e \major
	\repeat unfold 8 r2.
	\repeat unfold 2 { r4 cs8\( ds e fs | ds2 cs4~ | cs\) r2 | r2. }
	\repeat unfold 2 { r4 e8\( fs gs b | gs4 fs2\) | r4 cs8\( ds e gs | ds2 cs4 | a2 cs4 | e ds b | cs2.\) }
	\repeat unfold 8 r2.
	\repeat unfold 3 {
		\repeat unfold 2 { r4 cs8\( ds e fs | ds2 cs4~ | cs cs ds~ | ds e fs\) }
		\repeat unfold 2 { r4 e8\( fs gs b | gs4 fs2\) | r4 cs8\( ds e gs | ds2 cs4 | a2 cs4 | e ds b | cs2.\) }
		\repeat unfold 4 r2.
		r2
		\repeat unfold 2 { gs'8\( gs | fs4 ds fs | gs2( as8 gs | g4) g( gs)\) | r2 gs8\( as | b4 as gs | ds2\) gs8\( ds | cs4 b cs | ds2\) }
		r4
		\repeat unfold 2 { cs2( b8 cs | ds2.) }
		\repeat unfold 3 r2.
		r4 a8\( b cs ds | e2 \tuplet 3/2 { ds8( e ds } cs2.)\)
		\repeat unfold 7 r2.
	}
	\repeat unfold 2 { r4 cs8\( ds e fs | ds2 cs4~ | cs cs ds~ | ds e fs\) }
	\repeat unfold 2 { r4 e8\( fs gs b | gs4 fs2\) | r4 cs8\( ds e gs | ds2 cs4 | a2 cs8 e( | e4) ds b8 b | cs2.\) r2. }
	\repeat unfold 7 r2.
}

text = \lyricmode {
	\set fontSize = #-3
	Ton -- to_el que no_en -- tien -- da,
	cuen -- ta la le -- yen -- da
	que_u -- na_hem -- bra gi -- ta -- na
	con -- ju -- ro_a la lu -- na
	has -- ta_el a -- ma -- ne -- cer.        % 6 syllables
	Llo -- ran -- do pe -- dí -- a
	al lle -- gar el dí -- a
	des -- po -- sar un ca -- lé.             % 6 syllables
	
	“Ten -- drás a tu hom -- bre, piel mo -- re -- na”,
	des -- de_el cie -- lo_ha bló la lu -- na lle -- na,
	“pe -- ro_a cam -- bio quie -- ro
	al hi -- jo pri -- me -- ro
	que le_en -- gen -- dres a él.”           % 6 syllables
	Que quién su_hi -- jo_in -- mo -- la
	pa -- ra no_es -- tar so -- la
	po -- co le_i -- ba_a que -- rer.         % 6 syllables
	
	Lu -- na quie -- res ser ma -- dre
	y no_en -- cuen -- tras que -- rer
	que te ha -- ga mu -- jer.
	Di -- me, lu -- na de pla -- ta,
	¿qué pre -- ten -- des ha -- cer
	con un ni -- ño de piel?
	Aaah aaah
	
	Hi -- jo de la lu -- na.
	
	De pa -- dre ca -- ne -- la, na -- ció_un ni -- ño,
	blan -- co co -- mo_el lo -- mo de_un ar -- mi -- ño,
	con los o -- jos gri -- ses,
	en vez de_a -- cei -- tu -- na,
	ni -- ño_al bi -- no de_lu -- na.          % 7, forced to 6 via de_lu
	“¡Mal -- di -- ta su_es -- tam -- pa!
	es -- te_hi -- jo_es de_un pa -- yo, _     % trailing _
	y_yo no me lo_ca -- llo.”                  % 7, forced to 6 via y_yo, lo_ca
	
	Lu -- na quie -- res ser ma -- dre
	y no_en -- cuen -- tras que -- rer
	que te ha -- ga mu -- jer.
	Di -- me, lu -- na de pla -- ta,
	¿qué pre -- ten -- des ha -- cer
	con un ni -- ño de piel?
	Aaah aaah
	
	Hi -- jo de la lu -- na.
	
	Gi -- ta -- no_al cre -- er -- se des -- hon -- ra -- do
	se fue_a su mu -- jer cu -- chi -- llo_en ma -- no:
	“¿De quién es el hi -- jo?
	¡me_has en -- ga -- ñao fi -- jo!”
	y de muer -- te la_hi -- rió.               % 6 syllables
	Lue -- go se_hi -- zo_al mon -- te
	con el ni -- ño_en bra -- zos
	y_a -- llí le_a -- ban -- do -- nó.         % 6 syllables
	
	Lu -- na quie -- res ser ma -- dre
	y no_en -- cuen -- tras que -- rer
	que te ha -- ga mu -- jer.
	Di -- me, lu -- na de pla -- ta,
	¿qué pre -- ten -- des ha -- cer
	con un ni -- ño de piel?
	Aaah aaah
	
	Hi -- jo de la lu -- na.
	
	Y_en las no -- ches que_ha -- ya lu -- na lle -- na
	se -- rá por -- que_el ni -- ño_es -- te de bue -- nas,
	y si_el ni -- ño llo -- ra,
	men -- gua -- rá la lu -- na
	pa -- ra_ha -- cer -- le_u -- na cu -- na.   % 7 syllables
	Y si_el ni -- ño llo -- ra,
	men -- gua -- rá la lu -- na
	pa -- ra_ha -- cer -- le_u -- na cu -- na.   % 7 syllables
}

rh = {
	\clef treble
	\time 3/4
	\key e \major
	\rhA \rhA
	\repeat unfold 2 \rhBa
	\repeat unfold 2 { \rhC \rhAa }
	\rhAb \rhA
	\repeat unfold 2 \rhBa
	\repeat unfold 2 { \rhC \rhAa }
	\rhAc
	\rhD
	\rhE
	\rhF
	\rhA
	
	\repeat unfold 2 {
		\rhA
		\repeat unfold 2 \rhBa
		\repeat unfold 2 { \rhC \rhAa }
		\rhAc
		\rhD
		\rhE
		\rhF
		\rhA
	}

	\rhA
	\repeat unfold 2 \rhBa
	\rhG \rhAd \rhG
	\rhH
}
lh = {
	\clef bass
	\time 3/4
	\key e \major
	\lhAa \lhAb
	\repeat unfold 2 \lhBa
	\repeat unfold 2 { \lhC \lhAc }
	\lhAc \lhAd
	\repeat unfold 2 \lhBa
	\repeat unfold 2 { \lhC \lhAc }
	\lhAe
	\lhD
	\lhE
	\lhF
	\lhAf

	\repeat unfold 2 {
		\lhAb
		\repeat unfold 2 \lhBa
		\repeat unfold 2 { \lhC \lhAc }
		\lhAe
		\lhD
		\lhE
		\lhF
		\lhAf
	}

	\lhAb
	\repeat unfold 2 \lhBa
	\lhG \lhAg \lhG
	\lhH
}

\score {
    <<
		\new Voice = "mel" \melody
		\new Lyrics \lyricsto mel \text
		\new PianoStaff <<
			\new Staff = "rh" \rh
			\new Staff = "lh" \lh
		>>
	>>
	\layout{}
	\midi{}
}
