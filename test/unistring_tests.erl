%% -*- coding: utf-8 -*-
-module(unistring_tests).
-include_lib("eunit/include/eunit.hrl").

%% http://www.cl.cam.ac.uk/~mgk25/ucs/examples/quickbrown.txt

setup() ->
	ok.

cleanup(_) ->
	ok.

generator_test_() ->
	{foreach,
	 fun setup/0,						% setup function
	 fun cleanup/1,						% teardown function
	 [{"simple to_lower", fun simple_to_lower/0},
	  {"portuguese to_lower", fun portuguese_to_lower/0},
	  {"danish to_lower", fun danish_to_lower/0},
	  {"german to_lower", fun german_to_lower/0},
	  {"greek to_lower", fun greek_to_lower/0},
	  {"spanish to_lower", fun spanish_to_lower/0},
	  {"irish gaelic to_lower", fun irish_gaelic_to_lower/0},
	  {"hungarian to_lower", fun hungarian_to_lower/0},
	  {"icelandic to_lower", fun icelandic_to_lower/0},
	  {"japanese to_lower", fun japanese_to_lower/0},
	  {"hebrew to_lower", fun hebrew_to_lower/0},
	  {"polish to_lower", fun polish_to_lower/0},
	  {"russian to_lower", fun russian_to_lower/0},
	  {"thai to_lower", fun thai_to_lower/0},
	  {"turkish to_lower", fun turkish_to_lower/0},
	  {"simple to_upper", fun simple_to_upper/0},
	  {"portuguese to_upper", fun portuguese_to_upper/0},
	  {"danish to_upper", fun danish_to_upper/0},
	  {"german to_upper", fun german_to_upper/0},
	  {"greek to_upper", fun greek_to_upper/0},
	  {"spanish to_upper", fun spanish_to_upper/0},
	  {"irish gaelic to_upper", fun irish_gaelic_to_upper/0},
	  {"hungarian to_upper", fun hungarian_to_upper/0},
	  {"icelandic to_upper", fun icelandic_to_upper/0},
	  {"japanese to_upper", fun japanese_to_upper/0},
	  {"hebrew to_upper", fun hebrew_to_upper/0},
	  {"polish to_upper", fun polish_to_upper/0},
	  {"russian to_upper", fun russian_to_upper/0},
	  {"thai to_upper", fun thai_to_upper/0},
	  {"turkish to_upper", fun turkish_to_upper/0}]}.

simple_to_lower() ->
	?assertEqual("test", unistring:to_lower("TEST")),
	?assertEqual(<<"test">>, unistring:to_lower(<<"TEST">>)).

portuguese_to_lower() ->
	?assertEqual("áéáéàè", unistring:to_lower("ÁÉáéÀÈ")),
	?assertEqual(<<"áéáéàè"/utf8>>, unistring:to_lower(<<"ÁÉáéÀÈ"/utf8>>)).

danish_to_lower() ->
	?assertEqual("quizdeltagerne spiste jordbær med fløde, mens cirkusklovnen wolther spillede på xylofon.",
		unistring:to_lower("QUIZDELTAGERNE SPISTE JORDBÆR MED FLØDE, MENS CIRKUSKLOVNEN WOLTHER SPILLEDE PÅ XYLOFON.")),
	?assertEqual(<<"quizdeltagerne spiste jordbær med fløde, mens cirkusklovnen wolther spillede på xylofon."/utf8>>,
		unistring:to_lower(<<"QUIZDELTAGERNE SPISTE JORDBÆR MED FLØDE, MENS CIRKUSKLOVNEN WOLTHER SPILLEDE PÅ XYLOFON."/utf8>>)).

german_to_lower() ->
	?assertEqual(<<"falsches üben von xylophonmusik quält jeden größeren zwerg"/utf8>>,
		unistring:to_lower(<<"FALSCHES ÜBEN VON XYLOPHONMUSIK QUÄLT JEDEN GRÖßEREN ZWERG"/utf8>>)),
	?assertEqual(<<"zwölf boxkämpfer jagten eva quer über den sylter deich"/utf8>>,
		unistring:to_lower(<<"ZWÖLF BOXKÄMPFER JAGTEN EVA QUER ÜBER DEN SYLTER DEICH"/utf8>>)),
	?assertEqual(<<"heizölrückstoßabdämpfung"/utf8>>,
		unistring:to_lower(<<"HEIZÖLRÜCKSTOßABDÄMPFUNG"/utf8>>)).

greek_to_lower() ->
	?assertEqual(<<"γαζέεσ καὶ μυρτιὲσ δὲν θὰ βρῶ πιὰ στὸ χρυσαφὶ ξέφωτο"/utf8>>,
		unistring:to_lower(<<"ΓΑΖΈΕΣ ΚΑῚ ΜΥΡΤΙῈΣ ΔῈΝ ΘᾺ ΒΡΩ͂ ΠΙᾺ ΣΤῸ ΧΡΥΣΑΦῚ ΞΈΦΩΤΟ"/utf8>>)),
	?assertEqual(<<"ξεσκεπάζω τὴν ψυχοφθόρα βδελυγμία"/utf8>>,
		unistring:to_lower(<<"ΞΕΣΚΕΠΆΖΩ ΤῊΝ ΨΥΧΟΦΘΌΡΑ ΒΔΕΛΥΓΜΊΑ"/utf8>>)).

spanish_to_lower() ->
	?assertEqual(<<"el pingüino wenceslao hizo kilómetros bajo exhaustiva lluvia y frío, añoraba a su querido cachorro."/utf8>>,
		unistring:to_lower(<<"EL PINGÜINO WENCESLAO HIZO KILÓMETROS BAJO EXHAUSTIVA LLUVIA Y FRÍO, AÑORABA A SU QUERIDO CACHORRO."/utf8>>)).

irish_gaelic_to_lower() ->
	?assertEqual(<<"d'fhuascail íosa, úrmhac na hóighe beannaithe, pór éava agus ádhaimh"/utf8>>,
		unistring:to_lower(<<"D'FHUASCAIL ÍOSA, ÚRMHAC NA HÓIGHE BEANNAITHE, PÓR ÉAVA AGUS ÁDHAIMH"/utf8>>)).

hungarian_to_lower() ->
	?assertEqual(<<"árvíztűrő tükörfúrógép"/utf8>>,
		unistring:to_lower(<<"ÁRVÍZTŰRŐ TÜKÖRFÚRÓGÉP"/utf8>>)).

icelandic_to_lower() ->
	?assertEqual(<<"kæmi ný öxi hér ykist þjófum nú bæði víl og ádrepa"/utf8>>,
		unistring:to_lower(<<"KÆMI NÝ ÖXI HÉR YKIST ÞJÓFUM NÚ BÆÐI VÍL OG ÁDREPA"/utf8>>)),
	?assertEqual(<<"sævör grét áðan því úlpan var ónýt"/utf8>>,
		unistring:to_lower(<<"SÆVÖR GRÉT ÁÐAN ÞVÍ ÚLPAN VAR ÓNÝT"/utf8>>)).

japanese_to_lower() ->
	?assertEqual(<<"いろはにほへとちりぬるを わかよたれそつねならむ うゐのおくやまけふこえて"/utf8>>,
		unistring:to_lower(<<"いろはにほへとちりぬるを わかよたれそつねならむ うゐのおくやまけふこえて"/utf8>>)),
	?assertEqual(<<"イロハニホヘト チリヌルヲ ワカヨタレソ ツネナラム"/utf8>>,
		unistring:to_lower(<<"イロハニホヘト チリヌルヲ ワカヨタレソ ツネナラム"/utf8>>)).

hebrew_to_lower() ->
	?assertEqual(<<"? דג סקרן שט בים מאוכזב ולפתע מצא לו חברה איך הקליטה"/utf8>>,
		unistring:to_lower(<<"? דג סקרן שט בים מאוכזב ולפתע מצא לו חברה איך הקליטה"/utf8>>)).

polish_to_lower() ->
	?assertEqual(<<"pchnąć w tę łódź jeża lub ośm skrzyń fig"/utf8>>,
		unistring:to_lower(<<"PCHNĄĆ W TĘ ŁÓDŹ JEŻA LUB OŚM SKRZYŃ FIG"/utf8>>)).

russian_to_lower() ->
	?assertEqual("привет", unistring:to_lower("ПРИВЕТ")),
	?assertEqual(<<"привет"/utf8>>, unistring:to_lower(<<"ПРИВЕТ"/utf8>>)),
	?assertEqual(<<"в чащах юга жил бы цитрус? да, но фальшивый экземпляр!"/utf8>>,
		unistring:to_lower(<<"В ЧАЩАХ ЮГА ЖИЛ БЫ ЦИТРУС? ДА, НО ФАЛЬШИВЫЙ ЭКЗЕМПЛЯР!"/utf8>>)).

thai_to_lower() ->
	?assertEqual(<<"๏ เป็นมนุษย์สุดประเสริฐเลิศคุณค่า  กว่าบรรดาฝูงสัตว์เดรัจฉาน"/utf8>>,
		unistring:to_lower(<<"๏ เป็นมนุษย์สุดประเสริฐเลิศคุณค่า  กว่าบรรดาฝูงสัตว์เดรัจฉาน"/utf8>>)).

turkish_to_lower() ->
	?assertEqual(<<"pijamali hasta, yağiz şoföre çabucak güvendi."/utf8>>,
		unistring:to_lower(<<"PIJAMALI HASTA, YAĞIZ ŞOFÖRE ÇABUCAK GÜVENDI."/utf8>>)).

%%
%%	to upper tests
%%

simple_to_upper() ->
	?assertEqual("TEST", unistring:to_upper("test")),
	?assertEqual(<<"TEST">>, unistring:to_upper(<<"test">>)).

portuguese_to_upper() ->
	?assertEqual(<<"ÁÉÁÉÀÈ"/utf8>>, unistring:to_upper(<<"áéáéàè"/utf8>>)).

danish_to_upper() ->
	?assertEqual(<<"QUIZDELTAGERNE SPISTE JORDBÆR MED FLØDE, MENS CIRKUSKLOVNEN WOLTHER SPILLEDE PÅ XYLOFON."/utf8>>,
		unistring:to_upper(<<"Quizdeltagerne spiste jordbær med fløde, mens cirkusklovnen Wolther spillede på xylofon."/utf8>>)).

german_to_upper() ->
	?assertEqual(<<"FALSCHES ÜBEN VON XYLOPHONMUSIK QUÄLT JEDEN GRÖßEREN ZWERG"/utf8>>,
		unistring:to_upper(<<"Falsches Üben von Xylophonmusik quält jeden größeren Zwerg"/utf8>>)),
	?assertEqual(<<"ZWÖLF BOXKÄMPFER JAGTEN EVA QUER ÜBER DEN SYLTER DEICH"/utf8>>,
		unistring:to_upper(<<"Zwölf Boxkämpfer jagten Eva quer über den Sylter Deich"/utf8>>)),
	?assertEqual(<<"HEIZÖLRÜCKSTOßABDÄMPFUNG"/utf8>>,
		unistring:to_upper(<<"Heizölrückstoßabdämpfung"/utf8>>)).

greek_to_upper() ->
	?assertEqual(<<"ΓΑΖΈΕΣ ΚΑῚ ΜΥΡΤΙῈΣ ΔῈΝ ΘᾺ ΒΡΩ͂ ΠΙᾺ ΣΤῸ ΧΡΥΣΑΦῚ ΞΈΦΩΤΟ"/utf8>>,
		unistring:to_upper(<<"γαζέεσ καὶ μυρτιὲσ δὲν θὰ βρῶ πιὰ στὸ χρυσαφὶ ξέφωτο"/utf8>>)),
	?assertEqual(<<"ΞΕΣΚΕΠΆΖΩ ΤῊΝ ΨΥΧΟΦΘΌΡΑ ΒΔΕΛΥΓΜΊΑ"/utf8>>,
		unistring:to_upper(<<"Ξεσκεπάζω τὴν ψυχοφθόρα βδελυγμία"/utf8>>)).

spanish_to_upper() ->
	?assertEqual(<<"EL PINGÜINO WENCESLAO HIZO KILÓMETROS BAJO EXHAUSTIVA LLUVIA Y FRÍO, AÑORABA A SU QUERIDO CACHORRO."/utf8>>,
		unistring:to_upper(<<"El pingüino Wenceslao hizo kilómetros bajo exhaustiva lluvia y frío, añoraba a su querido cachorro."/utf8>>)).

irish_gaelic_to_upper() ->
	?assertEqual(<<"D'FHUASCAIL ÍOSA, ÚRMHAC NA HÓIGHE BEANNAITHE, PÓR ÉAVA AGUS ÁDHAIMH"/utf8>>,
		unistring:to_upper(<<"D'fhuascail Íosa, Úrmhac na hÓighe Beannaithe, pór Éava agus Ádhaimh"/utf8>>)).

hungarian_to_upper() ->
	?assertEqual(<<"ÁRVÍZTŰRŐ TÜKÖRFÚRÓGÉP"/utf8>>,
		unistring:to_upper(<<"Árvíztűrő tükörfúrógép"/utf8>>)).

icelandic_to_upper() ->
	?assertEqual(<<"KÆMI NÝ ÖXI HÉR YKIST ÞJÓFUM NÚ BÆÐI VÍL OG ÁDREPA"/utf8>>,
		unistring:to_upper(<<"Kæmi ný öxi hér ykist þjófum nú bæði víl og ádrepa"/utf8>>)),
	?assertEqual(<<"SÆVÖR GRÉT ÁÐAN ÞVÍ ÚLPAN VAR ÓNÝT"/utf8>>,
		unistring:to_upper(<<"Sævör grét áðan því úlpan var ónýt"/utf8>>)).

japanese_to_upper() ->
	?assertEqual(<<"いろはにほへとちりぬるを わかよたれそつねならむ うゐのおくやまけふこえて"/utf8>>,
		unistring:to_upper(<<"いろはにほへとちりぬるを わかよたれそつねならむ うゐのおくやまけふこえて"/utf8>>)),
	?assertEqual(<<"イロハニホヘト チリヌルヲ ワカヨタレソ ツネナラム"/utf8>>,
		unistring:to_upper(<<"イロハニホヘト チリヌルヲ ワカヨタレソ ツネナラム"/utf8>>)).

hebrew_to_upper() ->
	?assertEqual(<<"? דג סקרן שט בים מאוכזב ולפתע מצא לו חברה איך הקליטה"/utf8>>,
		unistring:to_upper(<<"? דג סקרן שט בים מאוכזב ולפתע מצא לו חברה איך הקליטה"/utf8>>)).

polish_to_upper() ->
	?assertEqual(<<"PCHNĄĆ W TĘ ŁÓDŹ JEŻA LUB OŚM SKRZYŃ FIG"/utf8>>,
		unistring:to_upper(<<"Pchnąć w tę łódź jeża lub ośm skrzyń fig"/utf8>>)).

russian_to_upper() ->
	?assertEqual(<<"В ЧАЩАХ ЮГА ЖИЛ БЫ ЦИТРУС? ДА, НО ФАЛЬШИВЫЙ ЭКЗЕМПЛЯР!"/utf8>>,
		unistring:to_upper(<<"В чащах юга жил бы цитрус? Да, но фальшивый экземпляр!"/utf8>>)),
	?assertEqual("ПРИВЕТ", unistring:to_upper("привет")),
	?assertEqual(<<"ПРИВЕТ"/utf8>>, unistring:to_upper(<<"привет"/utf8>>)).

thai_to_upper() ->
	?assertEqual(<<"๏ เป็นมนุษย์สุดประเสริฐเลิศคุณค่า  กว่าบรรดาฝูงสัตว์เดรัจฉาน"/utf8>>,
		unistring:to_upper(<<"๏ เป็นมนุษย์สุดประเสริฐเลิศคุณค่า  กว่าบรรดาฝูงสัตว์เดรัจฉาน"/utf8>>)).

turkish_to_upper() ->
	?assertEqual(<<"PIJAMALI HASTA, YAĞIZ ŞOFÖRE ÇABUCAK GÜVENDI."/utf8>>,
		unistring:to_upper(<<"Pijamalı hasta, yağız şoföre çabucak güvendi."/utf8>>)).
