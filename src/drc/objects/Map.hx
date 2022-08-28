package drc.objects;

import haxe.io.Path;
import drcJS.display.Tilemap;
import drc.data.MapData;
import drcJS.part.RecycleList;
import drcJS.core.Promise;
import drcJS.utils.Common;
import drc.data.TilesetData;

class Map {
    
    public var mapData:MapData;

    public var entities:RecycleList<Entity> = new RecycleList<Entity>();

	public var tilemaps:Array<Tilemap> = new Array<Tilemap>();

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

                parseTilemap();
            }
        });

        __promise.onReject(function(promise:Promise<Array<String>>, type:Int) {

            trace("Unable to load tilesets!");
        });

        trace(__promise.state);
    }

    private function parseTilemap(tilesetData:TilesetData):Void {
        
        
    }
}