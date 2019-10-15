.class public Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;
.super Ljava/lang/Object;
.source "SettingsController.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/textinput/uxp/controller/IForceCreate;
.implements Lcom/sonyericsson/textinput/uxp/model/keyboard/IXKeyContentProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$Factory;
    }
.end annotation


# static fields
.field private static final ACTIONS:[I

.field private static final DIM_AMOUNT:F = 0.5f

.field private static final MAX_HANDLED_LANGUAGES:I = 0x2

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SHOW_KEYBOARD_HEIGHT_PICKER:I = 0x3

.field private static final SHOW_MY_WORDS:I = 0x4

.field private static final SHOW_ONE_HANDED_KEYBOARD:I = 0x5

.field private static final SHOW_SETTINGS:I = 0x1

.field private static final SHOW_SKIN_PICKER:I = 0x2


# instance fields
.field private mActive:Z

.field private mContext:Landroid/content/Context;

.field private final mEnabled:Z

.field private mIBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

.field private final mIsOneHandedKeyboard:Z

.field private mKeyLabelXOffset:I

.field private mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

.field private mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

.field private mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

.field private mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private final mOneHandedKeyboardAllowed:Z

.field private mOptionsDialog:Landroid/app/AlertDialog;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

.field private mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

.field private final mSmartLanguageDetection:Z

.field private final mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 74
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->ACTIONS:[I

    .line 82
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/ned/controller/IBurstHandler;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    aput-object v2, v0, v1

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    aput-object v1, v0, v3

    const/4 v1, 0x6

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->REQUIRED:[Ljava/lang/Class;

    return-void

    .line 74
    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x5
        0x4
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "session"    # Ljava/lang/String;
    .param p2, "isOneHandedKeyboard"    # Z
    .param p3, "orientation"    # Ljava/lang/String;
    .param p4, "inputMethod"    # Ljava/lang/String;
    .param p5, "smartLanguageDetection"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-array v2, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v3, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "show-input-options-menu"

    invoke-direct {v3, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v3, v2, v1

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 109
    const-string v2, "normal"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mEnabled:Z

    .line 110
    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mIsOneHandedKeyboard:Z

    .line 111
    const-string v2, "full"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "portrait"

    .line 112
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOneHandedKeyboardAllowed:Z

    .line 113
    iput-boolean p5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mSmartLanguageDetection:Z

    .line 114
    return-void

    :cond_0
    move v0, v1

    .line 112
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mActive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->launchSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->sendCommandHideKeyboard()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->launchSkinPicker()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->launchMyWords()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->toggleOneHandedKeyboardSetting()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->sendCommandRebindKeyboard()V

    return-void
.end method

.method static synthetic access$802(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOptionsDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->dismissDialog()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 162
    :cond_0
    return-void
.end method

.method private getItemsFromAction([I)[Ljava/lang/CharSequence;
    .locals 4
    .param p1, "actions"    # [I

    .prologue
    .line 340
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 341
    .local v2, "res":Landroid/content/res/Resources;
    array-length v3, p1

    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 343
    .local v1, "items":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 344
    aget v3, p1, v0

    packed-switch v3, :pswitch_data_0

    .line 343
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 346
    :pswitch_0
    const v3, 0x7f070067

    .line 347
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    goto :goto_1

    .line 351
    :pswitch_1
    const v3, 0x7f0700ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    goto :goto_1

    .line 354
    :pswitch_2
    const v3, 0x7f0700c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    goto :goto_1

    .line 357
    :pswitch_3
    const v3, 0x7f0700e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    goto :goto_1

    .line 360
    :pswitch_4
    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mIsOneHandedKeyboard:Z

    if-eqz v3, :cond_0

    const v3, 0x7f070120

    .line 361
    :goto_2
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    goto :goto_1

    .line 360
    :cond_0
    const v3, 0x7f0700e4

    goto :goto_2

    .line 370
    :cond_1
    return-object v1

    .line 344
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private isShowingInputOptionMenu()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOptionsDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchMyWords()V
    .locals 3

    .prologue
    .line 209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 211
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 212
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 213
    return-void
.end method

.method private launchSettings()V
    .locals 3

    .prologue
    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/textinput/uxp/SettingsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 197
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 199
    return-void
.end method

.method private launchSkinPicker()V
    .locals 3

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/settings/SkinSelectorActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 204
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void
.end method

.method private sendCommandHideKeyboard()V
    .locals 5

    .prologue
    .line 328
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mIBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonyericsson/ned/controller/Command;

    const/4 v2, 0x0

    new-instance v3, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "hide-keyboard"

    invoke-direct {v3, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 331
    return-void
.end method

.method private sendCommandRebindKeyboard()V
    .locals 5

    .prologue
    .line 334
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mIBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sonyericsson/ned/controller/Command;

    const/4 v2, 0x0

    new-instance v3, Lcom/sonyericsson/ned/controller/Command;

    const-string v4, "rebind"

    invoke-direct {v3, v4}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 337
    return-void
.end method

.method private shouldConcatenateLatinLanguagesOnLanguageKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "primaryLanguage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 480
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLatinLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 481
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLatinLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 482
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getUniqueNumberOfActiveLatinLayouts()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 483
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActivateLatinLanguageWithIdenticalLayout()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mSmartLanguageDetection:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showInputOptionsMenu()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 226
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->isShowingInputOptionMenu()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 325
    :goto_0
    return-void

    .line 230
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 231
    .local v2, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 232
    const v6, 0x7f070013

    const/4 v8, 0x0

    invoke-virtual {v2, v6, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 234
    new-instance v1, Ljava/util/ArrayList;

    sget-object v6, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->ACTIONS:[I

    array-length v6, v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 235
    .local v1, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v8, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->ACTIONS:[I

    array-length v9, v8

    move v6, v7

    :goto_1
    if-ge v6, v9, :cond_1

    aget v0, v8, v6

    .line 236
    .local v0, "action":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 238
    .end local v0    # "action":I
    :cond_1
    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOneHandedKeyboardAllowed:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    .line 239
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupportingOneHandedKeyboard(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 240
    :cond_2
    const/4 v6, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 242
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 243
    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 246
    :cond_4
    invoke-static {v1}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->getItemsFromAction([I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 247
    .local v3, "items":[Ljava/lang/CharSequence;
    new-instance v6, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;

    invoke-direct {v6, p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;Ljava/util/List;)V

    invoke-virtual {v2, v3, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    const v6, 0x7f070068

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOptionsDialog:Landroid/app/AlertDialog;

    .line 297
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOptionsDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$2;

    invoke-direct {v8, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$2;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V

    invoke-virtual {v6, v8}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 304
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 305
    .local v5, "window":Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 307
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    iput-object v6, v4, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 308
    const/16 v6, 0x3eb

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 309
    const v6, 0x20002

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 311
    const/high16 v6, 0x3f000000    # 0.5f

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 312
    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 314
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOptionsDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 316
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOptionsDialog:Landroid/app/AlertDialog;

    new-instance v8, Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView;

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$3;

    invoke-direct {v10, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController$3;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;)V

    invoke-direct {v8, v9, v10}, Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/view/WindowFocusTrackerView$OnWindowFocusListener;)V

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v9}, Landroid/app/AlertDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0
.end method

.method private toggleOneHandedKeyboardSetting()V
    .locals 2

    .prologue
    .line 216
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 217
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mIsOneHandedKeyboard:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setOneHandedKeyboard(Z)V

    .line 218
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 219
    return-void

    .line 217
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
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
    .line 118
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
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
    .line 123
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_2

    move-object v0, p1

    .line 124
    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    .line 134
    :cond_0
    :goto_0
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    if-ne p2, v0, :cond_6

    .line 135
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 143
    :cond_1
    :goto_1
    return-void

    .line 125
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/ned/controller/IBurstHandler;

    if-ne p2, v0, :cond_3

    move-object v0, p1

    .line 126
    check-cast v0, Lcom/sonyericsson/ned/controller/IBurstHandler;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mIBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    goto :goto_0

    .line 127
    :cond_3
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-ne p2, v0, :cond_4

    move-object v0, p1

    .line 128
    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    goto :goto_0

    .line 129
    :cond_4
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_5

    move-object v0, p1

    .line 130
    check-cast v0, Lcom/sonyericsson/ned/model/ILanguageController;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0

    .line 131
    :cond_5
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_0

    move-object v0, p1

    .line 132
    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0

    .line 136
    :cond_6
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    if-ne p2, v0, :cond_7

    .line 137
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    goto :goto_1

    .line 138
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_7
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    if-ne p2, v0, :cond_8

    .line 139
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    goto :goto_1

    .line 140
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_8
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    if-ne p2, v0, :cond_1

    .line 141
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    goto :goto_1
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mActive:Z

    .line 154
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->dismissDialog()V

    .line 155
    return-void
.end method

.method public getAllContent()Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 379
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v22, "retVal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;>;"
    new-instance v17, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;-><init>(IILcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 382
    .local v17, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v21

    .line 383
    .local v21, "primaryLanguage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 384
    .local v23, "script":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .local v12, "displayLanguage":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mOneHandedKeyboardAllowed:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyboard()Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeyLabelStyleVerySmall()Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v18

    .line 393
    .local v18, "keyLabelStyle":Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    :goto_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v20, "languageIso2Labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mSmartLanguageDetection:Z

    if-eqz v2, :cond_3

    .line 395
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 396
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getUniqueNumberOfActiveLatinLayouts()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguageController;->getActiveLanguages()Ljava/util/ArrayList;

    move-result-object v10

    .line 399
    .local v10, "activeLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/ILanguage;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sonyericsson/ned/model/ILanguage;

    .line 400
    .local v15, "iLanguage":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v15}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v11

    .line 403
    .local v11, "additionalLanguage":Ljava/lang/String;
    invoke-interface {v15}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v3

    .line 402
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->iso3LanguageToIso2DisplayLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 403
    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .line 404
    .local v16, "iso2Label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    .line 405
    invoke-interface {v3, v11}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 404
    invoke-static {v11, v3}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 406
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 407
    new-instance v3, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .line 408
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyboard()Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeyLabelStyleVerySmall()Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-direct {v3, v0, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;-><init>(Ljava/lang/CharSequence;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;)V

    .line 407
    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 390
    .end local v10    # "activeLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/ILanguage;>;"
    .end local v11    # "additionalLanguage":Ljava/lang/String;
    .end local v15    # "iLanguage":Lcom/sonyericsson/ned/model/ILanguage;
    .end local v16    # "iso2Label":Ljava/lang/String;
    .end local v18    # "keyLabelStyle":Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    .end local v20    # "languageIso2Labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyboard()Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeyLabelStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v18

    .restart local v18    # "keyLabelStyle":Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;
    goto/16 :goto_0

    .line 412
    .restart local v20    # "languageIso2Labels":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/Drawable;>;"
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->shouldConcatenateLatinLanguagesOnLanguageKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 413
    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    .line 414
    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguageController;->getActiveLanguages()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 416
    .restart local v10    # "activeLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/ILanguage;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sonyericsson/ned/model/ILanguage;

    .line 417
    .local v19, "language":Lcom/sonyericsson/ned/model/ILanguage;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActivateLatinLanguageWithIdenticalLayout()Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 418
    invoke-interface/range {v19 .. v19}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 419
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 423
    .end local v19    # "language":Lcom/sonyericsson/ned/model/ILanguage;
    :cond_5
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sonyericsson/ned/model/ILanguage;

    .line 424
    .restart local v15    # "iLanguage":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v15}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v11

    .line 427
    .restart local v11    # "additionalLanguage":Ljava/lang/String;
    invoke-interface {v15}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v3

    .line 426
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->iso3LanguageToIso2DisplayLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 427
    invoke-virtual {v3, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v16

    .line 428
    .restart local v16    # "iso2Label":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    .line 429
    invoke-interface {v3, v11}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-static {v11, v3}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 430
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 431
    new-instance v3, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;-><init>(Ljava/lang/CharSequence;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 436
    .end local v10    # "activeLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/ILanguage;>;"
    .end local v11    # "additionalLanguage":Ljava/lang/String;
    .end local v15    # "iLanguage":Lcom/sonyericsson/ned/model/ILanguage;
    .end local v16    # "iso2Label":Ljava/lang/String;
    :cond_7
    invoke-static/range {v21 .. v21}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->iso3LanguageToIso2DisplayLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 437
    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_8
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_9

    .line 442
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-direct {v2, v3, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;-><init>(Ljava/lang/CharSequence;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->setKeyPrimaryIcon(Landroid/graphics/drawable/Drawable;)V

    .line 464
    :goto_3
    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    return-object v22

    .line 444
    :cond_9
    const/4 v4, 0x0

    .line 445
    .local v4, "largestDrawableWidth":I
    const/16 v24, 0x0

    .line 446
    .local v24, "totalDrawableHeight":I
    const/4 v2, 0x2

    new-array v7, v2, [Landroid/graphics/drawable/Drawable;

    .line 447
    .local v7, "languageLabels":[Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    const/4 v2, 0x2

    if-ge v14, v2, :cond_b

    .line 448
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    aput-object v2, v7, v14

    .line 449
    aget-object v2, v7, v14

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-le v2, v4, :cond_a

    .line 450
    aget-object v2, v7, v14

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 452
    :cond_a
    aget-object v2, v7, v14

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    add-int v24, v24, v2

    .line 447
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 454
    :cond_b
    new-instance v6, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 455
    .local v6, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mKeyLabelXOffset:I

    sub-int v5, v24, v5

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-static/range {v2 .. v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->setInsets(IIIILandroid/graphics/drawable/LayerDrawable;[Landroid/graphics/drawable/Drawable;[ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)Landroid/graphics/Point;

    move-result-object v13

    .line 460
    .local v13, "drawingPoint":Landroid/graphics/Point;
    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v5, v13, Landroid/graphics/Point;->x:I

    iget v8, v13, Landroid/graphics/Point;->y:I

    invoke-virtual {v6, v2, v3, v5, v8}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    .line 461
    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->setKeyPrimaryIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 455
    nop

    :array_0
    .array-data 4
        0x30
        0x50
    .end array-data
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return v0
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
    .line 147
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mWantedEvents:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public hasContentToShow()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 489
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v6}, Lcom/sonyericsson/ned/model/ILanguageController;->getActiveLanguages()Ljava/util/ArrayList;

    move-result-object v0

    .line 491
    .local v0, "activeLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/ILanguage;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 508
    :cond_0
    :goto_0
    return v4

    .line 493
    :cond_1
    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mSmartLanguageDetection:Z

    if-nez v6, :cond_2

    move v4, v5

    .line 494
    goto :goto_0

    .line 496
    :cond_2
    const/4 v1, 0x0

    .line 497
    .local v1, "firstScript":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/ned/model/ILanguage;

    .line 498
    .local v2, "iLanguage":Lcom/sonyericsson/ned/model/ILanguage;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 499
    .local v3, "script":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 500
    move-object v1, v3

    goto :goto_1

    .line 501
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 502
    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    move v4, v5

    .line 503
    goto :goto_0

    .line 504
    :cond_6
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getUniqueNumberOfActiveLatinLayouts()I

    move-result v7

    if-le v7, v5, :cond_3

    move v4, v5

    .line 505
    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mActive:Z

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090120

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mKeyLabelXOffset:I

    .line 169
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 1
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 187
    const-string v0, "show-input-options-menu"

    invoke-virtual {p1, v0}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SettingsController;->showInputOptionsMenu()V

    .line 189
    const/4 v0, 0x1

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 375
    return-void
.end method
