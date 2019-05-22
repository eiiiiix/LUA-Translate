-- made using Greenpeace's tweets (@Greenpeace_ITA)
debugger = false
function sl_t(n)
	local t0 = os.clock()
	while os.clock() - t0 <= n do
	end
end
input = io.open('./input.txt', 'r')
text = input:read('*a')
t = text:lower()
input:close()
print('input.txt')
print()
print(t)
print()
print('if you get an incomplete translation please refeer to ./readme.txt or suggest iprovements to the translator to eix (missing words, miss-splelings, weird translations, etc.)')
print('translating, please wait...')
translator = {
	{ " sull'inquinamento ", " pollution "},
	{ " mediterraneo ", " mediterranian "},
	{ " proteggi ", " protect " },
	{ " oceani ", " ocean " },
	{ " coccole ", " snuggle " },
	{ " volta ", " time " },
	{ " uscere ", " to go out " },
	{ " qualche ", " some "},
	{ " volere ", " want " },
	{ " morto ", " die " },
	{ " segna ", " mark " },
	{ " culto ", " culture " }, { " inculto ", " uncultured " },
	{ " linua ", " language " },
	{ " amichizia ", " friend " },
	{ " invia ", " send " },
	{ " esempio ", " example " },
	{ " attività ", " activities "},
	{ " guarda ", " watch " }, { " guardo ", " watch " }, { " guardando ", " watching " },
	{ " angelo ", " angel " },
	{ " cielo ", " heaven " },
	{ " nero ", " black " },
	{ " rosso ", " red " },
	{ " nostro ", " our " },
	{ " rosa ", " pink " },
	{ " verde ", " green " },
	{ " terza ", " third " },
	{ " azuro ", " blue " },
	{ " frquenti ", " frequently " },
	{ " italia ", " italy " }, { " italiano ", " italian " },
	{ " stupido ", " stupid " },
	{ " spesso ", " often " },
	{ " veno ", " wine " },
	{ " mela ", " apple " }, { " mele ", " apples " },
	{ " pasto ", " meal " },
	{ " uovo ", " egg " },
	{ " latte ", " milk " },
	{ " acqua ", " water " },
	{ " limone ", " lemon " }, { " limonata ", " lemonade " },
	{ " pane ", " bread " },
	{ " caramelle ", " candy " },
	{ " succo ", " juice " },
	{ " frutta ", " fruit " },
	{ " ceno ", " dinner " },
	{ " vieni ", " come " },
	{ " parole ", " words " },
	{ " voce ", " voice " },
	{ " mangio ", " eat " }, { " mangia ", " eats " }, { " mangiamo ", " eat " },
	{ " animale ", " animal " },
	{ " gatto ", " cat " }, { " gatti ", " cats " },
	{ " cani ", " dog " },
	{ " balena ", " whale " },
	{ " delphino ", " dolphin " },
	{ " pollo ", " chicken " },
	{ " scimmia ", " monkey " },
	{ " nepmia ", " supreme god emperor " },
	{ " eix ", " weeb trash " },
	{ " molto ", " very " },
	{ " ascolto ", " listen " }, { " ascoltando ", " listening " },
	{ " lassista ", " lax " },
	{ " seguici ", " follow us " },
	{ " tappa ", " part " },
	{ " fiume ", " river " },
	{ " plastica ", " plastic " },
	{ " ricerca ", " research " },
	{ " foce ", " mouth " },
	{ " tevere ", " tiber " },
	{ " buongiorno ", " good morning " },
	{ " buonasera ", " good afternoon  " },
	{ " buonanotte", " goodnight " },
	{ " elimina ", " remove " },
	{ " scrive ", " write " }, { " scrivono ", " write " },
	{ " leggo ", " read " }, { " leggiamo ", " read " },
	{ " poca ", " little " }, { " poco ", " little " },
	{ " puttana ", " whore " },
	{ " perché ", " why " },
	{ " omosessuali ", " gay " },
	{ " anulla ", " cancel " },
	{ " salva ", " save " },
	{ " carina ", " cute " }, { " carino ", " hot " },
	{ " piace ", " like " },
	{ " caldo ", " hot " },
	{ " manca ", " missing " },
	{ " danno ", " give " },
	{ " ciao ", " hello " },
	{ " arrivederci ", " bye " },
	{ " dittatore ", " dictator " },
	{ " fanculo ", " fuck " }, { " vaffanculo ", " fuck you " },
	{ " donna ", " woman " }, { " donne ", " women " },
	{ " uomo ", " man " }, { " uomini ", " men " },
	{ " ragazzo ", " boy " }, { " ragazzi ", " boys " },
	{ " ragazza ", " girl " }, { " ragazze ", " girls " },
	{ " oggi ", " today " },
	{ " qui ", " here " },
	{ " sei ", " are " }, { " siete ", " are all " },
	{ " sono ", " am " },
	{ " come ", " as " },
	{ " con ", " with " },
	{ " agli ", " to the " }, { " all\' ", " to the " },
	{ " alla ", " at the " }, { " allo ", " at the " },
	{ " nello ", " in the " }, { " nel ", " in " },
	{ " chi ", " who " },
	{ " ho ", " have " }, { " ha ", " has " },
	{ " tu ", " you " }, { " voi ", " you " },
	{ " i tuoi ", " your " }, { " il tuo ", " your " },
	{ " io ", " i " },
	{ " ci ", " there " },
	{ " va ", " gone " },
	{ " ti ", " to you " },
	{ " la mia ", " my " }, { " mia ", " my " }, { " il mio ", " my " },
	{ " non ", " not " },
	{ " al ", " of the " }, { " del ", " of the " }, { " delle ", " of the " },  { " di ", " of the " },
	{ " il ", " the " }, { " la ", " the " }, { " le ", " the " }, { " l\'", " the " }, { " gle ", " the " },
	{ " sì ", " yes " }, { " si ", " yes " },
	{ " fa ", " ago " },
	{ " /è ", " is " },
	{ " /e ", " and " },
	{ " da ", " for " }, { " per ", " for " },
	{ " una ", " an " }, { " un ", " a " },
	{ " /a ", " to " }, { " ad ", " to " },
	{ " /o ", " or " },
--	{ " . ", ". " }, { " ? ", "? " }, { " ! ", "! " }, { " , ", ", " }, { " \n ", "\n" }, { " \" ", "\"" }, { " ( ", " (" }, { " ) ", ") " }, { " ; ", "; " }, { " : ", ": " },
--	{ ". a", ". A" }, { ". b", ". B" }, { ". c", " . C" }, { ". d", ". D" }, { ". e", ". E" }, { ". f", ". F" }, { ". g", ". G" }, { ". h", ". H" }, { ". i", ". I" }, { ". j", ". J" }, { ". k", ". K" }, { ". l", ". L" }, { ". m", ". M" }, { ". n", ". N" }, { ". o", ". O" }, { ". p", ". P" }, { ". q", ". Q" }, { ". r", ". R" }, { ". s", ". S" }, { ". t", ". T" }, { ". u", ". U" }, { ". v", ". V" }, { ". w", ". W" }, { ". x", ". X" }, { ". y", ". Y" }, { ". z", ". Z" },
--	{ "! a", "! A" }, { "! b", "! B" }, { "! c", " ! C" }, { "! d", "! D" }, { "! e", "! E" }, { "! f", "! F" }, { "! g", "! G" }, { "! h", "! H" }, { "! i", "! I" }, { "! j", "! J" }, { "! k", "! K" }, { "! l", "! L" }, { "! m", "! M" }, { "! n", "! N" }, { "! o", "! O" }, { "! p", "! P" }, { "! q", "! Q" }, { "! r", "! R" }, { "! s", "! S" }, { "! t", "! T" }, { "! u", "! U" }, { "! v", "! V" }, { "! w", "! W" }, { "! x", "! X" }, { "! y", "! Y" }, { "! z", "! Z" },
--	{ "? a", "? A" }, { "? b", "? B" }, { "? c", " ? C" }, { "? d", ". D" }, { "? e", "? E" }, { "? f", "? F" }, { "? g", "? G" }, { "? h", "? H" }, { "? i", "? I" }, { "? j", "? J" }, { "? k", "? K" }, { "? l", "? L" }, { "? m", "? M" }, { "? n", "? N" }, { "? o", "? O" }, { "? p", "? P" }, { "? q", "? Q" }, { "? r", "? R" }, { "? s", "? S" }, { "? t", "? T" }, { "? u", "? U" }, { "? v", "? V" }, { "? w", "? W" }, { "? x", "? X" }, { "? y", "? Y" }, { "? z", "? Z" },
	{ "\'", "" }, { "", "" },
}
print(#translator .. ' words loaded')
for i = 1, #translator do
	local word = translator[i]
	t = string.gsub( t, word[1], word[2] )
	if (debugger == true) then
		print('DEBUG: ', t)
	end
end
print('translating finished')
print('output.txt')
print()
print(t)
print()
output = io.open('./output.txt', 'w')
output:write(t)
output:close()
print('tanslation written to output.txt')
print('auto-closing in 1 minute')
sl_t(60)