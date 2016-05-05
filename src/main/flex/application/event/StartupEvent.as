package application.event
{
    import flash.events.Event;

    public class StartupEvent extends Event
    {
        public static const GET_STARTUP_DATA:String = 'StartupEvent.GET_STARTUP_DATA';

        public function StartupEvent(type:String, bubbles:Boolean = true, cancelable:Boolean = false)
        {
            super(type, bubbles, cancelable);
        }

        public override function clone():Event
        {
            return super.clone();
        }
    }
}

