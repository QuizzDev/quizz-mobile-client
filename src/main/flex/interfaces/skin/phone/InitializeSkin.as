package interfaces.skin.phone
{
	import interfaces.container.InitializeView;
	import interfaces.skin.AbstractSkin;

	import spark.components.BusyIndicator;

	public class InitializeSkin extends AbstractSkin
	{
		/**
		 *  @copy spark.skins.spark.ApplicationSkin#hostComponent
		 */
		public var hostComponent:InitializeView;

		public var busyIndicator:BusyIndicator;

		public function InitializeSkin()
		{
			super();
		}
		
		override protected function createChildren():void
		{
			super.createChildren();

			busyIndicator = new BusyIndicator();
			busyIndicator.id = "busyIndicator";
			contentGroup.addElement(busyIndicator);
		}
	}
}