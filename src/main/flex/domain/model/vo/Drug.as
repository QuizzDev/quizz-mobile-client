package domain.model.vo
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class Drug extends Answer
	{
		public var associatedTargets:ArrayCollection;
		
		public var associatedIndications:ArrayCollection;
		
		public var associatedContraIndications:ArrayCollection;
		
		public var associatedAdvereEffects:ArrayCollection;
		
		public function Drug()
		{
			super();
		}
	}
}