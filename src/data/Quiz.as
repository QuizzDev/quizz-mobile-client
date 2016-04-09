package data
{
	import data.vo.Question;

	import mx.collections.ArrayCollection;

	public class Quiz
	{
		public static const QUESTION_COUNT_TWENTY:int = 20;
		public static const QUESTION_COUNT_FIFTY:int = 50;
		public static const QUESTION_COUNT_HUNDRED:int = 100;

		[Inject(source="questionPool", bind="true")]
		public var questionPool:QuestionPool;

		private var _questions:ArrayCollection = new ArrayCollection();
		private var questionIndex:int = 0;

		public function createQuiz(questionCount:Number = 50):Quiz
		{
			var quiz:Quiz = new Quiz();
			quiz.questions = questionPool.getRandomQuestions(questionCount);

			return quiz;
		}

		public function get currentQuestion():Question
		{
			return (_questions.length > 0) ? _questions.getItemAt(questionIndex) as Question : null;
		}


		public function get previousQuestion():Question
		{
			return isPreviousQuestionPossible ? _questions.getItemAt(++questionIndex) as Question : null;
		}

		public function get nextQuestion():Question
		{
			return isNextQuestionPossible ? _questions.getItemAt(--questionIndex) as Question : null;
		}

		public function get isPreviousQuestionPossible():Boolean
		{
			return (_questions.getItemAt(questionIndex - 1) != null);
		}

		public function get isNextQuestionPossible():Boolean
		{
			return (_questions.getItemAt(questionIndex + 1) != null);
		}

		public function set questions(value:ArrayCollection):void
		{
			_questions=value;
		}
	}
}