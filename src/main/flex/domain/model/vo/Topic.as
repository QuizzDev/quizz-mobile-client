package domain.model.vo
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class Topic
	{
		public var id:Number;
		
		public var topic:String;
		
		public var questions:ArrayCollection;
	}
}