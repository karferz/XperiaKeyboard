.class public Lcom/sonyericsson/textinput/uxp/test/TestService;
.super Landroid/app/Service;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;,
        Lcom/sonyericsson/textinput/uxp/test/TestService$PredictionWaitHelper;,
        Lcom/sonyericsson/textinput/uxp/test/TestService$CandidateBarUtil;,
        Lcom/sonyericsson/textinput/uxp/test/TestService$KeyboardViewUtil;,
        Lcom/sonyericsson/textinput/uxp/test/TestService$SharedPreferencesUtil;,
        Lcom/sonyericsson/textinput/uxp/test/TestService$EmojiUsageDatabaseHelper;,
        Lcom/sonyericsson/textinput/uxp/test/TestService$ImeJob;,
        Lcom/sonyericsson/textinput/uxp/test/TestService$WaitForPendingPredictionsDone;
    }
.end annotation


# static fields
.field private static final CLOUD_ACTIVATION_TIMEOUT:I = 0xc350

.field private static final CLOUD_UNREGISTER_TIMEOUT:I = 0xc350

.field private static final DEBUG:Z = false

.field public static final LEARNING_GMAIL:Ljava/lang/String; = "GMail"

.field public static final LEARNING_SMS:Ljava/lang/String; = "SMS"

.field private static final LEARNING_TIMEOUT:I = 0xea60

.field private static final TAG:Ljava/lang/String; = "TI_TestService"

.field private static final TAG_END_MICRO_SECOND:Ljava/lang/String; = " \u03bcs"

.field private static final TAG_END_SUFFIX:Ljava/lang/String; = " ended "

.field private static final TAG_START_PREFIX:Ljava/lang/String; = " started"

.field private static sTaskStartTime:J


# instance fields
.field private mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private final mService:Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 96
    new-instance v0, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/test/TestService$TestServiceStub;-><init>(Lcom/sonyericsson/textinput/uxp/test/TestService;Lcom/sonyericsson/textinput/uxp/test/TestService$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService;->mService:Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 83
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->noteTaskStart()V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService;->logTaskEnd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/test/TestService;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/test/TestService;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService;->logTaskStart(Ljava/lang/String;)V

    return-void
.end method

.method private deHookFromTextInput()V
    .locals 0

    .prologue
    .line 152
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->removeExternalFactories()V

    .line 153
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->removeExternalRequirements()V

    .line 154
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestHook$Factory;->killInstance()V

    .line 155
    return-void
.end method

.method private hookIntoTextInput()V
    .locals 4

    .prologue
    .line 142
    new-instance v1, Lcom/sonyericsson/textinput/uxp/test/TestHook$Factory;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/test/TestHook$Factory;-><init>()V

    .line 143
    .local v1, "testHookFactory":Lcom/sonyericsson/textinput/uxp/test/TestHook$Factory;
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->addExternalFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V

    .line 145
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->getInstance()Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    move-result-object v0

    .line 146
    .local v0, "ime":Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
    if-eqz v0, :cond_0

    .line 147
    new-instance v2, Lcom/sonyericsson/ned/controller/Command;

    const-string v3, "reinitialize"

    invoke-direct {v2, v3}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 149
    :cond_0
    return-void
.end method

.method public static isAllLanguagesLoaded(Ljava/util/ArrayList;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/ILanguage;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "activeLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/ILanguage;>;"
    .local p1, "loadedLanguages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/ILanguage;

    .line 104
    .local v0, "language":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 105
    const/4 v1, 0x0

    .line 109
    .end local v0    # "language":Lcom/sonyericsson/ned/model/ILanguage;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isLatinLanguage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "language"    # Ljava/lang/String;

    .prologue
    .line 171
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createCustomization(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    move-result-object v0

    .line 173
    .local v0, "customization":Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    invoke-static {p1, v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createLanguageLayoutConfig(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v2

    .line 176
    .local v2, "languageLayoutconfig":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    invoke-virtual {v2, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {p2, v3}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 177
    .local v1, "isNonVietnameseLatinLanguage":Z
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindLanguageLayoutConfig(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V

    .line 178
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindCustomization(Lcom/sonyericsson/textinput/uxp/model/settings/Customization;)V

    .line 179
    return v1
.end method

.method private static logTaskEnd(Ljava/lang/String;)V
    .locals 0
    .param p0, "endMessage"    # Ljava/lang/String;

    .prologue
    .line 128
    return-void
.end method

.method private static logTaskStart(Ljava/lang/String;)V
    .locals 0
    .param p0, "startMessage"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/test/TestService;->noteTaskStart()V

    .line 121
    return-void
.end method

.method private static noteTaskStart()V
    .locals 2

    .prologue
    .line 113
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/sonyericsson/textinput/uxp/test/TestService;->sTaskStartTime:J

    .line 114
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService;->hookIntoTextInput()V

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 135
    .local v0, "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 136
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 137
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService;->mService:Lcom/sonyericsson/textinput/uxp/test/ITestService$Stub;

    return-object v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 167
    const/4 v0, 0x1

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/test/TestService;->deHookFromTextInput()V

    .line 160
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public removeActiveLanguageLayout(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 183
    if-eqz p1, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/test/TestService;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->removeActiveLanguageLayout(Ljava/lang/String;)Z

    .line 186
    :cond_0
    return-void
.end method

.method public writeInputMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 189
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/test/TestService;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 190
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 202
    invoke-interface {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setPortraitLayout(I)V

    .line 205
    :goto_1
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 206
    return-void

    .line 190
    :sswitch_0
    const-string v3, "multitap"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "singletap"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 192
    :pswitch_0
    invoke-interface {v0, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setPortraitLayout(I)V

    .line 193
    const-string v1, "multitap"

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setInputMethod(Ljava/lang/String;)V

    .line 194
    const-string v1, "multitap"

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setInputMethodEmail(Ljava/lang/String;)V

    goto :goto_1

    .line 197
    :pswitch_1
    invoke-interface {v0, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setPortraitLayout(I)V

    .line 198
    const-string v1, "singletap"

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setInputMethod(Ljava/lang/String;)V

    .line 199
    const-string v1, "singletap"

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setInputMethodEmail(Ljava/lang/String;)V

    goto :goto_1

    .line 190
    :sswitch_data_0
    .sparse-switch
        -0x591489a5 -> :sswitch_1
        0x26f8b3ca -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
