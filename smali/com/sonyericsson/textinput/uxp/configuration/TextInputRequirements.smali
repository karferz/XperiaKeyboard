.class public Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;
.super Ljava/lang/Object;
.source "TextInputRequirements.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;,
        Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;
    }
.end annotation


# static fields
.field private static final ANDROID_EMAIL_PACKAGE_NAME:Ljava/lang/String; = "com.android.email"

.field private static final ANDROID_EMAIL_PACKAGE_NAME_NOUGAT_FORWARD:Ljava/lang/String; = "com.sonymobile.email"

.field private static final CLOUD_SYNC_INTERVAL:I = 0x5265c00

.field private static final CLOUD_SYNC_MAX_TRY_COUNT:I = 0x5

.field private static final CLOUD_SYNC_SCHEDULE_INTERVAL_LIMIT_MS:J = 0x1388L

.field private static final FALSE:Ljava/lang/String;

.field private static final GOOGLE_CHROME_PACKAGE_NAME:Ljava/lang/String; = "com.android.chrome"

.field private static final GOOGLE_LOGIN_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gsf.login"

.field private static final GOOGLE_MAIL_SERVICES_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.gms"

.field private static final GOOGLE_SETUPWIZARD_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.setupwizard"

.field private static final MAXIMUM_AUTO_ACCEPT_HINTS:I = 0x3

.field private static final MAX_DAYS_BEFORE_SHOW_CLOUD_NUDGE:I = 0x5a

.field private static final MAX_DAYS_NOT_DELETING_DICTIONARIES:I = 0x2d

.field private static final MAX_OPENINGS_SHOWING_NPAM_DIALOG:I = 0xf

.field private static final MAX_OPENINGS_SHOWING_WIZARD_KEY:I = 0x1e

.field private static final MAX_PREDICTIVE_CANDIDATES_DEFAULT:Ljava/lang/String; = "12"

.field private static final MAX_PREDICTIVE_CANDIDATES_LANDSCAPE_DEFAULT:Ljava/lang/String; = "9"

.field private static final MAX_PREDICTIVE_CANDIDATES_SINGLETAP:Ljava/lang/String; = "12"

.field private static final MAX_PREDICTIVE_CANDIDATES_TABLET_DEFAULT:Ljava/lang/String; = "5"

.field private static final MAX_PREDICTIVE_CANDIDATES_TABLET_MINI:Ljava/lang/String; = "3"

.field private static final MAX_PREDICTIVE_CANDIDATES_TABLET_SPLIT:Ljava/lang/String; = "4"

.field private static final MAX_PUNCTUATION_SWAP_HINTS:I = 0x3

.field private static final MILLISECONDS_PER_DAY:I = 0x5265c00

.field public static final SESSION_TYPE_HEIGHT_PICKER:Ljava/lang/String; = "height-picker"

.field public static final SESSION_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field public static final SESSION_TYPE_PERSONALIZATION_GUIDE:Ljava/lang/String; = "personalization-guide"

.field private static final SETTINGS_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final SYMBOLS_TYPE_EMOJI:Ljava/lang/String; = "emoji"

.field private static final TRACE_AUTO_SPACE_NEXT_PRESS:Ljava/lang/String; = "next-trace"

.field private static final TRUE:Ljava/lang/String;

.field private static final XPERIA_SERVICES_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.xperiaservices"

.field private static sCloudSyncLastScheduleTime:J


# instance fields
.field private mActiveDaysAfterCloud:I

.field private mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

.field private mContext:Landroid/content/Context;

.field private mDaysActive:I

.field private mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field private mExploreByTouch:Z

.field private mGoogleVoiceInputExists:Z

.field private mHasHandwritingInput:Z

.field private mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

.field private mIsKeyboardHintDialogsEnabled:Z

.field private mIsWizardKeyTimeBreach:Z

.field private mKeyboardOpeningsCounter:I

.field private mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private mPredictionAutomatic:Ljava/lang/String;

.field private mPredictionManual:Ljava/lang/String;

.field private mPredictionOff:Ljava/lang/String;

.field private mSessionType:Ljava/lang/String;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mSymbolsType:Ljava/lang/String;

.field private mTraceAutoSpaceMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    .line 50
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    .line 108
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->sCloudSyncLastScheduleTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->increaseKeyboardOpeningsWithDiscontinuedNpamCounter(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)I

    move-result v0

    return v0
.end method

.method private enableLearning()Ljava/lang/String;
    .locals 2

    .prologue
    .line 700
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getKeyboardModeFromInputType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "input-mode-url"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 701
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isSearchField()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 700
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 701
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private enableLocalMessagesDatabase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncDataOld()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    goto :goto_0
.end method

.method private enableQuickPeriod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 689
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v0

    .line 690
    .local v0, "inputClass":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 691
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isPredictionAutoReplaceEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 690
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 691
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private enableSmartLanguageDetection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSmartLanguageDetection()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 696
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLatinLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    goto :goto_0
.end method

.method private evaluatePhonePadMode()Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;
    .locals 3

    .prologue
    .line 773
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isTextFieldSuitableForPrediction()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 774
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->isActiveLanguageSuitableForPrediction()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 776
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputVariation()I

    move-result v0

    .line 777
    .local v0, "inputVariation":I
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd0

    if-ne v0, v2, :cond_1

    .line 779
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getInputMethodEmail()Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "phonePadMode":Ljava/lang/String;
    :goto_0
    const-string v2, "multitap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;->MULTITAP:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;

    .line 786
    .end local v0    # "inputVariation":I
    .end local v1    # "phonePadMode":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 781
    .restart local v0    # "inputVariation":I
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getInputMethod()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "phonePadMode":Ljava/lang/String;
    goto :goto_0

    .line 783
    :cond_2
    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;->SINGLETAP:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;

    goto :goto_1

    .line 786
    .end local v0    # "inputVariation":I
    .end local v1    # "phonePadMode":Ljava/lang/String;
    :cond_3
    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;->MULTITAP:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;

    goto :goto_1
.end method

.method private getActiveDaysBeforeCloud(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)I
    .locals 3
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 297
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getActiveDaysBeforeCloud()I

    move-result v0

    .line 298
    .local v0, "activeDays":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 299
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v1

    .line 300
    .local v1, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mDaysActive:I

    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setActiveDaysBeforeCloud(I)V

    .line 301
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mDaysActive:I

    .line 302
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 304
    .end local v1    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_0
    return v0
.end method

.method private getAutomaticCaseMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1042
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1043
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1044
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getCaseModeFromInputTypeTextFlag(I)Ljava/lang/String;

    move-result-object v1

    .line 1046
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getCaseModeFromInputTypeTextFlag(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getCandidateSelectionAutoSpace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isEmailOrUriField()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 994
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isCandidateSelectionAutoSpaceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 993
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 994
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCaseModeFromInputTypeTextFlag(I)Ljava/lang/String;
    .locals 1
    .param p0, "textFlag"    # I

    .prologue
    .line 166
    and-int/lit16 v0, p0, 0x1000

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "start-upper"

    .line 175
    :goto_0
    return-object v0

    .line 169
    :cond_0
    and-int/lit16 v0, p0, 0x2000

    if-eqz v0, :cond_1

    .line 170
    const-string v0, "name"

    goto :goto_0

    .line 172
    :cond_1
    and-int/lit16 v0, p0, 0x4000

    if-eqz v0, :cond_2

    .line 173
    const-string v0, "sentence"

    goto :goto_0

    .line 175
    :cond_2
    const-string v0, "start-lower"

    goto :goto_0
.end method

.method public static getEnableOneHandedKeyboardRequirement(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionType"    # Ljava/lang/String;
    .param p2, "persistentSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 134
    invoke-static {p0, p2, p1}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getFloatingKeyboardType(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "floatingKeyboardType":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupportingOneHandedKeyboard(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "normal"

    .line 138
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    invoke-interface {p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPortraitKeyboardMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isOneHandedKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getEnterKeyAction()Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;
    .locals 3

    .prologue
    .line 626
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->ENTER:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    .line 627
    .local v0, "result":Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, 0x400000ff    # 2.0000608f

    and-int/2addr v1, v2

    packed-switch v1, :pswitch_data_0

    .line 650
    :goto_0
    return-object v0

    .line 630
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->GO:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    .line 631
    goto :goto_0

    .line 633
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->DONE:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    .line 634
    goto :goto_0

    .line 636
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->NEXT:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    .line 637
    goto :goto_0

    .line 639
    :pswitch_3
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->PREVIOUS:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    .line 640
    goto :goto_0

    .line 642
    :pswitch_4
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->SEARCH:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    .line 643
    goto :goto_0

    .line 645
    :pswitch_5
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->SEND:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    .line 646
    goto :goto_0

    .line 627
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private static getFloatingKeyboardType(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "persistentSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "sessionType"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-static {p0, p2}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isSupportingFloatingKeyboard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getFloatingKeyboardType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    goto :goto_0
.end method

.method private getInputClass()I
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method private getInputEnvironment(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;
    .locals 5
    .param p1, "sessionType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 751
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v0

    .line 753
    .local v0, "inputClass":I
    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    .line 755
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 756
    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;->NUMPAD:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;

    .line 766
    :goto_0
    return-object v2

    .line 758
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPortraitKeyboardMode()I

    move-result v1

    .line 759
    .local v1, "portraitKeyboard":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    if-eq v1, v4, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    .line 761
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v2, v3, :cond_2

    const-string v2, "personalization-guide"

    .line 763
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 764
    :cond_2
    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;->SW_QWERTY:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;

    goto :goto_0

    .line 765
    :cond_3
    if-ne v1, v3, :cond_4

    .line 766
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->evaluatePhonePadMode()Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;

    move-result-object v2

    goto :goto_0

    .line 769
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown requirement setup"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getInputFlags()I
    .locals 2

    .prologue
    .line 827
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v1, 0xfff000

    and-int/2addr v0, v1

    return v0
.end method

.method private getInputVariation()I
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff0

    return v0
.end method

.method private getKeyboardModeFromInputType()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x20

    const/16 v3, 0x10

    .line 831
    const-string v0, "input-mode-symbols"

    .line 832
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputVariation()I

    move-result v1

    .line 833
    .local v1, "variation":I
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 882
    const-string v0, "input-mode-text"

    .line 884
    :cond_0
    :goto_0
    return-object v0

    .line 835
    :pswitch_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 836
    if-ne v1, v3, :cond_1

    .line 837
    const-string v0, "input-mode-number-password"

    goto :goto_0

    .line 838
    :cond_1
    if-nez v1, :cond_0

    .line 839
    const-string v0, "input-mode-number"

    goto :goto_0

    .line 846
    :pswitch_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 847
    if-ne v1, v3, :cond_2

    .line 848
    const-string v0, "input-mode-number-date"

    goto :goto_0

    .line 849
    :cond_2
    if-ne v1, v4, :cond_3

    .line 850
    const-string v0, "input-mode-number-time"

    goto :goto_0

    .line 852
    :cond_3
    const-string v0, "input-mode-number-date-time"

    goto :goto_0

    .line 858
    :pswitch_2
    const-string v0, "input-mode-phone"

    .line 859
    goto :goto_0

    .line 861
    :pswitch_3
    if-ne v1, v4, :cond_4

    .line 862
    const-string v0, "input-mode-email"

    goto :goto_0

    .line 863
    :cond_4
    if-ne v1, v3, :cond_5

    .line 864
    const-string v0, "input-mode-url"

    goto :goto_0

    .line 865
    :cond_5
    const/16 v2, 0xa0

    if-ne v1, v2, :cond_6

    .line 866
    const-string v0, "input-mode-web"

    goto :goto_0

    .line 867
    :cond_6
    const/16 v2, 0xd0

    if-ne v1, v2, :cond_7

    .line 868
    const-string v0, "input-mode-web-email"

    goto :goto_0

    .line 869
    :cond_7
    const/16 v2, 0xe0

    if-ne v1, v2, :cond_8

    .line 870
    const-string v0, "input-mode-web-password"

    goto :goto_0

    .line 871
    :cond_8
    const/16 v2, 0x40

    if-ne v1, v2, :cond_9

    .line 872
    const-string v0, "input-mode-im"

    goto :goto_0

    .line 873
    :cond_9
    const/16 v2, 0x50

    if-ne v1, v2, :cond_a

    .line 874
    const-string v0, "input-mode-im-long"

    goto :goto_0

    .line 875
    :cond_a
    const/16 v2, 0x60

    if-ne v1, v2, :cond_b

    .line 876
    const-string v0, "input-mode-person-name"

    goto :goto_0

    .line 878
    :cond_b
    const-string v0, "input-mode-text"

    .line 880
    goto :goto_0

    .line 833
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getLeftFunctionKeyContent()Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v4, 0x1

    .line 654
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v0

    .line 655
    .local v0, "inputClass":I
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputVariation()I

    move-result v1

    .line 656
    .local v1, "inputVariation":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSmileyKeyEnabled()Z

    move-result v2

    .line 657
    .local v2, "showSmiley":Z
    if-ne v0, v4, :cond_1

    const/16 v3, 0xe0

    if-eq v1, v3, :cond_0

    const/16 v3, 0xd0

    if-ne v1, v3, :cond_1

    .line 660
    :cond_0
    sget-object v3, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->WEB_PASSWORD_ADDRESS:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    .line 678
    :goto_0
    return-object v3

    .line 661
    :cond_1
    if-ne v0, v4, :cond_2

    const/16 v3, 0xa0

    if-ne v1, v3, :cond_2

    .line 663
    sget-object v3, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->WEB_EDIT:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    goto :goto_0

    .line 664
    :cond_2
    if-ne v0, v4, :cond_4

    const/16 v3, 0x20

    if-eq v1, v3, :cond_3

    if-ne v1, v5, :cond_4

    .line 667
    :cond_3
    sget-object v3, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->EMAIL_URL:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    goto :goto_0

    .line 668
    :cond_4
    if-ne v0, v4, :cond_6

    const/16 v3, 0x80

    if-eq v1, v3, :cond_5

    const/16 v3, 0x90

    if-ne v1, v3, :cond_6

    .line 671
    :cond_5
    sget-object v3, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->NONE:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    goto :goto_0

    .line 672
    :cond_6
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    if-ne v1, v5, :cond_7

    .line 674
    sget-object v3, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->NONE:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    goto :goto_0

    .line 675
    :cond_7
    if-eqz v2, :cond_8

    .line 676
    sget-object v3, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->SMILEY:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    goto :goto_0

    .line 678
    :cond_8
    sget-object v3, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->NONE:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    goto :goto_0
.end method

.method private getMaxPredictiveCandidates()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1118
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSessionType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getFloatingKeyboardType(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1120
    .local v0, "floatingKeyboardType":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1121
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_SPLIT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1122
    const-string v1, "4"

    .line 1136
    :goto_0
    return-object v1

    .line 1124
    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_MINI:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1125
    const-string v1, "3"

    goto :goto_0

    .line 1127
    :cond_1
    const-string v1, "5"

    goto :goto_0

    .line 1130
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSessionType:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputEnvironment(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;->SINGLETAP:Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;

    if-ne v1, v2, :cond_3

    .line 1131
    const-string v1, "12"

    goto :goto_0

    .line 1133
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1134
    const-string v1, "9"

    goto :goto_0

    .line 1136
    :cond_4
    const-string v1, "12"

    goto :goto_0
.end method

.method private static getPreviousFloatingKeyboardType(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "persistentSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "sessionType"    # Ljava/lang/String;

    .prologue
    .line 154
    invoke-static {p0, p2}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isSupportingFloatingKeyboard(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPreviousFloatingKeyboardType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_MINI:Ljava/lang/String;

    goto :goto_0
.end method

.method private getPunctuationShowSwapHint()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1054
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSwapPunctuationHintCounter()I

    move-result v1

    .line 1055
    .local v1, "swapPunctuationHintShowCounter":I
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1057
    .local v0, "shouldShowSwapPunctuationHint":Z
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1055
    .end local v0    # "shouldShowSwapPunctuationHint":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getQwertyPredictionMode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1066
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputVariation()I

    move-result v0

    .line 1068
    .local v0, "inputVariation":I
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isNoSuggestionsTextField()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1074
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isAutoCompletionTextField()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isSearchField()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 1075
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSoftwareKeyboardPrediction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mPredictionOff:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1076
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isPackageNameExcludedFromNoSuggestions()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mPredictionManual:Ljava/lang/String;

    .line 1087
    :goto_0
    return-object v1

    .line 1076
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mPredictionOff:Ljava/lang/String;

    goto :goto_0

    .line 1077
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSoftwareKeyboardPrediction()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mPredictionOff:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1078
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mPredictionOff:Ljava/lang/String;

    goto :goto_0

    .line 1079
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isAutoCorrectionTextField()Z

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, 0x20

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd0

    if-eq v0, v1, :cond_4

    const/16 v1, 0x10

    if-eq v0, v1, :cond_4

    const/16 v1, 0x60

    if-eq v0, v1, :cond_4

    .line 1084
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isAutoCompletionTextField()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1085
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mPredictionManual:Ljava/lang/String;

    goto :goto_0

    .line 1087
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSoftwareKeyboardPrediction()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getQwertyShouldPredictionBeActivated()Z
    .locals 2

    .prologue
    .line 1061
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isTextFieldSuitableForPrediction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getQwertyPredictionMode()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mPredictionOff:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getQwertyShouldShowAutoAcceptHint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getAutoAcceptHintCounter()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getQwertyToggleToAlphabeticLayoutTokens()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1108
    const-string v0, " ;\n"

    .line 1110
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private getQwertyTraceAutoAcceptMode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1092
    const-string v0, "next-trace"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mTraceAutoSpaceMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    const-string v0, "accept-and-add-space-on-next-trace"

    .line 1095
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isEmailOrUriField()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "accept-and-add-space-uri"

    goto :goto_0

    :cond_1
    const-string v0, "accept-and-add-space-on-release"

    goto :goto_0
.end method

.method private static getShowKeyPreviewInQwerty(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 214
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isKeyPreviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getShowNpamRemovedNotification(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z
    .locals 1
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 565
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isWantedInputField()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;->access$300(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isPackageNameAllowsDialogs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getShowPredictionCandidates()Ljava/lang/String;
    .locals 1

    .prologue
    .line 907
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isAutoCompletionTextField()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isFullscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    .line 911
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    goto :goto_0
.end method

.method private getShowSetupWizard()Z
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSetupWizardShown()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isWantedInputField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isPackageNameAllowsDialogs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getShowUpgradeVisualization()Z
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getUpgradeVisualizationShown()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "normal"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSessionType:Ljava/lang/String;

    .line 812
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    .line 813
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->isOldDictionaryPresent(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    .line 814
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->allowedToLearnWritingStyle(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isPackageNameAllowsDialogs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTextFieldContactId()Ljava/lang/String;
    .locals 7

    .prologue
    .line 600
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v4, v5, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 601
    .local v4, "privateImeOptions":Ljava/lang/String;
    const-string v0, ""

    .line 602
    .local v0, "contactId":Ljava/lang/String;
    const-string v3, ";contactId:"

    .line 606
    .local v3, "parseString":Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v5, "com.sonyericsson.textinput.uxp:app"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ";contactId:"

    .line 607
    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ";contactId:"

    .line 608
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, ";contactId:"

    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v5, v6, :cond_0

    const-string v5, ";"

    .line 609
    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 614
    const-string v5, ";contactId:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const-string v6, ";contactId:"

    .line 615
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int v2, v5, v6

    .line 616
    .local v2, "contactNameStart":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    .line 617
    .local v1, "contactNameEnd":I
    sub-int v5, v1, v2

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    .line 618
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 621
    .end local v1    # "contactNameEnd":I
    .end local v2    # "contactNameStart":I
    :cond_0
    return-object v0
.end method

.method private getTraceInput()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mExploreByTouch:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    goto :goto_0
.end method

.method private getUseGoogleAnalyticsTracking()Ljava/lang/String;
    .locals 1

    .prologue
    .line 747
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    return-object v0
.end method

.method private getUseSecondaryPrint()Z
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSecondaryPrintsEnabled()Z

    move-result v0

    return v0
.end method

.method private getVoiceInputStartFromKeyboard()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1027
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v0

    .line 1028
    .local v0, "inputClass":I
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputVariation()I

    move-result v1

    .line 1029
    .local v1, "inputVariation":I
    if-ne v0, v3, :cond_0

    const/16 v5, 0x80

    if-eq v1, v5, :cond_1

    const/16 v5, 0xe0

    if-eq v1, v5, :cond_1

    const/16 v5, 0x90

    if-eq v1, v5, :cond_1

    :cond_0
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    const/16 v5, 0x10

    if-ne v1, v5, :cond_2

    :cond_1
    move v2, v3

    .line 1036
    .local v2, "isPasswordField":Z
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v5}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isVoiceInputEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mGoogleVoiceInputExists:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 1038
    invoke-static {v5, v6, v2}, Lcom/sonyericsson/textinput/uxp/configuration/VoiceButtonConfig;->shouldShowVoiceButton(Landroid/content/Context;Landroid/view/inputmethod/EditorInfo;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1036
    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .end local v2    # "isPasswordField":Z
    :cond_2
    move v2, v4

    .line 1029
    goto :goto_0

    .restart local v2    # "isPasswordField":Z
    :cond_3
    move v3, v4

    .line 1038
    goto :goto_1
.end method

.method private static increaseDaysActiveCounterAndActivateSync(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;IJ)V
    .locals 2
    .param p0, "persistentSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p1, "counter"    # I
    .param p2, "time"    # J

    .prologue
    .line 201
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 202
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    add-int/lit8 p1, p1, 0x1

    .line 203
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setDaysActiveCounter(I)V

    .line 204
    invoke-interface {v0, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setActiveDaysTimestamp(J)V

    .line 206
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudSyncTryCount(I)V

    .line 207
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 208
    return-void
.end method

.method private static increaseKeyboardOpeningsCounter(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)I
    .locals 2
    .param p0, "persistentSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 179
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getKeyboardOpeningsCounter()I

    move-result v0

    .line 180
    .local v0, "counter":I
    add-int/lit8 v0, v0, 0x1

    .line 181
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v1

    .line 182
    .local v1, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v1, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setKeyboardOpeningsCounter(I)V

    .line 183
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 184
    return v0
.end method

.method private static increaseKeyboardOpeningsWithDiscontinuedNpamCounter(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)I
    .locals 3
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 188
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;->access$000(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isNpamRemovedDialogShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 189
    :cond_0
    const/4 v0, 0x0

    .line 196
    :goto_0
    return v0

    .line 191
    :cond_1
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getKeyboardOpeningsWithDiscontinuedNpamCounter()I

    move-result v0

    .line 192
    .local v0, "counter":I
    add-int/lit8 v0, v0, 0x1

    .line 193
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v1

    .line 194
    .local v1, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v1, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setKeyboardOpeningsWithDiscontinuedNpamCounter(I)V

    .line 195
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    goto :goto_0
.end method

.method private isAutoCompletionTextField()Z
    .locals 2

    .prologue
    const/high16 v1, 0x10000

    .line 924
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAutoCorrectionTextField()Z
    .locals 2

    .prologue
    const v1, 0x8000

    .line 929
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEmailOrUriField()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 998
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputVariation()I

    move-result v0

    .line 999
    .local v0, "inputVariation":I
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v2

    if-ne v2, v1, :cond_1

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    const/16 v2, 0xd0

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFullscreen()Z
    .locals 1

    .prologue
    .line 920
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;->isFullscreenMode()Z

    move-result v0

    return v0
.end method

.method private isGoogleChromeInForeground()Z
    .locals 2

    .prologue
    .line 333
    const-string v0, "com.android.chrome"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isHintBlacklistedApp()Z
    .locals 2

    .prologue
    .line 344
    const-string v0, "com.android.email"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gsf.login"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.gms"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sonymobile.email"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.google.android.setupwizard"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKeyboardHintDialogsEnabled()Z
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isHintBlacklistedApp()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isPackageNameAllowsDialogs()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMultiLineTextField()Z
    .locals 2

    .prologue
    const/high16 v1, 0x20000

    .line 934
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNoSuggestionsTextField()Z
    .locals 2

    .prologue
    const/high16 v1, 0x80000

    .line 963
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputFlags()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNullField()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNumericKeysEnabledForFullKeyboard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 893
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isPhoneNumberField()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isNumericKeysEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    .line 899
    :goto_0
    return-object v0

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 899
    :cond_2
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    goto :goto_0
.end method

.method private isObscurredPasswordField()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 973
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputVariation()I

    move-result v0

    .line 974
    .local v0, "inputVariation":I
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_1

    const/16 v2, 0xe0

    if-eq v0, v2, :cond_1

    .line 977
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPackageNameAllowsDialogs()Z
    .locals 2

    .prologue
    .line 958
    const-string v0, "com.google.android.gms"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sonymobile.xperiaservices"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 959
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPackageNameExcludedFromNoSuggestions()Z
    .locals 2

    .prologue
    .line 948
    const-string v0, "com.google.android.gms"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isPasswordField()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 982
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputVariation()I

    move-result v0

    .line 983
    .local v0, "inputVariation":I
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v2

    if-ne v2, v1, :cond_0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_1

    const/16 v2, 0x90

    if-eq v0, v2, :cond_1

    const/16 v2, 0xe0

    if-eq v0, v2, :cond_1

    .line 987
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/16 v2, 0x10

    if-ne v0, v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPhoneNumberField()Z
    .locals 2

    .prologue
    .line 903
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSearchField()Z
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v1, 0x400000ff    # 2.0000608f

    and-int/2addr v0, v1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportingFloatingKeyboard(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sessionType"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "normal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupportingFloatingMiniKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupportingFloatingSplitKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTextFieldSuitableForPrediction()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 968
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 969
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isPasswordField()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTimeToBackupToCloud()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1006
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1008
    .local v0, "currentTimeMillis":J
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastSyncTime()J

    move-result-wide v6

    sub-long v4, v0, v6

    .line 1010
    .local v4, "timeSinceLastSync":J
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncDataOld()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1011
    const-string v6, "clear"

    .line 1023
    .end local v0    # "currentTimeMillis":J
    .end local v4    # "timeSinceLastSync":J
    :goto_0
    return-object v6

    .line 1014
    .restart local v0    # "currentTimeMillis":J
    .restart local v4    # "timeSinceLastSync":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1015
    .local v2, "now":J
    sget-wide v6, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->sCloudSyncLastScheduleTime:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x1388

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    const-wide/32 v6, 0x5265c00

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    .line 1017
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasNetworkConnection(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 1018
    invoke-interface {v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudSyncTryCount()I

    move-result v6

    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    .line 1019
    sput-wide v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->sCloudSyncLastScheduleTime:J

    .line 1020
    const-string v6, "sync"

    goto :goto_0

    .line 1023
    .end local v0    # "currentTimeMillis":J
    .end local v2    # "now":J
    .end local v4    # "timeSinceLastSync":J
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isWantedInputField()Z
    .locals 2

    .prologue
    .line 795
    const-string v0, "normal"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSessionType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_0

    .line 796
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->usingUndefinedInputClass()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mExploreByTouch:Z

    if-nez v0, :cond_0

    .line 797
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isPasswordField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isEmailOrUriField()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private noPredictionOnDigits()Z
    .locals 2

    .prologue
    .line 588
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputVariation()I

    move-result v0

    .line 589
    .local v0, "inputVariation":I
    const/16 v1, 0xd0

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setGenericPredictionParameters()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "prediction-activated"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "predictive-engine"

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPredictionEngine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "punctuation-show-swap-hint"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getPunctuationShowSwapHint()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "maximum-times-punctuation-swap-hint"

    const/4 v2, 0x3

    .line 431
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "next-word-prediction"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "next-word-prediction-accept"

    const-string v2, "manual"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "enable-word-reopening"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "enable-learning"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->enableLearning()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "max-predictive-candidates"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getMaxPredictiveCandidates()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "enable-keyboard-hint-dialogs"

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mIsKeyboardHintDialogsEnabled:Z

    .line 440
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method private setGenericRequirements()V
    .locals 7

    .prologue
    .line 469
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "soft-keyboard"

    sget-object v4, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "startIndex"

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "endIndex"

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v4, v4, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "show-prediction-candidates"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getShowPredictionCandidates()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "prediction-text-field"

    .line 474
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isTextFieldSuitableForPrediction()Z

    move-result v4

    .line 473
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "email-domains"

    const-string v4, "gmail;hotmail;yahoo"

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "handle-hardware-keys"

    sget-object v4, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "voice-input-start-from-keyboard"

    .line 478
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getVoiceInputStartFromKeyboard()Ljava/lang/String;

    move-result-object v4

    .line 477
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "latin-writing-aid"

    sget-object v4, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "automatic-case-mode"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getAutomaticCaseMode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "word-deletion"

    sget-object v4, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "handle-tab"

    sget-object v4, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "minimal-input"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->useMinimalInput()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "use-compatibility-delete-mode"

    .line 485
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->shouldUseCompatibityDeleteMode()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 484
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "input-mode"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getKeyboardModeFromInputType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "skin-keyboard"

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getKeyboardSkin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "session-type"

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSessionType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "network-connected"

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    .line 490
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasNetworkConnection(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "google-analytics-tracking"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getUseGoogleAnalyticsTracking()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "force-setup-wizard-decision"

    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mIsWizardKeyTimeBreach:Z

    .line 493
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 492
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "show-npam-removed-notification"

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 495
    invoke-direct {p0, v4}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getShowNpamRemovedNotification(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 494
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "setup-wizard-visualisation"

    .line 497
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getShowSetupWizard()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 496
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "upgrade-visualization"

    .line 499
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getShowUpgradeVisualization()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 498
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "allow-download-dictionary-dialog"

    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mIsKeyboardHintDialogsEnabled:Z

    .line 501
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 500
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "auto-replace-text"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->enableQuickPeriod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "explore-by-touch"

    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mExploreByTouch:Z

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "floating-keyboard-type"

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSessionType:Ljava/lang/String;

    .line 505
    invoke-static {v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getFloatingKeyboardType(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 504
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "obscured.password"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isObscurredPasswordField()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSessionType:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getEnableOneHandedKeyboardRequirement(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v0

    .line 509
    .local v0, "enableOneHandedKeyboard":Z
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "enable-one-handed-keyboard"

    .line 510
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 509
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    if-eqz v0, :cond_0

    .line 512
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v4, "one-handed-keyboard-position"

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 513
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getOneHandedKeyboardPosition()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    move-result-object v2

    sget-object v5, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->LEFT:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    if-ne v2, v5, :cond_5

    const-string v2, "left"

    .line 512
    :goto_0
    invoke-virtual {v3, v4, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSoundFeedbackEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 518
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "sound-feedback"

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 519
    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSoundFeedbackEnabled()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 518
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "sound-feedback-volume"

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 521
    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSoundFeedbackVolume()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isTactileFeedbackEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 524
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "tactile-feedback"

    sget-object v4, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "vibrator-duration"

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 526
    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getVibratorDuration()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 525
    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v4, "orientation"

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    .line 530
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "landscape"

    .line 529
    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mHasHandwritingInput:Z

    if-eqz v2, :cond_3

    .line 534
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "handwriting-input-start-from-keyboard"

    sget-object v4, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "handwriting-input-id"

    const-string v4, "com.sonymobile.android.handwriting/.HandwritingInputMethodService"

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "local-messages-database"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->enableLocalMessagesDatabase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isTimeToBackupToCloud()Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "syncWithCloud":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 542
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "sync-messages-with-cloud"

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "delay-insert-text"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isGoogleChromeInForeground()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "smart-language-detection"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->enableSmartLanguageDetection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "contact-prediction"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getTextFieldContactId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "enter-key-action"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getEnterKeyAction()Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "left-function-key-content"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getLeftFunctionKeyContent()Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    return-void

    .line 513
    .end local v1    # "syncWithCloud":Ljava/lang/String;
    :cond_5
    const-string v2, "right"

    goto/16 :goto_0

    .line 530
    :cond_6
    const-string v2, "portrait"

    goto :goto_1

    .line 543
    .restart local v1    # "syncWithCloud":Ljava/lang/String;
    :cond_7
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mIsKeyboardHintDialogsEnabled:Z

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->timeToShowCloudNudge()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 544
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "show-cloud-nudge"

    sget-object v4, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private setMultitapRequirements()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "enable-trace-input"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "symbols-type"

    const-string v2, "emoji"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "enable-commit-text-on-smiley-symbol-selection"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "act-on-composing-text"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "insert-on-key-down"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "current-input-method"

    const-string v2, "multitap"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "multitap-behavior"

    const-string v2, "fast-digits"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "multitap-preedit-timeout"

    const-string v2, "900"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "candidate-selection-auto-space"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getCandidateSelectionAutoSpace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "prediction-activated"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "persistent-symbol-state"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->usePersistantSymbolShiftState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    return-void
.end method

.method private setNumPadRequirements()V
    .locals 3

    .prologue
    .line 458
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "enable-trace-input"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "enable-commit-text-on-smiley-symbol-selection"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "act-on-composing-text"

    .line 461
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isTextFieldSuitableForPrediction()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 460
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "insert-on-key-down"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "current-input-method"

    const-string v2, "numpad"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "prediction-activated"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "candidate-selection-auto-space"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getCandidateSelectionAutoSpace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method private setPhoneRequirements()V
    .locals 3

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "form-factor"

    const-string v2, "phone"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method private setPhoneTabletRequirements()V
    .locals 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "form-factor"

    const-string v2, "phone-tablet"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    return-void
.end method

.method private setQwertyRequirements()V
    .locals 4

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "toggle-to-alphabetic-layout-tokens"

    .line 373
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getQwertyToggleToAlphabeticLayoutTokens()Ljava/lang/String;

    move-result-object v2

    .line 372
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "enable-trace-input"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getTraceInput()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "symbols-type"

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSymbolsType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "enable-commit-text-on-smiley-symbol-selection"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "act-on-composing-text"

    .line 378
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isTextFieldSuitableForPrediction()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 377
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "insert-on-key-down"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "current-input-method"

    const-string v2, "full"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "candidate-selection-auto-space"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getCandidateSelectionAutoSpace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "secondary-print"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getUseSecondaryPrint()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "enable-numeric-keys"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isNumericKeysEnabledForFullKeyboard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v2, "show-period-and-comma"

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 385
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isPeriodAndCommaKeysEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mHasHandwritingInput:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "show-key-preview"

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 387
    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getShowKeyPreviewInQwerty(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v2

    .line 386
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getQwertyShouldPredictionBeActivated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "prediction-activated"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_1
    return-void

    .line 385
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 392
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->setGenericPredictionParameters()V

    .line 393
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "smart-punctuation"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "smart-uri-and-email-endings"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "word-suggestions"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getQwertyPredictionMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "trace-auto-accept-mode"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getQwertyTraceAutoAcceptMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "enable-trace-auto-accept-hint"

    .line 400
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getQwertyShouldShowAutoAcceptHint()Ljava/lang/String;

    move-result-object v2

    .line 399
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "maximum-times-auto-accept-hint"

    const/4 v2, 0x3

    .line 402
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 401
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "synchronous-trace"

    const-string v2, "swift-key"

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 404
    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPredictionEngine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 403
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "no-prediction-on-digits"

    .line 406
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->noPredictionOnDigits()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setRebindRequirements()V
    .locals 6

    .prologue
    .line 308
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v2, "floating-keyboard-type"

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSessionType:Ljava/lang/String;

    .line 309
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getFloatingKeyboardType(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 308
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v2, "previous-floating-keyboard-type"

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSessionType:Ljava/lang/String;

    .line 311
    invoke-static {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getPreviousFloatingKeyboardType(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSessionType:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getEnableOneHandedKeyboardRequirement(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Z

    move-result v0

    .line 315
    .local v0, "enableOneHandedKeyboard":Z
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v2, "enable-one-handed-keyboard"

    .line 316
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    if-eqz v0, :cond_0

    .line 318
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v3, "one-handed-keyboard-position"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 319
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getOneHandedKeyboardPosition()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    move-result-object v1

    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->LEFT:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    if-ne v1, v4, :cond_1

    const-string v1, "left"

    .line 318
    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v2, "max-predictive-candidates"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getMaxPredictiveCandidates()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void

    .line 319
    :cond_1
    const-string v1, "right"

    goto :goto_0
.end method

.method private setSingletapRequirements()V
    .locals 3

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "enable-trace-input"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "symbols-type"

    const-string v2, "emoji"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "enable-commit-text-on-smiley-symbol-selection"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "act-on-composing-text"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "insert-on-key-down"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "current-input-method"

    const-string v2, "singletap"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "smart-punctuation"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "smart-uri-and-email-endings"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "candidate-selection-auto-space"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getCandidateSelectionAutoSpace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "persistent-symbol-state"

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->usePersistantSymbolShiftState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->setGenericPredictionParameters()V

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "word-suggestions"

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mPredictionAutomatic:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method private setTabletRequirements()V
    .locals 5

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "form-factor"

    const-string v2, "tablet"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "enable-floating-toggle"

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v1, "previous-floating-keyboard-type"

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSessionType:Ljava/lang/String;

    .line 364
    invoke-static {v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getPreviousFloatingKeyboardType(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method private shouldUseCompatibityDeleteMode()Z
    .locals 1

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isNullField()Z

    move-result v0

    return v0
.end method

.method private timeToShowCloudNudge()Z
    .locals 2

    .prologue
    .line 706
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mActiveDaysAfterCloud:I

    const/16 v1, 0x5a

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 707
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->hasShownCloudNudge()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 708
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isMultiLineTextField()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/service/util/NetworkUtil;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    .line 709
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasSENAccount(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private useMinimalInput()Z
    .locals 1

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isNullField()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->usingUndefinedInputClass()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private usePersistantSymbolShiftState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v0

    .line 719
    .local v0, "inputClass":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->FALSE:Ljava/lang/String;

    goto :goto_0
.end method

.method private usingUndefinedInputClass()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 729
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputClass()I

    move-result v0

    .line 730
    .local v0, "inputClass":I
    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addRequirements(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;Landroid/view/inputmethod/EditorInfo;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 12
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p3, "builder"    # Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;
    .param p4, "inputMethodService"    # Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;
    .param p5, "editorInfo"    # Landroid/view/inputmethod/EditorInfo;
    .param p6, "context"    # Landroid/content/Context;
    .param p7, "sessionType"    # Ljava/lang/String;
    .param p8, "rebind"    # Z

    .prologue
    .line 222
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    .line 223
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mContext:Landroid/content/Context;

    .line 225
    if-eqz p8, :cond_1

    .line 226
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->setRebindRequirements()V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 229
    .local v3, "res":Landroid/content/res/Resources;
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getActiveDaysTimestamp()J

    move-result-wide v4

    .line 230
    .local v4, "activeDaysTimestamp":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 231
    .local v6, "currentTime":J
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 232
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 233
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mInputMethodService:Lcom/sonyericsson/textinput/uxp/glue/IInputMethodService;

    .line 234
    move-object/from16 v0, p5

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    .line 235
    invoke-static/range {p6 .. p6}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasVoiceInputEnable(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mGoogleVoiceInputExists:Z

    .line 236
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSessionType:Ljava/lang/String;

    .line 237
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->isKeyboardHintDialogsEnabled()Z

    move-result v8

    iput-boolean v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mIsKeyboardHintDialogsEnabled:Z

    .line 238
    const v8, 0x7f0701f4

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mPredictionOff:Ljava/lang/String;

    .line 239
    const v8, 0x7f0701f6

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mPredictionAutomatic:Ljava/lang/String;

    .line 240
    const v8, 0x7f0701f7

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mPredictionManual:Ljava/lang/String;

    .line 241
    const v8, 0x7f070285

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mSymbolsType:Ljava/lang/String;

    .line 242
    const v8, 0x7f070288

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mTraceAutoSpaceMode:Ljava/lang/String;

    .line 243
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getDaysActiveCounter()I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mDaysActive:I

    .line 244
    iget-boolean v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mIsKeyboardHintDialogsEnabled:Z

    if-eqz v8, :cond_2

    .line 245
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->increaseKeyboardOpeningsCounter(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)I

    move-result v8

    iput v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mKeyboardOpeningsCounter:I

    .line 247
    :cond_2
    iget v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mDaysActive:I

    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getActiveDaysBeforeCloud(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mActiveDaysAfterCloud:I

    .line 249
    const-string v8, "accessibility"

    .line 250
    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    .line 251
    .local v2, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 252
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mExploreByTouch:Z

    .line 253
    invoke-static/range {p6 .. p6}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasHandwritingInput(Landroid/content/Context;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mHasHandwritingInput:Z

    .line 255
    iget v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mKeyboardOpeningsCounter:I

    invoke-static {p1, v8}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;->access$100(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;I)Z

    move-result v8

    iput-boolean v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mIsWizardKeyTimeBreach:Z

    .line 258
    iget v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mDaysActive:I

    invoke-static {p1, v8}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$PersistentSettingsUtil;->access$200(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 260
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->notifyUnusedDictionariesDeleted()V

    .line 263
    :cond_3
    sget-object v8, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$1;->$SwitchMap$com$sonyericsson$textinput$uxp$configuration$TextInputRequirements$InputEnvironment:[I

    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->getInputEnvironment(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements$InputEnvironment;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 277
    new-instance v8, Ljava/lang/RuntimeException;

    const-string v9, "Unknown Input Environment"

    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 252
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 265
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->setQwertyRequirements()V

    .line 279
    :goto_2
    invoke-static/range {p6 .. p6}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 280
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->setTabletRequirements()V

    .line 287
    :goto_3
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->setGenericRequirements()V

    .line 289
    sub-long v8, v6, v4

    const-wide/32 v10, 0x5265c00

    cmp-long v8, v8, v10

    if-lez v8, :cond_0

    .line 290
    iget v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mDaysActive:I

    invoke-static {p1, v8, v6, v7}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->increaseDaysActiveCounterAndActivateSync(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;IJ)V

    .line 291
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->mBuilder:Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    const-string v9, "make-dynamic-model-backup"

    sget-object v10, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->TRUE:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addRequirement(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 268
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->setSingletapRequirements()V

    goto :goto_2

    .line 271
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->setMultitapRequirements()V

    goto :goto_2

    .line 274
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->setNumPadRequirements()V

    goto :goto_2

    .line 281
    :cond_5
    invoke-static/range {p6 .. p6}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPhoneTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 282
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->setPhoneTabletRequirements()V

    goto :goto_3

    .line 284
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/TextInputRequirements;->setPhoneRequirements()V

    goto :goto_3

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
