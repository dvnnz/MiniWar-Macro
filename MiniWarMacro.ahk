#Requires AutoHotkey v2.0
#SingleInstance Force

;--------GUI----------

; define your shop items once, as data
items := [
    {name: "Air Base",        fn: BuyAirBase,        enabled: false},
    {name: "Data Center",     fn: BuyDataCenter,     enabled: false},
    {name: "Artillery Depot", fn: BuyArtilleryDepot, enabled: false},
    {name: "Blackhole Generator", fn: BuyBlackHoleGenerator, enabled: false},
    {name: "Area 51", fn: BuyArea51, enabled: false},
    {name: "Rocket Bunker", fn: BuyRocketBunker, enabled: false}
]

myGui := Gui()
myGui.Title := "Mini War Auto-Buy"
myGui.Add("Text", "w300", "Press F1 to begin auto-buying, press again to stop. Tick the items you want purchased below. F2 quits instantly.")

; build a checkbox per item in a loop
for item in items {
    cb := myGui.Add("Checkbox", item.enabled ? "Checked" : "", item.name)
    item.checkbox := cb        ; stash the control back on the item
}

myGui.Show()

;-------Controls--------

running := false

; F1 = toggle on/off
F1:: {
    global running
    running := !running
    if running
        BuyStuff()                  ; kick off the first cycle now
    else
        SetTimer(BuyStuff, 0)       ; cancel any pending re-arm
}

; F2 = hard panic, kills everything instantly even mid-sequence
F2:: ExitApp

BuyStuff() {
    global running
    if !running
        return
    for item in items{
        if item.checkbox.Value
            item.fn.Call()
            Sleep(1000)
    }
    if running
        SetTimer(BuyStuff, -20000)  ; book the next cycle 20s after this finishes
}


;------Functions----------

BuyAirBase(){
    Send("\")
    loop 3 {
        Send("{Left}")
    }
    Send("{Enter}")
    Sleep(1000)
    Send("{e}")
    Sleep(4000)
    Send("{Down}")
    Sleep(500)
    Send("{Right}")
    Send("{Right}")
    Sleep(500)
    Send("{Enter}")
    Sleep(500)
    loop 16 {
        Sleep(100)
        Send("{Down}")
    }
    Send("{Right}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("{Right}")
    loop 3 {
        Send("{Up}")
    }
    Send("{Left}")
    Sleep(100)
    Send("{Left}")
    Sleep(100)
    Send("{Down}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("{Left}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("\")
}

BuyArtilleryDepot(){
    Send("\")
    loop 3 {
        Send("{Left}")
    }
    Send("{Enter}")
    Sleep(1000)
    Send("{e}")
    Sleep(4000)
    Send("{Down}")
    Sleep(100)
    Send("{Right}")
    Sleep(100)
    Send("{Right}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    loop 17 {
        Sleep(100)
        Send("{Down}")
    }
    Send("{Right}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("{Right}")
    loop 3 {
        Send("{Up}")
    }
    Send("{Left}")
    Sleep(100)
    Send("{Left}")
    Sleep(100)
    Send("{Down}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("{Left}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("\")
}

BuyRocketBunker(){
    Send("\")
    loop 3 {
        Send("{Left}")
    }
    Send("{Enter}")
    Sleep(1000)
    Send("{e}")
    Sleep(4000)
    Send("{Down}")
    Sleep(500)
    Send("{Right}")
    Send("{Right}")
    Sleep(500)
    Send("{Enter}")
    Sleep(500)
    loop 18 {
        Sleep(100)
        Send("{Down}")
    }
    Send("{Right}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("{Right}")
    loop 3 {
        Send("{Up}")
    }
    Send("{Left}")
    Sleep(100)
    Send("{Left}")
    Sleep(100)
    Send("{Down}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("{Left}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("\")
}

BuyDataCenter(){
    Send("\")
    loop 3 {
        Send("{Left}")
    }
    Send("{Enter}")
    Sleep(1000)
    Send("{e}")
    Sleep(4000)
    Send("{Down}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    loop 19 {
        Sleep(100)
        Send("{Down}")
    }
    Send("{Right}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("{Right}")
    loop 3 {
        Send("{Up}")
    }
    Send("{Left}")
    Sleep(100)
    Send("{Left}")
    Sleep(100)
    Send("{Down}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("{Left}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("\")
}

BuyBlackHoleGenerator(){
    Send("\")
    loop 3 {
        Send("{Left}")
    }
    Send("{Enter}")
    Sleep(1000)
    Send("{e}")
    Sleep(4000)
    Send("{Down}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    loop 20 {
        Sleep(100)
        Send("{Down}")
    }
    Send("{Right}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("{Right}")
    loop 3 {
        Send("{Up}")
    }
    Send("{Left}")
    Sleep(100)
    Send("{Left}")
    Sleep(100)
    Send("{Down}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("{Left}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("\")
}

BuyArea51(){
    Send("\")
    loop 3 {
        Send("{Left}")
    }
    Send("{Enter}")
    Sleep(1000)
    Send("{e}")
    Sleep(4000)
    Send("{Down}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    loop 21 {
        Sleep(100)
        Send("{Down}")
    }
    Send("{Right}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("{Right}")
    loop 3 {
        Send("{Up}")
    }
    Send("{Left}")
    Sleep(100)
    Send("{Left}")
    Sleep(100)
    Send("{Down}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("{Left}")
    Sleep(100)
    Send("{Enter}")
    Sleep(100)
    Send("\")
}

