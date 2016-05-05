package interfaces.container
{
	import application.event.ViewEvent;

	import interfaces.AbstractView;

	import spark.components.BusyIndicator;

	public class InitializeView extends AbstractView
	{		
		[SkinPart(required="true")]
		public var busyIndicator:BusyIndicator;
		
		public function InitializeView()
		{
			super();
			
			this.actionBarVisible = false;
		}
		
		[PostConstruct]
		public function init():void
		{
			dispatcher.dispatchEvent(
				new ViewEvent(ViewEvent.DISPLAY_MENU_VIEW)
			);
		}
	}
}