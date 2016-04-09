package view.container
{
	import action.event.ViewEvent;

	import spark.components.BusyIndicator;
	import view.AbstractView;

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