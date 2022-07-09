package drc.core;

import src.core.EventDispacher;

class Runtime extends EventDispacher<Runtime> {
    
    // ** Publics.

    public var active(get, null):Bool;

    // ** Privates.

    private var __active:Bool;

    public function new() {
        

    }

    private function __createWindow():Void {
        
    }
}