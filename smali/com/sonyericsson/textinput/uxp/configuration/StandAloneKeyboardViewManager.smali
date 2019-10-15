.class public Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;
.super Ljava/lang/Object;
.source "StandAloneKeyboardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$UnnededHandlersStub;,
        Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$KeyboardViewKeyPreviewInitializer;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

.field private final mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

.field private final mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

.field private final mOnPreDrawViewListener:Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

.field private final mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/controller/PersonalizationGuidePage;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

.field private final mSessionType:Ljava/lang/String;

.field private final mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

.field private final mUnnededHandlersStub:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$UnnededHandlersStub;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "sessionType"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mPages:Ljava/util/ArrayList;

    .line 79
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mActivity:Landroid/app/Activity;

    .line 80
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mSessionType:Ljava/lang/String;

    .line 82
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mActivity:Landroid/app/Activity;

    .line 83
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 84
    .local v0, "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 85
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 86
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 87
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    .line 88
    new-instance v1, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$UnnededHandlersStub;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$UnnededHandlersStub;-><init>(Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$1;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mUnnededHandlersStub:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$UnnededHandlersStub;

    .line 90
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;->init(Landroid/content/Context;)V

    .line 92
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mOnPreDrawViewListener:Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    .line 93
    return-void
.end method


# virtual methods
.method public bind(Landroid/view/inputmethod/EditorInfo;)V
    .locals 13
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 158
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    if-eqz v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    invoke-virtual {v1, v8}, Lcom/sonyericsson/collaboration/ObjectBinder;->dispose(Z)V

    .line 160
    iput-object v12, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    .line 163
    :cond_0
    new-instance v1, Lcom/sonyericsson/collaboration/ObjectBinder;

    invoke-direct {v1}, Lcom/sonyericsson/collaboration/ObjectBinder;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    .line 164
    new-instance v3, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    invoke-direct {v3}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;-><init>()V

    .line 166
    .local v3, "objectEnvironmentBuilder":Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;
    new-instance v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;-><init>()V

    .line 167
    .local v0, "requirements":Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mUnnededHandlersStub:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$UnnededHandlersStub;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mSessionType:Ljava/lang/String;

    move-object v5, p1

    invoke-virtual/range {v0 .. v8}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->addRequirements(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;Landroid/view/inputmethod/EditorInfo;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 171
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputFactories;->addFactories(Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;)V

    .line 173
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mActivity:Landroid/app/Activity;

    .line 174
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;

    .line 175
    .local v10, "candidateViewContainer":Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;
    invoke-virtual {v10}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->initViews()V

    .line 176
    const v1, 0x7f0f005d

    .line 177
    invoke-virtual {v10, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateViewContainer;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;

    .line 179
    .local v9, "candidateView":Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mActivity:Landroid/app/Activity;

    aput-object v4, v2, v8

    const/4 v4, 0x1

    aput-object v9, v2, v4

    const/4 v4, 0x2

    aput-object p1, v2, v4

    const/4 v4, 0x3

    new-instance v5, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;

    invoke-direct {v5}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;-><init>()V

    .line 182
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;->createInstance()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v5, v2, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    aput-object v5, v2, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    aput-object v5, v2, v4

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    aput-object v5, v2, v4

    const/16 v4, 0x8

    aput-object v3, v2, v4

    const/16 v4, 0x9

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mUnnededHandlersStub:Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$UnnededHandlersStub;

    aput-object v5, v2, v4

    const/16 v4, 0xa

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    aput-object v5, v2, v4

    const/16 v4, 0xb

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    aput-object v5, v2, v4

    .line 179
    invoke-virtual {v3, v2, v8}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->build([Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/collaboration/ObjectBinder;->use([Ljava/lang/Object;)V

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonyericsson/collaboration/ObjectBinder;->init(Z)V
    :try_end_0
    .catch Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    return-void

    .line 189
    :catch_0
    move-exception v11

    .line 190
    .local v11, "e":Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getKeyboardView()Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    return-object v0
.end method

.method public getObjectBinder()Lcom/sonyericsson/collaboration/ObjectBinder;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    return-object v0
.end method

.method public notifyKeyboardViewChanged()V
    .locals 5

    .prologue
    .line 198
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mOnPreDrawViewListener:Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$KeyboardViewKeyPreviewInitializer;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager$KeyboardViewKeyPreviewInitializer;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->attach(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 200
    return-void
.end method

.method public onCreateView(Landroid/view/View;)V
    .locals 2
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    .line 119
    const v0, 0x7f0f0080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .line 123
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLollipopOrNewer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setEnableLongPressAnimations(Z)V

    .line 126
    :cond_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$Factory;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$Factory;-><init>()V

    .line 127
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$Factory;->createInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mPopupContainerManager:Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager;

    .line 128
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->notifyKeyboardViewChanged()V

    .line 129
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->dispose()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    .line 154
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mOnPreDrawViewListener:Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/OnPreDrawViewListener;->detach()V

    .line 136
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/collaboration/ObjectBinder;->dispose(Z)V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneKeyboardViewManager;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    .line 146
    :cond_0
    return-void
.end method
