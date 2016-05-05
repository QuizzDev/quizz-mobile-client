package domain.model.vo
{
	import mx.collections.ArrayCollection;

	public class Indication extends Answer
	{
		public var associatedDrugs:ArrayCollection;
		
		public function Indication()
		{
			super();
		}
	}
}