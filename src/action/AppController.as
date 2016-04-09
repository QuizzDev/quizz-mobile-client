package action
{
	import action.event.QuizEvent;
import action.event.ViewEvent;

import data.Model;
	import data.Quiz;

    import flash.events.IEventDispatcher;

	public class AppController
	{
        [Dispatcher]
        public var dispatcher:IEventDispatcher;

		[Inject(source="model", bind="true")]
		public var model:Model;

		[Inject(source="quiz", bind="true")]
		public var quiz:Quiz;


		[EventHandler(event="QuizEvent.START_QUIZ")]
		public function startQuiz(event:QuizEvent):void
		{
			model.quiz = quiz.createQuiz();

            dispatcher.dispatchEvent(
                new ViewEvent(ViewEvent.DISPLAY_QUIZ_VIEW)
            );
		}

		[EventHandler(event="QuizEvent.RESUME_QUIZ")]
		public function resumeQuiz(event:QuizEvent):void
		{

		}
		
		[EventHandler(event="QuizEvent.GOTO_PREVIOUS_QUESTION")]
		public function gotoPreviousQuestion(event:QuizEvent):void
		{
			
		}
		
		[EventHandler(event="QuizEvent.GOTO_NEXT_QUESTION")]
		public function gotoNextQuestion(event:QuizEvent):void
		{
			
		}
		
		[EventHandler(event="QuizEvent.QUIT_QUIZ")]
		public function quitQuiz(event:QuizEvent):void
		{
			
		}
	}
}
