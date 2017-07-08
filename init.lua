local localplayer
minetest.register_on_connect(function()
        localplayer = minetest.localplayer
end)

minetest.register_on_death(function()
	local pos = vector.round(localplayer:get_pos())
	pos = minetest.pos_to_string(pos)
	pos = "You died at "..pos.."."
	minetest.display_chat_message(minetest.colorize("#E00000", pos))
	print(pos)
end)
