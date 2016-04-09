package view.container
{
	import action.event.QuizEvent;
	import action.event.ViewEvent;

	import flash.events.MouseEvent;

	import spark.components.Label;

	import view.AbstractView;
	import view.component.ValueButton;

	[ResourceBundle("menu_view")]
	public class MenuView extends AbstractView
	{	
		[SkinPart(required="true")]
		public var txt_caption:Label;
		
		[SkinPart(required="true")]
		public var txt_info:Label;
		
		[SkinPart(required="true")]
		public var btn_startQuiz:ValueButton;
		
		[SkinPart(required="true")]
		public var btn_resumeQuiz:ValueButton;
		
		[SkinPart(required="true")]
		public var btn_showAbout:ValueButton;
		
		public function MenuView()
		{
			super();
			
			this.resourceBundleName = "menu_view";
			
			this.title = resourceManager.getString(resourceBundleName, "title");
			//this.actionContent = [getLogoutButton()];
		}

		/*
		[Inject(source="model.currentUser", bind="true")]
		public function set currentUser(value:UserDTO):void
		{
			_currentUser = value;
			_isUserDirty = true;
			
			invalidateProperties();
		}
		*/

		override protected function partAdded(partName:String, instance:Object):void
		{
			super.partAdded(partName, instance);
			
			if (instance == btn_startQuiz)
			{
				var string:String = resourceManager.getString(resourceBundleName, "btn_startQuiz.label");
				btn_startQuiz.label = string;
				btn_startQuiz.value = '►';
				btn_startQuiz.addEventListener(MouseEvent.CLICK, btn_startQuiz_clickHandler);
			}
			if (instance == btn_resumeQuiz)
			{
				btn_resumeQuiz.label = resourceManager.getString(resourceBundleName, "btn_resumeQuiz.label");
				btn_resumeQuiz.value = '►';
				btn_resumeQuiz.addEventListener(MouseEvent.CLICK, btn_resumeQuiz_clickHandler);
			}
			if (instance == btn_showAbout)
			{
				btn_showAbout.label = resourceManager.getString(resourceBundleName, "btn_showAbout.label");
				btn_showAbout.value = '►';
				btn_showAbout.addEventListener(MouseEvent.CLICK, btn_showAbout_clickHandler);
			}
		}
		
		override protected function partRemoved(partName:String, instance:Object):void
		{
			super.partRemoved(partName, instance);
			
			if (instance == btn_startQuiz)
			{
				btn_startQuiz.removeEventListener(MouseEvent.CLICK, btn_startQuiz_clickHandler);
			}
			if (instance == btn_resumeQuiz)
			{
				btn_resumeQuiz.removeEventListener(MouseEvent.CLICK, btn_resumeQuiz_clickHandler);
			}
			if (instance == btn_showAbout)
			{
				btn_showAbout.removeEventListener(MouseEvent.CLICK, btn_showAbout_clickHandler);
			}
		}
		
		override protected function commitProperties():void
		{
			super.commitProperties();
			/*
			if (_isUserDirty)
			{
				//txt_caption.text = ResourceManager.getInstance().getString(resourceBundleName, "txt_caption.text", [_currentUser.profile.fullName])
				_isUserDirty = false;
			}
			*/
		}
		
		protected function btn_startQuiz_clickHandler(event:MouseEvent):void
		{
			dispatchEvent(new QuizEvent(QuizEvent.START_QUIZ));
		}

		protected function btn_resumeQuiz_clickHandler(event:MouseEvent):void
		{
			dispatchEvent(new QuizEvent(QuizEvent.RESUME_QUIZ));
		}

		protected function btn_showAbout_clickHandler(event:MouseEvent):void
		{
			dispatchEvent(new ViewEvent(ViewEvent.DISPLAY_ABOUT_VIEW));
		}

		private function check():Boolean
		{
			return true;
		}
	}
}
