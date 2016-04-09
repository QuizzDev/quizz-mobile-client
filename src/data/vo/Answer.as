package data.vo
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class Answer
	{
		public var id:Number;

		public var answer:String;

		public var description:String;

		public var wikipediaLink:String;

		public var topics:ArrayCollection;

		public var associatedQuestions:ArrayCollection;

		public var importance:int;

		public function Answer(id:Number, answer:String)
		{
			this.id = id;
			this.answer = answer;
		}
	}
}