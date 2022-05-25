package animateatlas.cuTsceneLoader;
import flixel.util.FlxDestroyUtil;
import openfl.geom.Rectangle;
import flixel.math.FlxPoint;
import flixel.math.FlxRect;
import openfl.Assets;
import haxe.Json;
import openfl.display.BitmapData;
import animateatlas.JSONData.AtlasData;
import animateatlas.JSONData.AnimationData;
import animateatlas.displayobject.SpriteAnimationLibrary;
import animateatlas.displayobject.SpriteMovieClip;
import animateatlas.displayobject.SpriteSymbol;
import animateatlas.displayobject.SpriteAnimationLibrary;
import animateatlas.tilecontainer.TileContainerSymbol;
import animateatlas.tilecontainer.TileAnimationLibrary;
import animateatlas.tilecontainer.TileContainerMovieClip;
import flixel.graphics.FlxGraphic;
import flixel.graphics.frames.FlxFramesCollection;
import flixel.graphics.frames.FlxFrame;
import flixel.graphics.atlas.FlxAtlas;
import Paths;
import animateatlas.cuTsceneLoader.FlxAnimate;
#if desktop
import sys.FileSystem;
import sys.io.File;
#else
import js.html.FileSystem;
import js.html.File;
#end
import animateatlas.cuTsceneLoader.FlxAnimate;

class CuTSceneState extends FlxAtlas {
    var frameCol:FlxFramesCollection;

    var flaLOADER:FlxAnimate;

    var atlas:FlxAtlas;
    
    var frame:FlxFrame;
    
    public function new(file:Paths, animLib:TileAnimationLibrary, symbol:TileContainerSymbol, movieC:TileContainerMovieClip, key:String) {
        file = Paths.cutFla('$key');
        animLib.frameRate(24);
    }
}