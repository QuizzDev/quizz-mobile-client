package view.component
{
	import spark.components.Button;
	import spark.components.Label;
	
	public class ValueButton extends Button
	{
		//----------------------
		// Skin Parts
		//----------------------
		
		[SkinPart(required="false")]
		public var valueDisplay:Label;
		
		//----------------------
		// Properties
		//----------------------
		
		private var _value:String;
		private var _isValueDirty:Boolean;
		
		//----------------------
		// Getter / Setter
		//----------------------
		
		public function get value():String
		{
			return _value;
		}
		
		public function set value(value:String):void
		{
			_value = value;
			
			_isValueDirty = true;
			invalidateProperties();
		}

		//----------------------
		// Properties
		//----------------------

		override protected function commitProperties():void
		{
			super.commitProperties();
			
			if (_isValueDirty)
			{
				valueDisplay.text = value;// + ' ►';
				
				_isValueDirty = false;
			}
		}
	}
}
