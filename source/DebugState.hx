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
import flixel.effects.particles.FlxEmitter;
import flixel.effects.particles.FlxParticle;

class DebugState extends MusicBeatState
{

    public var grid:FlxSprite;

    override function create()
    {

        var text:FlxText = new FlxText(20, 30, "Nothing testing Right now", 20);
        add(text);

    }

}