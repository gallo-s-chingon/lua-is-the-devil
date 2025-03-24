local function create()
  local zk_dir = vim.fn.expand("~/notes/2-zk")

  -- Ensure directory exists
  vim.fn.mkdir(zk_dir, "p")

  -- Small Files Table (119 entries)
  local small_files = {
    {
      name = "DD-The-Barstool-Breakup",
      content = [[
---
id: DD-The-Barstool-Breakup
alias: The Barstool Breakup
author: Gallo-Salvaje; Chingon
created: 2025-03-21 18:00
tags: [dating, storytelling, guest]
---
# DD - The Barstool Breakup
> breaking up in public  
A date that crashed mid-drink. Guest: TBD.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the crash like mid-drink?*  
  - *Feel the buzz turn sour when her “we’re done” hits.*  
  - *Logic says public splits sting harder—eyes everywhere.*  
  - *Picture the barstool wobble, her exit a neon blur.*  
- **Pain Points**: *That gut punch in front of strangers*  
  - *Feel the shame burn as heads turn your way.*  
  - *Hard fact: public shame triples breakup scars.*  
  - *See the crowd stare, your drink flat as fuck.*  
- **Relatability & Personal Connection**: *I’ve been dumped loud too*  
  - *Feel that sting when her yell echoes the bar.*  
  - *Been there: I ate public heartbreak at 22.*  
  - *Picture me, red-faced, beer warm as tears.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DD-Taco-Truck-Temptress",
      content = [[
---
id: DD-Taco-Truck-Temptress
alias: Taco Truck Temptress
author: Gallo-Salvaje; Chingon
created: 2025-03-21 18:05
tags: [dating, storytelling, guest]
---
# DD - Taco Truck Temptress
> love over late-night tacos  
Tacos sparked more than hunger. Guest: TBD.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s cooking under that streetlight?*  
  - *Feel the sizzle when her eyes lock over salsa.*  
  - *Logic says food trucks breed late-night magic.*  
  - *Picture her smirk, grease shining in the glow.*  
- **Pain Points**: *Craving her more than the meal*  
  - *Feel that ache when she’s gone but the taco stays.*  
  - *Truth hits: fleeting sparks burn the deepest.*  
  - *See her vanish, tortilla crumbs your only date.*  
- **Relatability & Personal Connection**: *I’ve fallen for a salsa smile too*  
  - *Feel the heat of her grin over greasy tortillas.*  
  - *Been there: food truck love hit me at 2 a.m.*  
  - *Picture me, her laugh lighting up the line.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DD-Blind-Date-Bust",
      content = [[
---
id: DD-Blind-Date-Bust
alias: Blind Date Bust
author: Gallo-Salvaje; Chingon
created: 2025-03-21 18:10
tags: [dating, storytelling, guest]
---
# DD - Blind Date Bust
> blind date gone wrong  
Stranger danger hit hard. Guest: TBD.

## Copywriting Hooks
- **Curiosity & Intrigue**: *Who’s this flop across the table?*  
  - *Feel the cringe when their vibe screams “nope.”*  
  - *Logic says blind bets rarely cash out.*  
  - *Picture their awkward grin, clock ticking loud.*  
- **Pain Points**: *Wasted night, zero sparks*  
  - *Feel the drag when silence chokes the air.*  
  - *Hard stat: 80% of blind dates tank fast.*  
  - *See the exit sign glow, your hope dimming.*  
- **Relatability & Personal Connection**: *I’ve bombed blind too, ese*  
  - *Feel that flop when “nice” turns to nada.*  
  - *Been there: setup dates fucked me at 25.*  
  - *Picture me faking smiles, counting minutes.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DD-Dance-Floor-Disaster",
      content = [[
---
id: DD-Dance-Floor-Disaster
alias: Dance Floor Disaster
author: Gallo-Salvaje; Chingon
created: 2025-03-21 18:15
tags: [dating, storytelling, guest]
---
# DD - Dance Floor Disaster
> losing her to the rhythm  
She grooved away from me. Guest: TBD.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the beat stealing her for?*  
  - *Feel the bass when she sways out of reach.*  
  - *Logic says rhythm trumps your game here.*  
  - *Picture her hips, lights flashing her goodbye.*  
- **Pain Points**: *Left solo in the strobe*  
  - *Feel the sting when her dance ditches you.*  
  - *Truth bites: you’re the wallflower now.*  
  - *See her twirl off, your moves dust.*  
- **Relatability & Personal Connection**: *I’ve been outdanced too*  
  - *Feel that drop when she spins to some cholo.*  
  - *Been there: I ate floor shame at 19.*  
  - *Picture me, stiff, her rhythm a taunt.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DD-Coffee-Shop-Confessions",
      content = [[
---
id: DD-Coffee-Shop-Confessions
alias: Coffee Shop Confessions
author: Gallo-Salvaje; Chingon
created: 2025-03-21 18:20
tags: [dating, storytelling, guest]
---
# DD - Coffee Shop Confessions
> spilling more than coffee  
Truth poured out with the brew. Guest: TBD.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s brewing beyond the beans?*  
  - *Feel the jolt when her words hit harder.*  
  - *Logic says caffeine fuels raw talks.*  
  - *Picture her eyes, steam curling secrets.*  
- **Pain Points**: *Hot mess over lattes*  
  - *Feel the burn when her spill cuts deep.*  
  - *Hard fact: confessions ruin half the dates.*  
  - *See the cup tip, her truth scalding.*  
- **Relatability & Personal Connection**: *I’ve spilled my soul too*  
  - *Feel that rush when “I like you” slips out.*  
  - *Been there: coffee chats bared me at 23.*  
  - *Picture me, shaky, mug hiding my flush.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DD-Can-You-Flirt-Without-Screwing-It-Up",
      content = [[
---
id: DD-Can-You-Flirt-Without-Screwing-It-Up
alias: Can You Flirt Without Screwing It Up?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 18:25
tags: [dating, storytelling, guest, curiosity-intrigue]
---
# DD - Can You Flirt Without Screwing It Up?
> how to flirt without being too obvious  
Subtle game tales. Guest: TBD.

## Copywriting Hooks
- **Curiosity & Intrigue**: *Drop the mask, not your pants*  
  - *Feel the electric buzz of a sneaky vibe that hooks.*  
  - *Logic’s clear: loud flirts crash, subtle sticks.*  
  - *Picture a sly wink, pulling them in like a magnet.*  
- **Pain Points**: *Too much and you’re toast*  
  - *Feel the flop when your “hey” lands like lead.*  
  - *Hard stat: over-flirts bomb 70% of shots.*  
  - *See their eye-roll, your charm DOA.*  
- **Relatability & Personal Connection**: *I’ve botched the smooth too*  
  - *Feel that cringe when my wink hit a wall.*  
  - *Been there: I overshot at 24, crashed.*  
  - *Picture me, fumbling, their laugh a dagger.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DD-Can-You-Bounce-Back-Like-a-Boss",
      content = [[
---
id: DD-Can-You-Bounce-Back-Like-a-Boss
alias: Can You Bounce Back Like a Boss?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 18:30
tags: [dating, storytelling, guest, relatability-personal-connection]
---
# DD - Can You Bounce Back Like a Boss?
> how to handle rejection gracefully  
Rejection tales that don’t break you. Guest: TBD.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the trick to shrugging “no”?*  
  - *Feel that sting, then the lift when you walk.*  
  - *Logic says “no” ain’t the end—just a detour.*  
  - *Picture their “nah,” you strutting off anyway.*  
- **Pain Points**: *Rejection’s a gut punch*  
  - *Feel that drop when “not you” lands heavy.*  
  - *Cold fact: 60% of “nos” scar if you cling.*  
  - *See their back turn, your pride bleeding.*  
- **Relatability & Personal Connection**: *I’ve eaten “no” for breakfast, fam*  
  - *Feel that kick when their “nah” lands like a brick.*  
  - *Been there: rejection stings, then fades.*  
  - *Picture me shrugged off at the bar, still standing.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DD-Can-You-Smell-Trouble-Brewing",
      content = [[
---
id: DD-Can-You-Smell-Trouble-Brewing
alias: Can You Smell Trouble Brewing?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 18:35
tags: [dating, storytelling, guest, curiosity-intrigue]
---
# DD - Can You Smell Trouble Brewing?
> how to spot red flags early in dating  
Early warning tales. Guest: TBD.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s that whiff of chaos?*  
  - *Feel that itch when their “joke” lands like a jab.*  
  - *Think it: early hints scream louder than regrets.*  
  - *Picture a sly dodge, their mask slipping just enough.*  
- **Pain Points**: *Missed flags fuck you later*  
  - *Feel the dread when “cute” turns to crazy.*  
  - *Hard stat: ignored flags sink 80% of dates.*  
  - *See their grin twist, trouble in neon.*  
- **Relatability & Personal Connection**: *I’ve sniffed bullshit too late*  
  - *Feel that gut nag when “nice” feels off.*  
  - *Been there: I ignored red at 21, paid.*  
  - *Picture me blind, their storm brewing.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DDT-Swipe-Right-Ask-Later",
      content = [[
---
id: DDT-Swipe-Right-Ask-Later
alias: Swipe Right Ask Later
author: Gallo-Salvaje; Chingon
created: 2025-03-21 18:40
tags: [dating, online, monologue]
---
# DDT - Swipe Right, Ask Later
> tinder chaos unleashed  
A Tinder Q&A gone wild.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s behind that swipe?*  
  - *Feel the rush when “match” turns to madness.*  
  - *Logic says apps are roulette—spin at risk.*  
  - *Picture their pic, a trap in pixels.*  
- **Pain Points**: *Swipe regret hits hard*  
  - *Feel the cringe when “hot” turns to “hell no.”*  
  - *Cold stat: 70% of swipes waste your night.*  
  - *See their chat blow up, your hope crashing.*  
- **Relatability & Personal Connection**: *I’ve swiped into doom too*  
  - *Feel that buzz sour when their “hi” flops.*  
  - *Been there: Tinder fucked me at 26.*  
  - *Picture me unmatched, thumb sore.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DDT-Catfish-Caught",
      content = [[
---
id: DDT-Catfish-Caught
alias: Catfish Caught
author: Gallo-Salvaje; Chingon
created: 2025-03-21 18:45
tags: [dating, online, monologue]
---
# DDT - Catfish Caught
> unmasking the fake  
Online love turned fraud.

## Copywriting Hooks
- **Curiosity & Intrigue**: *Who’s really typing that “babe”?*  
  - *Feel the chill when their pic don’t match.*  
  - *Logic says filters hide more than flaws.*  
  - *Picture their “selfie,” a ghost in the glow.*  
- **Pain Points**: *Duped by a digital lie*  
  - *Feel the sting when “hot” turns to “who?”*  
  - *Hard stat: 1 in 5 profiles fake it big.*  
  - *See their mask drop, your trust trashed.*  
- **Relatability & Personal Connection**: *I’ve been catfished too, fam*  
  - *Feel that drop when “her” voice goes deep.*  
  - *Been there: I ate a fake at 23.*  
  - *Picture me, fooled, their pic a scam.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DDT-DMs-of-Doom",
      content = [[
---
id: DDT-DMs-of-Doom
alias: DMs of Doom
author: Gallo-Salvaje; Chingon
created: 2025-03-21 18:50
tags: [dating, online, monologue]
---
# DDT - DMs of Doom
> creepy texts unravel  
When chats turn dark.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s lurking in that inbox?*  
  - *Feel the creep when “hey” turns to “where u at?”*  
  - *Logic says DMs hide the weirdest shit.*  
  - *Picture their text, a shadow on your screen.*  
- **Pain Points**: *Trapped by a freak’s words*  
  - *Feel the dread when “cute” goes stalker.*  
  - *Hard stat: 40% of DMs turn sour fast.*  
  - *See their spam pile, your peace fucked.*  
- **Relatability & Personal Connection**: *I’ve dodged DM creeps too*  
  - *Feel that chill when “nice” flips to nuts.*  
  - *Been there: I blocked a psycho at 27.*  
  - *Picture me, sweating, their ping a curse.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DDT-App-Date-Apocalypse",
      content = [[
---
id: DDT-App-Date-Apocalypse
alias: App Date Apocalypse
author: Gallo-Salvaje; Chingon
created: 2025-03-21 18:55
tags: [dating, online, monologue]
---
# DDT - App Date Apocalypse
> hinge horror tales  
App dates gone to hell.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the disaster behind “match”?*  
  - *Feel the dread when “cute” turns to chaos.*  
  - *Logic says app dates roll dice with doom.*  
  - *Picture their bio, a lie in neon.*  
- **Pain Points**: *Nightmare swipes scar deep*  
  - *Feel the flop when “fun” turns to freak.*  
  - *Cold stat: 50% of app dates tank hard.*  
  - *See their face drop, your night trashed.*  
- **Relatability & Personal Connection**: *I’ve survived app hell too*  
  - *Feel that sink when their “hi” goes haywire.*  
  - *Been there: Hinge burned me at 28.*  
  - *Picture me, stuck, their vibe a bust.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DDT-Reddit-Rescues",
      content = [[
---
id: DDT-Reddit-Rescues
alias: Reddit Rescues
author: Gallo-Salvaje; Chingon
created: 2025-03-21 19:00
tags: [dating, online, monologue]
---
# DDT - Reddit Rescues
> saving a profile flop  
Reddit fixes my swipe sins.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the hack to un-fuck a bio?*  
  - *Feel the lift when “lame” turns to gold.*  
  - *Logic says Reddit’s got the swipe cure.*  
  - *Picture my profile, polished by randos.*  
- **Pain Points**: *Your bio’s a swipe killer*  
  - *Feel the sting when “boring” gets no hits.*  
  - *Hard stat: bad bios tank 90% of shots.*  
  - *See my “hey” flop, matches dry.*  
- **Relatability & Personal Connection**: *I’ve sucked at profiles too*  
  - *Feel that flop when my pic got nada.*  
  - *Been there: Reddit saved me at 29.*  
  - *Picture me, tweaking, swipes climbing.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DDT-Are-You-Chasing-a-Ghost",
      content = [[
---
id: DDT-Are-You-Chasing-a-Ghost
alias: Are You Chasing a Ghost?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 19:05
tags: [dating, online, monologue, curiosity-intrigue]
---
# DDT - Are You Chasing a Ghost?
> the signs that someone is not interested in you  
Online fades decoded.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s their silence screaming?*  
  - *Feel that gut punch when “busy” lands hollow.*  
  - *Logic whispers: no reply, no dice—stop kidding.*  
  - *Imagine their phone glowing, your text dust.*  
- **Pain Points**: *Ghosted and gutted*  
  - *Feel the void when their “later” never comes.*  
  - *Cold stat: 70% of chats die unspoken.*  
  - *See their “read,” your hope a tomb.*  
- **Relatability & Personal Connection**: *I’ve chased ghosts too, fam*  
  - *Feel that ache when “typing” goes dark.*  
  - *Been there: I texted air at 25.*  
  - *Picture me, waiting, their silence loud.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "CC-Iran-Contra-and-Contra",
      content = [[
---
id: CC-Iran-Contra-and-Contra
alias: Iran-Contra and Contra
author: Gallo-Salvaje; Chingon
created: 2025-03-21 19:10
tags: [history, personal, monologue]
---
# CC - Iran-Contra & Contra
> kid me and CIA cash  
Video games and shady deals.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s a kid know about CIA loot?*  
  - *Feel the thrill when Contra felt real.*  
  - *Logic says 80s news bled into my NES.*  
  - *Picture me, 8-bit gun, cash in the air.*  
- **Pain Points**: *Innocence lost to headlines*  
  - *Feel the weight when TV truth hit home.*  
  - *Hard fact: scandals shaped my kid brain.*  
  - *See the screen flicker, Ollie North glaring.*  
- **Relatability & Personal Connection**: *I grew up on this shit too*  
  - *Feel that buzz when Contra codes ruled.*  
  - *Been there: I ate Iran-Contra at 9.*  
  - *Picture me, joystick tight, news loud.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "CC-Snowfall-Shadows",
      content = [[
---
id: CC-Snowfall-Shadows
alias: Snowfall Shadows
author: Gallo-Salvaje; Chingon
created: 2025-03-21 19:15
tags: [history, personal, monologue]
---
# CC - Snowfall Shadows
> crack’s 80s roots  
My block’s dark 80s haze.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the street hiding in ‘85?*  
  - *Feel the chill when corners turned grim.*  
  - *Logic says crack rewrote my hood.*  
  - *Picture pipes glowing, shadows long.*  
- **Pain Points**: *Crack stole my streets*  
  - *Feel the loss when “home” turned hostile.*  
  - *Hard stat: 80s dope hit 1 in 10 here.*  
  - *See the fiends creep, my block gone.*  
- **Relatability & Personal Connection**: *I dodged that shadow too*  
  - *Feel that edge when sirens sang nightly.*  
  - *Been there: I saw crack at 11.*  
  - *Picture me, wide-eyed, streets raw.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "CC-Y2K-Kid-Panic",
      content = [[
---
id: CC-Y2K-Kid-Panic
alias: Y2K Kid Panic
author: Gallo-Salvaje; Chingon
created: 2025-03-21 19:20
tags: [history, personal, monologue]
---
# CC - Y2K Kid Panic
> stockpiling spam at 10  
My end-of-days freakout.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s a kid hoard for doomsday?*  
  - *Feel the buzz when “2000” meant blackout.*  
  - *Logic says Y2K scared us silly.*  
  - *Picture me, Spam cans, clock ticking.*  
- **Pain Points**: *Fear fucked my childhood*  
  - *Feel the dread when “end” felt real.*  
  - *Hard fact: 90s kids ate panic hype.*  
  - *See my stash pile, sleep gone.*  
- **Relatability & Personal Connection**: *I freaked at Y2K too*  
  - *Feel that shake when “crash” was gospel.*  
  - *Been there: I hid cans at 10.*  
  - *Picture me, scared, Spam my shield.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "CC-Grunge-Ground-Zero",
      content = [[
---
id: CC-Grunge-Ground-Zero
alias: Grunge Ground Zero
author: Gallo-Salvaje; Chingon
created: 2025-03-21 19:25
tags: [history, personal, monologue]
---
# CC - Grunge Ground Zero
> sneaking into 90s gigs  
My teen flannel rebellion.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s a kid chase in the pit?*  
  - *Feel the roar when Nirvana shook me.*  
  - *Logic says grunge was my escape hatch.*  
  - *Picture me, flannel, crowd surging.*  
- **Pain Points**: *Outsider ‘til the bass hit*  
  - *Feel the ache when “cool” skipped me.*  
  - *Hard stat: 90s gigs were teen church.*  
  - *See me sneak in, lonely ‘til loud.*  
- **Relatability & Personal Connection**: *I lived grunge too, fam*  
  - *Feel that rush when Cobain screamed my pain.*  
  - *Been there: I crashed gigs at 15.*  
  - *Picture me, sweaty, sound my home.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "CC-Dial-Up-Days",
      content = [[
---
id: CC-Dial-Up-Days
alias: Dial-Up Days
author: Gallo-Salvaje; Chingon
created: 2025-03-21 19:30
tags: [history, personal, monologue]
---
# CC - Dial-Up Days
> my first net crush  
Love over a 56k scream.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s love sound like at 56k?*  
  - *Feel the buzz when “ASL” lit my screen.*  
  - *Logic says dial-up bred weird romance.*  
  - *Picture that screech, her chat popping.*  
- **Pain Points**: *Crush crashed with the modem*  
  - *Feel the sting when “she” logged off forever.*  
  - *Hard stat: 90s net love was 90% ghosts.*  
  - *See the disconnect, my heart static.*  
- **Relatability & Personal Connection**: *I chased pixels too*  
  - *Feel that thrill when “hi” took 10 minutes.*  
  - *Been there: I typed love at 14.*  
  - *Picture me, modem howling, her words gold.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "TH-Y2K-Hoax-or-Hustle",
      content = [[
---
id: TH-Y2K-Hoax-or-Hustle
alias: Y2K Hoax or Hustle
author: Gallo-Salvaje; Chingon
created: 2025-03-21 19:35
tags: [conspiracy, retro, monologue]
---
# TH - Y2K: Hoax or Hustle?
> tech scam or panic play  
Was 2000 a big con?

## Copywriting Hooks
- **Curiosity & Intrigue**: *Who cashed in on “crash”?*  
  - *Feel the itch when “fix” smelled like greed.*  
  - *Logic says Y2K was a tech gold rush.*  
  - *Picture suits laughing, my Spam stacked.*  
- **Pain Points**: *We bought the panic hard*  
  - *Feel the burn when “safe” cost us big.*  
  - *Hard stat: billions blown on nothing.*  
  - *See the hype pile, our wallets dry.*  
- **Relatability & Personal Connection**: *I fell for Y2K too*  
  - *Feel that dread when “end” felt legit.*  
  - *Been there: I hoarded at 10, duped.*  
  - *Picture me, scared, their lie my truth.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "TH-Tamagotchi-Trackers",
      content = [[
---
id: TH-Tamagotchi-Trackers
alias: Tamagotchi Trackers
author: Gallo-Salvaje; Chingon
created: 2025-03-21 19:40
tags: [conspiracy, retro, monologue]
---
# TH - Tamagotchi Trackers
> 90s toys spying  
Were my pets Big Brother?

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s my Tamagotchi telling?*  
  - *Feel the creep when “beep” felt off.*  
  - *Logic says toys could snitch quiet.*  
  - *Picture that egg, a spy in my pocket.*  
- **Pain Points**: *Toy trust turned sour*  
  - *Feel the sting when “cute” might rat.*  
  - *Hard stat: 90s tech hid weird shit.*  
  - *See my pet blink, secrets leaking.*  
- **Relatability & Personal Connection**: *I fed spies too, maybe*  
  - *Feel that bond when I nursed that egg.*  
  - *Been there: I loved it at 12, blind.*  
  - *Picture me, doting, tracked by beeps.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "TH-Area-51-Mixtape",
      content = [[
---
id: TH-Area-51-Mixtape
alias: Area 51 Mixtape
author: Gallo-Salvaje; Chingon
created: 2025-03-21 19:45
tags: [conspiracy, retro, monologue]
---
# TH - Area 51 Mixtape
> aliens or grunge vibes  
UFOs or 90s coverup?

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the desert jamming to?*  
  - *Feel the buzz when “lights” hit my radio.*  
  - *Logic says Area 51’s got layers.*  
  - *Picture saucers, Nirvana in the sand.*  
- **Pain Points**: *Truth’s buried in static*  
  - *Feel the itch when “no” feels like lies.*  
  - *Hard stat: 90s UFO hype spiked 50%.*  
  - *See the fence gleam, secrets locked.*  
- **Relatability & Personal Connection**: *I chased aliens too*  
  - *Feel that thrill when X-Files felt real.*  
  - *Been there: I scanned skies at 13.*  
  - *Picture me, starry-eyed, truth out there.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "TH-Beanie-Baby-Bubble",
      content = [[
---
id: TH-Beanie-Baby-Bubble
alias: Beanie Baby Bubble
author: Gallo-Salvaje; Chingon
created: 2025-03-21 19:50
tags: [conspiracy, retro, monologue]
---
# TH - Beanie Baby Bubble
> plushie pyramid scheme  
Stuffed toys or big scam?

## Copywriting Hooks
- **Curiosity & Intrigue**: *Who’s cashing my bear bucks?*  
  - *Feel the hype when “rare” smelled fishy.*  
  - *Logic says Beanies were a plush con.*  
  - *Picture my pile, a scam in fluff.*  
- **Pain Points**: *Toy dreams got fleeced*  
  - *Feel the burn when “value” crashed fast.*  
  - *Hard stat: 90s collectors lost millions.*  
  - *See my stash rot, worth jack.*  
- **Relatability & Personal Connection**: *I hoarded Beanies too*  
  - *Feel that rush when “next big” hit.*  
  - *Been there: I stacked ‘em at 11.*  
  - *Picture me, proud, duped by tags.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "TH-MTV-Mind-Control",
      content = [[
---
id: TH-MTV-Mind-Control
alias: MTV Mind Control
author: Gallo-Salvaje; Chingon
created: 2025-03-21 19:55
tags: [conspiracy, retro, monologue]
---
# TH - MTV Mind Control
> subliminal 90s waves  
Did videos brainwash me?

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s MTV slipping in my head?*  
  - *Feel the hum when “cool” took root.*  
  - *Logic says vids hid more than beats.*  
  - *Picture that logo, a brain zap.*  
- **Pain Points**: *TV stole my free will*  
  - *Feel the pull when “must-watch” owned me.*  
  - *Hard stat: 90s kids glued 20 hours weekly.*  
  - *See the screen glow, my mind gone.*  
- **Relatability & Personal Connection**: *I was MTV’s bitch too*  
  - *Feel that hook when “Unplugged” ruled.*  
  - *Been there: I zoned out at 14.*  
  - *Picture me, couch-locked, vids my god.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "FF-90s-Cult-Craze",
      content = [[
---
id: FF-90s-Cult-Craze
alias: 90s Cult Craze
author: Gallo-Salvaje; Chingon
created: 2025-03-21 20:00
tags: [religion, history, monologue]
---
# FF - 90s Cult Craze
> heaven’s gate next door  
Cults hit my backyard.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the pull of cosmic Kool-Aid?*  
  - *Feel the chill when “truth” wore Nikes.*  
  - *Logic says 90s bred wild faith.*  
  - *Picture robes, my block buzzing.*  
- **Pain Points**: *Faith turned fatal close*  
  - *Feel the dread when “salvation” killed.*  
  - *Hard stat: 90s cults spiked 30%.*  
  - *See the news flash, my peace shook.*  
- **Relatability & Personal Connection**: *I saw cult vibes too*  
  - *Feel that edge when “weird” hit home.*  
  - *Been there: I peeked at 15, spooked.*  
  - *Picture me, staring, their chant loud.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "FF-Vatican-Vaults",
      content = [[
---
id: FF-Vatican-Vaults
alias: Vatican Vaults
author: Gallo-Salvaje; Chingon
created: 2025-03-21 20:05
tags: [religion, history, monologue]
---
# FF - Vatican Vaults
> pope’s hidden stash  
Secrets under Rome.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the Church burying deep?*  
  - *Feel the itch when “holy” smells off.*  
  - *Logic says vaults hide more than dust.*  
  - *Picture gold doors, truth locked tight.*  
- **Pain Points**: *Faith’s got skeletons*  
  - *Feel the sting when “pure” feels fake.*  
  - *Hard stat: Vatican’s got centuries of shade.*  
  - *See the locks gleam, my trust dim.*  
- **Relatability & Personal Connection**: *I questioned popes too*  
  - *Feel that nag when “saint” felt fishy.*  
  - *Been there: I doubted at 16.*  
  - *Picture me, skeptical, their robe a lie.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "FF-Crusades-Uncut",
      content = [[
---
id: FF-Crusades-Uncut
alias: Crusades Uncut
author: Gallo-Salvaje; Chingon
created: 2025-03-21 20:10
tags: [religion, history, monologue]
---
# FF - Crusades Uncut
> holy wars unfiltered  
Blood in God’s name.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the real holy war dirt?*  
  - *Feel the clash when “faith” drew swords.*  
  - *Logic says crusades were raw power plays.*  
  - *Picture crosses, red with grit.*  
- **Pain Points**: *God’s wars scar deep*  
  - *Feel the weight when “holy” meant death.*  
  - *Hard stat: millions bled for faith.*  
  - *See the fields soak, my roots shook.*  
- **Relatability & Personal Connection**: *I dug crusade truth too*  
  - *Feel that shock when “good” turned grim.*  
  - *Been there: I read it at 17.*  
  - *Picture me, stunned, history raw.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "FF-Bible-Belt-Blues",
      content = [[
---
id: FF-Bible-Belt-Blues
alias: Bible Belt Blues
author: Gallo-Salvaje; Chingon
created: 2025-03-21 20:15
tags: [religion, history, monologue]
---
# FF - Bible Belt Blues
> 80s faith grind  
Church ruled my south.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s faith feel like down there?*  
  - *Feel the hum when “amen” owned us.*  
  - *Logic says Bible Belt choked free thought.*  
  - *Picture pews packed, my world tight.*  
- **Pain Points**: *God’s grip squeezed hard*  
  - *Feel the strain when “sin” caged me.*  
  - *Hard stat: 80s faith hit 80% down south.*  
  - *See the steeples loom, my breath short.*  
- **Relatability & Personal Connection**: *I felt that belt too*  
  - *Feel that pull when “hell” scared me straight.*  
  - *Been there: I sat through it at 12.*  
  - *Picture me, sweaty, preacher loud.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "FF-Witch-Hunt-Rewind",
      content = [[
---
id: FF-Witch-Hunt-Rewind
alias: Witch Hunt Rewind
author: Gallo-Salvaje; Chingon
created: 2025-03-21 20:20
tags: [religion, history, monologue]
---
# FF - Witch Hunt Rewind
> salem echoes in 90s  
Fear’s old ghost returned.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the 90s witch vibe?*  
  - *Feel the chill when “evil” got loud again.*  
  - *Logic says panic loops through time.*  
  - *Picture crosses flare, my town tense.*  
- **Pain Points**: *Hysteria hit home*  
  - *Feel the dread when “witch” pointed near.*  
  - *Hard stat: 90s moral panic spiked 20%.*  
  - *See the whispers grow, my peace gone.*  
- **Relatability & Personal Connection**: *I felt that fear too*  
  - *Feel that shake when “devil” hit gossip.*  
  - *Been there: I saw it at 13.*  
  - *Picture me, spooked, rumors wild.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DR-Ghosted-Again",
      content = [[
---
id: DR-Ghosted-Again
alias: Ghosted Again
author: Gallo-Salvaje; Chingon
created: 2025-03-21 20:25
tags: [dating, advice, guest]
---
# DR - Ghosted Again?
> fixing the fade  
Reddit’s ghostbusting tips. Guest: TBD.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the cure for vanishing acts?*  
  - *Feel the spark when “gone” gets cracked.*  
  - *Logic says Reddit’s got ghost fixes.*  
  - *Picture their fade, my comeback clear.*  
- **Pain Points**: *Ghosts gut you quiet*  
  - *Feel the void when “hi” turns to air.*  
  - *Hard stat: 60% get ghosted yearly.*  
  - *See their silence, my hope dust.*  
- **Relatability & Personal Connection**: *I’ve been ghosted too, fam*  
  - *Feel that drop when texts go dead.*  
  - *Been there: I ate fades at 24.*  
  - *Picture me, waiting, their chat cold.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DR-First-Date-Fails",
      content = [[
---
id: DR-First-Date-Fails
alias: First Date Fails
author: Gallo-Salvaje; Chingon
created: 2025-03-21 20:30
tags: [dating, advice, guest]
---
# DR - First Date Fails
> awkward openers flop  
Reddit saves my stumbles. Guest: TBD.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the fix for a crash start?*  
  - *Feel the cringe when “hi” lands flat.*  
  - *Logic says Reddit’s got opener gold.*  
  - *Picture my flop, their tips shine.*  
- **Pain Points**: *First flops kill vibes*  
  - *Feel the dread when “nice” bombs hard.*  
  - *Hard stat: 70% of dates die at “hello.”*  
  - *See my stumble, their exit fast.*  
- **Relatability & Personal Connection**: *I’ve bombed openers too*  
  - *Feel that sweat when “hey” went nowhere.*  
  - *Been there: I fucked firsts at 22.*  
  - *Picture me, mute, their eyes blank.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DR-Swipe-SOS",
      content = [[
---
id: DR-Swipe-SOS
alias: Swipe SOS
author: Gallo-Salvaje; Chingon
created: 2025-03-21 20:35
tags: [dating, advice, guest]
---
# DR - Swipe SOS
> profile rescue mission  
Reddit revamps my app game. Guest: TBD.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the hack to swipe right?*  
  - *Feel the lift when “meh” turns hot.*  
  - *Logic says Reddit’s got profile juice.*  
  - *Picture my bio, now a magnet.*  
- **Pain Points**: *Swipe left’s my curse*  
  - *Feel the sting when “boring” kills me.*  
  - *Hard stat: 80% of profiles flop fast.*  
  - *See my pics fade, matches zero.*  
- **Relatability & Personal Connection**: *I’ve sucked at swipes too*  
  - *Feel that flop when my app stayed dry.*  
  - *Been there: I begged Reddit at 26.*  
  - *Picture me, tweaking, swipes rise.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DR-Text-Game-Trash",
      content = [[
---
id: DR-Text-Game-Trash
alias: Text Game Trash
author: Gallo-Salvaje; Chingon
created: 2025-03-21 20:40
tags: [dating, advice, guest]
---
# DR - Text Game Trash
> reddit’s worst flirts  
Fixing my chat flops. Guest: TBD.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the cure for text wrecks?*  
  - *Feel the buzz when “lame” turns smooth.*  
  - *Logic says Reddit’s got chat cheats.*  
  - *Picture my “hi,” now a winner.*  
- **Pain Points**: *Texts tank my shot*  
  - *Feel the cringe when “hey” gets nada.*  
  - *Hard stat: 60% of chats die dumb.*  
  - *See my screen blank, game over.*  
- **Relatability & Personal Connection**: *I’ve texted trash too*  
  - *Feel that flop when “cool” went cold.*  
  - *Been there: I bombed texts at 23.*  
  - *Picture me, typing, their reply dead.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DR-Date-Nightmares",
      content = [[
---
id: DR-Date-Nightmares
alias: Date Nightmares
author: Gallo-Salvaje; Chingon
created: 2025-03-21 20:45
tags: [dating, advice, guest]
---
# DR - Date Nightmares
> horror stories solved  
Reddit fixes my disasters. Guest: TBD.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the fix for date hell?*  
  - *Feel the rush when “nope” turns “yes.”*  
  - *Logic says Reddit’s got nightmare cures.*  
  - *Picture my crash, their save clear.*  
- **Pain Points**: *Dates haunt my nights*  
  - *Feel the dread when “fun” turns grim.*  
  - *Hard stat: 50% of dates flop ugly.*  
  - *See my night sink, terror live.*  
- **Relatability & Personal Connection**: *I’ve lived date hell too*  
  - *Feel that flop when “cute” went crazy.*  
  - *Been there: I ate it at 25.*  
  - *Picture me, stuck, their vibe a fright.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "DR-Can-You-Step-Up-Without-Crumbling",
      content = [[
---
id: DR-Can-You-Step-Up-Without-Crumbling
alias: Can You Step Up Without Crumbling?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 20:50
tags: [dating, advice, guest, relatability-personal-connection]
---
# DR - Can You Step Up Without Crumbling?
> how to build confidence before dating  
Reddit boosts my spine. Guest: TBD.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the trick to steel nerves?*  
  - *Feel the lift when “shy” turns bold.*  
  - *Logic says confidence wins dates fast.*  
  - *Picture my shake, now a strut.*  
- **Pain Points**: *Fear fucks my game*  
  - *Feel the quake when “hi” chokes me.*  
  - *Hard stat: 70% bomb from jitters.*  
  - *See my freeze, chance gone.*  
- **Relatability & Personal Connection**: *I’ve been the shaky mess too*  
  - *Feel that quake when “hi” feels like a cliff.*  
  - *Been there: I wobbled at 20.*  
  - *Picture me, sweating, voice cracked.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BB-Spice-or-Strike",
      content = [[
---
id: BB-Spice-or-Strike
alias: Spice or Strike
author: Gallo-Salvaje; Chingon
created: 2025-03-21 20:55
tags: [sex, advice, monologue]
---
# BB - Spice or Strike?
> bedroom flops fixed  
Reddit heats my sheets.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the spark to ignite it?*  
  - *Feel the buzz when “dull” turns wild.*  
  - *Logic says Reddit’s got bedroom hacks.*  
  - *Picture my rut, now a flame.*  
- **Pain Points**: *Boring kills the vibe*  
  - *Feel the drag when “same” goes stale.*  
  - *Hard stat: 60% of sex dies routine.*  
  - *See my bed cold, spark gone.*  
- **Relatability & Personal Connection**: *I’ve flopped in bed too*  
  - *Feel that flop when “hot” went flat.*  
  - *Been there: I sucked at 24.*  
  - *Picture me, stuck, sheets dull.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BB-Position-Problems",
      content = [[
---
id: BB-Position-Problems
alias: Position Problems
author: Gallo-Salvaje; Chingon
created: 2025-03-21 21:00
tags: [sex, advice, monologue]
---
# BB - Position Problems
> sex Qs solved  
Reddit fixes my angles.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the twist to nail it?*  
  - *Feel the shift when “ouch” turns “oh.”*  
  - *Logic says Reddit’s got position gold.*  
  - *Picture my fumble, now a win.*  
- **Pain Points**: *Wrong moves wreck it*  
  - *Feel the cringe when “try” goes limp.*  
  - *Hard stat: 50% flop on bad angles.*  
  - *See my tangle, mood crashed.*  
- **Relatability & Personal Connection**: *I’ve botched positions too*  
  - *Feel that flop when “up” went down.*  
  - *Been there: I fucked it at 25.*  
  - *Picture me, stuck, legs a mess.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BB-Dry-Spell-Diaries",
      content = [[
---
id: BB-Dry-Spell-Diaries
alias: Dry Spell Diaries
author: Gallo-Salvaje; Chingon
created: 2025-03-21 21:05
tags: [sex, advice, monologue]
---
# BB - Dry Spell Diaries
> breaking the slump  
Reddit ends my drought.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the key to rain again?*  
  - *Feel the rush when “dry” turns wet.*  
  - *Logic says Reddit’s got slump busters.*  
  - *Picture my desert, now a storm.*  
- **Pain Points**: *Dry spells drain you*  
  - *Feel the ache when “none” drags on.*  
  - *Hard stat: 40% hit dry spells yearly.*  
  - *See my bed empty, hope dust.*  
- **Relatability & Personal Connection**: *I’ve been dry too, fam*  
  - *Feel that void when “action” died.*  
  - *Been there: I starved at 26.*  
  - *Picture me, lonely, sheets cold.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BB-Foreplay-Fumbles",
      content = [[
---
id: BB-Foreplay-Fumbles
alias: Foreplay Fumbles
author: Gallo-Salvaje; Chingon
created: 2025-03-21 21:10
tags: [sex, advice, monologue]
---
# BB - Foreplay Fumbles
> warm-up woes  
Reddit tunes my prelude.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the play to heat it up?*  
  - *Feel the spark when “meh” turns hot.*  
  - *Logic says Reddit’s got foreplay tricks.*  
  - *Picture my stumble, now a tease.*  
- **Pain Points**: *Bad starts kill it*  
  - *Feel the flop when “touch” goes wrong.*  
  - *Hard stat: 70% need foreplay to vibe.*  
  - *See my rush fail, mood flat.*  
- **Relatability & Personal Connection**: *I’ve fumbled foreplay too*  
  - *Feel that miss when “slow” went fast.*  
  - *Been there: I botched it at 23.*  
  - *Picture me, clumsy, spark lost.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BB-Taboo-Talks",
      content = [[
---
id: BB-Taboo-Talks
alias: Taboo Talks
author: Gallo-Salvaje; Chingon
created: 2025-03-21 21:15
tags: [sex, advice, monologue]
---
# BB - Taboo Talks
> shy sex Qs  
Reddit cracks my kinks.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the whisper in the dark?*  
  - *Feel the buzz when “weird” turns hot.*  
  - *Logic says Reddit’s got taboo keys.*  
  - *Picture my blush, now a thrill.*  
- **Pain Points**: *Shame chokes my asks*  
  - *Feel the block when “kink” stays mute.*  
  - *Hard stat: 60% hide sex Qs.*  
  - *See my silence, desire trapped.*  
- **Relatability & Personal Connection**: *I’ve dodged taboo too*  
  - *Feel that shy when “want” felt wrong.*  
  - *Been there: I clammed up at 27.*  
  - *Picture me, quiet, kink buried.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Cheat-or-Chill",
      content = [[
---
id: BD-Cheat-or-Chill
alias: Cheat or Chill
author: Gallo-Salvaje; Chingon
created: 2025-03-21 21:20
tags: [relationships, advice, monologue]
---
# BD - Cheat or Chill?
> infidelity crossroads  
Reddit weighs my strays.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the line you don’t cross?*  
  - *Feel the pull when “tempt” whispers loud.*  
  - *Logic says Reddit’s got cheat maps.*  
  - *Picture my fork, trust on edge.*  
- **Pain Points**: *Cheating cuts deep*  
  - *Feel the rip when “us” turns “her.”*  
  - *Hard stat: 40% cheat, 80% regret.*  
  - *See my bond break, guilt live.*  
- **Relatability & Personal Connection**: *I’ve felt the itch too*  
  - *Feel that tug when “new” shone bright.*  
  - *Been there: I teetered at 25.*  
  - *Picture me, torn, loyalty shaky.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Couple-Crash",
      content = [[
---
id: BD-Couple-Crash
alias: Couple Crash
author: Gallo-Salvaje; Chingon
created: 2025-03-21 21:25
tags: [relationships, advice, monologue]
---
# BD - Couple Crash
> fixing the fights  
Reddit mends my wars.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the patch for love’s blows?*  
  - *Feel the calm when “yell” turns “talk.”*  
  - *Logic says Reddit’s got fight fixes.*  
  - *Picture my clash, now a truce.*  
- **Pain Points**: *Fights fracture us*  
  - *Feel the sting when “love” draws blood.*  
  - *Hard stat: 50% split on fights.*  
  - *See my words cut, bond bruised.*  
- **Relatability & Personal Connection**: *I’ve fought dirty too*  
  - *Feel that heat when “sorry” stuck.*  
  - *Been there: I clashed at 26.*  
  - *Picture me, yelling, love strained.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Silent-Treatment",
      content = [[
---
id: BD-Silent-Treatment
alias: Silent Treatment
author: Gallo-Salvaje; Chingon
created: 2025-03-21 21:30
tags: [relationships, advice, monologue]
---
# BD - Silent Treatment
> cold war cures  
Reddit thaws my ice.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the melt for mute wars?*  
  - *Feel the shift when “quiet” cracks open.*  
  - *Logic says Reddit’s got silence busters.*  
  - *Picture my freeze, now a thaw.*  
- **Pain Points**: *Silence stabs slow*  
  - *Feel the chill when “talk” goes dead.*  
  - *Hard stat: 60% use silence as a blade.*  
  - *See my cold stare, love frostbit.*  
- **Relatability & Personal Connection**: *I’ve iced ‘em too*  
  - *Feel that wall when “speak” felt weak.*  
  - *Been there: I shut down at 24.*  
  - *Picture me, mute, her eyes blank.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Ex-Files",
      content = [[
---
id: BD-Ex-Files
alias: Ex Files
author: Gallo-Salvaje; Chingon
created: 2025-03-21 21:35
tags: [relationships, advice, monologue]
---
# BD - Ex Files
> breakup baggage  
Reddit unpacks my past.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s haunting my love now?*  
  - *Feel the tug when “old” creeps in.*  
  - *Logic says Reddit’s got ex exorcisms.*  
  - *Picture my scars, now unpacked.*  
- **Pain Points**: *Exes weigh me down*  
  - *Feel the drag when “her” lingers long.*  
  - *Hard stat: 70% carry ex ghosts.*  
  - *See my past cling, new love dim.*  
- **Relatability & Personal Connection**: *I’ve hauled exes too*  
  - *Feel that weight when “done” ain’t done.*  
  - *Been there: I lugged her at 27.*  
  - *Picture me, stuck, old fights loud.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Love-or-Leave",
      content = [[
---
id: BD-Love-or-Leave
alias: Love or Leave
author: Gallo-Salvaje; Chingon
created: 2025-03-21 21:40
tags: [relationships, advice, monologue]
---
# BD - Love or Leave?
> ultimatum hour  
Reddit picks my path.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the call when it’s do or die?*  
  - *Feel the edge when “stay” meets “go.”*  
  - *Logic says Reddit’s got endgame tips.*  
  - *Picture my fork, choice sharp.*  
- **Pain Points**: *Last straws break you*  
  - *Feel the snap when “us” hangs thin.*  
  - *Hard stat: 50% face this cliff.*  
  - *See my line drawn, heart torn.*  
- **Relatability & Personal Connection**: *I’ve faced the exit too*  
  - *Feel that pull when “out” loomed big.*  
  - *Been there: I chose at 28.*  
  - *Picture me, tense, door ajar.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Whats-Killing-Your-Love-Quietly",
      content = [[
---
id: BD-Whats-Killing-Your-Love-Quietly
alias: What's Killing Your Love Quietly?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 21:45
tags: [relationships, advice, monologue, pain-point]
---
# BD - What’s Killing Your Love Quietly?
> why communication is key in relationships  
Silence strangles slow.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s unsaid tearing you apart?*  
  - *Feel that itch when “fine” hides a bomb.*  
  - *Think it: quiet fights fester loudest.*  
  - *Picture their glare, words locked tight.*  
- **Pain Points**: *Your silence is a slow choke*  
  - *Feel the weight when words die and resentment festers.*  
  - *Hard data: unspoken shit doubles breakup odds.*  
  - *Picture a mute dinner, tension thick as ink.*  
- **Relatability & Personal Connection**: *I’ve choked on silence too*  
  - *Feel that knot when “talk” feels like war.*  
  - *Been there: I lost love to mute nights.*  
  - *Picture me, stewing, her quiet a blade.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Whos-Running-Your-Life",
      content = [[
---
id: BD-Whos-Running-Your-Life
alias: Who's Running Your Life?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 21:50
tags: [relationships, advice, monologue, relatability-personal-connection]
---
# BD - Who’s Running Your Life?
> the importance of setting boundaries  
Lines keep me free.

## Copywriting Hooks
- **Curiosity & Intrigue**: *Who’s pulling your strings quiet?*  
  - *Feel the tug when “yes” ain’t yours.*  
  - *Think it: no lines, no control—puppet life.*  
  - *Picture their grip, your will fading.*  
- **Pain Points**: *No borders bleed you dry*  
  - *Feel the drain when “sure” owns you.*  
  - *Hard stat: 60% crumble sans boundaries.*  
  - *See their needs swamp, your soul sunk.*  
- **Relatability & Personal Connection**: *I let them stomp me too, ese*  
  - *Feel that burn when “yes” till you’re hollow.*  
  - *Been there: no lines made me a mat at 23.*  
  - *Picture me nodding, drained, 3 a.m. bullshit.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Can-You-Kill-the-Green-Beast",
      content = [[
---
id: BD-Can-You-Kill-the-Green-Beast
alias: Can You Kill the Green Beast?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 21:55
tags: [relationships, advice, monologue, relatability-personal-connection]
---
# BD - Can You Kill the Green Beast?
> how to overcome jealousy  
Envy’s chokehold breaks.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the cure for green eyes?*  
  - *Feel the twist when “theirs” stabs you.*  
  - *Think it: jealousy’s a self-made cage.*  
  - *Picture their “win,” your peace free.*  
- **Pain Points**: *Jealousy eats you alive*  
  - *Feel the gnaw when “hers” haunts you.*  
  - *Hard stat: 70% fight the green beast.*  
  - *See their smile burn, your gut raw.*  
- **Relatability & Personal Connection**: *I’ve been the paranoid pendejo too*  
  - *Feel that twist when their “friend” text fires you up.*  
  - *Been there: suspicion ate me at 24.*  
  - *Picture me scrolling their IG like a fool.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Why-Rush-to-Ruin-It",
      content = [[
---
id: BD-Why-Rush-to-Ruin-It
alias: Why Rush to Ruin It?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 22:00
tags: [relationships, advice, monologue, curiosity-intrigue]
---
# BD - Why Rush to Ruin It?
> benefits of taking things slow  
Pace saves the flame.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the rush hiding from you?*  
  - *Feel that itch to lock it down too fast?*  
  - *Think it: speed blinds you to red flags.*  
  - *Picture racing past their mask, crashing into mess.*  
- **Pain Points**: *Fast love flops hard*  
  - *Feel the crash when “quick” turns sour.*  
  - *Hard stat: rushed bonds break 60% faster.*  
  - *See my haste sink, love dust.*  
- **Relatability & Personal Connection**: *I’ve rushed and burned too*  
  - *Feel that pull when “now” felt right.*  
  - *Been there: I sped up at 25, crashed.*  
  - *Picture me, eager, then fucked.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Whys-Your-Love-a-Brick-Wall",
      content = [[
---
id: BD-Whys-Your-Love-a-Brick-Wall
alias: Why's Your Love a Brick Wall?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 22:05
tags: [relationships, advice, monologue, pain-point]
---
# BD - Why’s Your Love a Brick Wall?
> dealing with emotional unavailability  
Cold hearts block me.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s behind their ice wall?*  
  - *Feel the chill when “close” stays far.*  
  - *Think it: shut hearts hide deep shit.*  
  - *Picture their blank, my knock mute.*  
- **Pain Points**: *Their cold cuts you deep*  
  - *Feel the chill when “fine” leaves you starving.*  
  - *Hard stats: emotional ghosts kill 70% of bonds.*  
  - *Picture their blank stare, a wall unclimbable.*  
- **Relatability & Personal Connection**: *I’ve hit that wall too*  
  - *Feel that freeze when “love” went numb.*  
  - *Been there: I banged it at 26.*  
  - *Picture me, pleading, their ice firm.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Is-Your-Bond-Built-on-Sand",
      content = [[
---
id: BD-Is-Your-Bond-Built-on-Sand
alias: Is Your Bond Built on Sand?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 22:10
tags: [relationships, advice, monologue, relatability-personal-connection]
---
# BD - Is Your Bond Built on Sand?
> the role of trust in relationships  
Shaky trust sinks us.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s holding your love up?*  
  - *Feel the shake when “sure” feels thin.*  
  - *Think it: trust’s the root or ruin.*  
  - *Picture their word, sand or stone.*  
- **Pain Points**: *No trust, no us*  
  - *Feel the crack when “yes” wobbles.*  
  - *Hard stat: 80% split sans trust.*  
  - *See my faith slip, bond dust.*  
- **Relatability & Personal Connection**: *I’ve been burned by doubt too*  
  - *Feel that gut twist when “yes” feels shaky?*  
  - *Been there: shaky faith sank me at 27.*  
  - *Picture me second-guessing every word.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Scared-to-Bare-It-All",
      content = [[
---
id: BD-Scared-to-Bare-It-All
alias: Scared to Bare It All?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 22:15
tags: [relationships, advice, monologue, pain-point]
---
# BD - Scared to Bare It All?
> why vulnerability is strength  
Walls block real love.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the power in dropping shields?*  
  - *Feel the rush when “hide” turns bare.*  
  - *Think it: raw wins where walls lose.*  
  - *Picture my guard down, love clear.*  
- **Pain Points**: *Hiding’s killing your shot*  
  - *Feel the ache when walls block the real shit.*  
  - *Hard data: guarded hearts lose 80% of bonds.*  
  - *Picture your mask, a cage keeping love out.*  
- **Relatability & Personal Connection**: *I’ve hid too, fam*  
  - *Feel that clench when “open” scared me.*  
  - *Been there: I locked up at 23.*  
  - *Picture me, shut, love stalled.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Is-Your-Love-Poisoning-You",
      content = [[
---
id: BD-Is-Your-Love-Poisoning-You
alias: Is Your Love Poisoning You?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 22:20
tags: [relationships, advice, monologue, pain-point]
---
# BD - Is Your Love Poisoning You?
> dangers of toxic relationships  
Bad love kills slow.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the venom in your “us”?*  
  - *Feel the creep when “love” turns sour.*  
  - *Think it: toxic hides in sweet lies.*  
  - *Picture their hug, a slow choke.*  
- **Pain Points**: *You’re drowning in their sludge*  
  - *Feel the choke when “care” cuts deep.*  
  - *Hard stat: 40% stay in poison love.*  
  - *See their smile twist, your soul dim.*  
- **Relatability & Personal Connection**: *I’ve sipped poison too*  
  - *Feel that rot when “good” went bad.*  
  - *Been there: I drank it at 28.*  
  - *Picture me, trapped, their love a trap.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Are-They-Pulling-Your-Strings",
      content = [[
---
id: BD-Are-They-Pulling-Your-Strings
alias: Are They Pulling Your Strings?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 22:25
tags: [relationships, advice, monologue, curiosity-intrigue]
---
# BD - Are They Pulling Your Strings?
> recognizing emotional manipulation  
Puppets in love’s game.

## Copywriting Hooks
- **Curiosity & Intrigue**: *Who’s yanking your heart’s leash?*  
  - *Feel the tug when “sorry” feels scripted.*  
  - *Think it: manipulators play you soft.*  
  - *Picture their tears, your will bent.*  
- **Pain Points**: *Their game owns you*  
  - *Feel the trap when “love” pulls strings.*  
  - *Hard stat: 50% miss the puppet play.*  
  - *See their smirk, your freedom gone.*  
- **Relatability & Personal Connection**: *I’ve been a marionette too*  
  - *Feel that pull when “guilt” moved me.*  
  - *Been there: I danced at 26.*  
  - *Picture me, strung, their hands tight.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Are-They-Fucking-With-Your-Head",
      content = [[
---
id: BD-Are-They-Fucking-With-Your-Head
alias: Are They Fucking With Your Head?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 22:30
tags: [relationships, advice, monologue, pain-point]
---
# BD - Are They Fucking With Your Head?
> impact of gaslighting  
Mind games break you.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s real when they twist it?*  
  - *Feel the spin when “no” turns “yes.”*  
  - *Think it: gaslight scrambles your truth.*  
  - *Picture their grin, your grip slips.*  
- **Pain Points**: *Doubt’s eating your skull*  
  - *Feel the haze when “sure” feels fake.*  
  - *Hard stat: 30% face head fucks.*  
  - *See their lie bloom, your mind lost.*  
- **Relatability & Personal Connection**: *I’ve been gaslit too, fam*  
  - *Feel that fog when “me” felt wrong.*  
  - *Been there: I doubted at 27.*  
  - *Picture me, reeling, their words a maze.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Why-Cant-You-Break-the-Chains",
      content = [[
---
id: BD-Why-Cant-You-Break-the-Chains
alias: Why Can't You Break the Chains?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 22:35
tags: [relationships, advice, monologue, pain-point]
---
# BD - Why Can’t You Break the Chains?
> why people stay in toxic relationships  
Stuck in love’s jail.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s gluing you to hell?*  
  - *Feel the pull when “bad” feels home.*  
  - *Think it: chains sneak into comfort.*  
  - *Picture their grip, your cell cozy.*  
- **Pain Points**: *You’re locked in misery*  
  - *Feel the weight when “out” scares more.*  
  - *Hard stat: 60% linger in toxic shit.*  
  - *See their cage shine, your will dim.*  
- **Relatability & Personal Connection**: *I’ve stayed too long too*  
  - *Feel that rut when “leave” felt big.*  
  - *Been there: I stuck at 25.*  
  - *Picture me, chained, their mess mine.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Why-You-Gotta-Love-You-First",
      content = [[
---
id: BD-Why-You-Gotta-Love-You-First
alias: Why You Gotta Love You First?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 22:40
tags: [relationships, advice, monologue, relatability-personal-connection]
---
# BD - Why You Gotta Love You First?
> importance of self-love  
You’re your own root.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s love without your own?*  
  - *Feel the lift when “me” stands tall.*  
  - *Think it: self-love feeds all else.*  
  - *Picture your glow, their need second.*  
- **Pain Points**: *Empty self tanks love*  
  - *Feel the void when “them” ain’t enough.*  
  - *Hard stat: 70% crash sans self-love.*  
  - *See your mirror blank, bond weak.*  
- **Relatability & Personal Connection**: *I learned self-love late too*  
  - *Feel that hole when “they” didn’t fill me.*  
  - *Been there: I found me at 29.*  
  - *Picture me, lost, then whole.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Why-You-Measuring-Up-to-Losers",
      content = [[
---
id: BD-Why-You-Measuring-Up-to-Losers
alias: Why You Measuring Up to Losers?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 22:45
tags: [relationships, advice, monologue, curiosity-intrigue]
---
# BD - Why You Measuring Up to Losers?
> stop comparing in love  
Their yardstick sucks.

## Copywriting Hooks
- **Curiosity & Intrigue**: *Why size up to trash?*  
  - *Feel the itch when “them” sets your bar.*  
  - *Think it: comparison’s a fool’s trap.*  
  - *Picture their “win,” your gauge off.*  
- **Pain Points**: *Comparing cuts you low*  
  - *Feel the sting when “better” ain’t you.*  
  - *Hard stat: 80% compare and sink.*  
  - *See their shine, your worth dim.*  
- **Relatability & Personal Connection**: *I’ve sized up dumb too*  
  - *Feel that jab when “he” looked big.*  
  - *Been there: I judged me at 24.*  
  - *Picture me, small, their shadow tall.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Can-You-Let-Go-Without-Breaking",
      content = [[
---
id: BD-Can-You-Let-Go-Without-Breaking
alias: Can You Let Go Without Breaking?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 22:50
tags: [relationships, advice, monologue, relatability-personal-connection]
---
# BD - Can You Let Go Without Breaking?
> role of forgiveness  
Freeing the hurt heals.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the lift in dropping hate?*  
  - *Feel the ease when “fuck ‘em” fades.*  
  - *Think it: forgiveness cuts your chains.*  
  - *Picture their wrong, your peace free.*  
- **Pain Points**: *Grudges grind you down*  
  - *Feel the drag when “mad” owns you.*  
  - *Hard stat: 60% cling to old pain.*  
  - *See their ghost, your heart heavy.*  
- **Relatability & Personal Connection**: *I’ve held grudges too, ese*  
  - *Feel that burn when “done” stuck hard.*  
  - *Been there: I let go at 28.*  
  - *Picture me, pissed, then light.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "BD-Can-You-Ditch-the-Baggage",
      content = [[
---
id: BD-Can-You-Ditch-the-Baggage
alias: Can You Ditch the Baggage?
author: Gallo-Salvaje; Chingon
created: 2025-03-21 22:55
tags: [relationships, advice, monologue, relatability-personal-connection]
---
# BD - Can You Ditch the Baggage?
> moving on after a breakup  
Past stays packed away.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the trick to drop old weight?*  
  - *Feel the lift when “her” fades out.*  
  - *Think it: baggage slows your next.*  
  - *Picture their ghost, your step light.*  
- **Pain Points**: *Old love drags you back*  
  - *Feel the pull when “done” lingers.*  
  - *Hard stat: 70% haul breakup junk.*  
  - *See their shadow, your pace slow.*  
- **Relatability & Personal Connection**: *I’ve lugged breakup trash too*  
  - *Feel that load when “over” clung.*  
  - *Been there: I dumped it at 26.*  
  - *Picture me, heavy, then free.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "KK-Rope-Rookie",
      content = [[
---
id: KK-Rope-Rookie
alias: Rope Rookie
author: Gallo-Salvaje; Chingon
created: 2025-03-21 23:00
tags: [kink, advice, monologue]
---
# KK - Rope Rookie
> bondage basics  
Reddit ties me up right.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the knot to start kinky?*  
  - *Feel the buzz when “tight” turns hot.*  
  - *Logic says Reddit’s got rope 101.*  
  - *Picture my loop, their guide clear.*  
- **Pain Points**: *Bad ties kill the vibe*  
  - *Feel the flop when “kink” goes slack.*  
  - *Hard stat: 50% botch first ropes.*  
  - *See my tangle, mood loose.*  
- **Relatability & Personal Connection**: *I’ve fumbled ropes too*  
  - *Feel that snag when “tight” slipped.*  
  - *Been there: I tried at 27.*  
  - *Picture me, clumsy, knots off.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "KK-Fetish-Flops",
      content = [[
---
id: KK-Fetish-Flops
alias: Fetish Flops
author: Gallo-Salvaje; Chingon
created: 2025-03-21 23:05
tags: [kink, advice, monologue]
---
# KK - Fetish Flops
> kink misfires fixed  
Reddit saves my quirks.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the fix for fetish fails?*  
  - *Feel the spark when “weird” turns gold.*  
  - *Logic says Reddit’s got kink hacks.*  
  - *Picture my flop, their tip shines.*  
- **Pain Points**: *Kinks crash awkward*  
  - *Feel the cringe when “hot” goes cold.*  
  - *Hard stat: 60% muff kink tries.*  
  - *See my miss, vibe dead.*  
- **Relatability & Personal Connection**: *I’ve botched kinks too*  
  - *Feel that flop when “try” fell flat.*  
  - *Been there: I fucked it at 28.*  
  - *Picture me, stuck, fetish off.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "KK-Shame-Shakedown",
      content = [[
---
id: KK-Shame-Shakedown
alias: Shame Shakedown
author: Gallo-Salvaje; Chingon
created: 2025-03-21 23:10
tags: [kink, advice, monologue]
---
# KK - Shame Shakedown
> taboo fears faced  
Reddit frees my freaky.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the cure for kink guilt?*  
  - *Feel the lift when “wrong” turns right.*  
  - *Logic says Reddit’s got shame busters.*  
  - *Picture my blush, now a thrill.*  
- **Pain Points**: *Shame chokes my kinks*  
  - *Feel the block when “weird” stays mute.*  
  - *Hard stat: 70% hide kink shame.*  
  - *See my fear lock, desire dim.*  
- **Relatability & Personal Connection**: *I’ve shamed my kinks too*  
  - *Feel that weight when “odd” felt bad.*  
  - *Been there: I hid at 26.*  
  - *Picture me, shy, kink buried.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "KK-Spank-or-Skip",
      content = [[
---
id: KK-Spank-or-Skip
alias: Spank or Skip
author: Gallo-Salvaje; Chingon
created: 2025-03-21 23:15
tags: [kink, advice, monologue]
---
# KK - Spank or Skip?
> discipline Qs  
Reddit slaps me straight.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the art of a good smack?*  
  - *Feel the sting when “play” turns hot.*  
  - *Logic says Reddit’s got spank tips.*  
  - *Picture my swing, their guide on.*  
- **Pain Points**: *Bad spanks sour it*  
  - *Feel the miss when “whack” goes wrong.*  
  - *Hard stat: 50% flub discipline tries.*  
  - *See my slap flop, vibe off.*  
- **Relatability & Personal Connection**: *I’ve spanked clumsy too*  
  - *Feel that fumble when “hit” missed.*  
  - *Been there: I tried at 29.*  
  - *Picture me, off, their wince loud.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "KK-Kink-Curious",
      content = [[
---
id: KK-Kink-Curious
alias: Kink Curious
author: Gallo-Salvaje; Chingon
created: 2025-03-21 23:20
tags: [kink, advice, monologue]
---
# KK - Kink Curious
> first-timer guides  
Reddit starts my weird.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the dip into kink water?*  
  - *Feel the buzz when “new” turns wild.*  
  - *Logic says Reddit’s got rookie maps.*  
  - *Picture my toe in, their path clear.*  
- **Pain Points**: *Newbie nerves kill it*  
  - *Feel the shake when “kink” looms big.*  
  - *Hard stat: 60% freeze on firsts.*  
  - *See my doubt stall, kink dim.*  
- **Relatability & Personal Connection**: *I’ve been kink-shy too*  
  - *Feel that pause when “weird” scared me.*  
  - *Been there: I dipped at 25.*  
  - *Picture me, nervous, kink calling.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "RR-Beavis-vs-Bart",
      content = [[
---
id: RR-Beavis-vs-Bart
alias: Beavis vs Bart
author: Gallo-Salvaje; Chingon
created: 2025-03-21 23:25
tags: [retro, pop-culture, monologue]
---
# RR - Beavis vs. Bart
> 90s TV kings  
Who ruled my screen?

## Copywriting Hooks
- **Curiosity & Intrigue**: *Who’s the 90s couch champ?*  
  - *Feel the laugh when “dumb” fought “cool.”*  
  - *Logic says Beavis and Bart split us.*  
  - *Picture my remote, their war loud.*  
- **Pain Points**: *Picking sides split us*  
  - *Feel the rift when “Bart” dissed “heh.”*  
  - *Hard stat: 90s kids picked 50/50.*  
  - *See my crew argue, TV tense.*  
- **Relatability & Personal Connection**: *I flipped for both too*  
  - *Feel that vibe when “eat my shorts” hit.*  
  - *Been there: I laughed at 12.*  
  - *Picture me, glued, their chaos mine.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "RR-Grunge-vs-Glam",
      content = [[
---
id: RR-Grunge-vs-Glam
alias: Grunge vs Glam
author: Gallo-Salvaje; Chingon
created: 2025-03-21 23:30
tags: [retro, pop-culture, monologue]
---
# RR - Grunge vs. Glam
> hair metal’s fall  
Flannel crushed the glitter.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What killed the hairspray gods?*  
  - *Feel the shift when “raw” beat “shine.”*  
  - *Logic says grunge ate glam alive.*  
  - *Picture my tapes, Nirvana over Poison.*  
- **Pain Points**: *Glam died, my tape cried*  
  - *Feel the fade when “big” turned small.*  
  - *Hard stat: 90s flipped 80s fast.*  
  - *See my spandex rot, sound raw.*  
- **Relatability & Personal Connection**: *I swapped glam for grunge too*  
  - *Feel that switch when “cool” went gritty.*  
  - *Been there: I flipped at 14.*  
  - *Picture me, flannel, hair metal dust.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "RR-MTV-Unplugged",
      content = [[
---
id: RR-MTV-Unplugged
alias: MTV Unplugged
author: Gallo-Salvaje; Chingon
created: 2025-03-21 23:35
tags: [retro, pop-culture, monologue]
---
# RR - MTV Unplugged
> nirvana’s takeover  
Acoustic ruled my 90s.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the magic of no plugs?*  
  - *Feel the chill when “raw” hit big.*  
  - *Logic says Unplugged redefined cool.*  
  - *Picture my TV, Kurt’s sweater glow.*  
- **Pain Points**: *Old sound got stale*  
  - *Feel the drag when “loud” lost edge.*  
  - *Hard stat: 90s unplugged spiked views.*  
  - *See my amp fade, acoustic live.*  
- **Relatability & Personal Connection**: *I lived Unplugged too*  
  - *Feel that vibe when “Come As You Are” hit.*  
  - *Been there: I watched at 15.*  
  - *Picture me, rapt, MTV pure.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "RR-Game-Boy-Glory",
      content = [[
---
id: RR-Game-Boy-Glory
alias: Game Boy Glory
author: Gallo-Salvaje; Chingon
created: 2025-03-21 23:40
tags: [retro, pop-culture, monologue]
---
# RR - Game Boy Glory
> tetris or pokémon  
Handheld owned my youth.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the king of tiny screens?*  
  - *Feel the buzz when “beep” ate hours.*  
  - *Logic says Game Boy ruled us kids.*  
  - *Picture my thumbs, blocks or Pikachu.*  
- **Pain Points**: *Battery death hurt*  
  - *Feel the rage when “low” blinked out.*  
  - *Hard stat: 90s kids drained AA’s fast.*  
  - *See my screen die, game gone.*  
- **Relatability & Personal Connection**: *I was Game Boy’d too*  
  - *Feel that grip when “Tetris” stacked.*  
  - *Been there: I played at 11.*  
  - *Picture me, hunched, pixels king.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "RR-Top-Gun-Takeoff",
      content = [[
---
id: RR-Top-Gun-Takeoff
alias: Top Gun Takeoff
author: Gallo-Salvaje; Chingon
created: 2025-03-21 23:45
tags: [retro, pop-culture, monologue]
---
# RR - Top Gun Takeoff
> 80s macho hype  
Maverick flew my dreams.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the pull of jet swagger?*  
  - *Feel the rush when “Mav” soared high.*  
  - *Logic says Top Gun pumped 80s cool.*  
  - *Picture my shades, jets roaring.*  
- **Pain Points**: *Real life ain’t that fly*  
  - *Feel the drop when “hero” stayed screen.*  
  - *Hard stat: 80s flicks spiked enlistment.*  
  - *See my wings clip, ground real.*  
- **Relatability & Personal Connection**: *I dreamed Top Gun too*  
  - *Feel that thrill when “Danger Zone” hit.*  
  - *Been there: I flew at 10, mind-wise.*  
  - *Picture me, buzzing, cockpit dreams.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "TF-Betamax-Blues",
      content = [[
---
id: TF-Betamax-Blues
alias: Betamax Blues
author: Gallo-Salvaje; Chingon
created: 2025-03-21 23:50
tags: [tech, retro, monologue]
---
# TF - Betamax Blues
> VHS ate it  
My tape lost the war.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the flop of Beta’s reign?*  
  - *Feel the sting when “best” got benched.*  
  - *Logic says VHS played dirty.*  
  - *Picture my deck, dust over quality.*  
- **Pain Points**: *Tech bets burn you*  
  - *Feel the loss when “mine” turned junk.*  
  - *Hard stat: Beta died by ‘88.*  
  - *See my tapes stack, useless bricks.*  
- **Relatability & Personal Connection**: *I backed Beta too*  
  - *Feel that pride when “sharp” felt king.*  
  - *Been there: I lost at 13.*  
  - *Picture me, smug, then screwed.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "TF-HD-DVD-Hiccup",
      content = [[
---
id: TF-HD-DVD-Hiccup
alias: HD DVD Hiccup
author: Gallo-Salvaje; Chingon
created: 2025-03-21 23:55
tags: [tech, retro, monologue]
---
# TF - HD DVD Hiccup
> blu-ray’s win  
My disc got smoked.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the death of HD’s dream?*  
  - *Feel the jolt when “clear” got crushed.*  
  - *Logic says Blu-ray bought the win.*  
  - *Picture my player, a relic fast.*  
- **Pain Points**: *Wrong side stings*  
  - *Feel the waste when “new” turned old.*  
  - *Hard stat: HD died by ‘08.*  
  - *See my discs pile, cash gone.*  
- **Relatability & Personal Connection**: *I picked HD too*  
  - *Feel that hype when “sharp” felt big.*  
  - *Been there: I bet at 20.*  
  - *Picture me, proud, then pissed.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "TF-MiniDisc-Misfire",
      content = [[
---
id: TF-MiniDisc-Misfire
alias: MiniDisc Misfire
author: Gallo-Salvaje; Chingon
created: 2025-03-22 00:00
tags: [tech, retro, monologue]
---
# TF - MiniDisc Misfire
> sony’s lost tape  
My tunes got ditched.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the fade of Sony’s gem?*  
  - *Feel the buzz when “cool” went quiet.*  
  - *Logic says MiniDisc missed the wave.*  
  - *Picture my disc, a ghost in hand.*  
- **Pain Points**: *Tech flops hurt*  
  - *Feel the sting when “future” flopped.*  
  - *Hard stat: MiniDisc tanked by ‘00.*  
  - *See my player sit, sound dead.*  
- **Relatability & Personal Connection**: *I loved MiniDisc too*  
  - *Feel that vibe when “skip” felt fresh.*  
  - *Been there: I spun at 16.*  
  - *Picture me, hooked, then dumped.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "TF-LaserDisc-Letdown",
      content = [[
---
id: TF-LaserDisc-Letdown
alias: LaserDisc Letdown
author: Gallo-Salvaje; Chingon
created: 2025-03-22 00:05
tags: [tech, retro, monologue]
---
# TF - LaserDisc Letdown
> big disc flop  
My giant lost out.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the crash of big discs?*  
  - *Feel the hype when “huge” turned huh.*  
  - *Logic says LaserDisc drowned in bulk.*  
  - *Picture my platter, a clunky bust.*  
- **Pain Points**: *Size killed my vibe*  
  - *Feel the drag when “cool” got heavy.*  
  - *Hard stat: Laser died by ‘90s end.*  
  - *See my shelf sag, tech trash.*  
- **Relatability & Personal Connection**: *I spun Laser too*  
  - *Feel that thrill when “big” felt next.*  
  - *Been there: I tried at 14.*  
  - *Picture me, awed, then over.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "TF-Pager-Problems",
      content = [[
---
id: TF-Pager-Problems
alias: Pager Problems
author: Gallo-Salvaje; Chingon
created: 2025-03-22 00:10
tags: [tech, retro, monologue]
---
# TF - Pager Problems
> beeped out fast  
My buzz got buried.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the end of beep life?*  
  - *Feel the ping when “hot” turned cold.*  
  - *Logic says pagers lost to cells.*  
  - *Picture my clip, a dead buzz.*  
- **Pain Points**: *Beeps faded quick*  
  - *Feel the miss when “call” went silent.*  
  - *Hard stat: pagers peaked ‘95, gone ‘00.*  
  - *See my waist blank, tech dust.*  
- **Relatability & Personal Connection**: *I rocked pagers too*  
  - *Feel that vibe when “911” lit up.*  
  - *Been there: I beeped at 15.*  
  - *Picture me, waiting, then nada.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "MM-90s-Kid-Nerves",
      content = [[
---
id: MM-90s-Kid-Nerves
alias: 90s Kid Nerves
author: Gallo-Salvaje; Chingon
created: 2025-03-22 00:15
tags: [mental-health, psychology, monologue]
---
# MM - 90s Kid Nerves
> why we’re twitchy  
My decade wired me weird.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the 90s glitch in us?*  
  - *Feel the buzz when “calm” ain’t me.*  
  - *Logic says 90s bred twitchy kids.*  
  - *Picture my shake, MTV’s fault.*  
- **Pain Points**: *Nerves never chill*  
  - *Feel the jolt when “rest” skips me.*  
  - *Hard stat: 90s kids stress 30% more.*  
  - *See my hands shake, peace gone.*  
- **Relatability & Personal Connection**: *I’m a 90s wreck too*  
  - *Feel that edge when “chill” feels fake.*  
  - *Been there: I twitched at 16.*  
  - *Picture me, wired, 90s loud.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "MM-Kink-in-the-Head",
      content = [[
---
id: MM-Kink-in-the-Head
alias: Kink in the Head
author: Gallo-Salvaje; Chingon
created: 2025-03-22 00:20
tags: [mental-health, psychology, monologue]
---
# MM - Kink in the Head
> fetishes and brains  
My weird’s wired in.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the spark in my skull?*  
  - *Feel the hum when “kink” clicks on.*  
  - *Logic says brain loves the odd shit.*  
  - *Picture my wires, kink lit up.*  
- **Pain Points**: *Weird owns my mind*  
  - *Feel the tug when “normal” ain’t me.*  
  - *Hard stat: 40% got fetish brains.*  
  - *See my thoughts twist, kink loud.*  
- **Relatability & Personal Connection**: *I’m kinky-wired too*  
  - *Feel that buzz when “odd” felt right.*  
  - *Been there: I clicked at 25.*  
  - *Picture me, wired, kink mine.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "MM-Screen-Time-Scars",
      content = [[
---
id: MM-Screen-Time-Scars
alias: Screen Time Scars
author: Gallo-Salvaje; Chingon
created: 2025-03-22 00:25
tags: [mental-health, psychology, monologue]
---
# MM - Screen Time Scars
> MTV’s mental toll  
TV fucked my head.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the cost of 90s glow?*  
  - *Feel the haze when “watch” rewired me.*  
  - *Logic says screens scar young brains.*  
  - *Picture my eyes, MTV burned in.*  
- **Pain Points**: *Screen fried my calm*  
  - *Feel the buzz when “off” ain’t real.*  
  - *Hard stat: 90s TV upped anxiety 20%.*  
  - *See my mind race, rest gone.*  
- **Relatability & Personal Connection**: *I’m screen-scarred too*  
  - *Feel that pull when “vids” owned me.*  
  - *Been there: I zoned at 14.*  
  - *Picture me, glued, brain fried.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "MM-Social-Shy",
      content = [[
---
id: MM-Social-Shy
alias: Social Shy
author: Gallo-Salvaje; Chingon
created: 2025-03-22 00:30
tags: [mental-health, psychology, monologue]
---
# MM - Social Shy
> gen X awkwardness  
My crowd fear lingers.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s the root of X’s hush?*  
  - *Feel the freeze when “hi” sticks throat.*  
  - *Logic says Gen X bred shy vibes.*  
  - *Picture my nod, words lost.*  
- **Pain Points**: *Crowds choke my air*  
  - *Feel the sweat when “talk” looms big.*  
  - *Hard stat: 50% of X shun crowds.*  
  - *See my corner shrink, voice off.*  
- **Relatability & Personal Connection**: *I’ve been X-shy too*  
  - *Feel that block when “chat” felt huge.*  
  - *Been there: I hid at 17.*  
  - *Picture me, quiet, room loud.*

## Show Notes
(To be added post-recording)
]],
    },
    {
      name = "MM-Rage-Rewind",
      content = [[
---
id: MM-Rage-Rewind
alias: Rage Rewind
author: Gallo-Salvaje; Chingon
created: 2025-03-22 00:35
tags: [mental-health, psychology, monologue]
---
# MM - Rage Rewind
> 90s angst lingers  
Why my temper’s still 90s-coded.

## Copywriting Hooks
- **Curiosity & Intrigue**: *What’s fueling that old fire?*  
  - *Feel the simmer when old tunes spark rage.*  
  - *Logic says 90s scars don’t fade easy.*  
  - *Picture flannel and fists, a rewind roar.*  
- **Pain Points**: *Angst that won’t quit*  
  - *Feel the boil when calm’s a fucking lie.*  
  - *Hard stat: 90s kids carry 30% more anger.*  
  - *See the past flare, your chill torched.*  
- **Relatability & Personal Connection**: *I’ve raged 90s-style too*  
  - *Feel that heat when Nirvana hits too hard.*  
  - *Been there: I snapped at 16, still do.*  
  - *Picture me, pissed, MTV in my veins.*

## Show Notes
(To be added post-recording)
]],
    },
  }

  -- Write all small files
  for i, file in ipairs(small_files) do
    vim.fn.writefile(vim.split(file.content, "\n"), zk_dir .. "/" .. file.name .. ".md")
  end

  print("119 small files created in ~/notes/2-zk/")
end

return { create = create }

