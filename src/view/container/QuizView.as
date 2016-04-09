package view.container
{
	import action.event.QuizEvent;
	import action.event.ViewEvent;

    import data.vo.Answer;

    import data.vo.Question;

    import flash.events.MouseEvent;

    import mx.resources.ResourceManager;

    import spark.components.Label;

	import view.AbstractView;
	import view.component.ValueButton;

	[ResourceBundle("quiz_view")]
	public class QuizView extends AbstractView
	{
        private var _currentQuestion:Question;
        private var _isCurrentQuestionDirty:Boolean;

		[SkinPart(required="true")]
		public var txt_caption:Label;
		
		[SkinPart(required="true")]
		public var txt_question:Label;
		
		[SkinPart(required="true")]
		public var btn_answer_one:ValueButton;
		
		[SkinPart(required="true")]
		public var btn_answer_two:ValueButton;
		
		[SkinPart(required="true")]
		public var btn_answer_three:ValueButton;

        [SkinPart(required="true")]
		public var btn_answer_four:ValueButton;

		public function QuizView()
		{
			super();
			
			this.resourceBundleName = "quiz_view";
			
			this.title = resourceManager.getString(resourceBundleName, "title");
		}

		[Inject(source="model.quiz.currentQuestion", bind="true")]
		public function set currentQuestion(value:Question):void
		{
			_currentQuestion = value;
			_isCurrentQuestionDirty = true;
			
			invalidateProperties();
		}

		override protected function partAdded(partName:String, instance:Object):void
		{
			super.partAdded(partName, instance);

            if (instance == btn_answer_one)
            {
                btn_answer_one.addEventListener(MouseEvent.CLICK, btn_answer_clickHandler);
            }
            if (instance == btn_answer_two)
            {
                btn_answer_two.addEventListener(MouseEvent.CLICK, btn_answer_clickHandler);
            }
            if (instance == btn_answer_three)
            {
                btn_answer_three.addEventListener(MouseEvent.CLICK, btn_answer_clickHandler);
            }
            if (instance == btn_answer_four)
            {
                btn_answer_four.addEventListener(MouseEvent.CLICK, btn_answer_clickHandler);
            }
		}
		
		override protected function partRemoved(partName:String, instance:Object):void
		{
			super.partRemoved(partName, instance);
			
			if (instance == btn_answer_one)
			{
                btn_answer_one.removeEventListener(MouseEvent.CLICK, btn_answer_clickHandler);
			}
			if (instance == btn_answer_two)
			{
                btn_answer_two.removeEventListener(MouseEvent.CLICK, btn_answer_clickHandler);
			}
			if (instance == btn_answer_three)
			{
                btn_answer_three.removeEventListener(MouseEvent.CLICK, btn_answer_clickHandler);
			}
            if (instance == btn_answer_four)
            {
                btn_answer_four.removeEventListener(MouseEvent.CLICK, btn_answer_clickHandler);
            }
		}
		
		override protected function commitProperties():void
		{
			super.commitProperties();

			if (_isCurrentQuestionDirty)
			{
                txt_question.text = _currentQuestion.question;
				btn_answer_one.label = (_currentQuestion.possibleAnwers.getItemAt(0) as Answer).answer;
				btn_answer_two.label = (_currentQuestion.possibleAnwers.getItemAt(1) as Answer).answer;
				btn_answer_three.label = (_currentQuestion.possibleAnwers.getItemAt(2) as Answer).answer;
				btn_answer_four.label = (_currentQuestion.possibleAnwers.getItemAt(3) as Answer).answer;

                _isCurrentQuestionDirty = false;
			}
		}
		
		protected function btn_answer_clickHandler(event:MouseEvent):void
		{

		}
	}
}
