extends Node
signal motif_recognized(name)

var recent_notes: Array[String] = []
const MOTIFS := {"REVEAL": ["C","E","F"]}

func play_note(note: String):
	recent_notes.append(note)
	if recent_notes.size() > 4:
		recent_notes.pop_front()
	for m in MOTIFS.keys():
		if _ends_with(recent_notes, MOTIFS[m]):
			emit_signal("motif_recognized", m)

func _ends_with(arr: Array, tail: Array) -> bool:
	if tail.size() > arr.size(): return false
	for i in range(tail.size()):
		if arr[arr.size() - tail.size() + i] != tail[i]:
			return false
	return true
