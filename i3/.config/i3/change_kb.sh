function change_layout {
	local layout=$(setxkbmap -query | grep layout)
	local new_layout

	if [[ "$layout" == *"dvorak"* ]]; then
		new_layout="us"
	else
		new_layout="dvorak"
	fi

	setxkbmap -layout $new_layout
}

change_layout
