.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
.super Ljava/lang/Object;
.source "KeyboardSwitcher.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;
.implements Lcom/sonyericsson/collaboration/ManagedRebindable;
.implements Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;
.implements Lcom/sonyericsson/textinput/uxp/controller/keyboard/IInputModeListener;
.implements Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$XKeySorter;,
        Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$Factory;,
        Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$EnterKeyAction;
    }
.end annotation


# static fields
.field public static final ACTIVE_TEXT_ALPHA:I = 0xff

.field private static final ALPHA:[I

.field public static final DEACTIVATED_TEXT_ALPHA:I = 0x64

.field private static final DOT_COM:Lcom/sonyericsson/ned/model/CodePointString;

.field public static final DOUBLE_MAX_TEXT_WIDTH_FACTOR:F = 2.0f

.field public static final DOUBLE_MAX_TEXT_WIDTH_FACTOR_SMALL_KEYBOARD_EXTRA_MAGIC:F = 2.5f

.field private static final GRAVITY_CENTER:[I

.field private static final IS_DEBUG:Z = false

.field private static final KEY_PREVIEW_OFFSET_Y_FACTOR:F = 0.2f

.field public static final MODE_EMAIL:I = 0x10

.field public static final MODE_IM:I = 0x20

.field public static final MODE_IM_LONG:I = 0x2000

.field private static final MODE_NUMBER:I = 0x3000

.field private static final MODE_NUMBER_DATE:I = 0x4000

.field private static final MODE_NUMBER_DATE_TIME:I = 0x6000

.field public static final MODE_NUMBER_PASSWORD:I = 0x200

.field private static final MODE_NUMBER_TIME:I = 0x5000

.field public static final MODE_PHONE:I = 0x4

.field public static final MODE_PHONE_SYMBOLS:I = 0x1000

.field public static final MODE_SYMBOLS:I = 0x2

.field public static final MODE_TEXT:I = 0x1

.field public static final MODE_URL:I = 0x8

.field public static final MODE_WEB:I = 0x40

.field public static final MODE_WEB_EMAIL:I = 0x80

.field public static final MODE_WEB_PASSWORD:I = 0x100

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final SYMBOL_SEPARATOR:Ljava/lang/String; = "|"

.field private static final WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

.field public static final XML_NUMBER:I = 0x7f050096

.field public static final XML_NUMBER_DATE:I = 0x7f050094

.field public static final XML_NUMBER_DATE_TIME:I = 0x7f050095

.field public static final XML_NUMBER_PASSWORD:I = 0x7f050097

.field public static final XML_NUMBER_TIME:I = 0x7f05009a

.field public static final XML_PHONE:I = 0x7f05009e

.field public static final XML_PHONE_SYMBOLS:I = 0x7f05009f


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentCase:I

.field private mCurrentId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

.field private mExploreByTouch:Z

.field private mFloatingKeyboardType:Ljava/lang/String;

.field private mHasNumericKeys:Z

.field private mInputMethod:Ljava/lang/String;

.field private mInputModeAdvisor:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

.field private mIsCapsLockSupported:Z

.field private mIsCurrentKeyboardVirtualPhonePad:Z

.field private mIsCurrentKeyboardVirtualQwerty:Z

.field private mIsOneHandedKeyboard:Z

.field private mIsPredictionTextField:Z

.field private mIsShiftedSymbol:Z

.field private mIsSmartLanguageDetectionEnabled:Z

.field private mKeyResourceProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

.field private mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

.field private mLangLayoutXmlId:I

.field private mLanguageCandidatesXmlId:I

.field private mLanguageCandidatesXmlIdSecondary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

.field private mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

.field private mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private mMode:I

.field private mPredictionActive:Z

.field private mPreviousFloatingKeyboardType:Ljava/lang/String;

.field private mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

.field private mSecondaryPrint:Z

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mShiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

.field private mShowHandwritingKey:Z

.field private mShowKeyPreview:Z

.field private mShowPeriodAndCommaKeys:Z

.field private mShowSetupWizard:Z

.field private mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

.field private mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

.field private mSymbolsId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

.field private mSymbolsShiftedId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

.field private mTemplateLayoutXmlId:I

.field private mTraceEnabled:Z

.field private mUsePersistentSymbolState:Z

.field private mXKeyController:Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 128
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->ALPHA:[I

    .line 131
    new-array v0, v4, [I

    const/16 v1, 0x11

    aput v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->GRAVITY_CENTER:[I

    .line 134
    const-string v0, ".com"

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->DOT_COM:Lcom/sonyericsson/ned/model/CodePointString;

    .line 135
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v1, v0, v3

    const-class v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    aput-object v1, v0, v4

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    aput-object v1, v0, v5

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->REQUIRED:[Ljava/lang/Class;

    .line 142
    new-array v0, v6, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "toggle-keyboard-number-mode"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "toggle-keyboard-mode"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "pending-symbols-mode"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-void

    .line 128
    nop

    :array_0
    .array-data 4
        0xff
        0xff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mPreviousFloatingKeyboardType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mHasNumericKeys:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mExploreByTouch:Z

    return p1
.end method

.method static synthetic access$1302(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsOneHandedKeyboard:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mInputMethod:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mInputMethod:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsCurrentKeyboardVirtualPhonePad:Z

    return p1
.end method

.method static synthetic access$1600(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->isInputMethodVirtualPhonePad(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsCurrentKeyboardVirtualQwerty:Z

    return p1
.end method

.method static synthetic access$1800(Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->isInputMethodVirtualQwerty(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsSmartLanguageDetectionEnabled:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mUsePersistentSymbolState:Z

    return p1
.end method

.method static synthetic access$202(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mPredictionActive:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mShowKeyPreview:Z

    return p1
.end method

.method static synthetic access$302(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mTraceEnabled:Z

    return p1
.end method

.method static synthetic access$402(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsPredictionTextField:Z

    return p1
.end method

.method static synthetic access$502(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSecondaryPrint:Z

    return p1
.end method

.method static synthetic access$602(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mShowSetupWizard:Z

    return p1
.end method

.method static synthetic access$702(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mShowPeriodAndCommaKeys:Z

    return p1
.end method

.method static synthetic access$802(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Z

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mShowHandwritingKey:Z

    return p1
.end method

.method static synthetic access$902(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mFloatingKeyboardType:Ljava/lang/String;

    return-object p1
.end method

.method private createKeyboard(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    .locals 8
    .param p1, "id"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    .prologue
    .line 736
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->bottomRowSettings:Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-direct {v1, v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 739
    .local v1, "keyboardInflater":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;
    new-instance v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->bottomRowSettings:Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-direct {v3, v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 742
    .local v3, "templateInflater":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;
    iget v4, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->keyboardLayoutXml:I

    iget v5, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->templateLayoutXml:I

    iget v6, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->mode:I

    iget-object v7, p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->floatingKeyboardType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;->inflateKeyboardTemplate(IIILjava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;

    move-result-object v2

    .line 751
    .local v2, "template":Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsCurrentKeyboardVirtualQwerty:Z

    if-eqz v4, :cond_0

    .line 756
    :try_start_0
    invoke-virtual {v1, p1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->inflateQwertyKeyboard(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 778
    .local v0, "keyboard":Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    :goto_0
    return-object v0

    .line 758
    .end local v0    # "keyboard":Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    :catchall_0
    move-exception v4

    throw v4

    .line 768
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    .line 770
    invoke-interface {v5}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v5

    .line 769
    invoke-interface {v4, v5}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 768
    invoke-virtual {v1, p1, v2, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardInflater;->inflatePhonepadKeyboard(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplate;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .restart local v0    # "keyboard":Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    goto :goto_0

    .line 772
    .end local v0    # "keyboard":Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    :catchall_1
    move-exception v4

    throw v4
.end method

.method private doInitOptional(Z)V
    .locals 3
    .param p1, "rebind"    # Z

    .prologue
    .line 961
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mInputModeAdvisor:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->inputModeStringToInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mMode:I

    .line 962
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mShiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    invoke-virtual {v2}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->getCurrentCase()I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mCurrentCase:I

    .line 963
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "languageIso3":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLayoutId()Ljava/lang/String;

    move-result-object v1

    .line 965
    .local v1, "layoutId":Ljava/lang/String;
    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setLayout(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 966
    return-void
.end method

.method private generateBottomRowSettings()Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;
    .locals 7

    .prologue
    .line 721
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsCurrentKeyboardVirtualPhonePad:Z

    if-eqz v0, :cond_0

    .line 722
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mXKeyController:Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;->hasContent()Z

    move-result v1

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mShowSetupWizard:Z

    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mShowHandwritingKey:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;-><init>(ZZZ)V

    .line 726
    :goto_0
    return-object v0

    .line 725
    :cond_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mXKeyController:Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;->hasContent()Z

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 726
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSmileyKeyEnabled()Z

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyResourceProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;->getLeftFunctionKeyContent()Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    move-result-object v3

    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mShowPeriodAndCommaKeys:Z

    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mShowSetupWizard:Z

    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mShowHandwritingKey:Z

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;-><init>(ZZLcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;ZZZ)V

    goto :goto_0
.end method

.method private getDrawableAlpha(Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;)I
    .locals 1
    .param p1, "content"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    .prologue
    .line 422
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x80

    goto :goto_0
.end method

.method private getKeyboardId(I)Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;
    .locals 12
    .param p1, "mode"    # I

    .prologue
    const/4 v5, 0x0

    .line 787
    const/4 v1, -0x1

    .line 788
    .local v1, "xmlMode":I
    const/4 v11, -0x1

    .line 790
    .local v11, "layoutTemplate":I
    sparse-switch p1, :sswitch_data_0

    .line 822
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getQwertyKeyboardMode(I)Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    move-result-object v0

    .line 826
    :goto_0
    return-object v0

    .line 792
    :sswitch_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsShiftedSymbol:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSymbolsId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    goto :goto_0

    .line 794
    :sswitch_1
    const v1, 0x7f05009e

    .line 795
    const v11, 0x7f0500a0

    .line 824
    :goto_1
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    .line 825
    invoke-interface {v2, v11}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getId(I)I

    move-result v2

    .line 826
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getOrientation()I

    move-result v4

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->generateBottomRowSettings()Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    move-result-object v7

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mFloatingKeyboardType:Ljava/lang/String;

    iget-boolean v9, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsOneHandedKeyboard:Z

    iget-boolean v10, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mHasNumericKeys:Z

    move v3, p1

    move-object v6, v5

    invoke-direct/range {v0 .. v10}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;-><init>(IIIILjava/util/List;Ljava/util/List;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 798
    :sswitch_2
    const v1, 0x7f05009f

    .line 799
    const v11, 0x7f0500a0

    .line 800
    goto :goto_1

    .line 802
    :sswitch_3
    const v1, 0x7f050097

    .line 803
    const v11, 0x7f050098

    .line 804
    goto :goto_1

    .line 806
    :sswitch_4
    const v1, 0x7f050096

    .line 807
    const v11, 0x7f0500a0

    .line 808
    goto :goto_1

    .line 810
    :sswitch_5
    const v1, 0x7f050094

    .line 811
    const v11, 0x7f0500a0

    .line 812
    goto :goto_1

    .line 814
    :sswitch_6
    const v1, 0x7f05009a

    .line 815
    const v11, 0x7f0500a0

    .line 816
    goto :goto_1

    .line 818
    :sswitch_7
    const v1, 0x7f050095

    .line 819
    const v11, 0x7f0500a0

    .line 820
    goto :goto_1

    .line 790
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x200 -> :sswitch_3
        0x1000 -> :sswitch_2
        0x3000 -> :sswitch_4
        0x4000 -> :sswitch_5
        0x5000 -> :sswitch_6
        0x6000 -> :sswitch_7
    .end sparse-switch
.end method

.method private getOrientation()I
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    return v0
.end method

.method private getQwertyKeyboardMode(I)Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;
    .locals 24
    .param p1, "mode"    # I

    .prologue
    .line 831
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    .line 832
    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v1

    .line 831
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getSecondaryLanguages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v23

    .line 833
    .local v23, "secondaryLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsCurrentKeyboardVirtualPhonePad:Z

    if-eqz v1, :cond_0

    .line 834
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/16 v21, 0x1

    .line 835
    .local v21, "isSecondaryLanguageInfoNeeded":Z
    :goto_0
    if-eqz v21, :cond_2

    .line 836
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v6, "secondaryKeyboardLayoutXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 838
    .local v7, "secondaryTemplateLayoutXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 839
    .local v22, "language":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    const-string v3, "virtual-12key"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mInputMethod:Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-interface {v2, v0, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getKeyboardLayoutXmlId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    const-string v3, "virtual-12key"

    move-object/from16 v0, v22

    invoke-interface {v2, v0, v3}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getTemplateLayoutXmlId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 834
    .end local v6    # "secondaryKeyboardLayoutXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "secondaryTemplateLayoutXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v21    # "isSecondaryLanguageInfoNeeded":Z
    .end local v22    # "language":Ljava/lang/String;
    :cond_0
    const/16 v21, 0x0

    goto :goto_0

    .line 844
    .restart local v6    # "secondaryKeyboardLayoutXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "secondaryTemplateLayoutXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v21    # "isSecondaryLanguageInfoNeeded":Z
    :cond_1
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLangLayoutXmlId:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mTemplateLayoutXmlId:I

    .line 845
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getOrientation()I

    move-result v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageCandidatesXmlId:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageCandidatesXmlIdSecondary:Ljava/util/List;

    .line 847
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->generateBottomRowSettings()Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mFloatingKeyboardType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsOneHandedKeyboard:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mHasNumericKeys:Z

    move/from16 v4, p1

    invoke-direct/range {v1 .. v13}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;-><init>(IIIILjava/util/List;Ljava/util/List;ILjava/util/List;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Ljava/lang/String;ZZ)V

    .line 852
    .end local v6    # "secondaryKeyboardLayoutXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v7    # "secondaryTemplateLayoutXmls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_2
    return-object v1

    .line 850
    :cond_2
    new-instance v8, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLangLayoutXmlId:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mTemplateLayoutXmlId:I

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getOrientation()I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageCandidatesXmlId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageCandidatesXmlIdSecondary:Ljava/util/List;

    move-object/from16 v16, v0

    .line 852
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->generateBottomRowSettings()Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mFloatingKeyboardType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsOneHandedKeyboard:Z

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mHasNumericKeys:Z

    move/from16 v20, v0

    move/from16 v11, p1

    invoke-direct/range {v8 .. v20}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;-><init>(IIIILjava/util/List;Ljava/util/List;ILjava/util/List;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Ljava/lang/String;ZZ)V

    move-object v1, v8

    goto :goto_2
.end method

.method private getScaledDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "drawableId"    # I

    .prologue
    .line 702
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .line 703
    invoke-interface {v2, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v0, v1

    .line 706
    .local v0, "drawables":[Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->GRAVITY_CENTER:[I

    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->ALPHA:[I

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;-><init>([Landroid/graphics/drawable/Drawable;[I[ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    return-object v1
.end method

.method private getSecondaryLanguageCandidatesId(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "primaryIso"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1054
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .local v0, "secondaryLanguageCandidatesIDs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getSecondaryLanguages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1056
    .local v1, "secondaryLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1057
    .local v2, "string":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 1058
    invoke-interface {v4, v2}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getLanguageCandidatesId(Ljava/lang/String;)I

    move-result v4

    .line 1057
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1060
    .end local v2    # "string":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private getSecondaryLanguages(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "primaryIso"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1064
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    .local v3, "secondaryLanguages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsSmartLanguageDetectionEnabled:Z

    if-eqz v4, :cond_1

    .line 1066
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v4}, Lcom/sonyericsson/ned/model/ILanguageController;->getActiveLanguages()Ljava/util/ArrayList;

    move-result-object v0

    .line 1068
    .local v0, "allLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/ILanguage;>;"
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 1069
    invoke-interface {v4, p1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1068
    invoke-static {p1, v4}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1071
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/ned/model/ILanguage;

    .line 1072
    .local v1, "iLanguage":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v2

    .line 1073
    .local v2, "languageIso":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .line 1075
    invoke-interface {v5, v2}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1074
    invoke-static {v2, v5}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1076
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1081
    .end local v0    # "allLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/ILanguage;>;"
    .end local v1    # "iLanguage":Lcom/sonyericsson/ned/model/ILanguage;
    .end local v2    # "languageIso":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private getToggleKeyMainIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "floatingKeyboardTypeIcon"    # Ljava/lang/String;
    .param p2, "floatingKeyboardTypeLayout"    # Ljava/lang/String;

    .prologue
    .line 404
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    .line 405
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 406
    .local v0, "useLargeIcon":Z
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_MINI:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const v1, 0x7f020044

    :goto_0
    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 409
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 418
    :goto_1
    return-object v1

    .line 407
    :cond_0
    const v1, 0x7f020052

    goto :goto_0

    .line 410
    :cond_1
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_SPLIT:Ljava/lang/String;

    .line 411
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 412
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    const v1, 0x7f020059

    :goto_2
    invoke-static {v2, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 414
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 412
    :cond_2
    const v1, 0x7f020054

    goto :goto_2

    .line 417
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    const v2, 0x7f020051

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1
.end method

.method private inputModeStringToInt(Ljava/lang/String;)I
    .locals 4
    .param p1, "inputMode"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x4

    .line 1096
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1147
    const/4 v0, 0x1

    .line 1150
    .local v0, "mode":I
    :goto_1
    return v0

    .line 1096
    .end local v0    # "mode":I
    :sswitch_0
    const-string v3, "input-mode-text"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "input-mode-symbols"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "input-mode-phone"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "input-mode-url"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "input-mode-email"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_5
    const-string v3, "input-mode-im"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "input-mode-im-long"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "input-mode-web"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "input-mode-web-email"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string v3, "input-mode-web-password"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_a
    const-string v3, "input-mode-number-password"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_b
    const-string v3, "input-mode-number"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xb

    goto :goto_0

    :sswitch_c
    const-string v3, "input-mode-number-date"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "input-mode-number-time"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_e
    const-string v3, "input-mode-number-date-time"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v1, 0xe

    goto/16 :goto_0

    .line 1098
    :pswitch_0
    const/4 v0, 0x1

    .line 1099
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1101
    .end local v0    # "mode":I
    :pswitch_1
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mMode:I

    if-ne v1, v2, :cond_1

    .line 1102
    const/16 v0, 0x1000

    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1104
    .end local v0    # "mode":I
    :cond_1
    const/4 v0, 0x2

    .line 1106
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1108
    .end local v0    # "mode":I
    :pswitch_2
    const/4 v0, 0x4

    .line 1109
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1111
    .end local v0    # "mode":I
    :pswitch_3
    const/16 v0, 0x8

    .line 1112
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1114
    .end local v0    # "mode":I
    :pswitch_4
    const/16 v0, 0x10

    .line 1115
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1117
    .end local v0    # "mode":I
    :pswitch_5
    const/16 v0, 0x20

    .line 1118
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1120
    .end local v0    # "mode":I
    :pswitch_6
    const/16 v0, 0x2000

    .line 1121
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1123
    .end local v0    # "mode":I
    :pswitch_7
    const/16 v0, 0x40

    .line 1124
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1126
    .end local v0    # "mode":I
    :pswitch_8
    const/16 v0, 0x80

    .line 1127
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1129
    .end local v0    # "mode":I
    :pswitch_9
    const/16 v0, 0x100

    .line 1130
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1132
    .end local v0    # "mode":I
    :pswitch_a
    const/16 v0, 0x200

    .line 1133
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1135
    .end local v0    # "mode":I
    :pswitch_b
    const/16 v0, 0x3000

    .line 1136
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1138
    .end local v0    # "mode":I
    :pswitch_c
    const/16 v0, 0x4000

    .line 1139
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1141
    .end local v0    # "mode":I
    :pswitch_d
    const/16 v0, 0x5000

    .line 1142
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1144
    .end local v0    # "mode":I
    :pswitch_e
    const/16 v0, 0x6000

    .line 1145
    .restart local v0    # "mode":I
    goto/16 :goto_1

    .line 1096
    nop

    :sswitch_data_0
    .sparse-switch
        -0x59963975 -> :sswitch_5
        -0x50ff3b2b -> :sswitch_4
        -0x50664959 -> :sswitch_2
        -0x4ce8bf2c -> :sswitch_0
        -0x3d5f7f82 -> :sswitch_6
        -0x2d28aa65 -> :sswitch_9
        -0x1465b32c -> :sswitch_1
        0xd2909c -> :sswitch_8
        0x535c62b -> :sswitch_c
        0x53d294a -> :sswitch_d
        0x1f86d12f -> :sswitch_e
        0x26cf38e8 -> :sswitch_3
        0x26cf3ecd -> :sswitch_7
        0x29170a98 -> :sswitch_a
        0x40e98930 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private isDefaultSymbolShifted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "isoLanguge"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 939
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsCurrentKeyboardVirtualPhonePad:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mUsePersistentSymbolState:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 940
    invoke-interface {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPhonepadSymbolKbdInitialState(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFloating()Z
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mFloatingKeyboardType:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_MINI:Ljava/lang/String;

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mFloatingKeyboardType:Ljava/lang/String;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_SPLIT:Ljava/lang/String;

    .line 399
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

.method private static isInputMethodVirtualPhonePad(Ljava/lang/String;)Z
    .locals 1
    .param p0, "inputMethodParameter"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string v0, "multitap"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "singletap"

    .line 197
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private static isInputMethodVirtualQwerty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "inputMethodParameter"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v0, "full"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setCase(I)V
    .locals 12
    .param p1, "newCase"    # I

    .prologue
    const v11, 0x7f02004c

    const v10, 0x7f02004d

    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 656
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyboard()Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .line 657
    .local v1, "keyboard":Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getShiftKeys()Ljava/util/List;

    move-result-object v3

    .line 658
    .local v3, "shiftKeys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 659
    if-eq p1, v6, :cond_0

    if-ne p1, v9, :cond_1

    :cond_0
    move v4, v6

    :goto_0
    invoke-virtual {v1, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->setShifted(Z)Z

    .line 662
    if-ne p1, v6, :cond_2

    .line 663
    invoke-static {v3, v6}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setOnAndLockedState(Ljava/util/List;Z)V

    .line 668
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 670
    .local v2, "shiftKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    iget-boolean v7, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsCapsLockSupported:Z

    if-eqz v7, :cond_5

    .line 671
    if-ne p1, v6, :cond_3

    .line 672
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v7, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 674
    .local v0, "keyIcon":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v8, 0x7f0f0005

    invoke-interface {v7, v8}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getAccentColor(I)I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 676
    invoke-virtual {v2, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIconHasColor(Z)V

    .line 692
    :goto_3
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v8, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    invoke-virtual {v2, v0, v7, v8}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;)V

    goto :goto_2

    .end local v0    # "keyIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "shiftKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_1
    move v4, v5

    .line 659
    goto :goto_0

    .line 665
    :cond_2
    invoke-static {v3, v5}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setOnAndLockedState(Ljava/util/List;Z)V

    goto :goto_1

    .line 677
    .restart local v2    # "shiftKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_3
    if-ne p1, v9, :cond_4

    .line 678
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v7, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 680
    .restart local v0    # "keyIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIconHasColor(Z)V

    goto :goto_3

    .line 682
    .end local v0    # "keyIcon":Landroid/graphics/drawable/Drawable;
    :cond_4
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 683
    .restart local v0    # "keyIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIconHasColor(Z)V

    goto :goto_3

    .line 686
    .end local v0    # "keyIcon":Landroid/graphics/drawable/Drawable;
    :cond_5
    if-ne p1, v9, :cond_6

    .line 687
    invoke-direct {p0, v10}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getScaledDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "keyIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 689
    .end local v0    # "keyIcon":Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-direct {p0, v11}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getScaledDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "keyIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_3

    .line 696
    .end local v0    # "keyIcon":Landroid/graphics/drawable/Drawable;
    .end local v2    # "shiftKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_7
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->invalidateAllKeys()V

    .line 697
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mCurrentCase:I

    .line 699
    :cond_8
    return-void
.end method

.method private setCaseStateFromMethod(I)V
    .locals 1
    .param p1, "newCase"    # I

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setCase(I)V

    .line 928
    :cond_0
    return-void
.end method

.method private setDrawableBoundsToMatchKey(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V
    .locals 1
    .param p1, "keyDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 715
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 716
    .local v0, "keyBounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualArea(Landroid/graphics/Rect;)V

    .line 717
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 718
    return-void
.end method

.method private setEnterKeyIcon(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$EnterKeyAction;)V
    .locals 5
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "action"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$EnterKeyAction;

    .prologue
    const/4 v4, 0x0

    .line 636
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$1;->$SwitchMap$com$sonyericsson$textinput$uxp$controller$keyboard$KeyboardSwitcher$EnterKeyAction:[I

    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$EnterKeyAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 646
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get correct icon for action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 638
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v2, 0x7f02003b

    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 649
    .local v0, "enterKeyIcon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    invoke-virtual {p1, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;)V

    .line 651
    invoke-virtual {p1, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setNormalLabel(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 652
    invoke-virtual {p1, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setShiftedLabel(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 653
    return-void

    .line 642
    .end local v0    # "enterKeyIcon":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v2, 0x7f02004a

    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 643
    .restart local v0    # "enterKeyIcon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 636
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setKeyIcon(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "keyDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 710
    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setDrawableBoundsToMatchKey(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    .line 711
    invoke-virtual {p1, p2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 712
    return-void
.end method

.method private setKeyLabel(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 5
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "keyLabel"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "keyShortLabel"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    .line 618
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyPadding()Landroid/graphics/Rect;

    move-result-object v1

    .line 619
    .local v1, "keyPadding":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int v0, v3, v4

    .line 621
    .local v0, "keyAvailableWidth":I
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 622
    .local v2, "paint":Landroid/graphics/Paint;
    invoke-virtual {p4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeyLabelStyleVerySmall()Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->applyPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 624
    invoke-virtual {p2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 625
    invoke-virtual {p1, p2, p4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setLabel(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 631
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-virtual {p3}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v0

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 627
    invoke-virtual {p1, p3, p4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setLabel(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    goto :goto_0

    .line 629
    :cond_1
    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$EnterKeyAction;->RETURN:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$EnterKeyAction;

    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setEnterKeyIcon(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$EnterKeyAction;)V

    goto :goto_0
.end method

.method private setKeyboard(IZ)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "rebind"    # Z

    .prologue
    const/4 v7, 0x0

    .line 213
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mMode:I

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mShowKeyPreview:Z

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setPreviewEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsCurrentKeyboardVirtualQwerty:Z

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setShowCandidatesEnabled(Z)V

    .line 218
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getKeyboardId(I)Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    move-result-object v6

    .line 219
    .local v6, "id":Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;
    invoke-direct {p0, v6}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->createKeyboard(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v1

    .line 220
    .local v1, "keyboard":Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    iput-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsOneHandedKeyboard:Z

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setKeyboard(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    invoke-virtual {v1, v7}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->setShifted(Z)Z

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mShiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->isCapsLockSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsCapsLockSupported:Z

    .line 237
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateXKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 238
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateEnterKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 239
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateIMButton(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 240
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateDotComKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 241
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateVoiceInputKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 242
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateSettingsKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 243
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateToggleFloatingKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 244
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateWizardKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 245
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateSymbolsToggleKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 246
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateModeToggleKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 248
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mCurrentCase:I

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setCaseStateFromMethod(I)V

    .line 250
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->useTraceMode()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setTraceEnabled(Z)V

    .line 251
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSecondaryPrint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    .line 253
    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-interface {v0, v3}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->hasForcedSecondaryPrints(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 251
    :goto_0
    invoke-virtual {v2, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->enableSecondaryPrint(Z)V

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mExploreByTouch:Z

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setExploreByTouch(Z)V

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_SPLIT:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mFloatingKeyboardType:Ljava/lang/String;

    .line 256
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 255
    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setSplit(Z)V

    .line 257
    return-void

    .line 229
    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    move v0, v7

    .line 252
    goto :goto_0
.end method

.method private setKeyboardByIso(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 22
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "layoutId"    # Ljava/lang/String;
    .param p3, "rebind"    # Z

    .prologue
    .line 1016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mInputMethod:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getKeyboardLayoutXmlId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    .line 1018
    .local v19, "layoutXmlId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getTemplateLayoutXmlId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    .line 1020
    .local v21, "templateLayoutId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getKeyboardSymbolsXmlId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 1021
    .local v3, "symbolsId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v2, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getKeyboardSymbolsShiftedXmlId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v20

    .line 1023
    .local v20, "symbolsShiftedId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getLanguageCandidatesId(Ljava/lang/String;)I

    move-result v18

    .line 1025
    .local v18, "languageCandidatesId":I
    if-eqz v19, :cond_0

    if-eqz v3, :cond_0

    if-eqz v20, :cond_0

    .line 1030
    :try_start_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLangLayoutXmlId:I

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    move/from16 v0, v21

    invoke-interface {v2, v0}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mTemplateLayoutXmlId:I

    .line 1032
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageCandidatesXmlId:I

    .line 1033
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getSecondaryLanguageCandidatesId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageCandidatesXmlIdSecondary:Ljava/util/List;

    .line 1035
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getOrientation()I

    move-result v6

    .line 1036
    .local v6, "orientation":I
    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mTemplateLayoutXmlId:I

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1038
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->generateBottomRowSettings()Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mFloatingKeyboardType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsOneHandedKeyboard:Z

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mHasNumericKeys:Z

    invoke-direct/range {v2 .. v12}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;-><init>(IIIILjava/util/List;Ljava/util/List;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSymbolsId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    .line 1041
    new-instance v7, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mTemplateLayoutXmlId:I

    const/4 v10, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 1042
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->generateBottomRowSettings()Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mFloatingKeyboardType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsOneHandedKeyboard:Z

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mHasNumericKeys:Z

    move/from16 v17, v0

    move/from16 v8, v20

    move v11, v6

    invoke-direct/range {v7 .. v17}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;-><init>(IIIILjava/util/List;Ljava/util/List;Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;Ljava/lang/String;ZZ)V

    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mMode:I

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v2, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setKeyboard(IZ)V

    .line 1051
    .end local v6    # "orientation":I
    :cond_0
    return-void

    .line 1045
    :catchall_0
    move-exception v2

    throw v2
.end method

.method private setLayout(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "layout"    # Ljava/lang/String;
    .param p3, "rebind"    # Z

    .prologue
    .line 969
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->isDefaultSymbolShifted(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsShiftedSymbol:Z

    .line 970
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setKeyboardByIso(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 971
    return-void
.end method

.method static setOnAndLockedState(Ljava/util/List;Z)V
    .locals 3
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p0, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 206
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setLockedState(Z)V

    .line 207
    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setOn(Z)V

    goto :goto_0

    .line 209
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_0
    return-void
.end method

.method private storeSymbolKeyboardStateIfPhonePad(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "iso"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 945
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsCurrentKeyboardVirtualPhonePad:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mUsePersistentSymbolState:Z

    if-eqz v2, :cond_0

    .line 946
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 949
    .local v1, "phonepadSymbolKbdInitialState":I
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 950
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p1, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setPhonepadSymbolKbdInitialState(Ljava/lang/String;I)V

    .line 951
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 953
    .end local v0    # "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    .end local v1    # "phonepadSymbolKbdInitialState":I
    :cond_0
    return-void

    .line 946
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toggleShiftedState(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;)V
    .locals 6
    .param p1, "id"    # Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    .prologue
    const/4 v4, 0x0

    .line 874
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    .line 875
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->createKeyboard(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;)Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v1

    .line 876
    .local v1, "keyboard":Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsOneHandedKeyboard:Z

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setKeyboard(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;ZZ)V

    .line 877
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateXKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 878
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateEnterKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 879
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateToggleFloatingKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 880
    invoke-virtual {v1, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->setShifted(Z)Z

    .line 881
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateSymbolsToggleKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 882
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->updateModeToggleKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 883
    return-void
.end method

.method private updateDotComKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 8
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    .line 580
    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 582
    .local v0, "dotComKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v0, :cond_2

    .line 583
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->getTopDomains(Landroid/content/Context;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 585
    .local v3, "topDomains":[Lcom/sonyericsson/ned/model/CodePointString;
    new-instance v4, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    invoke-direct {v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;-><init>()V

    invoke-virtual {v0, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setNormalCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;)V

    .line 588
    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->DOT_COM:Lcom/sonyericsson/ned/model/CodePointString;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->DOT_COM:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, v4, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->addNormalCandidate(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 590
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v3, v4

    .line 591
    .local v2, "s":Lcom/sonyericsson/ned/model/CodePointString;
    const-string v6, "com"

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 592
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 593
    .local v1, "dotDomain":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v0, v1, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->addNormalCandidate(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 590
    .end local v1    # "dotDomain":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 597
    .end local v2    # "s":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getNormalCandidates()Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setShiftedCandidates(Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyCandidates;)V

    .line 599
    .end local v3    # "topDomains":[Lcom/sonyericsson/ned/model/CodePointString;
    :cond_2
    return-void
.end method

.method private updateEnterKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 5
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    const/4 v3, 0x0

    .line 426
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getEnterKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 427
    .local v0, "enter":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v0, :cond_1

    .line 428
    invoke-virtual {v0, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setNormalLabel(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 429
    invoke-virtual {v0, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setShiftedLabel(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 430
    invoke-virtual {v0, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIconPreview(Landroid/graphics/drawable/Drawable;)V

    .line 431
    invoke-virtual {v0, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 433
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyResourceProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;->getEnterKeyLabel()Ljava/lang/String;

    move-result-object v1

    .line 434
    .local v1, "enterLabel":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 442
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyResourceProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;->getEnterKeyShortLabel()Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "enterShortLabel":Ljava/lang/String;
    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 444
    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 443
    invoke-direct {p0, v0, v3, v4, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setKeyLabel(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V

    .line 448
    .end local v1    # "enterLabel":Ljava/lang/String;
    .end local v2    # "enterShortLabel":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 434
    .restart local v1    # "enterLabel":Ljava/lang/String;
    :sswitch_0
    const-string v4, "icon-enter"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "icon-search"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 436
    :pswitch_0
    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$EnterKeyAction;->RETURN:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$EnterKeyAction;

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setEnterKeyIcon(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$EnterKeyAction;)V

    goto :goto_1

    .line 439
    :pswitch_1
    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$EnterKeyAction;->SEARCH:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$EnterKeyAction;

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setEnterKeyIcon(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$EnterKeyAction;)V

    goto :goto_1

    .line 434
    :sswitch_data_0
    .sparse-switch
        -0x72ebb684 -> :sswitch_1
        -0x5f4ca77c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateIMButton(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 6
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 266
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getToggleInputMethodKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v1

    .line 268
    .local v1, "singleTapKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v1, :cond_0

    .line 269
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mPredictionActive:Z

    invoke-virtual {v1, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setLockedState(Z)V

    .line 272
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mPredictionActive:Z

    if-eqz v4, :cond_1

    .line 273
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    const v5, 0x7f020050

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 274
    .local v0, "keyIcon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v5, 0x7f0f0005

    invoke-interface {v4, v5}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getAccentColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 276
    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIconHasColor(Z)V

    .line 281
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setKeyIcon(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsPredictionTextField:Z

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-static {v4, v5}, Lcom/sonyericsson/textinput/uxp/model/settings/PhonepadInputMethodToggler;->isSingletapKeyEnabled(ZLcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->disable(Z)V

    .line 285
    .end local v0    # "keyIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void

    .line 278
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    const v5, 0x7f020046

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 279
    .restart local v0    # "keyIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIconHasColor(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 282
    goto :goto_1
.end method

.method private updateModeToggleKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 12
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 472
    const/4 v6, -0x2

    invoke-virtual {p1, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v4

    .line 473
    .local v4, "modeKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-nez v4, :cond_0

    .line 506
    :goto_0
    return-void

    .line 476
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDirectBootLocked(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->isAlphabetMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 477
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    const v7, 0x7f02006f

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 479
    .local v5, "secondaryIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_1

    .line 481
    new-array v1, v9, [I

    fill-array-data v1, :array_0

    .line 485
    .local v1, "gravity":[I
    new-instance v6, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;

    new-array v7, v9, [Landroid/graphics/drawable/Drawable;

    aput-object v5, v7, v10

    .line 486
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    aput-object v8, v7, v11

    new-array v8, v9, [I

    fill-array-data v8, :array_1

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    invoke-direct {v6, v7, v1, v8, v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;-><init>([Landroid/graphics/drawable/Drawable;[I[ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 485
    invoke-virtual {v4, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 489
    .end local v1    # "gravity":[I
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 490
    .local v3, "keyBounds":Landroid/graphics/Rect;
    invoke-virtual {v4, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualArea(Landroid/graphics/Rect;)V

    .line 492
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 493
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v6, v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;

    if-eqz v6, :cond_2

    .line 494
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 500
    :cond_2
    new-array v0, v11, [Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    .line 501
    .local v0, "contentArray":[Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;
    new-instance v6, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    const/16 v7, -0xb

    const/16 v8, 0x1f4

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-direct {v6, v7, v8, v9}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;-><init>(IILcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    aput-object v6, v0, v10

    .line 502
    invoke-virtual {v4, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setXKeyCandidates([Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;)V

    goto :goto_0

    .line 504
    .end local v0    # "contentArray":[Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "keyBounds":Landroid/graphics/Rect;
    .end local v5    # "secondaryIcon":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setXKeyCandidates([Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;)V

    goto :goto_0

    .line 481
    nop

    :array_0
    .array-data 4
        0x35
        0x11
    .end array-data

    .line 486
    :array_1
    .array-data 4
        0xff
        0xff
    .end array-data
.end method

.method private updateSettingsKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 2
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    .line 610
    const/16 v1, -0xb

    invoke-virtual {p1, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 611
    .local v0, "settingsKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v0, :cond_0

    .line 612
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDirectBootLocked(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->disable(Z)V

    .line 614
    :cond_0
    return-void
.end method

.method private updateSymbolsToggleKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 19
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    .line 509
    const/16 v15, -0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKeys(I)Ljava/util/List;

    move-result-object v12

    .line 511
    .local v12, "symbolsKeys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 512
    .local v11, "symbolsKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getDecorLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    .line 513
    .local v6, "label":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v6, :cond_0

    const-string v15, "|"

    invoke-virtual {v6, v15}, Lcom/sonyericsson/ned/model/CodePointString;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_1

    .line 576
    .end local v6    # "label":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v11    # "symbolsKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_0
    return-void

    .line 517
    .restart local v6    # "label":Lcom/sonyericsson/ned/model/CodePointString;
    .restart local v11    # "symbolsKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_1
    const/4 v15, 0x0

    const-string v17, "|"

    .line 518
    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v17

    .line 517
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/sonyericsson/ned/model/CodePointString;->lastIndexOf(Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v15, v0}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    .line 519
    .local v8, "startText":Lcom/sonyericsson/ned/model/CodePointString;
    const-string v15, "|"

    .line 520
    invoke-static {v15}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v15

    .line 519
    invoke-virtual {v6, v15}, Lcom/sonyericsson/ned/model/CodePointString;->lastIndexOf(Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    .line 520
    invoke-virtual {v6}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v17

    .line 519
    move/from16 v0, v17

    invoke-virtual {v6, v15, v0}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 521
    .local v2, "endText":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v8, :cond_0

    if-eqz v2, :cond_0

    .line 525
    new-instance v9, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;

    invoke-virtual {v8}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v15

    .line 526
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeyLabelStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v9, v15, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;-><init>(Ljava/lang/CharSequence;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;)V

    .line 527
    .local v9, "startTextDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;
    new-instance v3, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v15

    .line 528
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeyLabelStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v3, v15, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;-><init>(Ljava/lang/CharSequence;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;)V

    .line 531
    .local v3, "endTextDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsShiftedSymbol:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsCurrentKeyboardVirtualPhonePad:Z

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v15, v0, :cond_2

    .line 532
    const/16 v15, 0x64

    invoke-virtual {v9, v15}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->setTextAlpha(I)V

    .line 533
    const/16 v15, 0xff

    invoke-virtual {v3, v15}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->setTextAlpha(I)V

    .line 539
    :goto_1
    const/4 v10, 0x0

    .line 540
    .local v10, "symbolKeyTextCompundDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsCurrentKeyboardVirtualPhonePad:Z

    if-eqz v15, :cond_3

    .line 541
    new-instance v10, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;

    .end local v10    # "symbolKeyTextCompundDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;
    const/4 v15, 0x2

    new-array v15, v15, [Landroid/graphics/drawable/Drawable;

    const/16 v17, 0x0

    aput-object v3, v15, v17

    const/16 v17, 0x1

    aput-object v9, v15, v17

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v10, v15, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;-><init>([Landroid/graphics/drawable/Drawable;[ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 573
    .restart local v10    # "symbolKeyTextCompundDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v17, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    move-object/from16 v0, v17

    invoke-virtual {v11, v10, v15, v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;)V

    goto/16 :goto_0

    .line 535
    .end local v10    # "symbolKeyTextCompundDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;
    :cond_2
    const/16 v15, 0xff

    invoke-virtual {v9, v15}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->setTextAlpha(I)V

    .line 536
    const/16 v15, 0x64

    invoke-virtual {v3, v15}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->setTextAlpha(I)V

    goto :goto_1

    .line 547
    .restart local v10    # "symbolKeyTextCompundDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;
    :cond_3
    new-instance v7, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;

    const-string v15, "|"

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeyLabelStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v15, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;-><init>(Ljava/lang/CharSequence;Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;)V

    .line 549
    .local v7, "separatorDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;
    const/16 v15, 0xff

    invoke-virtual {v7, v15}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;->setTextAlpha(I)V

    .line 551
    new-instance v10, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;

    .end local v10    # "symbolKeyTextCompundDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;
    const/4 v15, 0x3

    new-array v15, v15, [Landroid/graphics/drawable/Drawable;

    const/16 v17, 0x0

    aput-object v3, v15, v17

    const/16 v17, 0x1

    aput-object v7, v15, v17

    const/16 v17, 0x2

    aput-object v9, v15, v17

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    fill-array-data v17, :array_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v10, v15, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;-><init>([Landroid/graphics/drawable/Drawable;[ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 558
    .restart local v10    # "symbolKeyTextCompundDrawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 559
    .local v13, "textStylePaint":Landroid/graphics/Paint;
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getKeyLabelStyle()Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->applyPaint(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 561
    invoke-virtual {v8}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 562
    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    .line 560
    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v14

    .line 563
    .local v14, "widestTextWidth":F
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->isFloating()Z

    move-result v15

    if-nez v15, :cond_4

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsOneHandedKeyboard:Z

    if-nez v15, :cond_4

    const/4 v4, 0x1

    .line 564
    .local v4, "isFullSizeKeyboard":Z
    :goto_3
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 565
    .local v5, "keyBounds":Landroid/graphics/Rect;
    invoke-virtual {v11, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualArea(Landroid/graphics/Rect;)V

    .line 566
    const/4 v15, 0x0

    iput v15, v5, Landroid/graphics/Rect;->left:I

    .line 567
    if-eqz v4, :cond_5

    const/high16 v15, 0x40000000    # 2.0f

    :goto_4
    mul-float/2addr v15, v14

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    iput v15, v5, Landroid/graphics/Rect;->right:I

    .line 570
    invoke-virtual {v10, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 563
    .end local v4    # "isFullSizeKeyboard":Z
    .end local v5    # "keyBounds":Landroid/graphics/Rect;
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 567
    .restart local v4    # "isFullSizeKeyboard":Z
    .restart local v5    # "keyBounds":Landroid/graphics/Rect;
    :cond_5
    const/high16 v15, 0x40200000    # 2.5f

    goto :goto_4

    .line 541
    :array_0
    .array-data 4
        0x30
        0x50
    .end array-data

    .line 551
    :array_1
    .array-data 4
        0x5
        0x11
        0x3
    .end array-data
.end method

.method private updateToggleFloatingKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 9
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    const/4 v8, 0x2

    .line 369
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getToggleFloatingKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v2

    .line 371
    .local v2, "toggleFloatingKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v2, :cond_0

    .line 372
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mPreviousFloatingKeyboardType:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mFloatingKeyboardType:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getToggleKeyMainIcon(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 374
    .local v3, "toggleKeyMainIcon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mFloatingKeyboardType:Ljava/lang/String;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 376
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    invoke-virtual {v2, v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;)V

    .line 393
    .end local v3    # "toggleKeyMainIcon":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 378
    .restart local v3    # "toggleKeyMainIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->isFloating()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 379
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;

    new-array v4, v8, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    const v7, 0x7f020053

    .line 380
    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    invoke-direct {v0, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;-><init>([Landroid/graphics/drawable/Drawable;[I)V

    .line 386
    .local v0, "drawable":Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 387
    .local v1, "keyBounds":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualArea(Landroid/graphics/Rect;)V

    .line 388
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    invoke-virtual {v2, v0, v4, v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;)V

    .line 390
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 380
    nop

    :array_0
    .array-data 4
        0x35
        0x11
    .end array-data
.end method

.method private updateVoiceInputKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 2
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    .line 602
    const/16 v1, -0x12

    invoke-virtual {p1, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v0

    .line 603
    .local v0, "voiceKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v0, :cond_0

    .line 605
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasGoogleVoiceInputInstalled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->disable(Z)V

    .line 607
    :cond_0
    return-void

    .line 605
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateWizardKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 7
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    .line 451
    const/16 v4, -0x11

    invoke-virtual {p1, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getMetaKey(I)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v3

    .line 452
    .local v3, "wizardKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v3, :cond_0

    .line 453
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 454
    .local v2, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    const v4, 0x7f0f00e7

    .line 455
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 456
    .local v0, "baseDrawable":Landroid/graphics/drawable/Drawable;
    const v4, 0x7f0f00e8

    .line 457
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 458
    .local v1, "glowDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 459
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v5, 0x7f0d00fd

    invoke-interface {v4, v5}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 460
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getCurrentDrawableState()[I

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 459
    invoke-virtual {v0, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 462
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v5, 0x7f0f000e

    invoke-interface {v4, v5}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getAccentColor(I)I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 467
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIconHasColor(Z)V

    .line 469
    .end local v0    # "baseDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "glowDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    return-void

    .line 465
    .restart local v0    # "baseDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "glowDrawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing layer "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private updateXKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;)V
    .locals 23
    .param p1, "keyboard"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    .prologue
    .line 288
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;->getXKey()Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v16

    .line 289
    .local v16, "xKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mXKeyController:Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 290
    new-instance v4, Ljava/util/TreeSet;

    new-instance v17, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$XKeySorter;

    const/16 v18, 0x0

    invoke-direct/range {v17 .. v18}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$XKeySorter;-><init>(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher$1;)V

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 291
    .local v4, "content":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mXKeyController:Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;->getContent()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 293
    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getUniqueNumberOfActiveLatinLayouts()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 366
    .end local v4    # "content":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;>;"
    :cond_0
    :goto_0
    return-void

    .line 298
    .restart local v4    # "content":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    .line 299
    .local v5, "first":Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;
    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 300
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->getType()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setXKeyType(I)V

    .line 301
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->isEnabled()Z

    move-result v17

    if-nez v17, :cond_7

    const/16 v17, 0x1

    :goto_1
    invoke-virtual/range {v16 .. v17}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->disable(Z)V

    .line 303
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 304
    .local v10, "keyBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualArea(Landroid/graphics/Rect;)V

    .line 306
    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v17

    if-lez v17, :cond_9

    .line 307
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->getKeyPrimaryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 308
    .local v11, "primaryIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->getKeyPrimaryPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 309
    .local v12, "primaryPreviewIcon":Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    .line 310
    .local v14, "secondaryIcon":Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    .line 311
    .local v15, "secondaryPreviewIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    .line 312
    .local v13, "second":Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;
    if-eqz v13, :cond_2

    .line 313
    invoke-virtual {v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->getKeySecondaryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 314
    invoke-virtual {v13}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->getKeySecondaryPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 316
    :cond_2
    if-eqz v14, :cond_3

    if-eqz v11, :cond_3

    .line 318
    instance-of v0, v11, Landroid/graphics/drawable/LayerDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 319
    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 320
    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPhone(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 321
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v6, v0, [I

    fill-array-data v6, :array_0

    .line 330
    .local v6, "gravity":[I
    :goto_2
    new-instance v17, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v14, v18, v19

    const/16 v19, 0x1

    aput-object v11, v18, v19

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    .line 333
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getDrawableAlpha(Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;)I

    move-result v21

    aput v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getDrawableAlpha(Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;)I

    move-result v21

    aput v21, v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;-><init>([Landroid/graphics/drawable/Drawable;[I[ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 330
    invoke-virtual/range {v16 .. v17}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 336
    .end local v6    # "gravity":[I
    :cond_3
    if-eqz v15, :cond_4

    if-eqz v12, :cond_4

    .line 337
    new-instance v17, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    const/16 v19, 0x1

    aput-object v12, v18, v19

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_1

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 342
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getDrawableAlpha(Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;)I

    move-result v22

    aput v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->getDrawableAlpha(Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;)I

    move-result v22

    aput v22, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    move-object/from16 v21, v0

    invoke-direct/range {v17 .. v21}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;-><init>([Landroid/graphics/drawable/Drawable;[I[ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 337
    invoke-virtual/range {v16 .. v17}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIconPreview(Landroid/graphics/drawable/Drawable;)V

    .line 350
    .end local v11    # "primaryIcon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "primaryPreviewIcon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "second":Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;
    .end local v14    # "secondaryIcon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "secondaryPreviewIcon":Landroid/graphics/drawable/Drawable;
    :cond_4
    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 351
    .local v8, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v0, v8, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 352
    invoke-virtual {v8, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 355
    :cond_5
    invoke-virtual/range {v16 .. v16}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getIconPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 356
    .local v9, "iconPreview":Landroid/graphics/drawable/Drawable;
    instance-of v0, v9, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 357
    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3e4ccccd    # 0.2f

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v7, v0

    .line 359
    .local v7, "heightDiff":I
    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    sub-int v18, v18, v7

    iget v0, v10, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    iget v0, v10, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int v20, v20, v7

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 361
    invoke-virtual {v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 364
    .end local v7    # "heightDiff":I
    :cond_6
    invoke-virtual {v4}, Ljava/util/TreeSet;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;

    invoke-virtual/range {v16 .. v17}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setXKeyCandidates([Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;)V

    goto/16 :goto_0

    .line 301
    .end local v8    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v9    # "iconPreview":Landroid/graphics/drawable/Drawable;
    .end local v10    # "keyBounds":Landroid/graphics/Rect;
    :cond_7
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 325
    .restart local v10    # "keyBounds":Landroid/graphics/Rect;
    .restart local v11    # "primaryIcon":Landroid/graphics/drawable/Drawable;
    .restart local v12    # "primaryPreviewIcon":Landroid/graphics/drawable/Drawable;
    .restart local v13    # "second":Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;
    .restart local v14    # "secondaryIcon":Landroid/graphics/drawable/Drawable;
    .restart local v15    # "secondaryPreviewIcon":Landroid/graphics/drawable/Drawable;
    :cond_8
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v6, v0, [I

    fill-array-data v6, :array_2

    .restart local v6    # "gravity":[I
    goto/16 :goto_2

    .line 346
    .end local v6    # "gravity":[I
    .end local v11    # "primaryIcon":Landroid/graphics/drawable/Drawable;
    .end local v12    # "primaryPreviewIcon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "second":Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;
    .end local v14    # "secondaryIcon":Landroid/graphics/drawable/Drawable;
    .end local v15    # "secondaryPreviewIcon":Landroid/graphics/drawable/Drawable;
    :cond_9
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->getKeyPrimaryIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 347
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->getKeyPrimaryPreview()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->setIconPreview(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    .line 321
    nop

    :array_0
    .array-data 4
        0x35
        0x50
    .end array-data

    .line 337
    :array_1
    .array-data 4
        0x35
        0x11
    .end array-data

    .line 325
    :array_2
    .array-data 4
        0x35
        0x11
    .end array-data
.end method

.method private useTraceMode()Z
    .locals 3

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mTraceEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mPredictionActive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mMode:I

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyUtils;->isSymbolsLayout(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    .line 262
    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mCurrentCase:I

    .line 261
    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->isTraceAllowedForLanguage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 975
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
    .line 980
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_1

    .line 981
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mContext:Landroid/content/Context;

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 982
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_2

    .line 983
    check-cast p1, Lcom/sonyericsson/ned/model/ILanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0

    .line 984
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    if-ne p2, v0, :cond_3

    .line 985
    check-cast p1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    goto :goto_0

    .line 986
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    if-ne p2, v0, :cond_4

    .line 987
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    goto :goto_0

    .line 988
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;

    if-ne p2, v0, :cond_5

    .line 989
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mXKeyController:Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;

    goto :goto_0

    .line 990
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_5
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    if-ne p2, v0, :cond_6

    .line 991
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    goto :goto_0

    .line 992
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_6
    const-class v0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    if-ne p2, v0, :cond_7

    .line 993
    check-cast p1, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mShiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    goto :goto_0

    .line 994
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_7
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    if-ne p2, v0, :cond_8

    .line 995
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mInputModeAdvisor:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    goto :goto_0

    .line 996
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_8
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    if-ne p2, v0, :cond_9

    .line 997
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    goto :goto_0

    .line 998
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_9
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    if-ne p2, v0, :cond_a

    .line 999
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyResourceProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    goto :goto_0

    .line 1000
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_a
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    if-ne p2, v0, :cond_b

    .line 1001
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    goto :goto_0

    .line 1002
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_b
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_c

    .line 1003
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0

    .line 1004
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_c
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    if-ne p2, v0, :cond_0

    .line 1005
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 936
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 887
    const/16 v0, 0xa

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
    .line 1011
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 892
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 932
    return-void
.end method

.method public initOptional()V
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->doInitOptional(Z)V

    .line 958
    return-void
.end method

.method public isAlphabetMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 858
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    iget v0, v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->mode:I

    .line 859
    .local v0, "currentMode":I
    if-eq v0, v1, :cond_0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x2000

    if-eq v0, v2, :cond_0

    const/16 v2, 0x40

    if-eq v0, v2, :cond_0

    const/16 v2, 0x100

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCaseChanged(IZ)V
    .locals 2
    .param p1, "newCase"    # I
    .param p2, "tapped"    # Z

    .prologue
    .line 1161
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mCurrentCase:I

    .line 1162
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->useTraceMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setTraceEnabled(Z)V

    .line 1168
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getKeyboard()Lcom/sonyericsson/textinput/uxp/model/keyboard/Keyboard;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1169
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setCaseStateFromMethod(I)V

    .line 1171
    :cond_0
    return-void
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 4
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 897
    const/4 v0, 0x0

    .line 898
    .local v0, "isEventHandled":Z
    const-string v3, "toggle-keyboard-number-mode"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 900
    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsShiftedSymbol:Z

    if-nez v3, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsShiftedSymbol:Z

    .line 901
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->toggleSymbolKeyboardShiftState()V

    .line 905
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsCurrentKeyboardVirtualPhonePad:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSymbolsId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 906
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    .line 907
    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsShiftedSymbol:Z

    .line 906
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->storeSymbolKeyboardStateIfPhonePad(Ljava/lang/String;Z)V

    .line 909
    :cond_0
    const/4 v0, 0x1

    .line 916
    :cond_1
    :goto_1
    return v0

    :cond_2
    move v1, v2

    .line 900
    goto :goto_0

    .line 910
    :cond_3
    const-string v3, "toggle-keyboard-mode"

    invoke-virtual {p1, v3}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 911
    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsCurrentKeyboardVirtualPhonePad:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsShiftedSymbol:Z

    if-eqz v3, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsShiftedSymbol:Z

    .line 912
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->useTraceMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setTraceEnabled(Z)V

    goto :goto_1

    :cond_4
    move v1, v2

    .line 911
    goto :goto_2

    .line 913
    :cond_5
    const-string v1, "pending-symbols-mode"

    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/controller/EventObject;->matchString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 914
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mKeyboardView:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->setTraceEnabled(Z)V

    goto :goto_1
.end method

.method public onInputModeAdvice(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputMode"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1155
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsShiftedSymbol:Z

    .line 1156
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->inputModeStringToInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setKeyboard(IZ)V

    .line 1157
    return-void
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 922
    return-void
.end method

.method public onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;
    .param p2, "primaryLanguageLayout"    # Ljava/lang/String;

    .prologue
    .line 1086
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->isDefaultSymbolShifted(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mIsShiftedSymbol:Z

    .line 1087
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->setLayout(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1088
    return-void
.end method

.method public reinit()V
    .locals 0

    .prologue
    .line 1175
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->init()V

    .line 1176
    return-void
.end method

.method public reinitOptional()V
    .locals 1

    .prologue
    .line 1180
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->doInitOptional(Z)V

    .line 1181
    return-void
.end method

.method public toggleSymbolKeyboardShiftState()V
    .locals 2

    .prologue
    .line 866
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSymbolsId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->toggleShiftedState(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;)V

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mCurrentId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSymbolsShiftedId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->mSymbolsId:Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardSwitcher;->toggleShiftedState(Lcom/sonyericsson/textinput/uxp/controller/keyboard/KeyboardId;)V

    goto :goto_0
.end method
