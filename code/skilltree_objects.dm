obj
	mapcontrol
		World
			Click()
				if(usr.client && usr.spectate)
					usr.client.eye=locate(MAP_START_X+5,MAP_START_Y+5,MAP_START_Z)
					usr.area = null
	skilltree
		Back
			Click()
				if(usr.build_creating)
					usr.client.eye = locate_tag("maptag_skilltree_select")
					usr.spectate = 1
				//	usr.hidestat = 0
					usr:Refresh_Stat_Screen()
				else
					usr.client.eye = usr.client.mob
				//	usr.hidestat = 0
					usr.spectate = 0
					usr:Refresh_Stat_Screen()

		Passive_C
			Click()
				usr.client.eye=locate_tag("maptag_skilltree_passive")
				usr.spectate = 1
			//	usr.hidestat = 0
				for(var/obj/gui/passives/gauge/Q in gameLists["passives"])
					if(Q.pindex == POINTS_STRENGTH || Q.pindex == POINTS_REFLEX || Q.pindex == POINTS_INTELLIGENCE || Q.pindex == POINTS_CONTROL)
						var/client/C = usr.client
						if(C) C.Passive_Refresh(Q)
		Nonclan_C
			Click()
				usr.client.eye = locate_tag("maptag_skilltree_nonclan")
				usr.spectate = 1
			//	usr.hidestat = 0
				usr:refreshskills()
		Nonclan2_C
			Click()
				usr.client.eye = locate_tag("maptag_skilltree_nonclan2")
				usr.spectate = 1
			//	usr.hidestat = 0
				usr:refreshskills()
		Clan_C
			Click()
				usr.client.eye = locate_tag("maptag_skilltree_clan")
				usr.spectate = 1
			//	usr.hidestat = 0
				usr:refreshskills()



obj
	skilltree
		skills
			icon = 'icons/gui.dmi'
			layer = 9
			clan
				Akimichi_Clan
					icon_state="Akimichi"
				Deidara_Clan
					icon_state="diedara"
				Haku_Clan
					icon_state="haku"
				Hyuuga_Clan
					icon_state="hyuuga"
				Jashin_Religion
					icon_state="jashin"
				Kaguya_Clan
					icon_state="kaguya"
				Nara_Clan
					icon_state="nara"
				Puppeteer
					icon_state="puppeteer"
				// Sand is a skill
				Uchiha_Clan
					icon_state="uchiha"
				Collector_Clan
					icon_state="collector"
				Yamanaka_Clan
					icon_state="yamanaka"
				Hozuki_Clan
					icon_state="hozuki"
				Bubble_Clan
					icon_state="bubble"
				Dust_Clan
					icon_state="dust"
				Boil_Clan
					icon_state="boil"
				Inuzuka_Clan
					icon_state="inuzuka"
				Paper_Clan
					icon_state="paper"
				Ink_Clan
					icon_state="sai"
				Space_Time_Clan
					icon_state="jikukan"
				Crystal_Clan
					icon_state="crystal"
				Snake_Clan
					icon_state="snake"
				Nintaijutsu_Clan
					icon_state="nintaijutsu"
				nintaijutsu
					horizontal_oppression
						name = "Horizontal Oppression"
						icon_state="oppression"
					lariat
						name = "Lariat"
						icon_state="lariat"
					lightning_armor
						name = "Lightning Armor"
						icon_state="lightning_armor"
					lightning_armor_2nd
						name = "Lightning Armor 2nd State"
						icon_state="lightning_armor_2nd"
				crystal
					crystal_spikes
						name = "Crystal Spikes"
						icon_state="crystal_spikes"
					crystal_chamber
						name = "Crystal Chamber"
						icon_state="crystal_prison"
					crystal_dragon
						name = "Crystal Dragon"
						icon_state="crystal_dragon"
					crystal_barrier
						name = "Crystal Barrier"
						icon_state="crystal_barrier"
					crystal_armor
						name = "Crystal Armor"
						icon_state="crystal_armor"
				snake
					snake_bind
						name = "Shadow Snake Bind"
						icon_state="snake_wrap"
					snake_ambush
						name = "Serpent Ambush"
						icon_state="snake_ambush"
					snake_hands
						name = "Hidden Shadow Snakes"
						icon_state="snake_hands"
					many_snake_hands
						name = "Many Hidden Shadow Snakes"
						icon_state="snake_hands2"
					snake_shedding
						name = "Skin Shedding"
						icon_state="skin_shed"
					rashomon
						name = "Summoning Rashoumon"
						icon_state="rashomon"
					snake_wear
						name = "Skin Regeneration"
						icon_state="skin_wear"
				space_time
					space_time_migration
						name = "Space Time Migration"
						icon_state="migration"
					space_time_barrier
						name = "Space Time Barrier"
						icon_state="spacetimebarrier"
					marking
						name = "Hiraishin Marking"
						icon_state="marking"
					flying_thunder_god_technique
						name = "Space-Time: Flying Thunder God Technique"
						icon_state="thundergod"
				ink
					brush
						name = "Ink: Brush"
						icon_state="brush"
					ink_snake
						name = "Ink: Snake"
						icon_state="ink_snake"
					ink_beast
						name = "Ink: Beast"
						icon_state="ink_beast"
					ink_bird
						name = "Ink: Bird"
						icon_state="ink_bird"
				scavenger
					Heart_Extraction
						icon_state="heart_extraction"
					Generate_Heart
						icon_state="heart_generation"
				inuzuka
					Double_Fang_Over_Fang
						icon_state="double_fang_over_fang"
					Whistle
						icon_state="whistle"
					Beast_Mode
						name="Beast Mode"
						icon_state="beastmode"
					Dynamic_Marking
						icon_state="dynamicmarking"
					Fang_Over_Fang
						icon_state="fang_over_fang"
				paper
					Paper_Bomb
						icon_state="paper_bomb"
					Paper_Chasm
						icon_state="paper_chasm"
					Paper_Armor
						icon_state="paper_armor"
					Paper_Shuriken
						icon_state="paper_shuriken"
				boil
					Mist
						name = "Boil Release: Skilled Mist Technique"
						icon_state="skilled_mist_technique"
					Dragon_Bullet
						name = "Boil Release: Boil Dragon Bullet Technique"
						icon_state="dragonB"
				dust
					Detachment
						name = "Dust Release: Detachment of the Primitive World Technique (Cubical Variant)"
						icon_state="cubical"
				hozuki
					Water_Arm
						name = "Great Water Arm"
						icon_state="waterarm"
					Water_Gun
						name = "Water Gun Technique"
						icon_state="water gun"
					Hydration
						name = "Hydrification Technique"
						icon_state="hydrate"
				bubble
					Exploding_Bubble
						icon_state="exploding"
					Blinding_Bubble
						icon_state="blinding"
					Bubble_Barrage
						icon_state="barrage"
				yamanaka
					Mind_Transfer_Jutsu
						icon_state="mindtransfer"
					Petals
						icon_state="petals"
					Flower_Bomb
						icon_state="flower_bomb"
					Mind_Disturbance
						icon_state="minddisturbance"
					Mind_Tag
						icon_state="mindtag"
					Mind_Read
						icon_state="mindtag"
					Petal_Dance
						icon_state="petal_dance"
					Wolfbane
						icon_state="petals"
					Cursed_Doll
						icon_state="cursed_doll"
				akimichi
					Size_Multiplication
						icon_state="sizeup1"
					Super_Size_Multiplication
						icon_state="sizeup2"
					Human_Bullet_Tank
						icon_state="meattank"
					Spinach_Pill
						icon_state="spinach"
					Curry_Pill
						icon_state="curry"
				deidara
					Exploding_Bird
						icon_state="exploading bird"
					Exploding_Spider
						icon_state="exploading spider"
					C3
						icon_state="c3"
					C2
						icon_state="c2"
					C4
						icon_state="c4"
					C0
						icon_state="c0"
					Exploding_Owl
						icon_state="clay owl"
					Exploding_Barrage
						icon_state="small bird"
				haku
					Sensatsusuisho
						name = "Sensatsusuishô"
						icon_state="ice_needles"
					Ice_Explosion
						icon_state="ice_spike_explosion"
					Demonic_Ice_Crystal_Mirrors
						icon_state="demonic_ice_mirrors"
				hyuuga
					Byakugan
						icon_state="byakugan"
					Turning_the_Tide
						name = "Eight Trigrams Palm: Turning the Tide"
						icon_state="kaiten"
					Palms
						name = "Eight Trigrams: 64 Palms"
						icon_state="64 palms"
					Gentle_Fist
						icon_state="gentle_fist"
				jashin
					Stab_Self
						icon_state="masachism"
					Death_Ruling_Possession_Blood
						name = "Sorcery: Death-Ruling Possession Blood"
						icon_state="blood contract"
					Wound_Regeneration
						icon_state="wound regeneration"
					Immortality
						icon_state="imortality"
				kaguya
					Piercing_Finger_Bullets
						icon_state="bonebullets"
					Bone_Harden
						icon_state="bone_harden"
					Camellia_Dance
						icon_state="bone_sword"
					Larch_Dance
						icon_state="bone_spines"
					Young_Bracken_Dance
						icon_state="sawarabi"
				nara
					Shadow_Binding
						icon_state="shadow_imitation"
					Shadow_Neck_Bind
						icon_state="shadow_neck_bind"
					Shadow_Sewing
						icon_state="shadow_sewing_needles"
				puppet
					First_Puppet
						name = "Summoning: First Puppet"
						icon_state="puppet1"
					Second_Puppet
						name = "Summoning: Second Puppet"
						icon_state="puppet2"
					Puppet_Transform
						icon_state="puppethenge"
					Puppet_Swap
						icon_state="puppetswap"
				sand
					Sand_Control
						icon_state="sand_control"
					Desert_Funeral
						icon_state="desert_funeral"
					Sand_Shield
						icon_state="sand_shield"
					Sand_Armor
						icon_state="sand_armor"
					Sand_Shuriken
						icon_state="sand_shuriken"
				uchiha
					Sharingan_2
						name = "Sharingan: 2 tomoe"
						icon_state="sharingan1"
					Sharingan_3
						name = "Sharingan: 3 tomoe"
						icon_state="sharingan2"
					Sharingan_Copy
						icon_state="sharingancopy"
			elements
				Earth_Elemental_Control
					icon_state="doton"
				Fire_Elemental_Control
					icon_state="katon"
				Lightning_Elemental_Control
					icon_state="raiton"
				Water_Elemental_Control
					icon_state="suiton"
				Wind_Elemental_Control
					icon_state="fuuton"
				earth
					Iron_Skin
						icon_state="doton_iron_skin"
					Earth_Wall
						icon_state="EWLL"
					Swamp_of_the_Underworld
						icon_state="doton_swamp_of_the_underworld"
					Dungeon_Chamber_of_Nothingness
						icon_state="Dungeon Chamber of Nothingness"
					Split_Earth_Revolution_Palm
						icon_state="doton_split_earth_turn_around_palm"
					Earth_Fist
						icon_state="earth_fist"
					Rock_Clone
						icon_state="earth_clone"
					Earth_Flow_River
						icon_state="earthflow"
					Head_Hunter
						icon_state="Head_Hunter"
					Mole_Hiding
						icon_state="Mole_Hiding"
					Dome
						name = "Earth Release: Earth Prison Dome of Magnificent Nothingess"
						icon_state="doton_chamber"
					Earth_Dragon
						name = "Earth Release: Earth Stone Dragon"
						icon_state="earth_dragon"
					Shaking_Palm
						name = "Earth Release: Earth Shaking Palm"
						icon_state="earth_palm"
					Resurrection
						name = "Earth Release: Resurrection Technique, Corpse Soil"
						icon_state="resurrection"
				fire
					Grand_Fireball
						icon_state="grand_fireball"
					Hosenka
						name = "Hôsenka"
						icon_state="katon_phoenix_immortal_fire"
					Ash_Accumulation_Burning
						icon_state="katon_ash_product_burning"
					Fire_Dragon_Flaming_Projectile
						icon_state="dragonfire"
					Flame_Beheading_Slash
						icon_state="flame_beheading_slash"
						//flame beheading is a slash that incircles the user like a firey nagashi
					Flame_binding
						icon_state="flame_binding"
						//this is the tag skilled done by hanzou think of it as set it here and it binds the target for a certain amount of supplies. its somewhat like sand coffin with an explosion
					Coiling_Flame
						icon_state="coiling_flame"
					Katon_Phoenix_Nail_Flower
						icon_state="katon_phoenix_nail_flower"
				lightning
					Chidori
						icon_state="chidori"
					Four_Pillar_Binding
						icon_state="pillar_binding"
					Lightning_Clone
						icon_state="rai_clone"
						// theres no real creation state for this jutsu but when it explodes a 3x3 nagashi should be created where the clone exploded
					Chidori_Spear
						icon_state="raton_sword_form_assasination_technique"
					False_Darkness
						icon_state="false_darkness"
					Chidori_Current
						icon_state="chidori_nagashi"
					Chidori_Needles
						icon_state="chidorisenbon"
				water
					Hidden_Mist
						icon_state="hidden_mist"
					Giant_Vortex
						icon_state="giant_vortex"
					Bursting_Water_Shockwave
						icon_state="exploading_water_shockwave"
					Water_Bullet
						icon_state="water_bullet"
						//this is just a straight forward projectile when it hits it can do 3x3 aoe with higher damage center at the center con based of course...if you want I can make different icons for size variation
					Water_Dragon_Projectile
						icon_state="water_dragon_blast"
					Water_Clone
						icon_state="water_clone"
					Water_Prison
						icon_state="water_prison"
					Encampment_Wall
						icon_state="encampment_wall"
						//ignore this unless you believe water needs another defensive/offensive move
					Collision_Destruction
						icon_state="watercollision"
					Syrup_Capture
						icon_state="syrup_capture"
				wind
					Vaccum_Sphere
						icon_state="vacuum sphere"
						//this is a miniture pressure_damage but in projectile stile it would push back anything that hits it for continuous damage think mudslide
					Vaccum_Wave
						icon_state="vacuum_waves"
						//this would be the same as flamebeheading sending a wave of damage around the user doing few wounds
					Pressure_Damage
						icon_state="futon_pressure_damage"
					Blade_of_Wind
						icon_state="blade_of_wind"
					Vacuum_Blade_Rush
						icon_state="vacuum_blade_rush"
					Great_Breakthrough
						icon_state="great_breakthrough"
					Refined_Air_Bullet
						icon_state="fuuton_air_bullet"
					Net_Cast
						icon_state="net_cast"
						//this attack would be about the same as pressure damage causing push back and a 5-8 wound...temari recently did it but theres few wind moves to pick from besides danzou's and hers
			general
				clones
					Clone
						icon_state="bunshin"
					Shadow_Clone
						icon_state="kagebunshin"
					Multiple_Shadow_Clone
						icon_state="taijuu_kage_bunshin"
					Exploding_Shadow_Clone
						icon_state="exploading bunshin"
					Crow_Clone
						icon_state="crow_depart"
				gates
					Opening_Gate
						icon_state="gate1"
					Energy_Gate
						icon_state="gate2"
					Life_Gate
						icon_state="gate3"
					Pain_Gate
						icon_state="gate4"
					Limit_Gate
						icon_state="gate5"
					View_Gate
						icon_state="gate6"
					Wonder_Gate
						icon_state="gate7"
				genjutsu
					Darkness
						name = "Genjutsu: Darkness"
						icon_state="darkness"
					Fear
						name = "Genjutsu: Fear"
						icon_state="paralyse_genjutsu"
					Crow
						name = "Genjutsu: Crow"
						icon_state="crow_depart"
					Temple_of_Nirvana
						name = "Genjutsu: Temple of Nirvana"
						icon_state="sleep_genjutsu"
					Shackling_Pillar
						name = "Genjutsu: Shackling Stakes Technique"
						icon_state="shackling_pillars"
						//shackling pillar is an upgraded version of fear but it only works on your primary target it should stun and lower str maybe half the user's int?
					Mist_Servant
						name = "Mist Servant"
						icon_state="mist_servant"
						//ah this move is an upgraded bunshin they're all intagible but can be targetted... cant be canceled til the user is hit and it auto bunshin tricks
					Tree_Binding
						name = "Genjutsu: Tree Binding"
						icon_state="tree_binding"
						//should probably be a simple stun jutsu and maybe lower str? I'm suggesting lowering strength so that damage reduction is lowered since the target is stunned.
					Mental_Barricade
						name ="Genjutsu: Mental Barricade"
						icon_state="mental_barricade"
						//I was looking through the scarce list of jutsu done in the manga and the show. I saw this one and thought well the game looks and keeps track of most used jutsu from players and maybe this genjutsu canuse that. Its the technique pain uses on his rain nin to keep them from leaking information. he basically seals away their knowledge of what they do. so I think this can be applied to combat. like if an opponent is stunned (koed even?) you can if 1 tile away lock away their most used jutsu? or lock away their top 3? the skill would go on c/d or disappear for a number of seconds = to your int including boost? This might be a game changing move
					Sly_Mind
						name = "Genjutsu: Sly Mind Affect Technique"
						icon_state="slymind"
				taijutsu
					Front_Lotus
						icon_state="primary_lotus"
					Primary_Lotus
						icon_state="primary_lotus"
					Lion_Combo
						icon_state="lioncombo"
					Achiever_of_Nirvana_Fist
						icon_state="achiever_of_nirvana_fist"
					Leaf_Whirlwind
						icon_state="leaf_whirlwind"
					Leaf_Great_Whirlwind
						icon_state="leaf_great_whirlwind"
					Morning_Peacock
						icon_state="morning_peacock"
					Shadow_Dance
						name = "Taijutsu: Shadow of the Dancing Leaf"
						icon_state="shadow_dance"
					Leaf_Gale
						icon_state="gale"
					Dynamic_Entry
						icon_state="dynamic"
				weapons
					Manipulate_Advancing_Blades
						icon_state="Manipulate Advancing Blades"
					Shuriken_Shadow_Clone
						icon_state="Shuriken Kage Bunshin no Jutsu"
					Twin_Rising_Dragons
						icon_state="Twin Rising Dragons"
					Windmill_Shuriken
						icon_state="windmill"
					Shadow_Windmill_Shuriken
						icon_state="Shadow_Windmill"
					Flash_Bomb
						icon_state="flashkunai"
					Smoke_Grenade
						icon_state="smoke"
					Exploding_Kunai
						icon_state="explkunai"
					Triple_Exploding_Kunai
						icon_state="tripleexplnote"
					Exploding_Note
						icon_state="explnote"
					Dancing_Blade
						icon_state="blade_dance"
					Iai_Beheading
						icon_state = "blade_cut"
					Instant
						icon_state = "blade_slash"
				Body_Flicker
					icon_state="shunshin"
				Body_Replacement
					icon_state="kawarimi"
				Exploding_Body_Replacement
					icon_state="exploding_kawarimi"
				Rasengan
					icon_state="rasengan"
				Large_Rasengan
					icon_state="oodama_rasengan"
				Camouflaged_Hiding
					icon_state="Camouflage Concealment Technique"
				Chakra_Leech
					icon_state="chakra_leach"
				Transform
					icon_state="henge"
			medical
				Healing
					icon_state="medical_jutsu"
				Poison_Mist
					icon_state="poisonbreath"
				Poisoned_Needles
					icon_state="poison_needles"
				Chakra_Enhancement
					icon_state="chakra_enhancement"
				Chakra_Scalpel
					icon_state="mystical_palm_technique"
				Menacing_Palm
					icon_state="mystical_palm_technique2"
				Cherry_Blossom_Impact
					icon_state="chakra_taijutsu_release"
					//do you think we can make this move just do half your con+str? and if it misses it does aoe damage equal to your con? the chakra enhancment can just be the normal ctr with a small 75-100 chakra drain but it would have the huge pushback?
				Creation_Rebirth
					icon_state="pheonix_rebirth"
				Delicate_Extraction
					icon_state="delicate_extraction"
				Body_Disruption_Stab
					icon_state="important_body_ponts_disturbance"
				eye_extract
					icon_state = "extract"
				sharingan_implant
					icon_state = "simplant"
				byakugan_implant
					icon_state = "bimplant"
