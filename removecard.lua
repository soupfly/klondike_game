function removeCard(t)
	local len = #cardSlots[t][2]
	table.remove(cardSlots[t][2][len])
end
