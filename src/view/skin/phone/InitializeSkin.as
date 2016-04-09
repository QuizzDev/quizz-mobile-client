package view.skin.phone
{
	import mx.core.DPIClassification;
	
	import spark.components.BusyIndicator;
	import spark.components.Group;
	import spark.layouts.VerticalLayout;
	import spark.skins.mobile.supportClasses.MobileSkin;

	import view.container.InitializeView;
	import view.skin.AbstractSkin;

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