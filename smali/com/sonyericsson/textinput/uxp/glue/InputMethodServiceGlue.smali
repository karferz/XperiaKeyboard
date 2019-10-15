.class public Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
.super Landroid/inputmethodservice/InputMethodService;
.source "InputMethodServiceGlue.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Bindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTENSIVE_DEBUG:Z = false

.field private static final GOOGLE_QUICK_SEARCH_BOX:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final mExternalFactories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/collaboration/ObjectFactory;",
            ">;"
        }
    .end annotation
.end field

.field private static final mExternalRequirements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mInstance:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

.field private static mIsUserAMonkey:Z


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

.field private mCustomExceptionHandler:Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;

.field private mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

.field private final mHandledOnPressKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHardKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

.field private mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

.field private final mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

.field private mInputViewFinishedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

.field private mInputViewStartedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

.field private volatile mIsBinding:Z

.field private mIsCreatedInLockedMode:Z

.field private mIsFullscreenMode:Z

.field private volatile mIsUnbinding:Z

.field private mIsUsingDebugViews:Z

.field private mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

.field private mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

.field private mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

.field private final mOnDestroyListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mRequirements:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;

.field private mSelectionListeners:[Lcom/sonyericsson/ned/controller/ISelectionListener;

.field private mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

.field private mTextBuffer:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

.field private final mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

.field private mWordCompletionsListeners:[Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->TAG:Ljava/lang/String;

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/ned/controller/ICursorListener;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/sonyericsson/ned/controller/ISelectionListener;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->REQUIRED:[Ljava/lang/Class;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalFactories:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalRequirements:Ljava/util/ArrayList;

    .line 91
    sput-boolean v3, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUserAMonkey:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 129
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHandledOnPressKeys:Ljava/util/ArrayList;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "rebind"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "unbind"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "reinitialize"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mOnDestroyListeners:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;-><init>(Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    .line 100
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsCreatedInLockedMode:Z

    .line 102
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUsingDebugViews:Z

    .line 120
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->UNINITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    .line 134
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->setInstance(Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;)V

    .line 135
    return-void
.end method

.method public static addExternalFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V
    .locals 1
    .param p0, "factory"    # Lcom/sonyericsson/collaboration/ObjectFactory;

    .prologue
    .line 146
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalFactories:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method public static addExternalRequirement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "requirement"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalRequirements:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    return-void
.end method

.method private bind(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 20
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "rebind"    # Z

    .prologue
    .line 487
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 488
    const-string v2, "Bind not on main thread"

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->reportBindProblem(Ljava/lang/String;)V

    .line 491
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsBinding:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUnbinding:Z

    if-eqz v2, :cond_2

    .line 492
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind when mIsBinding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsBinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mIsUnbinding:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUnbinding:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->reportBindProblem(Ljava/lang/String;)V

    .line 496
    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsBinding:Z

    .line 497
    new-instance v2, Lcom/sonyericsson/collaboration/ObjectBinder;

    invoke-direct {v2}, Lcom/sonyericsson/collaboration/ObjectBinder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    .line 498
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    if-eqz v2, :cond_3

    if-nez p2, :cond_4

    .line 499
    :cond_3
    new-instance v2, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    invoke-direct {v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    .line 502
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mRequirements:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;

    if-eqz v2, :cond_5

    if-nez p2, :cond_6

    .line 503
    :cond_5
    new-instance v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;

    invoke-direct {v2}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mRequirements:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;

    .line 506
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getApplication()Landroid/app/Application;

    move-result-object v19

    check-cast v19, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 508
    .local v19, "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUserAMonkey:Z

    if-nez v2, :cond_9

    .line 512
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    if-eqz v2, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    const-string v3, "com.sonyericsson.textinput.uxp.test.MonkeyMode"

    .line 513
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUserAMonkey:Z

    .line 514
    sget-boolean v2, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUserAMonkey:Z

    if-eqz v2, :cond_7

    .line 516
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v2

    .line 517
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v3

    .line 518
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v4

    .line 516
    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createMonkeySettings(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v2

    .line 515
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->setSettings(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 536
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mRequirements:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;

    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    .line 537
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    .line 539
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "normal"

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v10, p2

    .line 536
    invoke-virtual/range {v2 .. v10}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->addRequirements(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;Landroid/view/inputmethod/EditorInfo;Landroid/content/Context;Ljava/lang/String;Z)V

    .line 541
    if-nez p2, :cond_b

    .line 542
    sget-object v2, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalRequirements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    .line 543
    .local v18, "requirement":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const/4 v4, 0x0

    aget-object v4, v18, v4

    const/4 v5, 0x1

    aget-object v5, v18, v5

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 513
    .end local v18    # "requirement":[Ljava/lang/String;
    :cond_8
    const/4 v2, 0x0

    goto :goto_0

    .line 525
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v17

    check-cast v17, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    .line 527
    .local v17, "randomSettings":Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;
    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->getKeyboardResizeHeightPxCurrent()I

    move-result v15

    .line 528
    .local v15, "keyboardResizeHeightPxCurrentBefore":I
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->reinitSettings(Landroid/content/Context;)V

    .line 529
    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->getKeyboardResizeHeightPxCurrent()I

    move-result v2

    if-eq v2, v15, :cond_7

    .line 532
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->requestHideSelf(I)V

    goto :goto_1

    .line 546
    .end local v15    # "keyboardResizeHeightPxCurrentBefore":I
    .end local v17    # "randomSettings":Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputFactories;->addFactories(Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;)V

    .line 547
    sget-object v2, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalFactories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sonyericsson/collaboration/ObjectFactory;

    .line 548
    .local v14, "externalFactory":Lcom/sonyericsson/collaboration/ObjectFactory;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    invoke-virtual {v3, v14}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    goto :goto_3

    .line 552
    .end local v14    # "externalFactory":Lcom/sonyericsson/collaboration/ObjectFactory;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getBindableViews()[Ljava/lang/Object;

    move-result-object v11

    .line 553
    .local v11, "bindableViews":[Ljava/lang/Object;
    const/16 v2, 0x9

    new-array v12, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v12, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCustomExceptionHandler:Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;

    aput-object v3, v12, v2

    const/4 v2, 0x2

    .line 554
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x3

    .line 555
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x4

    .line 556
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x5

    .line 557
    invoke-virtual/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v3

    aput-object v3, v12, v2

    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    aput-object v3, v12, v2

    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    aput-object v3, v12, v2

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    aput-object v3, v12, v2

    .line 563
    .local v12, "bindables":[Ljava/lang/Object;
    invoke-static {v11, v12}, Lcom/sonyericsson/ned/util/ArrayUtil;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    .line 565
    .local v16, "mergedBindables":[Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v3, v0, v1}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->build([Ljava/lang/Object;Z)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/collaboration/ObjectBinder;->use([Ljava/lang/Object;)V

    .line 568
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/sonyericsson/collaboration/ObjectBinder;->init(Z)V
    :try_end_0
    .catch Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsBinding:Z

    .line 574
    return-void

    .line 569
    :catch_0
    move-exception v13

    .line 570
    .local v13, "e":Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private doCreateInputView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 316
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->onEvaluateFullscreenMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsFullscreenMode:Z

    .line 318
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsFullscreenMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->UNINITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->PARTSCREEN_INITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    if-ne v0, v1, :cond_3

    .line 321
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->FULLSCREEN_INITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    .line 322
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 323
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030037

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 347
    :cond_1
    :goto_0
    return-void

    .line 326
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030036

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    goto :goto_0

    .line 329
    :cond_3
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsFullscreenMode:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->UNINITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->FULLSCREEN_INITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    if-ne v0, v1, :cond_6

    .line 332
    :cond_4
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->PARTSCREEN_INITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    .line 333
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 334
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030035

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    goto :goto_0

    .line 337
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030034

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    goto :goto_0

    .line 339
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private fireOnIndexChange(IIIII)V
    .locals 10
    .param p1, "newSelStart"    # I
    .param p2, "newSelEnd"    # I
    .param p3, "candidatesStart"    # I
    .param p4, "candidatesEnd"    # I
    .param p5, "reason"    # I

    .prologue
    .line 165
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

    if-eqz v1, :cond_1

    .line 166
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getSubstringBeforeCursor()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    .line 168
    .local v5, "textBeforeTheCursor":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-static {p1, p2}, Lcom/sonyericsson/ned/controller/CursorPosition;->createCursorPositionFromRange(II)Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v2

    .line 170
    .local v2, "position":Lcom/sonyericsson/ned/controller/CursorPosition;
    invoke-static {p3, p4}, Lcom/sonyericsson/ned/controller/CursorPosition;->createCursorPositionFromRange(II)Lcom/sonyericsson/ned/controller/CursorPosition;

    move-result-object v3

    .line 172
    .local v3, "composing":Lcom/sonyericsson/ned/controller/CursorPosition;
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

    array-length v9, v8

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v9, :cond_1

    aget-object v0, v8, v7

    .line 173
    .local v0, "listener":Lcom/sonyericsson/ned/controller/ICursorListener;
    if-eqz v0, :cond_0

    move-object v1, p0

    move v4, p5

    move v6, p1

    .line 174
    invoke-interface/range {v0 .. v6}, Lcom/sonyericsson/ned/controller/ICursorListener;->onIndexChange(Ljava/lang/Object;Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/controller/CursorPosition;ILcom/sonyericsson/ned/model/CodePointString;I)V

    .line 172
    :cond_0
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_0

    .line 179
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/ICursorListener;
    .end local v2    # "position":Lcom/sonyericsson/ned/controller/CursorPosition;
    .end local v3    # "composing":Lcom/sonyericsson/ned/controller/CursorPosition;
    .end local v5    # "textBeforeTheCursor":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    return-void
.end method

.method private fireOnInputViewFinish()V
    .locals 4

    .prologue
    .line 249
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewFinishedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    if-eqz v1, :cond_1

    .line 250
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewFinishedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 251
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;
    if-eqz v0, :cond_0

    .line 252
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;->onInputViewFinished()V

    .line 250
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;
    :cond_1
    return-void
.end method

.method private fireOnInputViewStart()V
    .locals 4

    .prologue
    .line 239
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewStartedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    if-eqz v1, :cond_1

    .line 240
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewStartedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 241
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;
    if-eqz v0, :cond_0

    .line 242
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;->onInputViewStarted()V

    .line 240
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;
    :cond_1
    return-void
.end method

.method private fireOnNewCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 4
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 219
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mWordCompletionsListeners:[Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mWordCompletionsListeners:[Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 221
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;
    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;->onNewCompletions(Ljava/lang/Object;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 220
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;
    :cond_1
    return-void
.end method

.method private fireOnUpdateInputView()V
    .locals 4

    .prologue
    .line 229
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

    if-eqz v1, :cond_1

    .line 230
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 231
    .local v0, "listener":Lcom/sonyericsson/ned/controller/ICursorListener;
    if-eqz v0, :cond_0

    .line 232
    invoke-interface {v0, p0}, Lcom/sonyericsson/ned/controller/ICursorListener;->onUpdateInputView(Ljava/lang/Object;)V

    .line 230
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/ICursorListener;
    :cond_1
    return-void
.end method

.method private fireOnUpdateSelection(IIIIII)V
    .locals 11
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 208
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSelectionListeners:[Lcom/sonyericsson/ned/controller/ISelectionListener;

    if-eqz v1, :cond_1

    .line 209
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSelectionListeners:[Lcom/sonyericsson/ned/controller/ISelectionListener;

    array-length v10, v9

    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v10, :cond_1

    aget-object v0, v9, v8

    .line 210
    .local v0, "listener":Lcom/sonyericsson/ned/controller/ISelectionListener;
    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 211
    invoke-interface/range {v0 .. v7}, Lcom/sonyericsson/ned/controller/ISelectionListener;->onUpdateSelection(Ljava/lang/Object;IIIIII)V

    .line 209
    :cond_0
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_0

    .line 216
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/ISelectionListener;
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInstance:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    return-object v0
.end method

.method private getSubstringAdjacentToCursor(IZ)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 5
    .param p1, "nbrCharacters"    # I
    .param p2, "beforeCursor"    # Z

    .prologue
    const/4 v4, 0x0

    .line 187
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 188
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 189
    .local v1, "result":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v0, :cond_0

    .line 191
    if-eqz p2, :cond_1

    .line 192
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v3, v0, p1, v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getTextBeforeCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 198
    .local v2, "text":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v2, :cond_0

    .line 199
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 202
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_0
    return-object v1

    .line 195
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v3, v0, p1, v4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getTextAfterCursor(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;II)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "text":Ljava/lang/CharSequence;
    goto :goto_0
.end method

.method private getSubstringBeforeCursor()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 2

    .prologue
    .line 182
    const/16 v0, 0x2ee

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getSubstringAdjacentToCursor(IZ)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method private handleChangedDebugMode()V
    .locals 2

    .prologue
    .line 442
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUsingDebugViews:Z

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->isDebugEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 444
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->isDebugEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUsingDebugViews:Z

    .line 445
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->UNINITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    .line 446
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->doCreateInputView()V

    .line 447
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->setInputView(Landroid/view/View;)V

    .line 449
    :cond_0
    return-void
.end method

.method public static removeExternalFactories()V
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalFactories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 151
    return-void
.end method

.method public static removeExternalRequirements()V
    .locals 1

    .prologue
    .line 160
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExternalRequirements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 161
    return-void
.end method

.method private static reportBindProblem(Ljava/lang/String;)V
    .locals 1
    .param p0, "problem"    # Ljava/lang/String;

    .prologue
    .line 479
    new-instance v0, Ljava/net/BindException;

    invoke-direct {v0, p0}, Ljava/net/BindException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->logNonFatalEvent(Ljava/lang/Exception;)V

    .line 480
    return-void
.end method

.method private static setInstance(Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;)V
    .locals 0
    .param p0, "instance"    # Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    .prologue
    .line 142
    sput-object p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInstance:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    .line 143
    return-void
.end method

.method private unbind(Z)V
    .locals 3
    .param p1, "rebind"    # Z

    .prologue
    const/4 v2, 0x0

    .line 581
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 582
    const-string v0, "Unbind not on main thread"

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->reportBindProblem(Ljava/lang/String;)V

    .line 585
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsBinding:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUnbinding:Z

    if-eqz v0, :cond_2

    .line 586
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unbind when mIsBinding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsBinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsUnbinding:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUnbinding:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->reportBindProblem(Ljava/lang/String;)V

    .line 590
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUnbinding:Z

    .line 592
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    if-eqz v0, :cond_3

    .line 593
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/collaboration/ObjectBinder;->dispose(Z)V

    .line 594
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectBinder:Lcom/sonyericsson/collaboration/ObjectBinder;

    .line 595
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

    .line 596
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mWordCompletionsListeners:[Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    .line 597
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHardKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    .line 598
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewStartedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    .line 599
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewFinishedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    .line 602
    :cond_3
    if-nez p1, :cond_4

    .line 603
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mObjectEnvironmentBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    .line 604
    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mRequirements:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;

    .line 607
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsUnbinding:Z

    .line 608
    return-void
.end method


# virtual methods
.method public addOnDestroyListener(Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;)V
    .locals 1
    .param p1, "onDestroyListener"    # Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;

    .prologue
    .line 934
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mOnDestroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mOnDestroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    :cond_0
    return-void
.end method

.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 713
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/ICursorListener;

    if-ne p2, v0, :cond_0

    .line 714
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/ICursorListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

    .line 715
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCursorListeners:[Lcom/sonyericsson/ned/controller/ICursorListener;

    .line 731
    :goto_0
    return-object v0

    .line 716
    :cond_0
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    if-ne p2, v0, :cond_1

    .line 717
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mWordCompletionsListeners:[Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    .line 718
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mWordCompletionsListeners:[Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;

    goto :goto_0

    .line 719
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    if-ne p2, v0, :cond_2

    .line 720
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewStartedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    .line 721
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewStartedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewStarted;

    goto :goto_0

    .line 722
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    if-ne p2, v0, :cond_3

    .line 723
    new-array v0, p1, [Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewFinishedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    .line 724
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputViewFinishedListeners:[Lcom/sonyericsson/textinput/uxp/view/OnInputViewFinished;

    goto :goto_0

    .line 725
    :cond_3
    const-class v0, Lcom/sonyericsson/ned/controller/ISelectionListener;

    if-ne p2, v0, :cond_4

    .line 726
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/ISelectionListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSelectionListeners:[Lcom/sonyericsson/ned/controller/ISelectionListener;

    .line 727
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSelectionListeners:[Lcom/sonyericsson/ned/controller/ISelectionListener;

    goto :goto_0

    .line 731
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 736
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    if-ne p2, v0, :cond_1

    .line 737
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHardKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 738
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    if-ne p2, v0, :cond_0

    .line 739
    check-cast p1, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mTextBuffer:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    goto :goto_0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 930
    const/4 v0, 0x0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .prologue
    .line 701
    return-object p0
.end method

.method public getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 972
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public getExtractEditText()Landroid/inputmethodservice/ExtractEditText;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    return-object v0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 745
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public getWindow()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 999
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public isExtractViewShown()Z
    .locals 1

    .prologue
    .line 1008
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->isExtractViewShown()Z

    move-result v0

    return v0
.end method

.method public isFullscreenMode()Z
    .locals 1

    .prologue
    .line 1017
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->isFullscreenMode()Z

    move-result v0

    return v0
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1
    .param p1, "outInsets"    # Landroid/inputmethodservice/InputMethodService$Insets;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 869
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    if-nez v0, :cond_0

    .line 870
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 874
    :goto_0
    return-void

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 685
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->UNINITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInitiationState:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    .line 693
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 694
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->unbind(Z)V

    .line 697
    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 698
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 264
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDirectBootLocked(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsCreatedInLockedMode:Z

    .line 266
    const v0, 0x7f0b000a

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->setTheme(I)V

    .line 267
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 269
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCustomExceptionHandler:Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;

    .line 270
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCustomExceptionHandler:Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 272
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 273
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;->upgrade(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 275
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mConfiguration:Landroid/content/res/Configuration;

    .line 276
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;->init(Landroid/content/Context;)V

    .line 283
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    .line 285
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->SERVICE_CREATION:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    .line 286
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 285
    invoke-static {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->loadLanguages(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;Ljava/util/Set;)V

    .line 289
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->doCreateInputView()V

    .line 290
    return-void
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateExtractTextView()Landroid/view/View;
    .locals 2

    .prologue
    .line 354
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreateExtractTextView()Landroid/view/View;

    move-result-object v0

    .line 355
    .local v0, "view":Landroid/view/View;
    const v1, 0x1020025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/ExtractEditText;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mExtractEditText:Landroid/inputmethodservice/ExtractEditText;

    .line 356
    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 1

    .prologue
    .line 310
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->doCreateInputView()V

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 881
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 882
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mOnDestroyListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;

    .line 883
    .local v0, "onDestroyListener":Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;->onDestroy()V

    goto :goto_0

    .line 885
    .end local v0    # "onDestroyListener":Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCustomExceptionHandler:Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;->getOriginalHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 886
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->dispose()V

    .line 887
    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    .line 888
    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mCustomExceptionHandler:Lcom/sonyericsson/textinput/uxp/glue/CustomExceptionHandler;

    .line 889
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 796
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 797
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnNewCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    .line 799
    :cond_0
    return-void
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 6

    .prologue
    const/high16 v5, 0x10000000

    const/high16 v4, 0x2000000

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 620
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 621
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPhoneTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v1

    .line 628
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v2, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 646
    .local v0, "editorInfo":Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_2

    .line 647
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v3, v5

    if-eq v3, v5, :cond_0

    .line 655
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_0

    .line 667
    iget v3, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    .line 677
    goto :goto_0
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 4
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 907
    const-string v3, "rebind"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v0

    .line 908
    .local v0, "rebind":Z
    if-nez v0, :cond_0

    const-string v3, "reinitialize"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 909
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->unbind(Z)V

    .line 910
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    if-eqz v2, :cond_1

    .line 911
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    invoke-direct {p0, v2, v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->bind(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 913
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 914
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnInputViewStart()V

    .line 921
    :cond_2
    :goto_0
    return v1

    .line 917
    :cond_3
    const-string v3, "unbind"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 918
    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->unbind(Z)V

    goto :goto_0

    :cond_4
    move v1, v2

    .line 921
    goto :goto_0
.end method

.method public onExtractedTextClicked()V
    .locals 0

    .prologue
    .line 709
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 1
    .param p1, "finishingInput"    # Z

    .prologue
    .line 456
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 457
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnInputViewFinish()V

    .line 458
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->unbind(Z)V

    .line 459
    return-void
.end method

.method public onInitializeInterface()V
    .locals 2

    .prologue
    const/high16 v1, 0x1000000

    .line 298
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 301
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onInitializeInterface()V

    .line 302
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 830
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHardKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHardKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    .line 831
    invoke-interface {v3, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;->onPress(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    .line 833
    .local v0, "handled":Z
    :goto_0
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHandledOnPressKeys:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 834
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHandledOnPressKeys:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_0
    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    .end local v0    # "handled":Z
    :cond_3
    move v0, v1

    .line 831
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 807
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHardKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHardKeyboardActionListener:Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;

    .line 808
    invoke-interface {v3, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/OnHardKeyboardActionListener;->onRelease(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 810
    .local v0, "result":Z
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHandledOnPressKeys:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 815
    const/4 v0, 0x1

    .line 821
    :cond_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_2

    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    return v2

    .end local v0    # "result":Z
    :cond_3
    move v0, v2

    .line 808
    goto :goto_0
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 926
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 4
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p2, "restarting"    # Z

    .prologue
    const/4 v3, 0x0

    .line 364
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsCreatedInLockedMode:Z

    if-eqz v2, :cond_0

    .line 365
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 367
    .local v1, "manager":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 377
    .end local v1    # "manager":Landroid/os/UserManager;
    :cond_0
    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->FIELD_INITIATION:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    .line 378
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v2

    .line 379
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 377
    invoke-static {p0, v3, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->loadLanguages(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;Ljava/util/Set;)V

    .line 385
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->handleChangedDebugMode()V

    .line 399
    if-eqz p1, :cond_1

    const-string v2, "com.google.android.googlequicksearchbox"

    iget-object v3, p1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_1

    .line 400
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnInputViewStart()V

    .line 439
    :goto_0
    return-void

    .line 405
    :cond_1
    const-string v2, "onStartInputView"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 407
    :try_start_0
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mIsFullscreenMode:Z

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->onEvaluateFullscreenMode()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 408
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->onCreateInputView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->setInputView(Landroid/view/View;)V

    .line 411
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 412
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 413
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->unbind(Z)V

    .line 414
    if-eqz p1, :cond_4

    .line 421
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 422
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    .line 423
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->getInputConnectionReference()Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;

    move-result-object v0

    .line 424
    .local v0, "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    if-eqz v0, :cond_3

    .line 425
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->finishComposingText(Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;)Z

    .line 428
    :cond_3
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->bind(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 429
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnInputViewStart()V

    .line 435
    .end local v0    # "connection":Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached$ICReference;
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mMainContainer:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->onStartInputView()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 437
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 432
    :cond_4
    :try_start_1
    sget-object v2, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->TAG:Ljava/lang/String;

    const-string v3, "EditorInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 437
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 845
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public onUnbindInput()V
    .locals 1

    .prologue
    .line 858
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mHandledOnPressKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 859
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->unbind(Z)V

    .line 860
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onUnbindInput()V

    .line 861
    return-void
.end method

.method public onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 782
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onUpdateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V

    .line 786
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 787
    return-void
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 7
    .param p1, "oldSelStart"    # I
    .param p2, "oldSelEnd"    # I
    .param p3, "newSelStart"    # I
    .param p4, "newSelEnd"    # I
    .param p5, "candidatesStart"    # I
    .param p6, "candidatesEnd"    # I

    .prologue
    .line 751
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 754
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mInputConnectionWrapperCached:Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/glue/buffer/InputConnectionWrapperCached;->reset()V

    .line 766
    const/4 v6, 0x0

    .line 768
    .local v6, "wasManualMovement":Z
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mTextBuffer:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->mTextBuffer:Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextBuffer;->isExpectedUpdate(IIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    const/4 v6, 0x1

    .line 773
    :cond_0
    if-eqz v6, :cond_1

    const/4 v5, 0x3

    :goto_0
    move-object v0, p0

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnIndexChange(IIIII)V

    .line 776
    invoke-direct/range {p0 .. p6}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnUpdateSelection(IIIIII)V

    .line 778
    return-void

    .line 773
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public onWindowShown()V
    .locals 2

    .prologue
    .line 952
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowShown()V

    .line 953
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 954
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSettingsSnapshot()V

    .line 957
    :cond_0
    return-void
.end method

.method public sendDefaultEditorAction(Z)Z
    .locals 1
    .param p1, "fromEnterKey"    # Z

    .prologue
    .line 981
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->sendDefaultEditorAction(Z)Z

    move-result v0

    return v0
.end method

.method public sendDownUpKeyEvents(I)V
    .locals 0
    .param p1, "keycode"    # I

    .prologue
    .line 963
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->sendDownUpKeyEvents(I)V

    .line 964
    return-void
.end method

.method public switchInputMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 990
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->switchInputMethod(Ljava/lang/String;)V

    .line 991
    return-void
.end method

.method public updateFullscreenMode()V
    .locals 0

    .prologue
    .line 944
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 945
    return-void
.end method

.method public updateInputViewShown()V
    .locals 0

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->fireOnUpdateInputView()V

    .line 897
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->updateInputViewShown()V

    .line 898
    return-void
.end method
