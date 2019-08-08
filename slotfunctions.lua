function addCard(t, v1, v2)
	local len = #cardSlots[t][2] + 1
	table.insert(cardSlots[t][2][len], v1)
	table.insert(cardSlots[t][2][len], v2)
end

function removeCard(t)
	local len = #cardSlots[t][2]
	table.remove(cardSlots[t][2][len])
end
