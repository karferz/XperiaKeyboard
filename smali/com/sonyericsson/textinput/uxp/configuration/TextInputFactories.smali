.class public abstract Lcom/sonyericsson/textinput/uxp/configuration/TextInputFactories;
.super Ljava/lang/Object;
.source "TextInputFactories.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addFactories(Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    .prologue
    .line 87
    new-instance v0, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/method/CBasicInputMethod$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 88
    new-instance v0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 89
    new-instance v0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 90
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 91
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/multitap/MultitapVisualisation$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 92
    new-instance v0, Lcom/sonyericsson/ned/controller/input/CEventRouter$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/input/CEventRouter$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 93
    new-instance v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/input/CEventTranslator$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 94
    new-instance v0, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/deletion/CBasicDeletionHandler$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 95
    new-instance v0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 96
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 97
    new-instance v0, Lcom/sonyericsson/ned/controller/misc/TextReplacer$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/misc/TextReplacer$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 98
    new-instance v0, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/misc/DoubleSpaceHandler$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 99
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/SetupWizardVisualisation$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 100
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 101
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageController$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 102
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageUpdateController$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 103
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 104
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 105
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 106
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 107
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftFullKeyboardKeyRepository$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 108
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/MultitapKeyRepository$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 109
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SingletapKeyRepository$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 110
    new-instance v0, Lcom/sonyericsson/ned/controller/multitap/CBasicMultitapTimeout$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/multitap/CBasicMultitapTimeout$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 111
    new-instance v0, Lcom/sonyericsson/ned/controller/multitap/CDigitSelector$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/multitap/CDigitSelector$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 112
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 113
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 114
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 115
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/PhoneKeysEventRepository$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/PhoneKeysEventRepository$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 116
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 117
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/Customization$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/Customization$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 118
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/ApplicationActionEventHandler$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/ApplicationActionEventHandler$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 119
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiToggleHandler$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 120
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 121
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiCandidateUsageTracker$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 122
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/glue/CSynchronizer$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 123
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 124
    new-instance v0, Lcom/sonyericsson/ned/controller/multitap/CSimpleSelector$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/multitap/CSimpleSelector$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 125
    new-instance v0, Lcom/sonyericsson/ned/controller/multitap/CStaticTimeout$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/multitap/CStaticTimeout$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 126
    new-instance v0, Lcom/sonyericsson/ned/model/validation/CEmptyValidator$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/model/validation/CEmptyValidator$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 127
    new-instance v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 128
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ResetFieldController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/ResetFieldController$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 129
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 130
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/UpgradePersonalizationVisualization$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 131
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 132
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ReopenWordsController$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 133
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/voice/VoiceInputController$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 134
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HandwritingInputController$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 135
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 136
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 137
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 138
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 139
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinDark$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinDark$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 140
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 141
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 142
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaGreen$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaGreen$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 143
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPink$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPink$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 144
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 145
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyResourceProvider$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 146
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 147
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 148
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/WhiteListDatabase$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 149
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 150
    new-instance v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 151
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/prediction/RemoveDictionaryWordsController$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 152
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 153
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 154
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/FloatingToggleHandler$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 155
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardDimTouchBroadcaster$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 156
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/accessibility/Accessibility$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 157
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/AccessPersonalizationGuideInfoDialog$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 158
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 159
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/cloud/CloudNudge$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 160
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 161
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/NpamRemovedVisualisation$Factory;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 162
    return-void
.end method
