package domain.model
{
    import domain.model.vo.Question;

    import mx.collections.ArrayCollection;

    import org.flexunit.asserts.assertEquals;

    public class QuizTest
    {
        private var quiz:Quiz;
        private var questions:ArrayCollection;

        [Before]
        public function setUp():void
        {
            quiz = new Quiz(getQuestionsArrayCollectionFixture());
            questions = getQuestionsArrayCollectionFixture();
        }

        [After]
        public function tearDown():void
        {
            quiz = null;
            questions = null;
        }

        [Test]
        public function testGotoFirstQuestion():void
        {
            var firstQuestion:Question = quiz.gotoFirstQuestion();
            var expectedQuestion:Question = questions.getItemAt(0) as Question;

            assertEquals(firstQuestion.id, expectedQuestion.id);
        }

        [Test]
        public function testGotoNextQuestion():void
        {
            quiz.gotoFirstQuestion();
            var secondQuestion:Question = quiz.gotoNextQuestion();
            var expectedQuestion:Question = questions.getItemAt(1) as Question;

            assertEquals(secondQuestion.id, expectedQuestion.id);
        }

        [Test]
        public function testGotoPreviousQuestion():void
        {
            quiz.gotoNextQuestion();
            var firstQuestion:Question = quiz.gotoPreviousQuestion();
            var expectedQuestion:Question = questions.getItemAt(0) as Question;

            assertEquals(firstQuestion.id, expectedQuestion.id);
        }

        [Test]
        public function testQuitQuiz():void
        {

        }

        private function getQuestionsArrayCollectionFixture():ArrayCollection
        {
            return new ArrayCollection([
                new Question(1, 'firstQuestion', null, null),
                new Question(2, 'secondQuestion', null, null),
                new Question(3, 'thirdQuestion', null, null),
            ]);
        }
    }
}
