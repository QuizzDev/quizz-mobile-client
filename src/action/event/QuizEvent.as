package action.event
{
	import flash.events.Event;
	
	public class QuizEvent extends Event
	{
		public static const START_QUIZ				:String = 'QuizEvent.START_QUIZ';
		public static const RESUME_QUIZ				:String = 'QuizEvent.RESUME_QUIZ';
		public static const GOTO_NEXT_QUESTION		:String = 'QuizEvent.GOTO_NEXT_QUESTION';
		public static const GOTO_PREVIOUS_QUESTION	:String = 'QuizEvent.GOTO_PREVIOUS_QUESTION';
		public static const QUIT_QUIZ				:String = 'QuizEvent.QUIT_QUIZ';

		public function QuizEvent(type:String, bubbles:Boolean=true, cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
		}
	}
}