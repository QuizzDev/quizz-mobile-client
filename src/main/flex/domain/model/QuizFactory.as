package domain.model
{
    public class QuizFactory
    {
        private var _questionPool:QuestionPool;

        public function QuizFactory(questionPool:QuestionPool)
        {
            _questionPool = questionPool;
        }

        public function createQuiz(questionCount:Number):Quiz
        {
            return new Quiz(_questionPool.getRandomQuestions(questionCount));
        }
    }
}
