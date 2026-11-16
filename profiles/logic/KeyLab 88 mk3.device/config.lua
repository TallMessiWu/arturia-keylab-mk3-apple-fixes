--- Surface:	KeyLab 88 mk3
--- Developer:	Farès MEZDOUR
--- Version:	1.4

--- Copyright (c) 2023 Farès MEZDOUR

-- MIDI PORT

MIDI_IN = 'KeyLab 88 mk3 DAW'
MIDI_OUT = 'KeyLab 88 mk3 DAW'


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

	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x0f,0x0D,0x0D,0x0D,0x00,0xF7, -- Save
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x0e,0x0D,0x0D,0x0D,0x00,0xF7, -- Quantize
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x0d,0x0D,0x0D,0x0D,0x00,0xF7, -- Undo
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x0c,0x0D,0x0D,0x0D,0x00,0xF7, -- Redo

	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x09,0x0D,0x0D,0x0D,0x00,0xF7, -- Rewind
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x0a,0x0D,0x0D,0x0D,0x00,0xF7, -- FF
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x04,0x0D,0x0D,0x0D,0x00,0xF7, -- Tap Tempo

	-- -- PADS LED
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x52,0x03,0x0D,0x0D,0x00,0xF7,
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

	
	-- LEDs Release
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x24,0x02,0x00,0x00,0xF7, -- Save
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x23,0x02,0x00,0x00,0xF7, -- Quantize
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x22,0x02,0x00,0x00,0xF7, -- Undo
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x21,0x02,0x00,0x00,0xF7, -- Redo
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x1E,0x02,0x00,0x00,0xF7, -- Rewind
	0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x00,0x1F,0x02,0x00,0x00,0xF7, -- FF
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
RED = {127, 0, 0}
GREY = {25, 44, 66}
GOLD = {80, 80, 0}
BLUE_AL = {0, 108, 122}
TRACK_COLOR = WHITE

-- Transport Status

-- IDs

TRANSPORT_ID = {40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51}
ENCODER_ID = {5, 6, 7, 8, 9, 10, 11, 12, 13}
FADER_ID = {14, 15, 16, 17, 18, 19, 20, 21, 22}
TRACK_ID = {55, 56, 57, 58, 59}
CONTEXT_ID = {60, 61, 62, 63}

TRANSPORT_HW_ID = {20, 21, 22, 23, 24, 25, 26, 27, 41, 42, 43, 44}
ENCODER_HW_ID = {
			91, 92, 94, 95, 96, 97, 102, 103, 104,
			8, 9, 10, 11, 12, 13, 14, 15, 38
			}
FADER_HW_ID = {
			105, 106, 107, 108, 109, 110, 111, 112, 113,
			28, 29, 30, 31, 33, 34, 35, 36, 37,
			}
CONTEXT_HW_ID = {40, 45, 46, 47, 48, 49, 50, 51, 52}

ID_TO_HW_ID = {}

-- Param global variables

G_TIMEOUT = 1000
L_VALUE = nil
L_PARAM_NAME = nil
L_CENTERED_VALUE = nil
L_MIN_VALUE = nil
L_MAX_VALUE = nil
L_HW_VALUE = 1
L_HW_CONTROL_ID = 1
PARAM_STATUS = {LAST_VALUE_NUMBER, LAST_CONTROL_ID,L_CENTERED_VALUE, L_MIN_VALUE, L_MAX_VALUE, L_HW_VALUE, L_HW_CONTROL_ID}
line1 = ""
line2 = ""
track_name = ""
device_name = ""
MIDI_IN = false
DEC_VALUE = 0
TOUCH_FLAG = 0

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

Encoder_1_Param = ""
Encoder_2_Param = ""
Encoder_3_Param = ""
Encoder_4_Param = ""
Encoder_5_Param = ""
Encoder_6_Param = ""
Encoder_7_Param = ""
Encoder_8_Param = ""
Encoder_9_Param = ""

Farder_1_Param = ""
Farder_2_Param = ""
Farder_3_Param = ""
Farder_4_Param = ""
Farder_5_Param = ""
Farder_6_Param = ""
Farder_7_Param = ""
Farder_8_Param = ""
Farder_9_Param = ""

Encoder_1_Value = ""
Encoder_2_Value = ""
Encoder_3_Value = ""
Encoder_4_Value = ""
Encoder_5_Value = ""
Encoder_6_Value = ""
Encoder_7_Value = ""
Encoder_8_Value = ""
Encoder_9_Value = ""

Fader_1_Value = ""
Fader_2_Value = ""
Fader_3_Value = ""
Fader_4_Value = ""
Fader_5_Value = ""
Fader_6_Value = ""
Fader_7_Value = ""
Fader_8_Value = ""
Fader_9_Value = ""

Encoder_1_Widget = 0
Encoder_2_Widget = 0
Encoder_3_Widget = 0
Encoder_4_Widget = 0
Encoder_5_Widget = 0
Encoder_6_Widget = 0
Encoder_7_Widget = 0
Encoder_8_Widget = 0
Encoder_9_Widget = 0

Fader_1_Widget = 0
Fader_2_Widget = 0
Fader_3_Widget = 0
Fader_4_Widget = 0
Fader_5_Widget = 0
Fader_6_Widget = 0
Fader_7_Widget = 0
Fader_8_Widget = 0
Fader_9_Widget = 0

Encoder_1_is_touched = false
Encoder_2_is_touched = false
Encoder_3_is_touched = false
Encoder_4_is_touched = false
Encoder_5_is_touched = false
Encoder_6_is_touched = false
Encoder_7_is_touched = false
Encoder_8_is_touched = false
Encoder_9_is_touched = false

Fader_1_is_touched = false
Fader_2_is_touched = false
Fader_3_is_touched = false
Fader_4_is_touched = false
Fader_5_is_touched = false
Fader_6_is_touched = false
Fader_7_is_touched = false
Fader_8_is_touched = false
Fader_9_is_touched = false




-- Screen Global variable

SCREEN_DATA_STRING = " 00 02 04"

function controller_initialize(applicationName, deviceNewlyDetected)
	local msg = {}

	-- create_ID_to_HW_IDs()

	local S_connection = SetCenterPage(31, applicationName, 1, WHITE, "Connected", 1, WHITE, 0, 73)

	table.insert(msg, CONNEXION_DAW)

	table.insert(msg, S_INIT_MESSAGES)
	table.insert(msg, NRPN_TOUCH_ON)
	table.insert(msg, NRPN_CLICK_ON)
	table.insert(msg, S_connection)

	return { midi = msg }

end

function controller_finalize()

	local msg = {}

	table.insert(msg, NRPN_TOUCH_OFF)
	table.insert(msg, NRPN_CLICK_OFF)
	table.insert(msg, S_DEINIT_MESSAGES)
	table.insert(msg, DECONNEXION_DAW)


	return { midi = msg }

end




function controller_midi_in(midiEvent, portName)

	
	print("MIDI MESSAGE : ", midiEvent[0], midiEvent[1], midiEvent[2])

	MIDI_STATUS = midiEvent[0]
	MIDI_DATA1 = midiEvent[1]
	MIDI_DATA2 = midiEvent[2]

	if table.contains({0x80,0x89,0x90,0x99}, midiEvent[0]) then
		ID_TYPE = "NOTEON/NOTEOFF"
	elseif table.contains({0xD0}, MIDI_STATUS) then
		ID_TYPE = "AFTERTOUCH"
	elseif table.contains({0xB0}, MIDI_STATUS) then
		MIDI_IN = true
		if table.contains(ENCODER_HW_ID, MIDI_DATA1) then
			ID_TYPE = "ENCODER"
		elseif table.contains(FADER_HW_ID, MIDI_DATA1) then
			ID_TYPE = "FADER"
		elseif table.contains(TRANSPORT_HW_ID, MIDI_DATA1) then
			ID_TYPE = "TRANSPORT"
		else
			ID_TYPE = "OTHER"
		end
	end
	

	print("MIDI IN TYPE: ", ID_TYPE)

	return



end

-- function controller_midi_out(midiEvent, name, valusString, color, needsMomentaryFeedback)

-- 	if MIDI_IN == true then

-- 		print("Ca passe bordel)")
		
-- 	end

-- end

-- 	MIDI_IN = false

-- 	return {midi = msg}
	
-- end

-- function CSRefresh() -- Called for Screen Idle State

-- 	local msg = {}

-- 	local S_Idle = SetCenterPage(13, track_name, 1, TRACK_COLOR, device_name, 1, WHITE, 0, 0)

-- 	table.insert(msg, S_Idle)

-- 	return { midi = msg }

-- end


function CSLongLabel(controlID, pText, textLength)
	print("CSLONGLABEL", controlID, pText)

	local msg = {}


		if controlID == 5 then
			Encoder_1_Param = pText
			S_SCREEN_PARAM = SetCenterPage(28, Encoder_1_Param, 1, BLUE_AL, Encoder_1_Value, 1, WHITE, Encoder_1_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 6 then
			Encoder_2_Param = pText
			S_SCREEN_PARAM = SetCenterPage(28, Encoder_2_Param, 1, BLUE_AL, Encoder_2_Value, 1, WHITE, Encoder_2_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 7 then
			Encoder_3_Param = pText
			S_SCREEN_PARAM = SetCenterPage(28, Encoder_3_Param, 1, BLUE_AL, Encoder_3_Value, 1, WHITE, Encoder_3_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 8 then
			Encoder_4_Param = pText
			S_SCREEN_PARAM = SetCenterPage(28, Encoder_4_Param, 1, BLUE_AL, Encoder_4_Value, 1, WHITE, Encoder_4_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 9 then
			Encoder_5_Param = pText
			S_SCREEN_PARAM = SetCenterPage(28, Encoder_5_Param, 1, BLUE_AL, Encoder_5_Value, 1, WHITE, Encoder_5_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 10 then
			Encoder_6_Param = pText
			S_SCREEN_PARAM = SetCenterPage(28, Encoder_6_Param, 1, BLUE_AL, Encoder_6_Value, 1, WHITE, Encoder_6_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 11 then
			Encoder_7_Param = pText
			S_SCREEN_PARAM = SetCenterPage(28, Encoder_7_Param, 1, BLUE_AL, Encoder_7_Value, 1, WHITE, Encoder_7_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 12 then
			Encoder_8_Param = pText
			S_SCREEN_PARAM = SetCenterPage(28, Encoder_8_Param, 1, BLUE_AL, Encoder_8_Value, 1, WHITE, Encoder_8_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 13 then
			Encoder_9_Param = pText
			S_SCREEN_PARAM = SetCenterPage(28, Encoder_9_Param, 1, BLUE_AL, Encoder_9_Value, 1, WHITE, Encoder_9_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 14 then
			Fader_1_Param = pText
			S_SCREEN_PARAM = SetCenterPage(29, Fader_1_Param, 1, BLUE_AL, Fader_1_Value, 1, WHITE, Fader_1_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 15 then
			Fader_2_Param = pText
			S_SCREEN_PARAM = SetCenterPage(29, Fader_2_Param, 1, BLUE_AL, Fader_2_Value, 1, WHITE, Fader_2_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 16 then
			Fader_3_Param = pText
			S_SCREEN_PARAM = SetCenterPage(29, Fader_3_Param, 1, BLUE_AL, Fader_3_Value, 1, WHITE, Fader_3_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 17 then
			Fader_4_Param = pText
			S_SCREEN_PARAM = SetCenterPage(29, Fader_4_Param, 1, BLUE_AL, Fader_4_Value, 1, WHITE, Fader_4_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 18 then
			Fader_5_Param = pText
			S_SCREEN_PARAM = SetCenterPage(29, Fader_5_Param, 1, BLUE_AL, Fader_5_Value, 1, WHITE, Fader_5_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 19 then
			Fader_6_Param = pText
			S_SCREEN_PARAM = SetCenterPage(29, Fader_6_Param, 1, BLUE_AL, Fader_6_Value, 1, WHITE, Fader_6_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 20 then
			Fader_7_Param = pText
			S_SCREEN_PARAM = SetCenterPage(29, Fader_7_Param, 1, BLUE_AL, Fader_7_Value, 1, WHITE, Fader_7_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 21 then
			Fader_8_Param = pText
			S_SCREEN_PARAM = SetCenterPage(29, Fader_8_Param, 1, BLUE_AL, Fader_8_Value, 1, WHITE, Fader_8_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end

		if controlID == 22 then
			Fader_9_Param = pText
			S_SCREEN_PARAM = SetCenterPage(29, Fader_9_Param, 1, BLUE_AL, Fader_9_Value, 1, WHITE, Fader_9_Widget, 0)
			table.insert(msg, S_SCREEN_PARAM)
		end




	MIDI_IN = false

	return { midi = msg }

end


function CSFeedback(controlID, current_value, minValue, maxValue, nSubSequentControls, centerValue, assignment)
	print("CSFEEDBACK", controlID, current_value)

	
	local msg = {}
	-- Track color global
	if controlID == 69 then
		r, g, b = IntegerToRGB(current_value)
		local new_r = rshift(r, 1)
		local new_g = rshift(g, 1)
		local new_b = rshift(b, 1)
		TRACK_COLOR = {new_r , new_g, new_b}
	end

	if current_value ~= "" then
		DEC_VALUE = round(127*current_value/maxValue)
	end


	if controlID == 5 then
			Encoder_1_Widget = DEC_VALUE
	end

	if controlID == 6 then
			Encoder_2_Widget = DEC_VALUE
	end

	if controlID == 7 then
			Encoder_3_Widget = DEC_VALUE
	end


	if controlID == 8 then
			Encoder_4_Widget = DEC_VALUE
	end


	if controlID == 9 then
			Encoder_5_Widget = DEC_VALUE
	end


	if controlID == 10 then
			Encoder_6_Widget = DEC_VALUE
	end


	if controlID == 11 then
			Encoder_7_Widget = DEC_VALUE
	end


	if controlID == 12 then
			Encoder_8_Widget = DEC_VALUE
	end


	if controlID == 13 then
			Encoder_9_Widget = DEC_VALUE
	end


	if controlID == 14 then
			Fader_1_Widget = DEC_VALUE
	end


	if controlID == 15 then
			Fader_2_Widget = DEC_VALUE
	end


	if controlID == 16 then
			Fader_3_Widget = DEC_VALUE
	end


	if controlID == 17 then
			Fader_4_Widget = DEC_VALUE
	end


	if controlID == 18 then
			Fader_5_Widget = DEC_VALUE
	end


	if controlID == 19 then
			Fader_6_Widget = DEC_VALUE
	end


	if controlID == 20 then
			Fader_7_Widget = DEC_VALUE
	end


	if controlID == 21 then
			Fader_8_Widget = DEC_VALUE
	end

	if controlID == 22 then
			Fader_9_Widget = DEC_VALUE
	end


	if table.contains(TRANSPORT_ID, controlID) then
		--STOP
		if controlID == 40 then
			S_STOP_LED = {}
			if current_value == 1 then
				S_STOP_LED = {0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x07,0x7F,0x7F,0x7F,0x00,0xF7}
				table.insert(msg, S_STOP_LED)
			else 
				S_STOP_LED = {0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x07,0x0D,0x0D,0x0D,0x00,0xF7}
				table.insert(msg, S_STOP_LED)
			end
		
		-- PLAY
		elseif controlID == 41 then
			S_PLAY_LED = {}
			if current_value == 1 then
				S_PLAY_LED = {0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x06,0x00,0x7F,0x00,0x00,0xF7}
				table.insert(msg, S_PLAY_LED)
			else 
				S_PLAY_LED = {0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x06,0x00,0x0D,0x00,0x00,0xF7}
				table.insert(msg, S_PLAY_LED)
			end

		-- REC
		elseif controlID == 42 then
			S_REC_LED = {}
			if current_value == 1 then
				S_REC_LED = {0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x05,0x7F,0x00,0x00,0x00,0xF7}
				table.insert(msg, S_REC_LED)
			else
				S_REC_LED = {0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x05,0x0D,0x00,0x00,0x00,0xF7}
				table.insert(msg, S_REC_LED)
			end

		-- TAP TEMPO
		elseif controlID == 43 then
			S_TAP_TEMPO_LED = {}
			if current_value == 1 then
				S_TEMPO_LED = {0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x04,0x7F,0x7F,0x7F,0x00,0xF7}
				table.insert(msg, S_TAP_TEMPO_LED)
			else 
				S_TEMPO_LED = {0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x04,0x0D,0x0D,0x0D,0x00,0xF7}
				table.insert(msg, S_TAP_TEMPO_LED)
			end

		-- LOOP
		elseif controlID == 44 then
			S_LOOP_LED = {}
			if current_value == 1 then
				S_LOOP_LED = {0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x08,0x7F,0x40,0x00,0x00,0xF7}
				table.insert(msg, S_LOOP_LED)
			else 
				S_LOOP_LED = {0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x08,0x0D,0x07,0x00,0x00,0xF7}
				table.insert(msg, S_LOOP_LED)
			end
		
		-- METRONOME
		elseif controlID == 47 then
			S_METRONOME_LED = {}
			if current_value == 1 then
				S_METRONOME_LED = {0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x0B,0x7F,0x7F,0x7F,0x00,0xF7}
				table.insert(msg, S_METRONOME_LED)
			else 
				S_METRONOME_LED = {0xF0,0x00,0x20,0x6B,0x7F,0x42,0x00,0x02,0x03,0x0B,0x0D,0x0D,0x0D,0x00,0xF7}
				table.insert(msg, S_METRONOME_LED)
			end
		end

		--CONTEXT BUTTONS
	elseif table.contains({60,61,62,63,64,65,66,67}, controlID) then

		-- CONTEXT 1
		if controlID == 60 then
			print("Plugin",current_value)

			local S_Feedback_f1 = {}

			if current_value == 1 then
				S_Feedback_f1 = SetButton(1, 6, 1, nil, nil, nil, 'PLUGIN', nil, nil)

			elseif current_value == 0 then
				S_Feedback_f1 = SetButton(1, 4, 1, nil, nil, nil, 'PLUGIN', nil, nil)
		
			end

			table.insert(msg, S_Feedback_f1)

		end

		-- CONTEXT 2
		if controlID == 61 then
			print("Mixer", current_value)
			local S_Feedback_f2 = {}
			
			if current_value == 1 then
				S_Feedback_f2 = SetButton(2, 4, 1, nil, nil, nil, 'MIXER', nil, nil)

			elseif current_value == 0 then
				S_Feedback_f2 = SetButton(2, 6, 1, nil, nil, nil, 'MIXER', nil, nil)
		
			end

			table.insert(msg, S_Feedback_f2)

		end

		-- CONTEXT 3
		if controlID == 62 then

			local S_Feedback_f3 = {}

			if current_value == 1 then
				S_Feedback_f3 = SetButton(3, 0, 1, nil, nil, nil, nil, nil, nil)

			elseif current_value == 0 then
				S_Feedback_f3 = SetButton(3, 0, 1, nil, nil, nil, nil, nil, nil)
		
			end

			table.insert(msg, S_Feedback_f3)

		end

		-- CONTEXT 4
		if controlID == 63 then

			local S_Feedback_f4 = {}

			if current_value == 1 then
				S_Feedback_f4 = SetButton(4, 7, 1, nil, nil, nil, nil, nil, nil)

			elseif current_value == 0 then
				S_Feedback_f4 = SetButton(4, 4, 1, nil, nil, nil, nil, nil, nil)
		
			end

			table.insert(msg, S_Feedback_f4)

		end

		-- CONTEXT 5
		if controlID == 64 then

			local S_Feedback_f5 = {}

			if current_value == 1 then
				S_Feedback_f5 = SetButton(5, 11, 1, 1, 10, GREY, nil, nil, nil)

			elseif current_value == 0 then
				S_Feedback_f5 = SetButton(5, 10, 1, 1, 10, WHITE, nil, nil, nil)
		
			end

			table.insert(msg, S_Feedback_f5)

		end

		-- CONTEXT 6
		if controlID == 65 then

			local S_Feedback_f6 = {}

			if current_value == 1 then
				S_Feedback_f6 = SetButton(6, 11, 1, 1, 13, GOLD, nil, nil, nil)

			elseif current_value == 0 then
				S_Feedback_f6 = SetButton(6, 10, 1, 1, 13, WHITE, nil, nil, nil)
		
			end

			table.insert(msg, S_Feedback_f6)

		end

		-- CONTEXT 7
		if controlID == 66 then

			local S_Feedback_f7 = {}

			if current_value == 1 then
				S_Feedback_f7 = SetButton(7, 0, nil, nil, nil, nil, nil, nil, nil)

			elseif current_value == 0 then
				S_Feedback_f7 = SetButton(7, 0, nil, nil, nil, nil, nil, nil, nil)
		
			end

			table.insert(msg, S_Feedback_f7)

		end

		-- CONTEXT 8
		if controlID == 67 then

			local S_Feedback_f8 = {}

			if current_value == 1 then
				S_Feedback_f8 = SetButton(8, 3, 1, 1, nil, RED, 'R', nil, nil)

			elseif current_value == 0 then
				S_Feedback_f8 = SetButton(8, 1, 1, 1, nil, WHITE, 'R', nil, nil)
		
			end

			table.insert(msg, S_Feedback_f8)

		end

	end

		
	local S_Feedback_f = SetFooterPage()
		if CONTEXT_HW_IS_PRESSED then 
			table.insert(msg, S_Feedback_f)
		end

	
	return { midi = msg, ret = 16 }

end



function CSFeedbackText(controlID, pText, textLength)
	-- print("CSFEEDBACKTEXT", controlID, pText, textLength)

	local msg = {}



	if controlID == 5 then
		if string.sub(pText, 1, 1) ~= " " then
			Encoder_1_Value = pText
			if MIDI_DATA1 == ENCODER_HW_ID[1] then
				S_SCREEN_ENCODER_1 = SetCenterPage(28, Encoder_1_Param, 1, BLUE_AL, Encoder_1_Value, 1, WHITE, Encoder_1_Widget, 0)
				table.insert(msg, S_SCREEN_ENCODER_1)
			end
		end

	elseif controlID == 6 then
		if string.sub(pText, 1, 1) ~= " " then
			Encoder_2_Value = pText
			if MIDI_DATA1 == ENCODER_HW_ID[2] then
				
				S_SCREEN_ENCODER_2 = SetCenterPage(28, Encoder_2_Param, 1, BLUE_AL, Encoder_2_Value, 1, WHITE, Encoder_2_Widget, 0)
				table.insert(msg, S_SCREEN_ENCODER_2)
			end
		end

	elseif controlID == 7 then
		if string.sub(pText, 1, 1) ~= " " then
			Encoder_3_Value = pText
			if MIDI_DATA1 == ENCODER_HW_ID[3] then
				S_SCREEN_ENCODER_3 = SetCenterPage(28, Encoder_3_Param, 1, BLUE_AL, Encoder_3_Value, 1, WHITE, Encoder_3_Widget, 0)
				table.insert(msg, S_SCREEN_ENCODER_3)
			end
		end

	elseif controlID == 8 then
		if string.sub(pText, 1, 1) ~= " " then
			Encoder_4_Value = pText
			if MIDI_DATA1 == ENCODER_HW_ID[4] then
				S_SCREEN_ENCODER_4 = SetCenterPage(28, Encoder_4_Param, 1, BLUE_AL, Encoder_4_Value, 1, WHITE, Encoder_4_Widget, 0)
				table.insert(msg, S_SCREEN_ENCODER_4)
			end
		end

	elseif controlID == 9 then
		if string.sub(pText, 1, 1) ~= " " then
			Encoder_5_Value = pText
			if MIDI_DATA1 == ENCODER_HW_ID[5] then
				S_SCREEN_ENCODER_5 = SetCenterPage(28, Encoder_5_Param, 1, BLUE_AL, Encoder_5_Value, 1, WHITE, Encoder_5_Widget, 0)
				table.insert(msg, S_SCREEN_ENCODER_5)
			end
		end

	elseif controlID == 10 then
		if string.sub(pText, 1, 1) ~= " " then
			Encoder_6_Value = pText
			if MIDI_DATA1 == ENCODER_HW_ID[6] then
				S_SCREEN_ENCODER_6 = SetCenterPage(28, Encoder_6_Param, 1, BLUE_AL, Encoder_6_Value, 1, WHITE, Encoder_6_Widget, 0)
				table.insert(msg, S_SCREEN_ENCODER_6)
			end
		end

	elseif controlID == 11 then
		if string.sub(pText, 1, 1) ~= " " then
			Encoder_7_Value = pText
			if MIDI_DATA1 == ENCODER_HW_ID[7] then
				S_SCREEN_ENCODER_7 = SetCenterPage(28, Encoder_7_Param, 1, BLUE_AL, Encoder_7_Value, 1, WHITE, Encoder_7_Widget, 0)
				table.insert(msg, S_SCREEN_ENCODER_7)
			end
		end

	elseif controlID == 12 then
		if string.sub(pText, 1, 1) ~= " " then
			Encoder_8_Value = pText
			if MIDI_DATA1 == ENCODER_HW_ID[8] then
				S_SCREEN_ENCODER_8 = SetCenterPage(28, Encoder_8_Param, 1, BLUE_AL, Encoder_8_Value, 1, WHITE, Encoder_8_Widget, 0)
				table.insert(msg, S_SCREEN_ENCODER_8)
			end
		end

	elseif controlID == 13 then
		if string.sub(pText, 1, 1) ~= " " then
			Encoder_9_Value = pText
			if MIDI_DATA1 == ENCODER_HW_ID[9] then
				S_SCREEN_ENCODER_9 = SetCenterPage(28, Encoder_9_Param, 1, BLUE_AL, Encoder_9_Value, 1, WHITE, Encoder_9_Widget, 0)
				table.insert(msg, S_SCREEN_ENCODER_9)
			end
		end

	elseif controlID == 14 then
		if string.sub(pText, 1, 1) ~= " " then
			Fader_1_Value = pText
			if MIDI_DATA1 == FADER_HW_ID[1] then
				S_SCREEN_FADER_1 = SetCenterPage(29, Fader_1_Param, 1, BLUE_AL, Fader_1_Value, 1, WHITE, Fader_1_Widget, 0)
				table.insert(msg, S_SCREEN_FADER_1)
			end
		end

	elseif controlID == 15 then
		if string.sub(pText, 1, 1) ~= " " then
			Fader_2_Value = pText
			if MIDI_DATA1 == FADER_HW_ID[2] then
				S_SCREEN_FADER_2 = SetCenterPage(29, Fader_2_Param, 1, BLUE_AL, Fader_2_Value, 1, WHITE, Fader_2_Widget, 0)
				table.insert(msg, S_SCREEN_FADER_2)
			end
		end

	elseif controlID == 16 then
		if string.sub(pText, 1, 1) ~= " " then
			Fader_3_Value = pText
			if MIDI_DATA1 == FADER_HW_ID[3] then
				S_SCREEN_FADER_3 = SetCenterPage(29, Fader_3_Param, 1, BLUE_AL, Fader_3_Value, 1, WHITE, Fader_3_Widget, 0)
				table.insert(msg, S_SCREEN_FADER_3)
			end
		end

	elseif controlID == 17 then
		if string.sub(pText, 1, 1) ~= " " then
			Fader_4_Value = pText
			if MIDI_DATA1 == FADER_HW_ID[4] then
				S_SCREEN_FADER_4 = SetCenterPage(29, Fader_4_Param, 1, BLUE_AL, Fader_4_Value, 1, WHITE, Fader_4_Widget, 0)
				table.insert(msg, S_SCREEN_FADER_4)
			end
		end

	elseif controlID == 18 then
		if string.sub(pText, 1, 1) ~= " " then
			Fader_5_Value = pText
			if MIDI_DATA1 == FADER_HW_ID[5] then
				S_SCREEN_FADER_5 = SetCenterPage(29, Fader_5_Param, 1, BLUE_AL, Fader_5_Value, 1, WHITE, Fader_5_Widget, 0)
				table.insert(msg, S_SCREEN_FADER_5)
			end
		end

	elseif controlID == 19 then
		if string.sub(pText, 1, 1) ~= " " then
			Fader_6_Value = pText
			if MIDI_DATA1 == FADER_HW_ID[6] then
				S_SCREEN_FADER_6 = SetCenterPage(29, Fader_6_Param, 1, BLUE_AL, Fader_6_Value, 1, WHITE, Fader_6_Widget, 0)
				table.insert(msg, S_SCREEN_FADER_6)
			end
		end

	elseif controlID == 20 then
		if string.sub(pText, 1, 1) ~= " " then
			Fader_7_Value = pText
			if MIDI_DATA1 == FADER_HW_ID[7] then
				S_SCREEN_FADER_7 = SetCenterPage(29, Fader_7_Param, 1, BLUE_AL, Fader_7_Value, 1, WHITE, Fader_7_Widget, 0)
				table.insert(msg, S_SCREEN_FADER_7)
			end
		end

	elseif controlID == 21 then
		if string.sub(pText, 1, 1) ~= " " then
			Fader_8_Value = pText
			if MIDI_DATA1 == FADER_HW_ID[8] then
				S_SCREEN_FADER_8 = SetCenterPage(29, Fader_8_Param, 1, BLUE_AL, Fader_8_Value, 1, WHITE, Fader_8_Widget, 0)
				table.insert(msg, S_SCREEN_FADER_8)
			end
		end

	elseif controlID == 22 then
		if string.sub(pText, 1, 1) ~= " " then
			Fader_9_Value = pText
			if MIDI_DATA1 == FADER_HW_ID[9] then
				S_SCREEN_FADER_9 = SetCenterPage(29, Fader_9_Param, 1, BLUE_AL, Fader_9_Value, 1, WHITE, Fader_9_Widget, 0)
				table.insert(msg, S_SCREEN_FADER_9)
			end
		end

	end


	
	if table.contains(TRACK_ID, controlID) then
		

		-- Track Name
		if controlID == 55 then 
			if string.sub(pText, 1, 1) ~= " " then
				line1 = pText
				line1_refresh = line1
			end
		
		-- Device Name
		elseif controlID == 56 then
			print('--'..pText..'--') 
			if string.sub(pText, 1, 1) ~= " " then
				line2 = pText
				line2_refresh = line2
			end
			
		end

		local S_Idle = SetCenterPage(13, line1_refresh, 1, TRACK_COLOR, line2_refresh, 1, WHITE, 0, 0)
		table.insert(msg, S_Idle)

	end


	return { midi = msg }

end




-- Control IDs. These are retrieved from the control names. Use these IDs for comparison with controlID



controls = {

	{name = 'Pitch Bend', controlID = 1, objectType = 'Wheel', midi={0xE0,MIDI_MSB,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'Modulation', controlID = 2, objectType = 'Wheel', midi={0xB0,0x01,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'Keyboard', controlID = 3, objectType = 'Keyboard', midiType = 'Keyboard', startKey = 36, numberKeys = 71, midi={0x90,MIDI_Wildcard,MIDI_Wildcard}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'Sustain Pedal', controlID = 4, objectType = 'Sustain Pedal', midiType = 'Momentary', midi={0xB0,0x40,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT},

	{name = 'encoder1', controlID = 5, objectType = 'Knob', midi={0xB0,0x5B,MIDI_LSB}, midiTouched={0xB0,0x63,0x00,0xB0,0x62,0x08,0xB0,0x06,0x7F,0xB0,0x26, MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'encoder2', controlID = 6, objectType = 'Knob', midi={0xB0,0x5C,MIDI_LSB}, midiTouched={0xB0,0x63,0x00,0xB0,0x62,0x09,0xB0,0x06,0x7F,0xB0,0x26, MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'encoder3', controlID = 7, objectType = 'Knob', midi={0xB0,0x5E,MIDI_LSB}, midiTouched={0xB0,0x63,0x00,0xB0,0x62,0x0A,0xB0,0x06,0x7F,0xB0,0x26, MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'encoder4', controlID = 8, objectType = 'Knob', midi={0xB0,0x5F,MIDI_LSB}, midiTouched={0xB0,0x63,0x00,0xB0,0x62,0x0B,0xB0,0x06,0x7F,0xB0,0x26, MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'encoder5', controlID = 9, objectType = 'Knob', midi={0xB0,0x60,MIDI_LSB}, midiTouched={0xB0,0x63,0x00,0xB0,0x62,0x0C,0xB0,0x06,0x7F,0xB0,0x26, MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'encoder6', controlID = 10, objectType = 'Knob', midi={0xB0,0x61,MIDI_LSB}, midiTouched={0xB0,0x63,0x00,0xB0,0x62,0x0D,0xB0,0x06,0x7F,0xB0,0x26, MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'encoder7', controlID = 11, objectType = 'Knob', midi={0xB0,0x66,MIDI_LSB}, midiTouched={0xB0,0x63,0x00,0xB0,0x62,0x0E,0xB0,0x06,0x7F,0xB0,0x26, MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'encoder8', controlID = 12, objectType = 'Knob', midi={0xB0,0x67,MIDI_LSB}, midiTouched={0xB0,0x63,0x00,0xB0,0x62,0x0F,0xB0,0x06,0x7F,0xB0,0x26, MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'encoder9', controlID = 13, objectType = 'Knob', midi={0xB0,0x68,MIDI_LSB}, midiTouched={0xB0,0x63,0x00,0xB0,0x62,0x26,0xB0,0x06,0x7F,0xB0,0x26, MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},

	{name = 'fader1', controlID = 14, objectType = 'VFader', midi={0xB0,0x69,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'fader2', controlID = 15, objectType = 'VFader', midi={0xB0,0x6A,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'fader3', controlID = 16, objectType = 'VFader', midi={0xB0,0x6B,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'fader4', controlID = 17, objectType = 'VFader', midi={0xB0,0x6C,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'fader5', controlID = 18, objectType = 'VFader', midi={0xB0,0x6D,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'fader6', controlID = 19, objectType = 'VFader', midi={0xB0,0x6E,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'fader7', controlID = 20, objectType = 'VFader', midi={0xB0,0x6F,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'fader8', controlID = 21, objectType = 'VFader', midi={0xB0,0x70,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'fader9', controlID = 22, objectType = 'VFader', midi={0xB0,0x71,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},

	{name = 'Pad 1', controlID = 23, objectType = 'Drumpad', midi={0x99,0x24,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT}, 
	{name = 'Pad 2', controlID = 24, objectType = 'Drumpad', midi={0x99,0x25,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT}, 
	{name = 'Pad 3', controlID = 25, objectType = 'Drumpad', midi={0x99,0x26,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT}, 
	{name = 'Pad 4', controlID = 26, objectType = 'Drumpad', midi={0x99,0x27,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT}, 
	{name= ' Pad 5', controlID = 27, objectType = 'Drumpad', midi={0x99,0x28,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'Pad 6', controlID = 28, objectType = 'Drumpad', midi={0x99,0x29,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'Pad 7', controlID = 29, objectType = 'Drumpad', midi={0x99,0x2A,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'Pad 8', controlID = 30, objectType = 'Drumpad', midi={0x99,0x2B,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'Pad 9', controlID = 31, objectType = 'Drumpad', midi={0x99,0x2C,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT}, 
	{name = 'Pad 10', controlID = 32, objectType = 'Drumpad', midi={0x99,0x2D,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT}, 
	{name = 'Pad 11', controlID = 33, objectType = 'Drumpad', midi={0x99,0x2E,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT}, 
	{name = 'Pad 12', controlID = 34, objectType = 'Drumpad', midi={0x99,0x2F,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT}, 
	-- {name = 'Pad 13', controlID = 35, objectType = 'Drumpad', midi={0x99,0x30,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT}, 
	-- {name = 'Pad 14', controlID = 36, objectType = 'Drumpad', midi={0x99,0x31,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT}, 
	-- {name = 'Pad 15', controlID = 37, objectType = 'Drumpad', midi={0x99,0x32,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT},
	-- {name = 'Pad 16', controlID = 38, objectType = 'Drumpad', midi={0x99,0x33,MIDI_LSB}, inport = MIDI_IN, outport = MIDI_OUT},

	{name = 'STOP', controlID = 40, objectType = 'Button', midi={0xB0,0x14,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'PLAY', controlID = 41, objectType = 'Button', midi={0xB0,0x15,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'RECORD', controlID = 42, objectType = 'Button', midi={0xB0,0x16,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'TAP', controlID = 43, objectType = 'Button', midi={0xB0,0x17,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'LOOP', controlID = 44, objectType = 'Button', midi={0xB0,0x18,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'REWIND', controlID = 45, objectType = 'Button', midi={0xB0,0x19,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'FASTFORWARD', controlID = 46, objectType = 'Button', midi={0xB0,0x1A,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'METRONOME', controlID = 47, objectType = 'Button', midi={0xB0,0x1B,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'SAVE', controlID = 48, objectType = 'Button', midi={0xB0,0x29,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'QUANTIZE', controlID = 49, objectType = 'Button', midi={0xB0,0x2A,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'UNDO', controlID = 50, objectType = 'Button', midi={0xB0,0x2B,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'REDO', controlID = 51, objectType = 'Button', midi={0xB0,0x2C,MIDI_LSB}, fbType = FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},

	{name = 'trackp', controlID = 52, objectType = 'Button', midi={0xB0,0x74,0x41}, fbType = FB_OFF, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'trackp2', controlID = 72, objectType = 'Button', midi={0xB0,0x74,0x42}, fbType = FB_OFF, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'trackp3', controlID = 82, objectType = 'Button', midi={0xB0,0x74,0x43}, fbType = FB_OFF, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'trackm', controlID = 53, objectType = 'Button', midi={0xB0,0x74,0x3F}, fbType = FB_OFF, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'trackm2', controlID = 73, objectType = 'Button', midi={0xB0,0x74,0x3E}, fbType = FB_OFF, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'trackm3', controlID = 83, objectType = 'Button', midi={0xB0,0x74,0x3D}, fbType = FB_OFF, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'Main Encoder Click', controlID = 54, objectType = 'Button', midi={0xB0,0x63,0x00,0xB0,0x62,0x75,0xB0,0x06,0x7F,0xB0,0x26, MIDI_LSB}, fbType = FB_OFF, inport = MIDI_IN, outport = MIDI_OUT},
	{name = 'Back', controlID = 69, objectType = 'Button', midi={0xB0,0x63,0x00,0xB0,0x62,0x28,0xB0,0x06,0x7F,0xB0,0x26, MIDI_LSB}, fbType = FB_OFF, inport = MIDI_IN, outport = MIDI_OUT},

	{name='Track', controlID = 55, fbType=FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name='Inst', controlID = 56, fbType=FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name='Tempo', controlID = 57, fbType=FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name='Timeline', controlID = 58, fbType=FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name='Arm', controlID = 59, fbType=FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},


	{name='Context1', controlID = 60, objectType = 'Button', midi={0xB0,0x2D,0x7F}, fbType=FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name='Context2', controlID = 61, objectType = 'Button', midi={0xB0,0x2E,0x7F}, fbType=FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name='Context3', controlID = 62, objectType = 'Button', midi={0xB0,0x2F,0x7F}, fbType=FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name='Context4', controlID = 63, objectType = 'Button', midi={0xB0,0x30,0x7F}, fbType=FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name='Context5', controlID = 64, objectType = 'Button', midi={0xB0,0x31,0x7F}, fbType=FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name='Context6', controlID = 65, objectType = 'Button', midi={0xB0,0x32,0x7F}, fbType=FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name='Context7', controlID = 66, objectType = 'Button', midi={0xB0,0x33,0x7F}, fbType=FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},
	{name='Context8', controlID = 67, objectType = 'Button', midi={0xB0,0x34,0x7F}, fbType=FB_TEXTONLY, inport = MIDI_IN, outport = MIDI_OUT},

	{name='Mode Info', controlID = 68, fbType=FB_TEXTONLY},
	{name='Color', controlID = 69},

}

function controller_info()
	return {
		model = 'KeyLab 88 mk3',
		manufacturer = 'Arturia',
		version = 1.0,

		-- device_reply = {0xF0, 0x7E, 0x7F, 0x06, 0x02, 0x00, 0x20, 0x6B, 0x02, 0x00, 0x0A, 0x04, 0x7F, 0x7F, 0x7F, 0x7F, 0xF7},
		copyright = 'Arturia Corp.',

		items =  controls,

		assignments = {

			{control='LOOP', keyCmd=15}, -- Cycle Mode
			{control='REWIND', keyCmd=10}, -- Rewind
			{control='FASTFORWARD', keyCmd=11}, -- FF
			{control='METRONOME', keyCmd=474}, -- Metronome
			{control='STOP', keyCmd=5}, -- Stop
			{control='PLAY', keyCmd=3}, -- Play
			{control='RECORD', keyCmd=7}, -- Record
			{control='TAP', keyCmd=532}, -- Tap

			{control='SAVE', keyCmd=754}, -- Save
			{control='QUANTIZE', keyCmd=110}, -- Quantize
			{control='UNDO', keyCmd=761}, -- Undo,
			{control='REDO', keyCmd=796}, -- Redo

			{control='trackp', keyCmd=1273},
			{control='trackp2', keyCmd=1273},
			{control='trackp3', keyCmd=1273},
			{control='trackm', keyCmd=1272},
			{control='trackm2', keyCmd=1272},
			{control='trackm3', keyCmd=1272},
			{control='Main Encoder Click', keyCmd=2397}, -- Open/Close Instrument Plug-In Window of Focused Track
			{control='Back', keyCmd=1366}, -- close plugin window 1366 -- close window 529

			{control='Track', trackParam=CS_NAME},
			{control='Inst', trackParam=CS_INSTRUMENT},
			{control='Color', trackParam=CS_COLOR},


			{control='Context1', setMode='Device'},
			{control='Context2', setMode='Mixer'},
			{control='Context5', trackParam=CS_MUTE},
			{control='Context6', trackParam=CS_SOLO},
			{control='Context8', trackParam=CS_RECRDY},

			
			
			{zone='Encoders and Faders'},

			{mode='Mixer', shortParamName='Mixer'},
			

			{control='encoder1', trackParam=AUPAN, faderBankTrack=0, valueMode=kAssignRelative, valueFormat=kAssign1sComplement}, -- Changing relative mode of the device
			{control='encoder2', trackParam=AUPAN, faderBankTrack=1, valueMode=kAssignRelative, valueFormat=kAssign1sComplement},
			{control='encoder3', trackParam=AUPAN, faderBankTrack=2, valueMode=kAssignRelative, valueFormat=kAssign1sComplement},
			{control='encoder4', trackParam=AUPAN, faderBankTrack=3, valueMode=kAssignRelative, valueFormat=kAssign1sComplement},
			{control='encoder5', trackParam=AUPAN, faderBankTrack=4, valueMode=kAssignRelative, valueFormat=kAssign1sComplement},
			{control='encoder6', trackParam=AUPAN, faderBankTrack=5, valueMode=kAssignRelative, valueFormat=kAssign1sComplement},
			{control='encoder7', trackParam=AUPAN, faderBankTrack=6, valueMode=kAssignRelative, valueFormat=kAssign1sComplement},
			{control='encoder8', trackParam=AUPAN, faderBankTrack=7, valueMode=kAssignRelative, valueFormat=kAssign1sComplement},
			{control='encoder9', trackParam=AUPAN, valueMode=kAssignRelative, valueFormat=kAssign1sComplement},

			{control='fader1', trackParam=AUVOLUME, faderBankTrack=0},
			{control='fader2', trackParam=AUVOLUME, faderBankTrack=1},
			{control='fader3', trackParam=AUVOLUME, faderBankTrack=2},
			{control='fader4', trackParam=AUVOLUME, faderBankTrack=3},
			{control='fader5', trackParam=AUVOLUME, faderBankTrack=4},
			{control='fader6', trackParam=AUVOLUME, faderBankTrack=5},
			{control='fader7', trackParam=AUVOLUME, faderBankTrack=6},
			{control='fader8', trackParam=AUVOLUME, faderBankTrack=7},
			{control='fader9', trackParam=AUVOLUME},


			{mode='Device', shortParamName='Device'},


			{control='encoder1', trackParam=CS_SMARTCONTROL1, paramOffset=0, valueMode=kAssignRelative, valueFormat=kAssign1sComplement, textFeedback=true},
			{control='encoder2', trackParam=CS_SMARTCONTROL1, paramOffset=1, valueMode=kAssignRelative, valueFormat=kAssign1sComplement, textFeedback=true},
			{control='encoder3', trackParam=CS_SMARTCONTROL1, paramOffset=2, valueMode=kAssignRelative, valueFormat=kAssign1sComplement, textFeedback=true},
			{control='encoder4', trackParam=CS_SMARTCONTROL1, paramOffset=3, valueMode=kAssignRelative, valueFormat=kAssign1sComplement, textFeedback=true},
			{control='encoder5', trackParam=CS_SMARTCONTROL1, paramOffset=4, valueMode=kAssignRelative, valueFormat=kAssign1sComplement, textFeedback=true},
			{control='encoder6', trackParam=CS_SMARTCONTROL1, paramOffset=5, valueMode=kAssignRelative, valueFormat=kAssign1sComplement, textFeedback=true},
			{control='encoder7', trackParam=CS_SMARTCONTROL1, paramOffset=6, valueMode=kAssignRelative, valueFormat=kAssign1sComplement, textFeedback=true},
			{control='encoder8', trackParam=CS_SMARTCONTROL1, paramOffset=7, valueMode=kAssignRelative, valueFormat=kAssign1sComplement, textFeedback=true},
			{control='encoder9', trackParam=AUPAN, valueMode=kAssignRelative, valueFormat=kAssign1sComplement},


			{control='fader1', trackParam=CS_INSTRUMENTPAR1, paramOffset=8},
			{control='fader2', trackParam=CS_INSTRUMENTPAR1, paramOffset=9},
			{control='fader3', trackParam=CS_INSTRUMENTPAR1, paramOffset=10},
			{control='fader4', trackParam=CS_INSTRUMENTPAR1, paramOffset=11},
			{control='fader5', trackParam=CS_INSTRUMENTPAR1, paramOffset=12},
			{control='fader6', trackParam=CS_INSTRUMENTPAR1, paramOffset=13},
			{control='fader7', trackParam=CS_INSTRUMENTPAR1, paramOffset=14},
			{control='fader8', trackParam=CS_INSTRUMENTPAR1, paramOffset=15},
			{control='fader9', trackParam=AUVOLUME},


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

	for i=1, 8 do
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
	end
	
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

	-- print(data_button)


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