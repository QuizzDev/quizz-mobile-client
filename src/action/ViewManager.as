package action
{
	import action.event.ViewEvent;

	import data.Model;

	import spark.components.ViewNavigator;

	import view.container.MenuView;
	import view.container.QuizView;

	public class ViewManager
	{
		[ViewNavigator]
		public var viewNavigator:ViewNavigator;
		
		[Inject(source="model", bind="true")]
		public var model:Model;
		
		
		[EventHandler(event="ViewEvent.RESET_VIEW")]
		public function resetView(event:ViewEvent):void
		{
			trace('resetView()');
			
			viewNavigator.popAll();
		}
		
		[EventHandler(event="ViewEvent.DISPLAY_PREVIOUS_VIEW")]
		public function displayPreviousView(event:ViewEvent):void
		{
			trace('displayPreviousView()');
			
			viewNavigator.popView();
		}
		
		[EventHandler(event="ViewEvent.DISPLAY_MENU_VIEW")]
		public function displayMenuView(event:ViewEvent):void
		{
			trace('displayMenuView()');
			
			viewNavigator.pushView(MenuView);
		}

		[EventHandler(event="ViewEvent.DISPLAY_QUIZ_VIEW")]
		public function displayQuizView(event:ViewEvent):void
		{
			trace('displayQuizView()');

			viewNavigator.pushView(QuizView);
		}

		[EventHandler(event="ViewEvent.DISPLAY_ABOUT_VIEW")]
		public function displayAboutView(event:ViewEvent):void
		{
			trace('displayAboutView()');

			//viewNavigator.pushView(AboutView);
		}
	}
}
