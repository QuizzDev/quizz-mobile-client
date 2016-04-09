package data
{
	import org.swizframework.storage.ISharedObjectBean;

	[Bindable]
	public class Model
	{
		[Inject]
		public var quizzSoBean:ISharedObjectBean;

		public var quiz:Quiz;
	}
}