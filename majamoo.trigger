<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MudletPackage>
<MudletPackage version="1.001">
	<TriggerPackage>
		<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>Weapon Management (DISABLE IF YOU ARE NOT GUNS)</name>
			<script></script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName></packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList />
			<regexCodePropertyList />
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Detect weapon wield</name>
				<script>local wielderName = matches[2]
local weaponName = matches[3]

if is_user(wielderName) then
	set_weapon(weaponName)
end</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>^(.+) unslings (?:his|her|their|its) (.+?)(?: into firing position(?: with a grin))?\.$</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Detect already wielded</name>
				<script>weapon = matches[2]</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>^(?:The ).+?is already held in your primary hand\.$</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Detect ammo repack</name>
				<script>set_ammo(matches[2])</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>^You recombined all your (.+) ammo\.$</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Detect gun reload</name>
				<script>local userName = matches[2]
local ammoName = matches[3]
local weaponName = matches[4]
if is_user(userName) then
	handle_reload(ammoName, weaponName)
	display_ammo()
end</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>^(.+) slips a (.+) into (?:his|her|their|its) (.+)\.$</string>
					<string>^(.+) places a (.+) into her (.+) and taps it in place\.$</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Display repack</name>
				<script>--sysecho("detected repack")
local ammolist = matches[2]
handle_repack(ammolist)</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>^You combined them into ((?:\d+, )+and \d+) shots\.$</string>
					<string>^You've got .+s with ((?:\d+, )+and \d+) shots\.$</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>0</integer>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Detect already wielded</name>
				<script>set_weapon(matches[2])</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>^The (.+) is already held in your primary hand.$</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Detect fire selector</name>
				<script>local userName = matches[2]
local weaponName = matches[3]
local fireMode = matches[4]
if is_user(userName) then
	fire_mode = fireMode
	display_ammo()
end</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>^(.+) flips her (.+) to (single|auto) mode\.$</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Combat</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="no" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="yes" isColorTriggerFg="yes" isColorTriggerBg="yes">
					<name>Detect combat round the hard way</name>
					<script>display(matches)

old_matches = matches

local attack_actor = matches[2]
local attack_result = matches[3]
local attack_target = matches[4]
local target_health = matches[5]
local attack_desc = matches[6]
--display(attack_actor)
--display(attack_result)
--display(attack_target)
--display(target_health)
--display(attack_desc)


--display(weapon)
local weapon_position = string.find(attack_desc, ("'s " .. sanitize(weapon)))

	display(weapon_position)

if (weapon_position ~= nil) then
	weapon_position = weapon_position + 3
	display(weapon_position)

	local weapon_test = string.sub(attack_desc, weapon_position, weapon_position + string.len(weapon) - 1)
	--display(weapon_test)
	
	-- Friendly turn?
	if (weapon == weapon_test) then 
		--sysecho("found weapon: " .. weapon_test)
		local attack_prefix = string.sub(attack_desc, 1, weapon_position - 4)
		--display(attack_prefix)
		--display(weapon_position)
		
		local user_name = attack_prefix
		if (string.find(attack_prefix, " ") == nil) then
			user_name = attack_prefix
		else
			local name_index = (string.find(string.reverse(attack_prefix), " ") or 0) - 2
			--display(name_index)
			user_name = string.sub(attack_prefix, attack_prefix:len() - name_index, attack_prefix:len())
			--display(user_name)
		end
	
		local user_char = string.sub(user_name, 1, 1)
	
		-- Friendly turn
		if (user_char == attack_actor and is_user(user_name)) then
			--sysecho("User " .. user_name .. " performed attack.")
			handle_shot()
		end
	end
else -- string doesnt contain "Maja's M100 rifle"
	
	


end

</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#00ffff</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^\[(.)(.{1,3})(.)\]\[ *(\d+)%\] (.+)$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Detect combat round the easy way</name>
					<script>local attack_actor = matches[2]
local attack_result = matches[3]
local attack_target = matches[4]
local target_health = matches[5]
local attack_desc = matches[6]

for key,value in pairs(users) do
	if string.upper(attack_desc):find(value) ~= nil and value:sub(1, 1) == attack_actor then
			handle_shot()
			break
	end
end
		</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^\[(.)(.{1,3})(.)\]\[ *(\d+)%\] (.+)$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>Detect fatality</name>
					<script>local user_name = matches[2]
local weapon_name = matches[3]
--sysecho("detected fatality by " .. user_name .. " with " .. (weapon_name or "no weapon"))
if is_user(user_name) and (weapon_name == weapon or weapon_name == null) then
	handle_shot()
end</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^(.+)'s (.+) shot finds its mark dead center</string>
						<string>^(.+) steps in suddenly right next to .+, (?:his|her|their|its) (.+) jammed into </string>
						<string>^In a desperate last stand, .+ shrieks and charges\.  (.+) levels (?:his|her|their|its) (.+) and fires a</string>
						<string>^(.+) cackles as (?:his|her|their|its) (.+) shot blasts </string>
						<string>^(.+) sidesteps in to stand next to .+, pressing the muzzle of (?:his|her|their|its) (.+) up to (?:his|her|their|its) eye\. </string>
						<string>^(.+) rolls in toward and comes up in a practiced motion to press (?:his|her|their|its) (.+) point\-blank</string>
						<string>^(.+)'s shot explodes through .+'s side, ripping free ragged chunks of flesh and sending</string>
						<string>^(.+) lunges forward with (?:his|her|their|its) (.+), driving it forcefully into .+'s mouth </string>
						<string>^.+ stops in (?:his|her|their|its) tracks as (.+)'s (.+) roars, vaporizing a fist\-sized cross section</string>
						<string>^As .+ opens (?:his|her|their|its) mouth to scream, (.+)'s (.+) shot punches in and through the back</string>
						<string>^(.+)'s (.+) shot punches perfectly through .+'s breast\.</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
		</TriggerGroup>
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>Detect room entry</name>
			<script>map = matches[2]
room = matches[3]
area = matches[4]
time = matches[5]

clearWindow("room")
--selectCurrentLine()
--copy()
--appendBuffer("room")

newroom()</script>
			<triggerType>0</triggerType>
			<conditonLineDelta>4</conditonLineDelta>
			<mStayOpen>4</mStayOpen>
			<mCommand></mCommand>
			<packageName></packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList>
				<string>^(.{10})\s{2}(.+) \((.+)\) (\d{1,2}:\d{1,2}[ap]m)$</string>
			</regexCodeList>
			<regexCodePropertyList>
				<integer>1</integer>
			</regexCodePropertyList>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Detect map</name>
				<script>map = map .. "\n" .. matches[2]

selectCurrentLine()
copy()
appendBuffer("room")
</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>^(.{10})</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="no" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Detect end of map</name>
				<script>newroom()</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>^\s{10}</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
		</Trigger>
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>Capture chat</name>
			<script>selectCurrentLine()
copy()
appendBuffer("chat")
--deleteLine()</script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName></packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList>
				<string>^\[.{1,6}net\]</string>
				<string>^\[ [A-Z]{1,6} \]:</string>
			</regexCodeList>
			<regexCodePropertyList>
				<integer>1</integer>
				<integer>1</integer>
			</regexCodePropertyList>
		</Trigger>
		<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>MCP</name>
			<script></script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName></packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList />
			<regexCodePropertyList />
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>handshake</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>MCP version</name>
					<script>mcp["server_version"] = matches[2]
mcp["client_version"] = matches[3]

send("#$#mcp authentication-key: " .. mcp_auth .. " version: 1.0 to: 2.1")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^#\$#mcp version: (\d+\.\d+) to: (\d+\.\d+)</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>MCP negotiate package</name>
					<script>local server_auth = matches[2]
local server_package = matches[3]
local server_package_ver_min = matches[4]
local server_package_ver_max = matches[5]
if (server_auth == tostring(mcp_auth)) then
	local mcp_result = "#$#mcp-negotiate-can " .. mcp_auth .. " package: " .. server_package .. " min-version: " .. server_package_ver_min .. " max-version: " .. server_package_ver_max
	send(mcp_result)
end</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^#\$#mcp-negotiate-can (.+) package: (.+) min\-version: (\d+\.\d+) max\-version: (\d+\.\d+)$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>MCP negotiate end</name>
					<script>local server_auth = matches[2]
if (server_auth == tostring(mcp_auth)) then
	send("#$#mcp-negotiate-end " .. mcp_auth)
end</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^#\$#mcp-negotiate-end (.+)$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>dns-com-awns-status</name>
				<script>deleteLine()

local server_auth = matches[2]
local status_text = matches[3]

if (server_auth == tostring(mcp_auth)) then
	-- TODO if we want to do anything with that text
end</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>^#\$#dns\-com\-awns\-status (\d+) text: "(.+)"$</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>dns-org-hellmoo-status-update</name>
				<script>deleteLine()

local server_auth = matches[2]

if (server_auth == tostring(mcp_auth)) then
	mcp["hp"] = matches[3]
	mcp["maxhp"] = matches[4]
	mcp["thirst"] = matches[5]
	mcp["hunger"] = matches[6]
	mcp["stress"] = matches[7]
	update_status()
end</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>^#\$#dns\-org\-hellmoo\-status\-update (\d+) hp: (\d+) maxhp: (\d+) thirst: (\d+)(?:\.\d*)? hunger: (\d+) stress: (\d+)</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
		</TriggerGroup>
		<TriggerGroup isActive="no" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>Scav</name>
			<script></script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName></packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList />
			<regexCodePropertyList />
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>found nothing</name>
				<script>send("search")</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>Yet somehow, you've still got the nagging feeling there's SOMETHING here...</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>3</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>found something</name>
				<script>send("search")</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#00ffff</mFgColor>
				<mBgColor>#000000</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>^You find an? (.+)(?: hidden away in a corner)\.</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
		</TriggerGroup>
		<TriggerGroup isActive="no" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>Grinding triggers</name>
			<script></script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName></packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList />
			<regexCodePropertyList />
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>keep crying for gun grind</name>
				<script>send("cry")</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>You wipe away some tears.</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>3</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>grind climb</name>
				<script>send("u")</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>SHIT!  You lost your grip and fell from </string>
					<string>[          ]  [ 6m ] You reluctantly climb 1 more meters back down.</string>
					<string>[          ] ![ 6m ] Fuck!  You're sliding down...</string>
					<string>[**        ]  [ 5m ] You reluctantly climb 1 more meters back down.</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>2</integer>
					<integer>2</integer>
					<integer>2</integer>
					<integer>2</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>grind climb 2</name>
				<script>send("jump d")</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>[ Exits:  v down ]</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>3</integer>
				</regexCodePropertyList>
			</Trigger>
		</TriggerGroup>
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>Idlenet gag + time update</name>
			<script>deleteLine()

local hour = tonumber(matches[2])
local minute = matches[3]

if (hour &gt; 12) then
	hour = hour - 12
	time = hour .. ":" .. minute .. "pm"
elseif (hour == 12) then
	time = hour .. ":" .. minute .. "pm"
else
	time = hour .. ":" .. minute .. "am"
end

update_status()</script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName></packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList>
				<string>^\[ [A-Z]\w{1,3} [A-Z]\w{1,3}  ?\d{1,2} \d\d:\d\d:\d\d \d{4} P[DS]T : [A-Z]\w{1,3} [A-Z]\w{1,3}  ?\d{1,2} (\d\d):(\d\d):\d\d \d{4} \] ?$</string>
			</regexCodeList>
			<regexCodePropertyList>
				<integer>1</integer>
			</regexCodePropertyList>
		</Trigger>
		<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>Health/Stress bar update</name>
			<script>local current_resource = matches[2]
local max_resource = matches[3]

if (max_resource &lt; 61) then
	mcp["hp"] = current_resource
elseif (max_resource == 500) then
	mcp["stress"] = current_resource
else
	sysecho("detected an invalid resource change: " .. matches[1])
end

update_status()</script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName></packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList>
				<string>^\[[\*\| ]{30}\] \[ [+\-]\d{1,3} (\d{1,3})\/(\d{1,3}) \]</string>
			</regexCodeList>
			<regexCodePropertyList>
				<integer>1</integer>
			</regexCodePropertyList>
		</Trigger>
		<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>clickableURLs</name>
			<script></script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName>clickableURLs</packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList />
			<regexCodePropertyList />
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="yes" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>Clickable URL's</name>
				<script>for i,v in ipairs(matches) do
  selectString(matches[i], 1)
  setLink([[openUrl("]]..matches[i]..[[")]], matches[i])
end</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#5500ff</mFgColor>
				<mBgColor>#000000</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>\b(?:(?:(?:https?|ftp|telnet)://[\w\d:#@%/;$()~_?\+\-=&amp;]+|www|ftp)(?:\.[\w\d:#@%/;$()~_?\+\-=&amp;]+)+|[\w\d._%+\-]+@[\w\d.\-]+\.[\w]{2,4})\b</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
		</TriggerGroup>
	</TriggerPackage>
	<TimerPackage />
	<AliasPackage>
		<AliasGroup isActive="yes" isFolder="yes">
			<name>debug</name>
			<script></script>
			<command></command>
			<packageName>run-lua-code-v4</packageName>
			<regex></regex>
			<Alias isActive="yes" isFolder="no">
				<name>run lua code</name>
				<script>local f,e = loadstring("return "..matches[2])
if not f then
	f,e = assert(loadstring(matches[2]))
end

local r = f()
if r ~= nil then display(r) end</script>
				<command></command>
				<packageName></packageName>
				<regex>^lua (.*)$</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>Parse as game text</name>
				<script>local s = matches[2]

s = string.gsub(s, "%$", "\n")
feedTriggers("\n" .. s .. "\n")
echo("\n")</script>
				<command></command>
				<packageName></packageName>
				<regex>^\/parse (.+)$</regex>
			</Alias>
		</AliasGroup>
		<Alias isActive="yes" isFolder="no">
			<name>setup ammo</name>
			<script>set_weapon(matches[2])
set_ammo(matches[3])</script>
			<command></command>
			<packageName></packageName>
			<regex>^ammo (.+) (.+)$</regex>
		</Alias>
		<Alias isActive="yes" isFolder="no">
			<name>reload and repack</name>
			<script>send("unload " .. weapon)
tempTimer(0.01, [[send("combine " .. ammo)]])
tempTimer(0.02, [[send("load " .. weapon)]])</script>
			<command></command>
			<packageName></packageName>
			<regex>^(?:rl|reload|rp|repack)$</regex>
		</Alias>
		<Alias isActive="yes" isFolder="no">
			<name>wield</name>
			<script>set_weapon(matches[2])
send(matches[1])</script>
			<command></command>
			<packageName></packageName>
			<regex>^wield (.+)$</regex>
		</Alias>
		<Alias isActive="yes" isFolder="no">
			<name>connect - dont worry im not stealing ur password</name>
			<script>send(matches[1])
local username = matches[2]
matches = nil -- just to get our password out of memory
if not is_user(username) then
	table.insert(users, username)
end</script>
			<command></command>
			<packageName></packageName>
			<regex>^connect ([^\s]+) .*</regex>
		</Alias>
	</AliasPackage>
	<ActionPackage />
	<ScriptPackage>
		<Script isActive="yes" isFolder="no">
			<name>init</name>
			<packageName></packageName>
			<script>-------------------------------------------------
--     welcome to majamoo, created by maja     --
--       for tech support go fuck urself       --
-------------------------------------------------

function init()

	mcp = mcp or {}
	mcp_auth = mcp_auth or math.random(100000)

	weapon = weapon or "WEAPON"
	ammo = ammo or "AMMO"
	fire_mode = fire_mode or "single"
	ammo_count = ammo_count or 0
	ammo_remaining = ammo_remaining or 0
	magsize = mxagsize or 0

	mcp["hp"] = mcp["hp"] or 30
	mcp["maxhp"] = mcp["maxhp"] or 30
	mcp["hunger"] = mcp["hunger"] or 0
	mcp["thirst"] = mcp["thirst"] or 0
	mcp["stress"] = mcp["stress"] or 0

	time = time or "12:00am"


	room = room or "ROOM"
	area = area or "AREA"

	users = users or {"MAJA"}

	--remember(weapon)
	--remember(ammo)
	--remember(fire_mode)	
	--remember(ammo_count)
	--remember(ammo_remaining)
	--remember(time)
	--remember(room)
	--remember(area)
	--remember(users)

	window_width = 0
	window_height = 0
	window_width, window_height = getMainWindowSize()

	position_room_window()
	setMiniConsoleFontSize("room", 40)
	
	position_chat_window()
	setMiniConsoleFontSize("chat", 14)
	setWindowWrap("chat", 100)

	position_status_window()
	setMiniConsoleFontSize("status", 13)
	
end

registerAnonymousEventHandler("sysLoadEvent", "init()")

registerAnonymousEventHandler("sysWindowResizeEvent", "handleWindowResize")

function handleWindowResize()
	window_width, window_height = getMainWindowSize()
	position_room_window()
	position_status_window()
	position_chat_window()
end

function position_room_window()
	createMiniConsole("room", 0, 0, 320, 305)
	moveWindow("room", window_width - 335, 0)
end
function position_status_window()
	createMiniConsole("status", 0, 0, 780, 305)
	moveWindow("status", window_width - 1115, 0)
end
function position_chat_window()
	createMiniConsole("chat", 0, 0, 1100, window_height - 315)
	moveWindow("chat", window_width - 1115, 305)
end</script>
			<eventHandlerList />
		</Script>
		<Script isActive="yes" isFolder="no">
			<name>sysecho</name>
			<packageName></packageName>
			<script>-------------------------------------------------
--         Put your Lua functions here.        --
--                                             --
-- Note that you can also use external Scripts --
-------------------------------------------------

function sysecho(text)
	cecho("\n&lt;dark_green:green&gt; \&gt; " .. text .. " ")
end</script>
			<eventHandlerList />
		</Script>
		<Script isActive="yes" isFolder="no">
			<name>newroom</name>
			<packageName></packageName>
			<script>-------------------------------------------------
--         Put your Lua functions here.        --
--                                             --
-- Note that you can also use external Scripts --
-------------------------------------------------

-- anything extra that happens whenever we see a new room goes here
function newroom()
	-- tempTimer(0.01, [[sysecho(room .. " " .. area .. " " .. time)]])
	update_status()
end</script>
			<eventHandlerList />
		</Script>
		<Script isActive="yes" isFolder="no">
			<name>is_user</name>
			<packageName></packageName>
			<script>-------------------------------------------------
--         Put your Lua functions here.        --
--                                             --
-- Note that you can also use external Scripts --
-------------------------------------------------

function is_user(userName)
	--sysecho("running is_user " .. userName)
	local result = false
	for key,value in pairs(users) do
		if equals_ignore_case(value, userName) then
			result = true
			break
		end
	end
	return result
end</script>
			<eventHandlerList />
		</Script>
		<Script isActive="yes" isFolder="no">
			<name>utility</name>
			<packageName></packageName>
			<script>-------------------------------------------------
--         Put your Lua functions here.        --
--                                             --
-- Note that you can also use external Scripts --
-------------------------------------------------

function has_value (tab, val)
	sysecho("running has_value target = " .. val .. " tab =")
	for item in tab do
		sysecho("" .. item)
   end
   for index, value in ipairs(tab) do
   		-- We grab the first index of our sub-table instead
		sysecho("comparing " .. value[1] .. " to " .. val)
   		if value[1] == val then
   			return true
		end
	end

	return false
end



function equals_ignore_case(str1, str2)
	return string.upper(str1) == string.upper(str2)
end


function sanitize(str)
	str = str:gsub("-", "%%%-")
	return str
end</script>
			<eventHandlerList />
		</Script>
		<Script isActive="yes" isFolder="no">
			<name>set weapon, ammo, magsize</name>
			<packageName></packageName>
			<script>-- anything we want to happen whenever we set up a new weapon goes here

function set_weapon(str)
	--sysecho("setting weapon to " .. str)
	weapon = str
end

function set_ammo(str)
	--sysecho("setting ammo to " .. str)
	ammo = str
end

function set_magsize(str)
	--sysecho("setting magsize to " .. str)
	magsize = str
end</script>
			<eventHandlerList />
		</Script>
		<Script isActive="yes" isFolder="no">
			<name>ammunition tracking</name>
			<packageName></packageName>
			<script>-------------------------------------------------
--         Put your Lua functions here.        --
--                                             --
-- Note that you can also use external Scripts --
-------------------------------------------------

-- this stuff works so never ever change it

function handle_repack(str)
	--display(str)
	ammo_count = 0
	local ammo_table = string.split(str, ", ")
	set_magsize(ammo_table[1])
	local lastelement = string.sub(ammo_table[table.size(ammo_table)], 5)
	ammo_table[table.size(ammo_table)] = lastelement
	for key,value in pairs(ammo_table) do
		ammo_count = ammo_count + value
	end
	--sysecho(ammo_count .. " remaining")
end

function handle_reload(ammoName, weaponName)
	--sysecho("handling reload " .. ammoName .. "," .. weaponName)
	set_ammo(ammoName)
	set_weapon(weaponName)
	reset_ammo()
end

function reset_ammo()
	ammo_remaining = magsize
end

function handle_shot()
	if (fire_mode == "auto") then
		ammo_remaining = ammo_remaining - 3
	else
		ammo_remaining = ammo_remaining - 1
	end
	display_ammo()
end

function display_ammo()
	--cecho(get_ammo_display())
	update_status()
end

function get_ammo_display()
	local output = "\n &lt;DarkSlateGray&gt;[&lt;yellow&gt;"
	if (tonumber(magsize) &lt; 61) then
		for i = 1,ammo_remaining do
			output = output .. "|"
		end
		for i = ammo_remaining+1,magsize do
			output = output .. " "
		end
	elseif (tonumber(magsize) &lt; 121) then -- DOUBLE STACK DISPLAY
		for i = 1,math.floor(ammo_remaining / 2) do
			output = output .. ":"
		end
		if (ammo_remaining % 2 == 1) then
			if (magsize == ammo_remaining) then
				output = output .. ";"
			else
				output = output .. "."
			end
		end
		for i = 1,(math.floor(magsize/2) - math.ceil(ammo_remaining/2)) do
			output = output .. " "
		end
	else -- QUAD STACK DISPLAY
		local ammocounter = tonumber(ammo_remaining)
		while (ammocounter &gt; 3) do
			output = output .. ":"
			ammocounter = ammocounter - 4
		end
		if (ammocounter == 3) then output = output .. ";"
			elseif (ammocounter == 2) then output = output .. "."
			elseif (ammocounter == 1) then output = output .. ","
		end
		for i = 1,(math.floor(magsize/4)-math.ceil(tonumber(ammo_remaining)/4)) do
			output = output .. " "
		end
	end
	output = output .. "&lt;DarkSlateGray&gt;] &lt;white&gt;[ " .. ammo_remaining .. "/" .. magsize .. " ] [" .. ammo_count + ammo_remaining - magsize .. "]"
	return output
end</script>
			<eventHandlerList />
		</Script>
		<Script isActive="yes" isFolder="no">
			<name>status window</name>
			<packageName></packageName>
			<script>-------------------------------------------------
--         Put your Lua functions here.        --
--                                             --
-- Note that you can also use external Scripts --
-------------------------------------------------

function update_status()
	clearWindow("status")
	cecho("status", "\n\n&lt;yellow&gt;" .. room .. "&lt;reset&gt; (&lt;dark_goldenrod&gt;" .. area .. "&lt;reset&gt;) &lt;white&gt;" .. time
		.. "&lt;reset&gt;\n\n" .. get_ammo_display()
		.. "\n\n " .. get_health_display()
		.. "\n " .. get_thirst_display()
		.. "\n " .. get_hunger_display()
		.. "\n " .. get_stress_display())
end

function get_health_display()
	local hp = tonumber(mcp["hp"])
	local maxhp = tonumber(mcp["maxhp"])
	local result = "&lt;white&gt;[&lt;green:green&gt;"
	for i = 1,hp do
		result = result .. "|"
	end
	result = result .. "&lt;reset&gt;"
	for i = hp,(maxhp-1) do
		result = result .. " "
	end
	result = result .. "&lt;white&gt;] [ " .. hp .. "/" .. maxhp .. " ]&lt;reset&gt;"
	return result
end

function get_thirst_display()
	local thirst = tonumber(mcp["thirst"])
	local result = "&lt;white&gt;[&lt;blue:blue&gt;"
	local bars = math.floor(thirst * 60 / 500)
	local spaces = 60 - bars
	for i = 1,bars do
		result = result .. "|"
	end
	result = result .. "&lt;reset&gt;"
	for i = 1,spaces do
		result = result .. " "
	end
	result = result .. "&lt;white&gt;] [ " .. string.format("%3d", thirst) .. "/" .. 500 .. " ]&lt;reset&gt;"
	return result
end

function get_hunger_display()
	local hunger = tonumber(mcp["hunger"])
	local result = "&lt;white&gt;[&lt;red:red&gt;"
	local bars = math.floor(hunger * 60 / 500)
	local spaces = 60 - bars
	for i = 1,bars do
		result = result .. "|"
	end
	result = result .. "&lt;reset&gt;"
	for i = 1,spaces do
		result = result .. " "
	end
	result = result .. "&lt;white&gt;] [ " .. string.format("%3d", hunger) .. "/" .. 500 .. " ]&lt;reset&gt;"
	return result
end

function get_stress_display()
	local stress = tonumber(mcp["stress"])
	local result = "&lt;white&gt;[&lt;yellow:yellow&gt;"
	local bars = math.floor(stress * 60 / 500)
	local spaces = 60 - bars
	for i = 1,bars do
		result = result .. "|"
	end
	result = result .. "&lt;reset&gt;"
	for i = 1,spaces do
		result = result .. " "
	end
	result = result .. "&lt;white&gt;] [ " .. string.format("%3d", stress) .. "/" .. 500 .. " ]&lt;reset&gt;"
	return result
end</script>
			<eventHandlerList />
		</Script>
	</ScriptPackage>
	<KeyPackage />
	<VariablePackage>
		<HiddenVariables />
		<Variable>
			<name>ammo</name>
			<keyType>4</keyType>
			<value>hand-loaded 5.56mm clip</value>
			<valueType>4</valueType>
		</Variable>
		<Variable>
			<name>ammo_count</name>
			<keyType>4</keyType>
			<value>390</value>
			<valueType>3</valueType>
		</Variable>
		<Variable>
			<name>ammo_remaining</name>
			<keyType>4</keyType>
			<value>40</value>
			<valueType>4</valueType>
		</Variable>
		<VariableGroup>
			<name>users</name>
			<keyType>4</keyType>
			<value></value>
			<valueType>5</valueType>
			<Variable>
				<name>1</name>
				<keyType>3</keyType>
				<value>MAJA</value>
				<valueType>4</valueType>
			</Variable>
		</VariableGroup>
		<Variable>
			<name>weapon</name>
			<keyType>4</keyType>
			<value>FN SCAR-L rifle</value>
			<valueType>4</valueType>
		</Variable>
		<Variable>
			<name>fire_mode</name>
			<keyType>4</keyType>
			<value>single</value>
			<valueType>4</valueType>
		</Variable>
		<VariableGroup>
			<name>mcp</name>
			<keyType>4</keyType>
			<value></value>
			<valueType>5</valueType>
			<Variable>
				<name>thirst</name>
				<keyType>4</keyType>
				<value>69</value>
				<valueType>4</valueType>
			</Variable>
			<Variable>
				<name>stress</name>
				<keyType>4</keyType>
				<value>0</value>
				<valueType>4</valueType>
			</Variable>
			<Variable>
				<name>maxhp</name>
				<keyType>4</keyType>
				<value>49</value>
				<valueType>4</valueType>
			</Variable>
			<Variable>
				<name>hp</name>
				<keyType>4</keyType>
				<value>49</value>
				<valueType>4</valueType>
			</Variable>
			<Variable>
				<name>hunger</name>
				<keyType>4</keyType>
				<value>31</value>
				<valueType>4</valueType>
			</Variable>
		</VariableGroup>
		<Variable>
			<name>time</name>
			<keyType>4</keyType>
			<value>5:12pm</value>
			<valueType>4</valueType>
		</Variable>
		<Variable>
			<name>area</name>
			<keyType>4</keyType>
			<value>helliday inn 2nd floor</value>
			<valueType>4</valueType>
		</Variable>
		<Variable>
			<name>map</name>
			<keyType>4</keyType>
			<value>          
          
[][][]    
[]//()    
[][][]    
          </value>
			<valueType>4</valueType>
		</Variable>
		<Variable>
			<name>magsize</name>
			<keyType>4</keyType>
			<value>0</value>
			<valueType>4</valueType>
		</Variable>
	</VariablePackage>
</MudletPackage>
