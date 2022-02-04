package;

import flixel.addons.effects.FlxTrail;
import Controls.KeyboardScheme;
import flixel.FlxG;
import flixel.FlxObject;
import flixel.FlxSprite;
import flixel.effects.FlxFlicker;
import flixel.graphics.frames.FlxAtlasFrames;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;

class CreditsState extends MusicBeatState
{

    public var creditsNames:Array<String> = [
        "DA CREWMATE",
        " ",
        "PROGRAMMER - ChocolateLoxtl",
        "SENIOR CODER  - NGS300",
        "CHARTER - INSERT NAME HERE",
        "ARTIST - INSERT NAME HERE"
    ];

    override public function create()
    {
        ////////////////[Sprites]////////////////

        //coolBG
        var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image('menuDesat'));
        bg.scrollFactor.x = 0;
		bg.scrollFactor.y = 0.10;
		bg.setGraphicSize(Std.int(bg.width * 1.1));
        bg.color = 0xFF964ABE;
		bg.updateHitbox();
		bg.screenCenter();
		bg.antialiasing = true;

        //////[Gradients]//////

        //top

        var gradientTop:FlxSprite = new FlxSprite().loadGraphic(Paths.image('staticGradient'));
        gradientTop.scrollFactor.x = 0;
        gradientTop.scrollFactor.y = 0.10;
        gradientTop.setGraphicSize(1890, 380);
        gradientTop.color = 0xFFE762E9;
        gradientTop.flipY = true;
        gradientTop.updateHitbox();
        gradientTop.screenCenter();
        gradientTop.y -= 512;
        gradientTop.antialiasing = true;

        //bottom
        var gradientBottom:FlxSprite = new FlxSprite().loadGraphic(Paths.image('staticGradient'));
        gradientBottom.scrollFactor.x = 0;
        gradientBottom.scrollFactor.y = 0.10;
        gradientBottom.setGraphicSize(1890, 380);
        gradientBottom.color = 0xFF7A1889;
        gradientBottom.updateHitbox();
        gradientBottom.screenCenter();
        gradientBottom.y += 512;
        gradientBottom.antialiasing = true;


        //add all bitches

        add(gradientTop);
        add(gradientBottom);
        add(bg);

        ////////////////[Text]////////////////

        // create cool text with all crew names =3
        var grpCredText = new FlxTypedGroup<Alphabet>();
        add(grpCredText);

        for (i in 0 ... creditsNames.length)
        {
            var creditText:Alphabet = new Alphabet(0, 100 * i, creditsNames[i], true, false);
            creditText.isMenuItem = true;
            creditText.targetY = i;
            grpCredText.add(creditText);
        };
        trace("credits state");
    }

    override function update(elapsed:Float)
    {
        if (FlxG.keys.justPressed.ESCAPE)
        {
            FlxG.switchState(new MainMenuState());
        }
    }
}