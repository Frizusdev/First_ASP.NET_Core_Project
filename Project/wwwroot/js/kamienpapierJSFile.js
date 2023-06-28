function random() {
        document.getElementById("fightbtn").disable = "true";
        var rand = Math.floor(Math.random() * 3);
    var bot = document.getElementById("botimg");
    var clas = bot.className;
    if (rand == 0) {
        bot.src = "/Images/rockgif.gif";
        bot.classList.replace(clas, "changebotrockimg");
            }
    else if (rand == 1) {
        bot.src = "/Images/papergif.gif";
        bot.classList.replace(clas, "changebotpaperimg");
            }
    else if (rand == 2) {
        bot.src = "/Images/scissorsgif.gif";
        bot.classList.replace(clas, "changebotscissorsimg");
            }

}

function brain() {
        var x = 0;
        var bot = document.getElementById("botimg");
        var win = document.getElementById("win");
        var tie = document.getElementById("tie");
        var lose = document.getElementById("lose");
        win.style.visibility = "hidden";
        lose.style.visibility = "hidden";
        tie.style.visibility = "hidden";
        var playerscore = document.getElementById("playerscore").innerText;
        var botscore = document.getElementById("botscore").innerText;
        var player = document.getElementById("playerimg");
        if (player.src == "https://localhost:7258/Images/rockgif.gif") {
            switch (bot.src) {
                case "https://localhost:7258/Images/rockgif.gif":
                    tie.style.visibility = "visible";
                    console.log("Tie");
                    //tie
                    break;
                case "https://localhost:7258/Images/papergif.gif":
                    x = parseInt(botscore);
                    x++;
                    document.getElementById("botscore").innerText = x.toString();
                    lose.style.visibility = "visible";
                    console.log("Win bot");
                    // win bot
                    break;
                case "https://localhost:7258/Images/scissorsgif.gif":
                    x = parseInt(playerscore);
                    x++;
                    document.getElementById("playerscore").innerText = x.toString();
                    win.style.visibility = "visible";
                    console.log("Win Player");
                    // win player
                    break;
            }
        }
        else if (player.src == "https://localhost:7258/Images/papergif.gif") {
            switch (bot.src) {
                case "https://localhost:7258/Images/rockgif.gif":
                    x = parseInt(playerscore);
                    x++;
                    document.getElementById("playerscore").innerText = x.toString();
                    win.style.visibility = "visible";
                    console.log("Win Player");
                    // win player
                    break;
                case "https://localhost:7258/Images/papergif.gif":
                    tie.style.visibility = "visible";
                    console.log("Tie");
                    // tie
                    break;
                case "https://localhost:7258/Images/scissorsgif.gif":
                    x = parseInt(botscore);
                    x++;
                    document.getElementById("botscore").innerText = x.toString();
                    console.log("Win Bot");
                    lose.style.visibility = "visible";
                    // win bot
                    break;
            }
        }
        else if (player.src == "https://localhost:7258/Images/scissorsgif.gif") {
            switch (bot.src) {
                case "https://localhost:7258/Images/rockgif.gif":
                    x = parseInt(botscore);
                    x++;
                    document.getElementById("botscore").innerText = x.toString();
                    lose.style.visibility = "visible";
                    console.log("Win Bot");
                    // win bot
                    break;
                case "https://localhost:7258/Images/papergif.gif":
                    x = parseInt(playerscore);
                    x++;
                    document.getElementById("playerscore").innerText = x.toString();
                    win.style.visibility = "visible";
                    console.log("Win Player");
                    // win player
                    break;
                case "https://localhost:7258/Images/scissorsgif.gif":
                    tie.style.visibility = "visible";
                    console.log("Tie");
                    // tie
                    break;
            }
        }
    }

function select() {
        var combobox = document.getElementById("combobox");
        console.log("Zmiana");
        switch (combobox.value) {
            case "Rock":
                document.getElementById("playerimg").src = "../Images/rockgif.gif";
                break;
            case "Paper":
                document.getElementById("playerimg").src = "../Images/papergif.gif";
                break;
            case "Scissors":
                document.getElementById("playerimg").src = "../Images/scissorsgif.gif";
                break;
        }
    }

function auto() {
        var rand = Math.floor(Math.random() * 3);
        var player = document.getElementById("playerimg");
    if (rand == 0) {
        rockchange();
        }
    else if (rand == 1) {
        paperchange();
        }
    else if (rand == 2) {
        scissorschange();
        }
    }

function fight() {
        random();
        if (document.getElementById("checkbox").checked) {
        auto();
        }
        brain();

        document.getElementById("fightbtn").disable = "false";
    }

function back() {
    document.getElementById("playerimg").style.visibility = "visible";
    document.getElementById("yourchoice").style.visibility = "visible";
    document.getElementById("change").style.display = "none";
    document.getElementById("change").style.visibility = "hidden";
}

function change() {
    document.getElementById("checkbox").checked = false;
    document.getElementById("change").style.display = "block";
    document.getElementById("change").style.visibility = "visible";
    document.getElementById("playerimg").style.visibility = "hidden";
    document.getElementById("yourchoice").style.visibility = "hidden";
}

function rockchange() {
    var playerimg = document.getElementById("playerimg");
    var clas = playerimg.className;
    playerimg.src = "../Images/rockgif.gif";
    playerimg.classList.replace(clas, "changerockimg");
    back();
}

function paperchange() {
    var playerimg = document.getElementById("playerimg");
    var clas = playerimg.className;
    playerimg.src = "../Images/papergif.gif";
    playerimg.classList.replace(clas, "changepaperimg");
    back();
}

function scissorschange() {
    var playerimg = document.getElementById("playerimg");
    var clas = playerimg.className;
    document.getElementById("playerimg").src = "../Images/scissorsgif.gif";
    playerimg.classList.replace(clas, "changescissorsimg");
    back();
}