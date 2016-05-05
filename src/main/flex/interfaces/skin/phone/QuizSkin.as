package interfaces.skin.phone
{
    import interfaces.component.ValueButton;
    import interfaces.container.QuizView;
    import interfaces.skin.AbstractSkin;

    import mx.controls.Spacer;

    import spark.components.Button;
    import spark.components.HGroup;
    import spark.components.Label;

    public class QuizSkin extends AbstractSkin
    {
        /**
         *  @copy spark.skins.spark.ApplicationSkin#hostComponent
         */
        public var hostComponent:QuizView;

        public var txt_caption:Label;
        public var txt_question:Label;
        public var btn_answer_one:ValueButton;
        public var btn_answer_two:ValueButton;
        public var btn_answer_three:ValueButton;
        public var btn_answer_four:ValueButton;
        public var btn_previousQuestion:Button;
        public var btn_menu:Button;
        public var btn_nextQuestion:Button;

        public function QuizSkin()
        {
            super();
        }

        override protected function createChildren():void
        {
            super.createChildren();

            var space1:Spacer = new Spacer();
            space1.height = 10;
            content.addElement(space1);

            txt_caption = new Label();
            txt_caption.id = "txt_caption";
            content.addElement(txt_caption);

            txt_question = new Label();
            txt_question.id = "txt_question";
            content.addElement(txt_question);

            var space2:Spacer = new Spacer();
            space2.percentHeight = 100;
            content.addElement(space2);

            btn_answer_one = new ValueButton();
            btn_answer_one.id = "btn_answer_one";
            content.addElement(btn_answer_one);

            btn_answer_two = new ValueButton();
            btn_answer_two.id = "btn_answer_two";
            content.addElement(btn_answer_two);

            btn_answer_three = new ValueButton();
            btn_answer_three.id = "btn_answer_three";
            content.addElement(btn_answer_three);

            btn_answer_four = new ValueButton();
            btn_answer_four.id = "btn_answer_four";
            content.addElement(btn_answer_four);

            var hgroup1:HGroup = new HGroup();
            content.addElement(hgroup1);

            btn_previousQuestion = new Button();
            btn_previousQuestion.id = "btn_previousQuestion";
            hgroup1.addElement(btn_previousQuestion);

            btn_menu = new Button();
            btn_menu.id = "btn_menu";
            hgroup1.addElement(btn_menu);

            btn_nextQuestion = new Button();
            btn_nextQuestion.id = "btn_nextQuestion";
            hgroup1.addElement(btn_nextQuestion);
        }

        override protected function layoutContents(unscaledWidth:Number, unscaledHeight:Number):void
        {
            super.layoutContents(unscaledWidth, unscaledHeight);

            txt_caption.percentWidth = 100;
            txt_question.percentWidth = 100;
            btn_answer_one.percentWidth = 100;
            btn_answer_two.percentWidth = 100;
            btn_answer_three.percentWidth = 100;
            btn_answer_four.percentWidth = 100;
        }
    }
}
