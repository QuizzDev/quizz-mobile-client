package interfaces.skin
{   
	import spark.components.Label;
	import spark.components.supportClasses.StyleableTextField;
	import spark.skins.mobile.ButtonSkin;
	
	public class ValueButtonSkin extends ButtonSkin
	{ 
		public var valueDisplay:Label;
		
		//----------------------
		// Constructor
		//----------------------
		
		public function ValueButtonSkin()
		{ 
			super();
		} 
		
		//----------------------
		// Methods
		//----------------------
		
		override protected function createChildren():void
		{
			super.createChildren();
			
			valueDisplay = new Label();
			valueDisplay.id = "valueDisplay";
			valueDisplay.setStyle("textAlign", "right");
			valueDisplay.setStyle("verticalAlign", "middle");
			this.addChild(valueDisplay);

			labelDisplayShadow.visible = false;
		}
		
		override protected function layoutContents(unscaledWidth:Number, unscaledHeight:Number):void
		{
			super.layoutContents(unscaledWidth, unscaledHeight);

			labelDisplay.x = 20;
			setElementSize(valueDisplay, unscaledWidth / 2, labelDisplay.height);
			setElementPosition(valueDisplay, unscaledWidth - valueDisplay.width - 20, labelDisplay.y);
		}
	} 
}
