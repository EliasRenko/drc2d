package drc.data;

@:structInit
class MapData {
    
    public var compressionlevel:Int;
	public var height:Int;
	public var infinite:Bool;
	public var layers:Array<{
		public var data:Array<Int>;
		public var height:Int;
		public var id:Int;
		public var name:String;
		public var opacity:Int;
		public var type:String;
		public var visible:Bool;
		public var width:Int;
		public var x:Int;
		public var y:Int;
	}>;
	public var nextlayerid:Int;
	public var nextobjectid:Int;
	public var orientation:String;
	public var renderorder:String;
	public var tiledversion:String;
	public var tileheight:Int;
	public var tilesets:Array<{
		public var firstgid:Int;
		public var source:String;
	}>;
	public var tilewidth:Int;
	public var type:String;
	public var version:String;
	public var width:Int;
}