package view.skin.phone
{
    import mx.controls.Spacer;
    import spark.components.Label;

    import view.component.ValueButton;
    import view.container.QuizView;
    import view.skin.AbstractSkin;

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
