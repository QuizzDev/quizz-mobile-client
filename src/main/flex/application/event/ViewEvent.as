package application.event
{
	import flash.events.Event;
	
	public class ViewEvent extends Event
	{
		public static const RESET_VIEW:String = 'ViewEvent.RESET_VIEW';
		public static const DISPLAY_LOADING_VIEW:String = 'ViewEvent.DISPLAY_LOADING_VIEW';
		public static const DISPLAY_PREVIOUS_VIEW:String = 'ViewEvent.DISPLAY_PREVIOUS_VIEW';

		public static const DISPLAY_MENU_VIEW:String = 'ViewEvent.DISPLAY_MENU_VIEW';
		public static const DISPLAY_QUIZ_VIEW:String = 'ViewEvent.DISPLAY_QUIZ_VIEW';
		public static const DISPLAY_ABOUT_VIEW:String = 'ViewEvent.DISPLAY_ABOUT_VIEW';

		public function ViewEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}

		public override function clone():Event
		{
			return super.clone();
		}		
	}
}
