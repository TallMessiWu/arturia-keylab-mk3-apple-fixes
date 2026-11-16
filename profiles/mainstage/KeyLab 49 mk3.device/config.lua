--- Surface:	KeyLab 49 mk3
--- Developer:	Farès MEZDOUR
--- Version:	1.4

--- Copyright (c) 2023 Farès MEZDOUR

F_Button1 = {5, nil, nil, nil, nil, nil, nil, nil, nil}
F_Button2 = {6, nil, nil, nil, nil, nil, nil, nil, nil}
F_Button3 = {7, nil, nil, nil, nil, nil, nil, nil, nil}
F_Button4 = {8, nil, nil, nil, nil, nil, nil, nil, nil}
F_Button5 = {1, nil, nil, nil, nil, nil, nil, nil, nil}
F_Button6 = {2, nil, nil, nil, nil, nil, nil, nil, nil}
F_Button7 = {3, nil, nil, nil, nil, nil, nil, nil, nil}
F_Button8 = {4, nil, nil, nil, nil, nil, nil, nil, nil}
F_Button_List = {
				F_Button1,
				F_Button2,
				F_Button3,
				F_Button4,
				F_Button5,
				F_Button6,
				F_Button7,
				F_Button8,
			}



-- Special Messages

CONNEXION_DAW = {0xf0, 0x00, 0x20, 0x6b, 0x7f, 0x42, 0x00, 0x02, 0x05, 0x01, 0xf7}
DECONNEXION_DAW = {0xf0, 0x00, 0x20, 0x6b, 0x7f, 0x42, 0x00, 0x02, 0x05, 0x00, 0xf7}
CONNEXION_AL = {0xf0, 0x00, 0x20, 0x6b, 0x7f, 0x42, 0x00, 0x01, 0x05, 0x01, 0xf7}
DECONNEXION_AL = {0xf0, 0x00, 0x20, 0x6b, 0x7f, 0x42, 0x00, 0x01, 0x05, 0x00, 0xf7}
NRPN_TOUCH_ON = {0xf0, 0x00, 0x20, 0x6b, 0x7f, 0x42, 0x00, 0x02, 0x09, 0x01, 0xf7}
NRPN_TOUCH_OFF = {0xf0, 0x00, 0x20, 0x6b, 0x7f, 0x42, 0x00, 0x02, 0x09, 0x00, 0xf7}
NRPN_CLICK_ON = {0xf0, 0x00, 0x20, 0x6b, 0x7f, 0x42, 0x00, 0x02, 0x0A, 0x01, 0xf7}
NRPN_CLICK_OFF = {0xf0, 0x00, 0x20, 0x6b, 0x7f, 0x42, 0x00, 0x02, 0x0A, 0x00, 0xf7}  

S_INIT_MESSAGES = {

	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x0f,0x00,0x00,0x00,0x00,0xF7, -- Save
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x0e,0x00,0x00,0x00,0x00,0xF7, -- Quantize
	-- 0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x0d,0x00,0x00,0x00,0x00,0xF7, -- Undo
	-- 0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x0c,0x00,0x00,0x00,0x00,0xF7, -- Redo

	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x08,0x00,0x00,0x00,0x00,0xF7, -- Loop
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x09,0x00,0x00,0x00,0x00,0xF7, -- Rewind
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x0A,0x00,0x00,0x00,0x00,0xF7, -- FF
	-- 0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x0B,0x00,0x00,0x00,0x00,0xF7, -- Metronome
	-- 0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x07,0x00,0x00,0x00,0x00,0xF7, -- Stop
	-- 0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x06,0x00,0x00,0x00,0x00,0xF7, -- Play
	-- 0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x05,0x00,0x00,0x00,0x00,0xF7, -- Record
	-- 0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x04,0x00,0x00,0x00,0x00,0xF7, -- Tap

	-- PADS LED
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x52,0x0D,0x0D,0x0D,0x00,0xF7,
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x53,0x0D,0x0D,0x0D,0x00,0xF7,
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x54,0x0D,0x0D,0x0D,0x00,0xF7,
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x55,0x0D,0x0D,0x0D,0x00,0xF7,
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x56,0x0D,0x0D,0x0D,0x00,0xF7,
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x57,0x0D,0x0D,0x0D,0x00,0xF7,
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x58,0x0D,0x0D,0x0D,0x00,0xF7,
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x59,0x0D,0x0D,0x0D,0x00,0xF7,
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x5A,0x0D,0x0D,0x0D,0x00,0xF7,
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x5B,0x0D,0x0D,0x0D,0x00,0xF7,
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x5C,0x0D,0x0D,0x0D,0x00,0xF7,
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x5D,0x0D,0x0D,0x0D,0x00,0xF7,

	
	-- -- LEDs Release
	-- 0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x24,0x02,0x00,0x00,0xF7, -- Save
	-- 0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x23,0x02,0x00,0x00,0xF7, -- Quantize
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x22,0x02,0x00,0x00,0xF7, -- Undo
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x21,0x02,0x00,0x00,0xF7, -- Redo
	-- 0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x08,0x02,0x00,0x00,0xF7, -- Loop
	-- 0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x1E,0x02,0x00,0x00,0xF7, -- Rewind
	-- 0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x1F,0x02,0x00,0x00,0xF7, -- FF
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x20,0x02,0x00,0x00,0xF7, -- Metro
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x1C,0x02,0x00,0x00,0xF7, -- Stop
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x1B,0x02,0x00,0x00,0xF7, -- Play
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x1A,0x02,0x00,0x00,0xF7, -- Rec
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x19,0x02,0x00,0x00,0xF7, -- Tap

	-- Encoder relative mode setup
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x00,0x00,0x02,0x00,0xF7, -- Encoder 1
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x01,0x00,0x02,0x00,0xF7, -- Encoder 2
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x02,0x00,0x02,0x00,0xF7, -- Encoder 3
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x03,0x00,0x02,0x00,0xF7, -- Encoder 4
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x04,0x00,0x02,0x00,0xF7, -- Encoder 5
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x05,0x00,0x02,0x00,0xF7, -- Encoder 6
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x06,0x00,0x02,0x00,0xF7, -- Encoder 7
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x07,0x00,0x02,0x00,0xF7, -- Encoder 8
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x08,0x00,0x02,0x00,0xF7, -- Encoder 9

}

S_DEINIT_MESSAGES = {

	-- Encoder relative mode setup
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x00,0x00,0x01,0x00,0xF7, -- Encoder 1
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x01,0x00,0x01,0x00,0xF7, -- Encoder 2
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x02,0x00,0x01,0x00,0xF7, -- Encoder 3
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x03,0x00,0x01,0x00,0xF7, -- Encoder 4
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x04,0x00,0x01,0x00,0xF7, -- Encoder 5
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x05,0x00,0x01,0x00,0xF7, -- Encoder 6
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x06,0x00,0x01,0x00,0xF7, -- Encoder 7
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x07,0x00,0x01,0x00,0xF7, -- Encoder 8
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x08,0x00,0x01,0x00,0xF7, -- Encoder 9

}


-- Colors

WHITE = {127, 127, 127}

-- Param global variables

SCROLL_TYPE = 0
CURRENT_PROGRAM = nil
CURRENT_SET = nil
CURRENT_PATCH = nil


-- Screen Global variable

SCREEN_DATA_STRING = " 00 02 04"

function controller_initialize(applicationName, deviceNewlyDetected)
	local msg = {}
	-- create_ID_to_HW_IDs()

	-- Sending connection screen and static layout for buton
	local S_connection = SetCenterPage(31, applicationName, 1, WHITE, "Connected", 1, WHITE, 0, 73)
	local S_List_Init = SetCenterPage(41, "SET", "PRESET")
	

	-- Sending connexion messages
	table.insert(msg, CONNEXION_DAW)
	table.insert(msg, S_INIT_MESSAGES)
	table.insert(msg, NRPN_TOUCH_ON)
	table.insert(msg, S_connection)
	table.insert(msg, S_List_Init)

	-- Link buttons to navigation by default when creating a Concert
	S_Feedback_f5 = SetButton(5, 10, 1, 1, 1, nil, nil, nil, nil)
	table.insert(msg, S_Feedback_f5)

	S_Feedback_f6 = SetButton(6, 10, 1, 1, 2, nil, nil, nil, nil)
	table.insert(msg, S_Feedback_f6)

	S_Feedback_f7 = SetButton(7, 10, 1, 1, 1, nil, nil, nil, nil)
	table.insert(msg, S_Feedback_f7)

	S_Feedback_f8 = SetButton(8, 10, 1, 1, 2, nil, nil, nil, nil)
	table.insert(msg, S_Feedback_f8)

	-- Set footer buttons GUI
	local S_Feedback_f = SetFooterPage()
	table.insert(msg, S_Feedback_f)


	return { midi = msg }

end

function controller_finalize()

	local msg = {}

	-- Send disconnection message to set back the unit in default DAW mode
	table.insert(msg, NRPN_TOUCH_OFF)
	table.insert(msg, S_DEINIT_MESSAGES)
	table.insert(msg, DECONNEXION_DAW)


	return { midi = msg }

end


function controller_midi_in(midiEvent, portName)

	
	print("Calling controller_midi_in : ", midiEvent[0], midiEvent[1], midiEvent[2], portName)

	-- Store incoming MIDI msg 
	MIDI_STATUS = midiEvent[0]
	MIDI_DATA1 = midiEvent[1]
	MIDI_DATA2 = midiEvent[2]

	-- if table.contains({0x80,0x89,0x90,0x99}, midiEvent[0]) then
	-- 	ID_TYPE = "NOTEON/NOTEOFF"
	-- elseif table.contains({0xD0}, MIDI_STATUS) then
	-- 	ID_TYPE = "AFTERTOUCH"
	-- elseif table.contains({0xB0}, MIDI_STATUS) then
	-- 	MIDI_IN = true
	-- 	if table.contains(ENCODER_HW_ID, MIDI_DATA1) then
	-- 		ID_TYPE = "ENCODER"
	-- 	elseif table.contains(FADER_HW_ID, MIDI_DATA1) then
	-- 		ID_TYPE = "FADER"
	-- 	elseif table.contains(TRANSPORT_HW_ID, MIDI_DATA1) then
	-- 		ID_TYPE = "TRANSPORT"
	-- 	else
	-- 		ID_TYPE = "OTHER"
	-- 	end
	-- end


	if table.contains({0xB0}, midiEvent[0]) then
		-- 
		if table.contains({0x31,0x32,0x33,0x34}, midiEvent[1]) then
			if midiEvent[2] == 0 then
				SCROLL_TYPE = 0
			else
				-- Tracker la commande contextuel
				if midiEvent[1] == 0x31 then
					SCROLL_TYPE = 1
				elseif midiEvent[1] == 0x32 then
					SCROLL_TYPE = 2
				elseif midiEvent[1] == 0x33 then
					SCROLL_TYPE = 3
				elseif midiEvent[1] == 0x34 then
					SCROLL_TYPE = 4
				end	
			end	
		end
	end

	return

end



function controller_select_patch(programchangenumber, patchname, setname, concertname, patchlist, currentSetIndex, currentPatchIndex)
 
    print("Calling controller_select_patch : ", programchangenumber, patchname, setname, concertname, currentSetIndex, currentPatchIndex)
    -- print(CURRENT_PROGRAM, CURRENT_SET, CURRENT_PATCH)
    -- print(dump(patchlist))
 
    if (CURRENT_PROGRAM == programchangenumber and CURRENT_SET == currentSetIndex and CURRENT_PATCH == currentPatchIndex) then
        SCROLL_TYPE = 0
        -- print("duplicated call, aborted")
        return { midi = {}}
    
    else
 
        CURRENT_PROGRAM = programchangenumber
        CURRENT_SET = currentSetIndex
        CURRENT_PATCH = currentPatchIndex
 
        local msg = {}
        local setMap = {}
        local currentSetIdx = 0
        local totalSets = 0        
        local SCREEN_ROWS = 5
 
        -- [NEW] Table de correspondance : indices Mainstage → indices internes
        --       Règle d'absorption des orphelins :
        --         - orphelins en tête de concert → pseudo-set nommé `concertname`
        --         - orphelins au milieu / fin   → absorbés dans le vrai set précédent
        --       msToInternal[SetIndex + 1] = { internalSetIdx, internalPresetIdx }
        --         - internalPresetIdx = nil pour un vrai set (on utilise currentPatchIndex tel quel)
        --         - internalPresetIdx = position absorbée pour un orphelin
        local msToInternal = {}
        local lastRealSetMsIdx = -1    -- SetIndex Mainstage du dernier vrai set rencontré
 
        -- 0. we assume flatPatchList is indexed
        for i, item in ipairs(patchlist) do
            -- Security check
            if item and item["Label"] then 
                if item["IsPatch"] == false then
                    -- vrai set
                    currentSetIdx = currentSetIdx + 1
                    setMap[currentSetIdx] = {
                        label = item.Label,
                        Presets = {} 
                    }
                    lastRealSetMsIdx = item.SetIndex
                    msToInternal[item.SetIndex + 1] = {
                        internalSetIdx = currentSetIdx,
                        internalPresetIdx = nil
                    }
                else
                    -- preset
                    if item.SetIndex == lastRealSetMsIdx then
                        -- preset membre du vrai set courant (Mainstage pilote via currentPatchIndex)
                        table.insert(setMap[currentSetIdx].Presets, {Label = item.Label})
                        -- pas d'entrée msToInternal spécifique : le lookup via SetIndex+1
                        -- tombe sur le vrai set avec internalPresetIdx=nil (fallback currentPatchIndex)
                    else
                        -- preset orphelin
                        if currentSetIdx == 0 then
                            -- début de concert : créer le pseudo-set nommé du concert
                            currentSetIdx = currentSetIdx + 1
                            setMap[currentSetIdx] = {
                                label = concertname or "Global Presets",
                                Presets = {}
                            }
                        end
                        -- absorbé dans le set courant (pseudo-set début ou vrai set précédent)
                        table.insert(setMap[currentSetIdx].Presets, {Label = item.Label})
                        msToInternal[item.SetIndex + 1] = {
                            internalSetIdx = currentSetIdx,
                            internalPresetIdx = len(setMap[currentSetIdx].Presets)
                        }
                    end
                end
            end
        end
        totalSets = currentSetIdx
        
		-- for i = 1, totalSets do
		-- 	print(setMap[i].label)
		-- 	local current_set = setMap[i]
		-- 	for j, v in ipairs(current_set.Presets) do
		-- 		print("  " .. v.Label)
		-- 	end
		-- end
 
 
        -- [NEW] Remapping des indices Mainstage → indices internes
        --       Mainstage envoie (currentSetIndex, currentPatchIndex) en base 0.
        --       On les traduit en (internalSetIdx, internalPresetIdx) en base 1
        --       selon la table msToInternal construite plus haut.
        local mapping = msToInternal[currentSetIndex + 1]
        local internalSetIdx      -- base 1, index dans setMap
        local internalPresetIdx   -- base 1, index dans setMap[x].Presets
        if mapping then
            internalSetIdx = mapping.internalSetIdx
            internalPresetIdx = mapping.internalPresetIdx or (currentPatchIndex + 1)
        else
            -- fallback défensif : concert vide ou indices hors limites
            internalSetIdx = currentSetIndex + 1
            internalPresetIdx = currentPatchIndex + 1
        end
 
        -- Version base 0 pour les fonctions d'affichage et les curseurs
        local mappedSetIdx = internalSetIdx - 1
        local mappedPatchIdx = internalPresetIdx - 1
 
        local currentSetData = setMap[internalSetIdx]
        local totalPresetsInSet = 0
        if currentSetData then 
            totalPresetsInSet = len(currentSetData.Presets)
        end
 
 
        -- 2. Calcul des fenêtres (Scrolling intelligent)
        -- Set Window 
        local startIndex = 1
 
        if totalSets <= SCREEN_ROWS then
            -- Règle 1 : S'il y a 5 items ou moins, on commence toujours au premier
            startIndex = 1
        else
            -- Règle 2 : On essaie de centrer (Position 3 sur 5)
            -- mappedSetIdx est en base 0, setStart en base 1 → décalage de 1 à ajouter
            startIndex = mappedSetIdx - 1
 
            -- Règle 3 : Sécurité "Haut de liste"
            -- Si on est au début (ex: Set 1 ou 2), on bloque le départ à 1
            if startIndex < 1 then 
                startIndex = 1 
            end
 
            -- Règle 4 : Sécurité "Bas de liste"
            -- Si on est à la fin, on bloque pour que les 5 derniers soient affichés
            -- (startIndex + 4) ne doit pas dépasser totalSets
            if (startIndex + SCREEN_ROWS - 1) > totalSets then
                startIndex = totalSets - SCREEN_ROWS + 1
            end
        end
 
        if totalSets == 0 then
            startIndex = -1
        end
 
        local setStart = startIndex
 
 
        -- Preset window
        -- mappedPatchIdx est en base 0, presetStart en base 1 → décalage de 1 à ajouter
        local startIndex = mappedPatchIdx
 
        -- Bloquer au début (ne pas aller sous 1)
        if startIndex < 2 then startIndex = 1 end
 
        -- Bloquer à la fin (si la fenêtre dépasse le nombre de presets)
        if totalPresetsInSet > SCREEN_ROWS then
            if (startIndex + SCREEN_ROWS) > totalPresetsInSet then
                startIndex = totalPresetsInSet - SCREEN_ROWS + 1
            end
        else
            startIndex = 1
        end
 
        local presetStart = startIndex
 
 
        left_size = totalSets
        right_size = totalPresetsInSet
 
        if SCROLL_TYPE == 0 then
        
            RefreshList(msg, setMap, currentSetData, SCREEN_ROWS, patchname, totalSets, totalPresetsInSet, setStart, presetStart, mappedSetIdx, mappedPatchIdx)
 
        else
 
            local S_preset_position
            local S_added_preset 
 
            if SCROLL_TYPE == 1 then
                if table.contains({0, 1, totalSets - 3, totalSets - 2}, mappedSetIdx) then
                    S_position = SetListCursor(mappedSetIdx, 1)
                    table.insert(msg, S_position)
                    print("Cursor- : ", mappedSetIdx)
                end
                RefreshList(msg, setMap, currentSetData, SCREEN_ROWS, patchname, totalSets, totalPresetsInSet, setStart, presetStart, mappedSetIdx, mappedPatchIdx)
            elseif SCROLL_TYPE == 2 then
                if table.contains({1, 2, totalSets - 2, totalSets - 1}, mappedSetIdx) then
                    S_position = SetListCursor(mappedSetIdx, 1)
                    table.insert(msg, S_position)
                    print("Cursor+ : ",  mappedSetIdx)
                end
                RefreshList(msg, setMap, currentSetData, SCREEN_ROWS, patchname, totalSets, totalPresetsInSet, setStart, presetStart, mappedSetIdx, mappedPatchIdx)
            elseif SCROLL_TYPE == 3 then
                if mappedPatchIdx == totalPresetsInSet - 1 then
                    RefreshList(msg, setMap, currentSetData, SCREEN_ROWS, patchname, totalSets, totalPresetsInSet, setStart, presetStart, mappedSetIdx, mappedPatchIdx)
                elseif table.contains({0, 1, totalPresetsInSet - 3, totalPresetsInSet - 2}, mappedPatchIdx) then
                    S_position = SetListCursor(mappedPatchIdx, 1)
                    table.insert(msg, S_position)
                    S_title = SetCenterList(1, patchname)
                    table.insert(msg, S_title)
                    print("Cursor- : ", mappedPatchIdx)
                else
                    local addedPatchName = currentSetData.Presets[mappedPatchIdx - 1].Label
                    S_line = PrependToList(addedPatchName, 1)
                    table.insert(msg, S_line)
                    S_title = SetCenterList(1, patchname)
                    table.insert(msg, S_title)
                    print("Prepend : ",  patchname)
                end
            elseif SCROLL_TYPE == 4 then
                if mappedPatchIdx == 0 then
                    RefreshList(msg, setMap, currentSetData, SCREEN_ROWS, patchname, totalSets, totalPresetsInSet, setStart, presetStart, mappedSetIdx, mappedPatchIdx)
                elseif table.contains({1, 2, totalPresetsInSet - 2, totalPresetsInSet - 1}, mappedPatchIdx) then
                    S_position = SetListCursor(mappedPatchIdx, 1)
                    table.insert(msg, S_position)
                    S_title = SetCenterList(1, patchname)
                    table.insert(msg, S_title)
                    print("Cursor+ : ",  mappedPatchIdx)
                else
                    local addedPatchName = currentSetData.Presets[mappedPatchIdx + 3].Label
                    S_line = AppendToList(addedPatchName, 1)
                    table.insert(msg, S_line)
                    S_title = SetCenterList(1, patchname)
                    table.insert(msg, S_title)
                    print("Append : ", patchname)
                end
            end
 
        end
        
        return { midi = msg }
    
    end
end



function controller_info()
	return {
		model = 'KeyLab 49 mk3',
		manufacturer = 'Arturia',
		version = 1.0,
		logicprox = false,

		items = {

			{ name="Fader9", objectType="VFader", midiType="Absolute", midi={0xB0, 113, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },

			{ name="Knob1", objectType="Knob", midiType="Relative2C", midi={0xB0, 91, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },
            { name="Knob2", objectType="Knob", midiType="Relative2C", midi={0xB0, 92, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },
            { name="Knob3", objectType="Knob", midiType="Relative2C", midi={0xB0, 94, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },
            { name="Knob4", objectType="Knob", midiType="Relative2C", midi={0xB0, 95, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },
            { name="Knob5", objectType="Knob", midiType="Relative2C", midi={0xB0, 96, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },
            { name="Knob6", objectType="Knob", midiType="Relative2C", midi={0xB0, 97, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },
            { name="Knob7", objectType="Knob", midiType="Relative2C", midi={0xB0, 102, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },
            { name="Knob8", objectType="Knob", midiType="Relative2C", midi={0xB0, 103, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },

            { name="Fader1", objectType="VFader", midiType="Absolute", midi={0xB0, 105, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },
            { name="Fader2", objectType="VFader", midiType="Absolute", midi={0xB0, 106, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },
            { name="Fader3", objectType="VFader", midiType="Absolute", midi={0xB0, 107, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },
            { name="Fader4", objectType="VFader", midiType="Absolute", midi={0xB0, 108, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },
            { name="Fader5", objectType="VFader", midiType="Absolute", midi={0xB0, 109, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },
            { name="Fader6", objectType="VFader", midiType="Absolute", midi={0xB0, 110, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },
            { name="Fader7", objectType="VFader", midiType="Absolute", midi={0xB0, 111, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },
            { name="Fader8", objectType="VFader", midiType="Absolute", midi={0xB0, 112, MIDI_LSB}, inport = 'DAW', outport = 'DAW' },


			-- CONTEXTUAL BUTTONS

            {
                name = "PreviousSet",
                objectType = "Button",
                midiType = "Momentary",
                midi = {MIDI_CtrChange, 49, MIDI_LSB},
				inport = 'DAW',
				outport = 'DAW',
                action_mainstage = 'PreviousSet',
                action_mainstagecs = 'PreviousSet',
                action_mainstagecreatorstudio = 'PreviousSet',
            },
            {
                name = "NextSet",
                objectType = "Button",
                midiType = "Momentary",
                midi = {MIDI_CtrChange, 50, MIDI_LSB},
                inport = 'DAW',
				outport = 'DAW',
                action_mainstage = 'NextSet',
                action_mainstagecs = 'NextSet',
                action_mainstagecreatorstudio = 'NextSet',
            },
            {
                name = "PreviousPatch",
                objectType = "Button",
                midiType = "Momentary",
                midi = {MIDI_CtrChange, 51, MIDI_LSB},
                inport = 'DAW',
				outport = 'DAW',
                action_mainstage = 'PreviousPatch',
                action_mainstagecs = 'PreviousPatch',
                action_mainstagecreatorstudio = 'PreviousPatch',
            },
            {
                name = "NextPatch",
                objectType = "Button",
                midiType = "Momentary",
                midi = {MIDI_CtrChange, 52, MIDI_LSB},
                inport = 'DAW',
				outport = 'DAW',
                action_mainstage = 'NextPatch',
                action_mainstagecs = 'NextPatch',
                action_mainstagecreatorstudio = 'NextPatch',
            },



			-- TRANSPORT

			{
                name = "Metronome",
                midiType = "Momentary",
                midi = {MIDI_CtrChange, 27, MIDI_LSB},
                inport = 'DAW',
				outport = 'DAW',
				action_mainstage = 'Metronome',
				action_mainstagecs = 'Metronome',
				action_mainstagecreatorstudio = 'Metronome',
            },
			{
                name = "Panic Full",
                midiType = "Momentary",
                midi = {MIDI_CtrChange, 20, MIDI_LSB},
                inport = 'DAW',
				outport = 'DAW',
				action_mainstage = 'PanicFull',
				action_mainstagecs = 'PanicFull',
				action_mainstagecreatorstudio = 'PanicFull',
            },
			{
                name = "Play Stop",
                midiType = "Momentary",
                midi = {MIDI_CtrChange, 21, MIDI_LSB},
                inport = 'DAW',
				outport = 'DAW',
				action_mainstage = 'PlayStop',
				action_mainstagecs = 'PlayStop',
				action_mainstagecreatorstudio = 'PlayStop',
            },
			{
                name = "Record",
                midiType = "Momentary",
                midi = {MIDI_CtrChange, 22, MIDI_LSB},
                inport = 'DAW',
				outport = 'DAW',
				action_mainstage = 'Record',
				action_mainstagecs = 'Record',
				action_mainstagecreatorstudio = 'Record',
            },
			{
                name = "Tap Tempo",
                midiType = "Momentary",
                midi = {MIDI_CtrChange, 23, MIDI_LSB},
                inport = 'DAW',
				outport = 'DAW',
				action_mainstage = 'TapTempo',
				action_mainstagecs = 'TapTempo',
				action_mainstagecreatorstudio = 'TapTempo',
            },

			-- DAW COMMAND

			{
                name = "Undo",
                midiType = "Momentary",
                midi = {MIDI_CtrChange, 43, MIDI_LSB},
                inport = 'DAW',
				outport = 'DAW',
				action_mainstage = 'Undo',
				action_mainstagecs = 'Undo',
				action_mainstagecreatorstudio = 'Undo',
            },
			{
                name = "Redo",
                midiType = "Momentary",
                midi = {MIDI_CtrChange, 44, MIDI_LSB},
                inport = 'DAW',
				outport = 'DAW',
				action_mainstage = 'Redo',
				action_mainstagecs = 'Redo',
				action_mainstagecreatorstudio = 'Redo',
            },
        }
	}
end



-- UTILITY FUNCTIONS -- 


function Send_To_Device(sysex)
	local string = "f0 00 20 6b 7f 42" .. sysex .. " f7 "
	return string
end



function dump(o)
	-- Put this function ito "print" function to see the table content
	if type(o) == 'table' then
		local s = '{ '
		for k,v in pairs(o) do
			if type(k) ~= 'number' then k = ' " '..k..' " ' end
			s = s .. '[' ..k..'] = ' .. dump(v) .. ','
		end

		return s .. '} '
	else

		return tostring(o)
	end
end 


function stringToHex(text)
	-- Convert a Dec string to an hexadecimal string ( usefull for SysEx messages )

	local hexStringToReturn = ""
	for i=1, string.len(text) do
		if string.len(hexStringToReturn) > 0 then
			hexStringToReturn = hexStringToReturn .. " "
		end
		hexStringToReturn = hexStringToReturn .. string.format("%X", string.byte(text,i))
	end

	if string.len(text) > 0 then
		hexStringToReturn = " " .. hexStringToReturn
	end

	return hexStringToReturn
end

function StringToTable(string)
	local table = {}
	local step = ""
	local index = 1
	for c in string:gmatch"." do
		if c == " " then
			table[index] = '0x'..step
			step = ""
			index = index + 1
		else
			step = step..c
		end
	end
	for i=1, #table do
		table[i] = tonumber(table[i])
	end

	return table

end


function TableToHex(table)
	local string = ""
	local hexString = ""
	
	for i, v in ipairs(table) do
		string = string .. string.format("%02x", tostring(v))
		if i ~= #table then
			string = string .. " " -- Adds a space between each items in the string exept at the end of the string
		end
	end

	return string

end


function round(value)
	-- round a value

	if value %1 >= 0.5 then
		return math.ceil(value)
	else
		return math.floor(value)
	end
end

function len(T)
	-- Return the table length
	
	local count = 0
	if T == {} then return {0} end
	
	for i in pairs(T) do
		count = count + 1
	end

	return count

end

function table.contains(table, element)
	present = false
	for _, value in pairs(table) do
		if value == element then
			present = true
		end
	end
	return present
end

function rshift(x, n)
	-- Function to perform right shift (>>)

	return math.floor(x / 2^n)
end

function lshift(x, n)
	-- Function to perform left shift (<<)
	
	return math.floor(x / 2^n)
end



-- #############
-- ### PAGES ###
-- #############


function RefreshAllCTXButtons()
	local msg = {}
	local string = ""

	for i=1, 8 do
		local button_string = ""
		button_string = RefreshCTXButton(i)
		string =  string .. button_string
	end

	return msg
end


function RefreshCTXButton(ID)
	local string = ""

	return string
end


function SetFooterPage()

	local msg = {}
	local string

	for i=4, 8 do
		local tab = GetFooterItem(F_Button_List[i])
		table.insert(msg, tab)
	end

	return msg
end



function SetCenterPage(page_type, line1, colortype1, color1, line2, colortype2, color2, hw_value, icon)
	local msg = {}
	local string

	if line1 == nil then
		line1 = "..."
	end
	if line2 == nil then
		line2 = "..."
	end

	if page_type == 10 then
		string = Screen_F1L(line1, colortype1, color1)
	elseif page_type == 11 then
		string = Screen_F1LInv(line1, colortype1, color1)
	elseif page_type == 12 then
		string = Screen_F2L(line1, colortype1, color1, line2, colortype2, color2)
	elseif page_type == 13 then
		string = Screen_F2LInv(line1, colortype1, color1, line2, colortype2, color2)
	elseif page_type == 14 then
		string = Screen_FB2L(line1, colortype1, color1, line2, colortype2, color2)
	elseif page_type == 15 then
		string = Screen_LIP1L(line1, colortype1, color1, icon)
	elseif page_type == 16 then
		string = Screen_LIP2L(line1, colortype1, color1, line2, colortype2, color2, icon)
	elseif page_type == 23 then
		string = Screen_P1L(line1, colortype1, color1)
	elseif page_type == 24 then
		string = Screen_P2L(line1, colortype1, color1, line2, colortype2, color2)
	elseif page_type == 26 then
		string = Screen_PLI1L(line1, colortype1, color1, icon)
	elseif page_type == 27 then
		string = Screen_PLI2L(line1, colortype1, color1, line2, colortype2, color2, icon)
	elseif page_type == 28 then
		string = Screen_K(line1, line2, hw_value, colortype1, color1)
	elseif page_type == 29 then
		string = Screen_F(line1, line2, hw_value, colortype1, color1)
	elseif page_type == 30 then
		string = Screen_P(line1, line2, hw_value, colortype1, color1)
	elseif page_type == 31 then
		string = Screen_TI2LFIX(line1, colortype1, color1, line2, colortype2, color2, icon)
	elseif page_type == 41 then
		string = Screen_List_Init(left_text, right_text)
	end
	
	local sysex = Send_To_Device(string)
	msg = StringToTable(sysex)

	return msg

end

function SetCenterList(list_type, preset, left_size, right_size)
	local msg = {}

	if list_type == 0 then
		string = Screen_List_Refresh(preset, left_size, right_size)
	elseif list_type == 1 then
		string = Screen_List_Header(preset)
	end

	local sysex = Send_To_Device(string)
	msg = StringToTable(sysex)

	return msg
end

function RefreshList(msg, setMap, currentSetData, SCREEN_ROWS, patchname, totalSets, totalPresetsInSet, setStart, presetStart, currentSetIndex, currentPatchIndex)

	local S_test = SetCenterList(0, patchname, totalSets, totalPresetsInSet)
	table.insert(msg, S_test)

	local S_set_position = SetListCursor(currentSetIndex, 0)
	table.insert(msg,S_set_position)

	local S_preset_position = SetListCursor(currentPatchIndex, 1)
	table.insert(msg,S_preset_position)

	-- print(setStart)
	-- 3. Boucle d'affichage sets (Lignes 0 à 4)
	for i = 0, SCREEN_ROWS - 1 do
		
		-- === GAUCHE : SETS (Column 0) ===
		local targetSetIdx = setStart + i
		local setname = ""

		if setMap[targetSetIdx] then
			setname = setMap[targetSetIdx].label
		end

		-- column = 0 (Set), position = i (Ligne)
		local S_setline = AppendToList(setname, 0)
		table.insert(msg, S_setline)


		-- === DROITE : PRESETS (Column 1) ===
		local targetPresetIdx = presetStart + i
		local presetname = ""
		
		if currentSetData and currentSetData.Presets[targetPresetIdx] then
			presetname = currentSetData.Presets[targetPresetIdx].Label
		end
		
		-- column = 1 (Preset), position = i (Ligne)
		local S_add_preset = AppendToList(presetname, 1)
		table.insert(msg, S_add_preset)
	
	end


	return msg

end


function AppendToList(text, column)
	local msg = {}

	string = Screen_List_Append(text, column)

	local sysex = Send_To_Device(string)
	print(sysex)
	msg = StringToTable(sysex)
	return msg

end

function PrependToList(text, column)
	local msg = {}

	string = Screen_List_Prepend(text, column)

	local sysex = Send_To_Device(string)
	msg = StringToTable(sysex)

	return msg

end

function SetListCursor(current_pos, column)
	local msg = {}

	string = Screen_List_Set_Cursor(current_pos, column)

	local sysex = Send_To_Device(string)
	msg = StringToTable(sysex)

	return msg
end



-- ##############
-- ### SCREEN ###
-- ##############

	-- Header --

function Header(line)
	local sysex = ""
	local data_control = " 01"

	local data_line = ""
	if string.len(line) ~= 0 then
		data_line = " 02" .. stringToHex(string.sub(line,1,31)) .. " 00"
	else 
		data_line = " 02 00"
	end

	sysex = SCREEN_DATA_STRING .. data_control .. data_line .. " 00"

	return sysex

end


	-- Footer --

function SetButton(ID, type, line_number, color_type, icon, custom_color, line1, line2, line3)

	local msg = {}
	local string

	F_Button_List[ID][2] = type
	F_Button_List[ID][3] = line_number
	F_Button_List[ID][4] = color_type
	F_Button_List[ID][5] = icon
	F_Button_List[ID][6] = custom_color
	F_Button_List[ID][7] = line1
	F_Button_List[ID][8] = line2
	F_Button_List[ID][9] = line3

	string = ButtonSysEx(F_Button_List[ID])

	sysex = Send_To_Device(string)

	msg = StringToTable(sysex)

	return msg

end

function ButtonSysEx(button)

	data_button = " 00 02 04"

	data_button = data_button .. " 0" .. string.format("%x", button[1])

	if button[2] ~= nil then
		data_button = data_button .. " 00 0" .. string.format("%x", button[2]) .. " 00"
	end
	
	if button[3] ~= nil then
		data_button = data_button .. " 01 0" .. string.format("%x", button[3]) .. " 00"
	end

	if button[4] ~= nil then
		data_button = data_button .. " 02 0" .. string.format("%x", button[4]) .. " 00"
	end

	if button[5] ~= nil then
		data_button = data_button .. " 03 0" .. string.format("%x", button[5]) .. " 00"
	end

	if button[6] ~= nil then
		data_button = data_button .. " 04 " .. TableToHex(button[6]) .. " 00"
	end

	if button[7] ~= nil then
		if string.len(button[7]) ~= 0 then
			data_button = data_button .. " 05" .. stringToHex(string.sub(button[7],1,31)) .. " 00"
		else 
			data_button = data_button .. " 05 " .. "00"
		end
	end

	if button[8] ~= nil then
		if string.len(button[8]) ~= 0 then
			data_button = data_button .. " 06" .. stringToHex(string.sub(button[8],1,31)) .. " 00"
		else 
			data_button = data_button .. " 06 " .. "00"
		end
	end

	if button[9] ~= nil then
		if string.len(button[9]) ~= 0 then
			data_button = data_button .. " 07" .. stringToHex(string.sub(button[9],1,31)) .. " 00"
		else 
			data_button = data_button .. " 07 " .. "00"
		end
	end


	return data_button

end



function GetFooterPage(button1, button2, button3, button4, button5, button6, button7, button8)
	local sysex = ""
	local data_control = " 03"

	local data_button1 = ButtonSysEx(button1)
	local data_button2 = ButtonSysEx(button2)
	local data_button3 = ButtonSysEx(button3)
	local data_button4 = ButtonSysEx(button4)
	local data_button5 = ButtonSysEx(button5)
	local data_button6 = ButtonSysEx(button6)
	local data_button7 = ButtonSysEx(button7)
	local data_button8 = ButtonSysEx(button8)

	sysex = SCREEN_DATA_STRING .. data_button1 .. data_button2 .. data_button3 .. data_button4 .. data_button5 .. data_button6 .. data_button7 .. data_button8

	return sysex

end

function GetFooterItem(button1)
	local data_button = ButtonSysEx(button1)
	local sysex = Send_To_Device(data_button)
	local table = StringToTable(sysex)

	return table

end





	-- F1L --

	function Screen_F1L(line1, colortype1, color1)
		local sysex = ""
		local data_control = " 0a"

		local data_line1 = " 00" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_colortype1 = " 01 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 02 " .. TableToHex(color1) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_colortype1 .. data_color1	
		return sysex
	
	end

	-- F1LInv --

	function Screen_F1LInv(line1, colortype1, color1)
		local sysex = ""
		local data_control = " 0b"

		local data_line1 = " 00" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_colortype1 = " 01 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 02 " .. TableToHex(color1) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_colortype1 .. data_color1
		return sysex
	
	end


	-- F2L --

	function Screen_F2L(line1, colortype1, color1, line2, colortype2, color2)
		local sysex = ""
		local data_control = " 0c"

		local data_line1 = " 00" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_colortype1 = " 01 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 02 " .. TableToHex(color1) .. " 00"

		local data_line2 = " 03" .. stringToHex(string.sub(line2,1,31)) .. " 00"
		local data_colortype2 = " 04 0" .. string.format("%x",colortype2) .. " 00"
		local data_color2 = " 05 " .. TableToHex(color2) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_colortype1 .. data_color1 .. data_line2 .. data_colortype2 .. data_color2
		return sysex
	
	end


	-- F2LInv --

	function Screen_F2LInv(line1, colortype1, color1, line2, colortype2, color2)
		local sysex = ""
		local data_control = " 0d"

		local data_line1 = " 00" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_colortype1 = " 01 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 02 " .. TableToHex(color1) .. " 00"

		local data_line2 = " 03" .. stringToHex(string.sub(line2,1,31)) .. " 00"
		local data_colortype2 = " 04 0" .. string.format("%x",colortype2) .. " 00"
		local data_color2 = " 05 " .. TableToHex(color2) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_colortype1 .. data_color1 .. data_line2 .. data_colortype2 .. data_color2
		return sysex
	
	end


	-- FB2L --

	function Screen_FB2L(line1, colortype1, color1, line2, colortype2, color2)
		local sysex = ""
		local data_control = " 0e"

		local data_line1 = " 00" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_colortype1 = " 01 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 02 " .. TableToHex(color1) .. " 00"

		local data_line2 = " 03" .. stringToHex(string.sub(line2,1,31)) .. " 00"
		local data_colortype2 = " 04 0" .. string.format("%x",colortype2) .. " 00"
		local data_color2 = " 05 " .. TableToHex(color2) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_colortype1 .. data_color1 .. data_line2 .. data_colortype2 .. data_color2
		return sysex
	
	end


	-- LI1L --

	function Screen_LI1L(line1, colortype1, color1, icon)
		local sysex = ""
		local data_control = " 0f"

		local data_line1 = " 00" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_colortype1 = " 01 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 02 " .. TableToHex(color1) .. " 00"

		if icon ~= nil then
			local data_icon = " 03 " .. string.format("%x",icon) .. " 00"
		end

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_colortype1 .. data_color1 .. data_icon
		return sysex
	
	end


	-- LI2L --

	function Screen_LI2L(line1, colortype1, color1, line2, colortype2, color2, icon)
		local sysex = ""
		local data_control = " 10"

		local data_line1 = " 00" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_colortype1 = " 01 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 02 " .. TableToHex(color1) .. " 00"

		local data_line2 = " 03" .. stringToHex(string.sub(line2,1,31)) .. " 00"
		local data_colortype2 = " 04 0" .. string.format("%x",colortype2) .. " 00"
		local data_color2 = " 05 " .. TableToHex(color2) .. " 00"

		if icon ~= nil then
			local data_icon = " 06 " .. string.format("%x",icon) .. " 00"
		end

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_colortype1 .. data_color1 .. data_line2 .. data_colortype2 .. data_color2 .. data_icon
		return sysex
	
	end

	-- P1L --

	function Screen_P1L(line1, colortype1, color1)
		local sysex = ""
		local data_control = " 17"

		local data_line1 = " 00" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_colortype1 = " 01 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 02 " .. TableToHex(color1) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_colortype1 .. data_color1
		return sysex
	
	end


	-- P2L --

	function Screen_P2L(line1, colortype1, color1, line2, colortype2, color2)
		local sysex = ""
		local data_control = " 18"

		local data_line1 = " 00" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_colortype1 = " 01 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 02 " .. TableToHex(color1) .. " 00"

		local data_line2 = " 03" .. stringToHex(string.sub(line2,1,31)) .. " 00"
		local data_colortype2 = " 04 0" .. string.format("%x",colortype2) .. " 00"
		local data_color2 = " 05 " .. TableToHex(color2) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_colortype1 .. data_color1 .. data_line2 .. data_colortype2 .. data_color2
		return sysex
	
	end

	-- PLI1L --

	function Screen_PLI1L(line1, colortype1, color1, icon)
		local sysex = ""
		local data_control = " 1a"

		local data_line1 = " 00" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_colortype1 = " 01 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 02 " .. TableToHex(color1) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_colortype1 .. data_color1
		return sysex
	
	end


	-- PLI2L --

	function Screen_PLI2L(line1, colortype1, color1, line2, colortype2, color2, icon)
		local sysex = ""
		local data_control = " 1b"

		local data_line1 = " 00" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_colortype1 = " 01 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 02 " .. TableToHex(color1) .. " 00"

		local data_line2 = " 03" .. stringToHex(string.sub(line2,1,31)) .. " 00"
		local data_colortype2 = " 04 0" .. string.format("%x",colortype2) .. " 00"
		local data_color2 = " 05 " .. TableToHex(color2) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_colortype1 .. data_color1 .. data_line2 .. data_colortype2 .. data_color2
		return sysex
	
	end


	-- K --

	function Screen_K(line1, line2, hw_value, colortype1, color1)
		local sysex = ""
		local data_control = " 1c"

		local data_line1 = " 00" .. stringToHex(string.sub(line2,1,31)) .. " 00"
		local data_line2 = " 01" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_hw = " 02 " .. string.format("%02x", hw_value) .. " 00"
		local data_colortype1 = " 03 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 04 " .. TableToHex(color1) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_line2 .. data_hw .. data_colortype1 .. data_color1
		return sysex
	
	end


	-- F --

	function Screen_F(line1, line2, hw_value, colortype1, color1)
		local sysex = ""
		local data_control = " 1d"

		local data_line1 = " 00" .. stringToHex(string.sub(line2,1,31)) .. " 00"
		local data_line2 = " 01" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_hw = " 02 " .. string.format("%02x",hw_value) .. " 00"
		local data_colortype1 = " 03 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 04 " .. TableToHex(color1) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_line2 .. data_hw .. data_colortype1 .. data_color1
		return sysex
	
	end


	-- P --

	function Screen_P(line1, line2, hw_value, colortype1, color1)
		local sysex = ""
		local data_control = " 1e"

		local data_line1 = " 00" .. stringToHex(string.sub(line2,1,31)) .. " 00"
		local data_line2 = " 01" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_hw = " 02 " .. string.format("%02x",hw_value)
		local data_colortype1 = " 03 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 04 " .. TableToHex(color1) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_line2 .. data_hw .. data_colortype1 .. data_color1
		return sysex
	
	end


	-- TI2LFIX --

	function Screen_TI2LFIX(line1, colortype1, color1, line2, colortype2, color2, icon)
		local sysex = ""
		local data_control = " 1f"
		local data_icon = ""

		local data_line1 = " 00" .. stringToHex(string.sub(line1,1,31)) .. " 00"
		local data_colortype1 = " 01 0" .. string.format("%x",colortype1) .. " 00"
		local data_color1 = " 02 " .. TableToHex(color1) .. " 00"

		local data_line2 = " 03" .. stringToHex(string.sub(line2,1,31)) .. " 00"
		local data_colortype2 = " 04 0" .. string.format("%x",colortype2) .. " 00"
		local data_color2 = " 05 " .. TableToHex(color2) .. " 00"

		if icon ~= nil then
			data_icon = " 06 " .. string.format("%x",icon) .. " 00"
		end

		sysex = SCREEN_DATA_STRING .. data_control .. data_line1 .. data_colortype1 .. data_color1 .. data_line2 .. data_colortype2 .. data_color2 .. data_icon
		return sysex
	
	end


	-- List REefresh --

	function Screen_List_Refresh(preset, left_size, right_size)
		local sysex = ""
		local data_control = " 31"

		local data_preset = " 00" .. stringToHex(string.sub(preset,1,31)) .. " 00"

		local dec_left_size = left_size
		local msb_left_size = math.floor(dec_left_size / 256)
		local lsb_left_size = dec_left_size % 256
		local data_size_left = " 02 " .. string.format("%02x %02x", msb_left_size, lsb_left_size) .." 00" 

		-- local dec_global_pos_left = global_pos_left
		-- local msb_global_pos_left = math.floor(dec_global_pos_left / 256)
		-- local lsb_global_pos_left = dec_global_pos_left % 256
		-- local data_global_position_left = " 03 " .. string.format("%02x %02x",msb_global_pos_left,lsb_global_pos_left) .. " 00"
		-- -- local data_select_left = " 05 " .. string.format("%02x",select_left) .. " 00"

		local dec_right_size = right_size
		local msb_right_size = math.floor(dec_right_size / 256)
		local lsb_right_size = dec_right_size % 256
		local data_size_right = " 06 " .. string.format("%02x %02x", msb_right_size, lsb_right_size) .." 00" 

		-- local dec_global_pos_right = global_pos_right
		-- local msb_global_pos_right = math.floor(dec_global_pos_right / 256)
		-- local lsb_global_pos_right = dec_global_pos_right % 256
		-- local data_global_position_right = " 07 " .. string.format("%02x %02x",msb_global_pos_right,lsb_global_pos_right) .. " 00"
		-- -- local data_select_right = " 09 " .. string.format("%02x",select_right) .. " 00"

		local data_left_text = " 0A" .. stringToHex(string.sub("SET",1,31)) .. " 00"
		local data_right_text = " 0B" .. stringToHex(string.sub("PRESET",1,31)) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_preset .. data_size_left .. data_size_right .. data_left_text .. data_right_text
		return sysex

	end


	-- List Header --

	function Screen_List_Header(title)
		local sysex = ""
		local data_control = " 34"

		local data_title = " 00" .. stringToHex(string.sub(title,1,31)) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_title
		return sysex

	end


	-- List Set --

	function Screen_List_Init()
		local sysex = ""
		local data_control = " 31"

		local data_left_text = " 0A" .. stringToHex(string.sub("SET",1,31)) .. " 00"
		local data_right_text = " 0B" .. stringToHex(string.sub("PRESET",1,31)) .. " 00"

		sysex = SCREEN_DATA_STRING .. data_control .. data_left_text .. data_right_text
		return sysex

	end

	-- List Preset --

	function Screen_List_Add_Preset(preset)
		local sysex = ""
		local data_control = " 31"

		local data_title = " 00" .. stringToHex(string.sub(title,1,31)) .. " 00"



		local data_preset_p2 = " 0A" .. stringToHex(string.sub(preset,1,31)) .. " 00"
		local data_preset_p1 = " 0A" .. stringToHex(string.sub(preset,1,31)) .. " 00"
		local data_preset = " 0A" .. stringToHex(string.sub(preset,1,31)) .. " 00"
		local data_preset_n1 = " 0A" .. stringToHex(string.sub(preset,1,31)) .. " 00"
		local data_preset_n2 = " 0A" .. stringToHex(string.sub(preset,1,31)) .. " 00"
		
		sysex = SCREEN_DATA_STRING .. data_title .. data_preset_p2 .. data_preset_p1 .. data_preset_n1 .. data_presetn2 .. data_left_text .. data_right_text
		return sysex

	end

	-- List Append

	function Screen_List_Append(text, column)
        local sysex = ""
        local data_control = " 32"

		local data_text
		if column == 0 then
        	data_text = " 00" .. stringToHex(string.sub(text,1,31)) .. " 00"
		else
        	data_text = " 04" .. stringToHex(string.sub(text,1,31)) .. " 00"
		end
		
        sysex = SCREEN_DATA_STRING .. data_control .. data_text
		
        return sysex
    
    end


		-- List Prepend

	function Screen_List_Prepend(text, column)
        local sysex = ""
        local data_control = " 33"

		local data_text
		if column == 0 then
        	data_text = " 00" .. stringToHex(string.sub(text,1,31)) .. " 00"
		else
        	data_text = " 04" .. stringToHex(string.sub(text,1,31)) .. " 00"
		end
		
        sysex = SCREEN_DATA_STRING .. data_control .. data_text
		
        return sysex
    
    end

	-- List Set Cursor

	function Screen_List_Set_Cursor(current_pos, column)
		local sysex = ""
        local data_control = " 32"

		local data_current_pos
		local dec_current_pos = current_pos
		local msb_current_pos = math.floor(dec_current_pos / 256)
		local lsb_current_pos = dec_current_pos % 256

		if column == 0 then
        	data_current_pos = " 03 " .. string.format("%02x %02x",msb_current_pos,lsb_current_pos) .. " 00"
		else
        	data_current_pos = " 07 " .. string.format("%02x %02x",msb_current_pos,lsb_current_pos) .. " 00"
		end
		
        sysex = SCREEN_DATA_STRING .. data_control .. data_current_pos
		
        return sysex
	end





	
	function create_ID_to_HW_IDs()
		for index=1, len(ENCODER_ID) do
			new_key = ENCODER_ID[index]
			new_value = ENCODER_HW_ID[index]
			ID_TO_HW_ID[new_key] = new_value
		end
	
		for index=1, len(FADER_ID) do
			new_key = FADER_ID[index]
			new_value = FADER_HW_ID[index]
			ID_TO_HW_ID[new_key] = new_value
		end
	
	
	end