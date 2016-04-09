package view
{
	import flash.events.IEventDispatcher;
	import flash.events.MouseEvent;
	
	import mx.events.StateChangeEvent;
	import mx.states.State;
	
	import spark.components.Button;
import spark.components.Group;
import spark.components.Label;
import spark.components.Scroller;
import spark.components.View;

	//[ResourceBundle("global")]
	public class AbstractView extends View
	{		
		//----------------------
		// Properties
		//----------------------
		
		public var resourceBundleName:String;
		
		[Dispatcher]
		public var dispatcher:IEventDispatcher;
		
		private var _isError:Boolean;
		
		private var _errorCode:String;
		private var _isErrorCodeDirty:Boolean;
		
		
		
		//----------------------
		// Skin Parts
		//----------------------

		public var scroller:Scroller;
		public var content:Group;
		public var btn_save:Button;
		public var btn_back:Button;
		public var btn_logout:Button;
		
		[SkinPart(required="false")]
		public var txt_errorMessage:Label;
		
		
		//----------------------
		// Constructor
		//----------------------
		
		public function AbstractView()
		{
			super();
					
			this.states = [
				new State({name: "portrait", overrides: []}),
				new State({name: "landscape", overrides: []})
			];
			
			this.destructionPolicy = "auto";
			this.actionBarVisible = true;
			
			this.addEventListener(StateChangeEvent.CURRENT_STATE_CHANGE,
				this_currentStateChangeHandler);
		}

		
		//----------------------
		// Setter / Getter
		//----------------------
		
		public function set errorCode(value:String):void
		{
			if (value != null)
			{
				_errorCode = value;
				_isErrorCodeDirty = true;
				
				_isError = !(value == "");
				
				invalidateProperties();
			}
		}		


		//----------------------
		// Methods
		//----------------------
		
		override protected function commitProperties():void
		{
			super.commitProperties();
			
			if (_isErrorCodeDirty)
			{
				txt_errorMessage.text = _errorCode;
				
				txt_errorMessage.includeInLayout = _isError;
				txt_errorMessage.visible = _isError;
				
				_isErrorCodeDirty = false;
			}
		}
		
		
		//----------------------
		// Handlers
		//----------------------
		
		protected function this_currentStateChangeHandler(event:StateChangeEvent):void
		{
			// change the skin of this View and
			// the skin defines a new layout
			if (this.styleName != currentState)
			{
				this.styleName = currentState;
			}
		}
		
		protected function btn_back_clickHandler(event:MouseEvent):void
		{
			/*
			dispatchEvent(
				new ViewEvent(ViewEvent.DISPLAY_PREVIOUS_VIEW, true)
			);
			*/
		}

		protected function btn_save_clickHandler(event:MouseEvent):void
		{
			/*
			 dispatchEvent(
			 	new SaveEvent()
			 );
			 */
		}
		
		protected function btn_logout_clickHandler(event:MouseEvent):void
		{
			/*
			dispatchEvent(
				new LogoutEvent()
			);
			*/
		}

        //----------------------
        // Helpers
        //----------------------
		
		
		protected function getBackButton():Button
		{
			btn_back = new Button();
			btn_back.id = "btn_back";
			//btn_back.label = resourceManager.getString("global", "btn_back.label");
			btn_back.styleName = "backButton";
			btn_back.addEventListener("click", btn_back_clickHandler);
			
			return btn_back;
		}		
		
		protected function getSaveButton():Button
		{
			btn_save = new Button();
			btn_save.id = "btn_save";
			//btn_save.label = resourceManager.getString("global", "btn_save.label");
			btn_save.addEventListener("click", btn_save_clickHandler);
			
			return btn_save;
		}
		
		protected function getLogoutButton():Button
		{
			btn_logout = new Button();
			btn_logout.id = "btn_logout";
			//btn_logout.label = resourceManager.getString("global", "btn_logout.label");
			btn_logout.styleName = "logoutButton";
			btn_logout.addEventListener("click", btn_logout_clickHandler);
			
			return btn_logout;
		}	
	}
}
