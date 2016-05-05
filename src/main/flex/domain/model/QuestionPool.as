package domain.model
{
    import domain.model.vo.Question;
    import domain.model.vo.Answer;

    import mx.collections.ArrayCollection;

    public class QuestionPool
    {
        private var _questions:ArrayCollection = new ArrayCollection();

        public function set questions(value:ArrayCollection):void
        {
            _questions = value;
        }

        public function getRandomQuestions(questionCount:Number = 50):ArrayCollection
        {
            return createQuestions();
        }

        private function createQuestions():ArrayCollection
        {
            return new ArrayCollection([
                createQuestion(1),
                createQuestion(2),
                createQuestion(3),
            ]);
        }

        private function createQuestion(questionId:Number):Question
        {
            var question:Question = null;

            switch (questionId)
            {
                case 1: question = new Question(questionId, "Which of the following drugs is a TNFα inhibitor?", getPossibleAnswers(questionId), createAnswer(questionId * 4));break;
                case 2: question = new Question(questionId, "What is the primary target structure of Abciximab_10062?", getPossibleAnswers(questionId), createAnswer(questionId * 4)); break;
                case 3: question = new Question(questionId, "Which of the following drugs has CD20 as its main effective target structure?", getPossibleAnswers(questionId), createAnswer(questionId * 4)); break;
                default: break;
            }

            return question;
        }

        private function getPossibleAnswers(questionId:Number):ArrayCollection
        {
            return new ArrayCollection([
                createAnswer(questionId * 4 - 3),
                createAnswer(questionId * 4 - 2),
                createAnswer(questionId * 4 - 1),
                createAnswer(questionId * 4)
            ]);
        }
        private function createAnswer(answerId:Number):Answer
        {
            var answer:Answer = null;

            switch (answerId)
            {
                case 1: answer = new Answer(answerId, "Bortezomib"); break;
                case 2: answer = new Answer(answerId, "Carfilzomib"); break;
                case 3: answer = new Answer(answerId, "Anakinra"); break;
                case 4: answer = new Answer(answerId, "Etanercept"); break;

                case 5: answer = new Answer(answerId, "Factor Xa"); break;
                case 6: answer = new Answer(answerId, "P2Y12 receptor"); break;
                case 7: answer = new Answer(answerId, "GP Ib/V/IX"); break;
                case 8: answer = new Answer(answerId, "GP IIb/IIIa"); break;

                case 9: answer = new Answer(answerId, "Bevacizumab"); break;
                case 10: answer = new Answer(answerId, "Tocilizumab"); break;
                case 11: answer = new Answer(answerId, "Adalimumab"); break;
                case 12: answer = new Answer(answerId, "Rituximab"); break;
                default: break;
            }

            return answer;
        }
    }
}
