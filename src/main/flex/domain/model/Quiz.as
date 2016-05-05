package domain.model
{
    import domain.model.vo.Question;

    import mx.collections.ArrayCollection;

    public class Quiz
    {
        private var _questions:ArrayCollection = new ArrayCollection();
        private var _questionIndex:int = 0;

        private var _currentQuestion:Question;

        public function Quiz(questions:ArrayCollection)
        {
            _questions = questions;
        }

        public function gotoFirstQuestion():Question
        {
            _questionIndex = 0;
            return _questions.getItemAt(_questionIndex) as Question;
        }

        public function gotoNextQuestion():Question
        {
            if (!isNextQuestionPossible)
                throw new Error("Next question not available.");

            return _questions.getItemAt(++_questionIndex) as Question;
        }

        public function gotoPreviousQuestion():Question
        {
            if (!isPreviousQuestionPossible)
                throw new Error("Previous question not available.");

            return _questions.getItemAt(--_questionIndex) as Question;
        }

        public function get currentQuestion():Question
        {
            return _currentQuestion;
        }

        public function get firstQuestion():Question
        {
            return _questions.getItemAt(_questionIndex) as Question;
        }

        public function get previousQuestion():Question
        {
        	return isPreviousQuestionPossible ? _questions.getItemAt(--_questionIndex) as Question : null;
        }

        public function get nextQuestion():Question
        {
            return isNextQuestionPossible ? _questions.getItemAt(++_questionIndex) as Question : null;
        }

        public function get isPreviousQuestionPossible():Boolean
        {
            return (_questionIndex - 1 >= 0);
        }

        public function get isNextQuestionPossible():Boolean
        {
            return (_questionIndex + 1 < _questions.length);
        }

        public function set questions(value:ArrayCollection):void
        {
            _questions = value;
        }

        public function get questions():ArrayCollection
        {
            return _questions;
        }
    }
}