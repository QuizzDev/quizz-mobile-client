package application
{
	import application.event.AnswerSelectedEvent;
	import application.event.QuizEvent;
	import application.event.ViewEvent;

	import domain.model.QuizFactory;

	import flash.events.IEventDispatcher;

	public class AppController
	{
        [Dispatcher]
        public var dispatcher:IEventDispatcher;

		[Inject(source="model", bind="true")]
		public var model:AppModel;

		[Inject(source="quizFactory", bind="true")]
		public var quizFactory:QuizFactory;


		[EventHandler(event="QuizEvent.START_QUIZ")]
		public function startQuiz(event:QuizEvent):void
		{
			model.quiz = quizFactory.createQuiz(50);

            dispatcher.dispatchEvent(
                new ViewEvent(ViewEvent.DISPLAY_QUIZ_VIEW)
            );
		}

		[EventHandler(event="QuizEvent.RESUME_QUIZ")]
		public function resumeQuiz(event:QuizEvent):void
		{
			dispatcher.dispatchEvent(
				new ViewEvent(ViewEvent.DISPLAY_QUIZ_VIEW)
			);
		}
		
		[EventHandler(event="QuizEvent.GOTO_PREVIOUS_QUESTION")]
		public function gotoPreviousQuestion(event:QuizEvent):void
		{
			model.goToPreviousQuestion();
		}
		
		[EventHandler(event="QuizEvent.GOTO_NEXT_QUESTION")]
		public function gotoNextQuestion(event:QuizEvent):void
		{
			model.goToNextQuestion();
		}

		[EventHandler(event="AnswerSelectedEvent.ANSWER_SELECTED")]
		public function answerSelected(event:AnswerSelectedEvent):void
		{
			var answerIndex:Number = event.answerIndex;

			model.selectedAnswerIndex = answerIndex;
		}

		[EventHandler(event="QuizEvent.QUIT_QUIZ")]
		public function quitQuiz(event:QuizEvent):void
		{
			
		}
	}
}
