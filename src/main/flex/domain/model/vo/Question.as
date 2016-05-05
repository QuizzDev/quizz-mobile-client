package domain.model.vo
{
	import mx.collections.ArrayCollection;

	[Bindable]
	public class Question
	{
		public var id:Number;
		
		public var question:String;
		
		public var topics:ArrayCollection;
		
		public var possibleAnwers:ArrayCollection;
		
		public var correctAnswer:Answer;
		
		public var difficulty:int;

		[Transient]
        private var _selectedAnswer:Answer;


        public function Question(id:Number, question:String, possibleAnwers:ArrayCollection, correctAnswer:Answer)
        {
            this.id = id;
            this.question = question;
            this.possibleAnwers = possibleAnwers;
            this.correctAnswer = correctAnswer;
        }

        public function get selectedAnswer():Answer
        {
            return _selectedAnswer;
        }

        public function set selectedAnswer(value:Answer):void
        {
            _selectedAnswer = value;
        }

        public function isCorrectAnswer(answer:Answer):Boolean
		{
            return correctAnswer.id === answer.id;
		}

        public function isAnsweredCorrectly():Boolean
        {
            return correctAnswer.id === _selectedAnswer.id;
        }
	}
}