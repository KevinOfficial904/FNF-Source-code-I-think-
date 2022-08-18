strums = nil
characterBool = false
both = false
function onCreatePost()

    if getProperty('dad.curCharacter') == 'Drake' then
        strums = 'opponent'
        characterBool = false
    elseif getProperty('boyfriend.curCharacter') == 'bf' then
        strums = 'player'
        characterBool = true
    end
    if getProperty('boyfriend.curCharacter') == 'bf' and getProperty('dad.curCharacter') == 'Drake' then
        both = true
    end

    for i=0,3 do
        if not both then
            setPropertyFromGroup(strums..'Strums', i, 'texture', 'drakeNOTE_assets')
        else
            setPropertyFromGroup('opponentStrums', i, 'texture', 'drakeNOTE_assets')
            setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets')
        end
    end

    for i=0,getProperty('unspawnNotes.length')-1 do
        if not both then
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == characterBool then
                setPropertyFromGroup('unspawnNotes', i, 'texture', 'drakeNOTE_assets')
            end
        else
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'drakeNOTE_assets')
        end
    end

end