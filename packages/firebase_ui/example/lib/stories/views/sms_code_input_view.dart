import 'package:firebase_ui/auth.dart';
import 'package:firebase_ui_example/stories/stories_lib/story.dart';
import 'package:flutter/widgets.dart';

const _flowKey = Object();

class SMSCodeInputViewStory extends StoryWidget {
  const SMSCodeInputViewStory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final story = storyOf(context);

    story.category = 'Views';
    story.title = 'SMS code input view';

    return SMSCodeInputView(
      flowKey: _flowKey,
      onSubmit: (code) {
        story.notify('sms code submitted $code');
      },
    );
  }
}
