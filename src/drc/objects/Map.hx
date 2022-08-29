package drc.objects;

import drcJS.display.Region;
import drcJS.display.Tileset;
import drcJS.data.Texture;
import drcJS.data.Profile;
import haxe.io.Path;
import drcJS.display.Tilemap;
import drc.data.MapData;
import drcJS.part.RecycleList;
import drcJS.core.Promise;
import drcJS.utils.Common;
import drc.data.TilesetData;
import haxe.Json;

class Map {
    
    public var mapData:MapData;

    public var entities:RecycleList<Entity> = new RecycleList<Entity>();

	public var tilemaps:Array<TilemapCanvas> = new Array<TilemapCanvas>();

    public function new(mapData:MapData) {
        
        this.mapData = mapData;

        parseMap();
    }

    private function parseMap():Void {
        
        var _root:String = 'res';

        var _preloads:Array<Promise<Dynamic>> = new Array<Promise<Dynamic>>();

        var __promise:Promise<Array<String>>;

        for (tileset in mapData.tilesets) {

            var path = Path.normalize(Path.normalize(tileset.source));

            path = Path.join([_root, path]);

            path = Path.join([_root, path]);

            trace('Path:' + path);

            _preloads.push(Common.resources.loadText(path));
        }

		__promise = Promise.all(_preloads);

        __promise.onComplete(function(promise:Promise<Array<String>>, type:Int) {

            for (tileset in promise.result) {

                var _tilesetData:TilesetData = Json.parse(Common.resources.getText('res/maps/testmap1.tmj'));

                parseTilemap(_tilesetData);
            }
        });

        __promise.onReject(function(promise:Promise<Array<String>>, type:Int) {

            trace("Unable to load tilesets!");
        });
    }

    private function parseTilemap(tilesetData:TilesetData):Void {
        
        var _root:String = 'res';

        var _texturePath = Path.normalize(Path.normalize(tilesetData.image));

        _texturePath = Path.join([_root, path]);

        _texturePath = Path.join([_root, path]);


        var _texture:Texture = Common.resources.getTexture(_texturePath);

        var _profile:Profiles = Common.resources.getProfile('res/profiles/texture.json');

        var _tileWidth:Int = tilesetData.tilewidth;

        var _tileHeight:Int = tilesetData.tileheight;

        var _tileCount:Int = tilesetData.tilecount;

        var _columnCount:Int = tilesetData.columns;

        var _x:Int = 0;

        var _y:Int = 0;

        for (i in 0..._tileCount) {

            if (i == )

            var _region:Region = new Region();
        }

        var _tileset:Tileset = new Tileset();

        var _tilemap:Tilemap = new Tilemap(_profile, [_texture], _tileset, _tileCount * _tileWidth);
    }
}

private class TilemapCanvas extends Tilemap {

    public function new(profile:Profile, textures:Array<Texture>, tileset:Tileset, tileCount:Uint, height:Uint, tileWidth:Uint, tileHeight:Uint) {
        
        super(profile, textures, tileset);
    }
}