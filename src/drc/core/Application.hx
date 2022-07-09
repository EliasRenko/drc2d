package drc.core;

import drc.core.Runtime;

class Application {
    
    // ** Publics.

    public var runtime(get, null):Runtime;

    // ** Privates.

    private var __runtime:Runtime;

    public function new() {
        
    }

    // ** Getters and setters.

    private function get_runtime():Runtime {
        
        return __runtime;
    }
}