.class public Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;
.super Ljava/lang/Object;
.source "RandomSettings.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
.implements Lcom/sonyericsson/collaboration/OnDebugListener;


# static fields
.field private static final BATTERY_LEVEL_LOG_INTERVAL:I = 0x927c0

.field private static final BATTERY_LEVEL_UNKNOWN:I = -0x1

.field private static final DEBUG:Z = false

.field private static final LANGUAGE_SETTINGS_UPDATE_INTERVAL:I = 0xea60

.field private static final MAXIMUM_NUMBER_OF_ACTIVE_LANGUAGES:I = 0x3

.field private static final MIN_BATTERY_LEVEL:I = 0x5

.field private static final SYNC_TRIGGER_INTERVAL:I = 0x2bf20

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_BATTERY_LEVEL_LOG:Ljava/lang/String; = "BatteryLevelLog"


# instance fields
.field private mBatteryLevel:I

.field private mCurrentInputMethod:Ljava/lang/String;

.field private mCurrentKeyboard:Ljava/lang/String;

.field private mCurrentKeyboardMode:I

.field private mCurrentLanguageIso3:Ljava/lang/String;

.field private mCurrentLanguageLayoutId:Ljava/lang/String;

.field private mCurrentResizeHeightPx:I

.field private mCurrentSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

.field private mFloatingKeyboardType:Ljava/lang/String;

.field private mFloatingRelativePosition:Landroid/graphics/PointF;

.field private mKeyPreviewEnabled:Z

.field private final mKeyboardPredictions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyboardResizeHeightMaxChangePx:I

.field private final mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

.field private final mLanguageLayouts:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private mLastBatteryLevelLogTime:J

.field private mLastLanguageSettingsUpdatedTime:J

.field private mLastSyncTriggeredTime:J

.field private final mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mOneHandedKeyboardPosition:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

.field private mPreviousFloatingKeyboardType:Ljava/lang/String;

.field private mPreviousResizeHeightPx:I

.field private mShowSecondaryPrints:Z

.field private mSmartLanguageDetection:Z

.field private mSoftwareKeyboardPrediction:Ljava/lang/String;

.field private final mUntestedLanguageIso3s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUntestedLanguageLayouts:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mUntestedLanguagesPhonepad:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUseNumericKeys:Z

.field private mUseOneHandedKeyboard:Z

.field private mUsePeriodAndComma:Z

.field private mUseSmiley:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p3, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p4, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .prologue
    .line 105
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;I)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p3, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p4, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p5, "overrideCurrentKeyboard"    # I

    .prologue
    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mKeyboardPredictions:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUntestedLanguageIso3s:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUntestedLanguagesPhonepad:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUntestedLanguageLayouts:Ljava/util/LinkedHashMap;

    .line 74
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLanguageLayouts:Ljava/util/LinkedHashMap;

    .line 76
    const-string v0, "eng"

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentLanguageIso3:Ljava/lang/String;

    .line 77
    const-string v0, "qwerty"

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentLanguageLayoutId:Ljava/lang/String;

    .line 78
    const-string v0, "singletap"

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentInputMethod:Ljava/lang/String;

    .line 80
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUseSmiley:Z

    .line 81
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUsePeriodAndComma:Z

    .line 82
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUseOneHandedKeyboard:Z

    .line 83
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUseNumericKeys:Z

    .line 84
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mShowSecondaryPrints:Z

    .line 90
    const/16 v0, 0x64

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mBatteryLevel:I

    .line 94
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mFloatingRelativePosition:Landroid/graphics/PointF;

    .line 95
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mSmartLanguageDetection:Z

    .line 113
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V

    .line 114
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 115
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 116
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 117
    if-ltz p5, :cond_0

    .line 118
    iput p5, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboardMode:I

    .line 119
    packed-switch p5, :pswitch_data_0

    .line 131
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The new keyboard version has not been added to the switch case in RandomSettings."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_LAYOUT_FULL_KEYBOARD:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboard:Ljava/lang/String;

    .line 135
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mKeyboardResizeHeightMaxChangePx:I

    .line 137
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->initSettings(Landroid/content/Context;Z)V

    .line 138
    return-void

    .line 124
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_LAYOUT_FULL_KEYBOARD_WITH_SECONDARY_PRINTS:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboard:Ljava/lang/String;

    goto :goto_0

    .line 128
    :pswitch_2
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_LAYOUT_PHONEPAD:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboard:Ljava/lang/String;

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$002(Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mPreviousFloatingKeyboardType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mFloatingKeyboardType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mFloatingKeyboardType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mPreviousResizeHeightPx:I

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method private static getFullKeyboardLayoutsFromLanguage(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .param p1, "languageIso3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    .line 152
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLayoutIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 153
    .local v0, "languageLayouts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "virtual-12key"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 154
    return-object v0
.end method

.method private getLayoutsDescription()Ljava/lang/String;
    .locals 6

    .prologue
    .line 346
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v2, "languagesDescription":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 348
    .local v1, "langSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 349
    .local v0, "lang":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/ned/util/StringUtil;->PERIOD:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 350
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 352
    .end local v0    # "lang":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getRandomKeyboardPrediction(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 253
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mKeyboardPredictions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 255
    .local v0, "res":Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mKeyboardPredictions:Ljava/util/ArrayList;

    const v2, 0x7f0701f2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mKeyboardPredictions:Ljava/util/ArrayList;

    const v2, 0x7f0701f6

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mKeyboardPredictions:Ljava/util/ArrayList;

    const v2, 0x7f0701f7

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mKeyboardPredictions:Ljava/util/ArrayList;

    const v2, 0x7f0701f4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mKeyboardPredictions:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mKeyboardPredictions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method private initLanguageSettings()V
    .locals 18

    .prologue
    .line 264
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v14}, Ljava/util/LinkedHashMap;->clear()V

    .line 265
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentLanguageIso3:Ljava/lang/String;

    .line 266
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentLanguageLayoutId:Ljava/lang/String;

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLastLanguageSettingsUpdatedTime:J

    .line 269
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpg-double v14, v14, v16

    if-gez v14, :cond_4

    const/4 v13, 0x1

    .line 271
    .local v13, "useMultipleLanguages":Z
    :goto_0
    const/4 v4, 0x0

    .line 272
    .local v4, "isPhonepad":Z
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboardMode:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_0

    .line 273
    const/4 v4, 0x1

    .line 276
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUntestedLanguageIso3s:Ljava/util/ArrayList;

    .line 277
    .local v12, "untestedLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUntestedLanguageLayouts:Ljava/util/LinkedHashMap;

    .line 278
    .local v11, "untestedLanguageLayouts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v4, :cond_1

    .line 279
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUntestedLanguagesPhonepad:Ljava/util/ArrayList;

    .line 280
    const/4 v11, 0x0

    .line 283
    :cond_1
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gtz v14, :cond_5

    .line 285
    if-nez v4, :cond_2

    .line 286
    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 288
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-virtual {v14}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageIso3s()[Ljava/lang/String;

    move-result-object v7

    .line 289
    .local v7, "languageIso3s":[Ljava/lang/String;
    array-length v15, v7

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_5

    aget-object v6, v7, v14

    .line 290
    .local v6, "languageIso3":Ljava/lang/String;
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    if-nez v4, :cond_3

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-object/from16 v16, v0

    .line 293
    move-object/from16 v0, v16

    invoke-static {v0, v6}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->getFullKeyboardLayoutsFromLanguage(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 292
    move-object/from16 v0, v16

    invoke-virtual {v11, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 269
    .end local v4    # "isPhonepad":Z
    .end local v6    # "languageIso3":Ljava/lang/String;
    .end local v7    # "languageIso3s":[Ljava/lang/String;
    .end local v11    # "untestedLanguageLayouts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v12    # "untestedLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "useMultipleLanguages":Z
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 299
    .restart local v4    # "isPhonepad":Z
    .restart local v11    # "untestedLanguageLayouts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .restart local v12    # "untestedLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "useMultipleLanguages":Z
    :cond_5
    if-eqz v13, :cond_9

    const/4 v14, 0x1

    new-instance v15, Ljava/util/Random;

    invoke-direct {v15}, Ljava/util/Random;-><init>()V

    const/16 v16, 0x3

    .line 300
    invoke-virtual/range {v15 .. v16}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    .line 299
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 302
    .local v10, "totalNumberOfLanguages":I
    :goto_2
    if-lez v10, :cond_b

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_b

    .line 303
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-int v5, v14

    .line 304
    .local v5, "languageIndex":I
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 305
    .local v2, "currentLanguageIso3":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentLanguageIso3:Ljava/lang/String;

    if-nez v14, :cond_6

    .line 306
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentLanguageIso3:Ljava/lang/String;

    .line 308
    :cond_6
    const/4 v3, 0x0

    .line 309
    .local v3, "currentLanguageLayoutId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_7

    .line 310
    if-nez v4, :cond_a

    .line 312
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 313
    .local v8, "languageLayoutIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    .line 314
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-int v9, v14

    .line 315
    .local v9, "languageLayoutIndex":I
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "currentLanguageLayoutId":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 316
    .restart local v3    # "currentLanguageLayoutId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-gtz v14, :cond_7

    .line 319
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 320
    invoke-virtual {v11, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .end local v8    # "languageLayoutIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "languageLayoutIndex":I
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentLanguageLayoutId:Ljava/lang/String;

    if-nez v14, :cond_8

    .line 329
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentLanguageLayoutId:Ljava/lang/String;

    .line 331
    :cond_8
    add-int/lit8 v10, v10, -0x1

    .line 332
    goto :goto_2

    .line 299
    .end local v2    # "currentLanguageIso3":Ljava/lang/String;
    .end local v3    # "currentLanguageLayoutId":Ljava/lang/String;
    .end local v5    # "languageIndex":I
    .end local v10    # "totalNumberOfLanguages":I
    :cond_9
    const/4 v10, 0x1

    goto :goto_2

    .line 323
    .restart local v2    # "currentLanguageIso3":Ljava/lang/String;
    .restart local v3    # "currentLanguageLayoutId":Ljava/lang/String;
    .restart local v5    # "languageIndex":I
    .restart local v10    # "totalNumberOfLanguages":I
    :cond_a
    const-string v3, "virtual-12key"

    .line 324
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLanguageLayouts:Ljava/util/LinkedHashMap;

    invoke-virtual {v14, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_3

    .line 339
    .end local v2    # "currentLanguageIso3":Ljava/lang/String;
    .end local v3    # "currentLanguageLayoutId":Ljava/lang/String;
    .end local v5    # "languageIndex":I
    :cond_b
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    cmpg-double v14, v14, v16

    if-gez v14, :cond_c

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mSmartLanguageDetection:Z

    .line 342
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v14}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->reinitialize()V

    .line 343
    return-void

    .line 339
    :cond_c
    const/4 v14, 0x0

    goto :goto_4
.end method

.method private initResizeSettings(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 183
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentResizeHeightPx:I

    .line 184
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fc99999a0000000L    # 0.20000000298023224

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 187
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mKeyboardResizeHeightMaxChangePx:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 188
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    mul-int/2addr v0, v1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentResizeHeightPx:I

    .line 190
    :cond_0
    return-void

    .line 188
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private initSettings(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "firstInit"    # Z

    .prologue
    .line 204
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->getRandomKeyboardPrediction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mSoftwareKeyboardPrediction:Ljava/lang/String;

    .line 205
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    .line 207
    .local v0, "keyboardTypeValue":D
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_4

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUseSmiley:Z

    .line 208
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_5

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUsePeriodAndComma:Z

    .line 209
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_6

    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUseOneHandedKeyboard:Z

    .line 210
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_7

    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->LEFT:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    :goto_3
    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mOneHandedKeyboardPosition:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 213
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_8

    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUseNumericKeys:Z

    .line 215
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 216
    new-instance v4, Landroid/graphics/PointF;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v5, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mFloatingRelativePosition:Landroid/graphics/PointF;

    .line 219
    :cond_0
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboardMode:I

    if-nez v4, :cond_1

    .line 220
    const-wide v4, 0x3fd3333333333333L    # 0.3

    cmpg-double v4, v0, v4

    if-gez v4, :cond_9

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 221
    const/4 v4, 0x2

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboardMode:I

    .line 222
    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_LAYOUT_PHONEPAD:Ljava/lang/String;

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboard:Ljava/lang/String;

    .line 223
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mShowSecondaryPrints:Z

    .line 236
    :cond_1
    :goto_5
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_b

    const-string v4, "singletap"

    :goto_6
    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentInputMethod:Ljava/lang/String;

    .line 238
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils;->getSupportedSkinNames()[Ljava/lang/String;

    move-result-object v3

    .line 239
    .local v3, "skins":[Ljava/lang/String;
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    array-length v5, v3

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 240
    .local v2, "skinIndex":I
    aget-object v4, v3, v2

    invoke-static {v4, p1}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSkin(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .line 242
    if-eqz p2, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->initLanguageSettings()V

    .line 244
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->logBatteryLevel(Landroid/content/Context;)V

    .line 247
    :cond_2
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 248
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_c

    const/4 v4, 0x1

    :goto_7
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mKeyPreviewEnabled:Z

    .line 250
    :cond_3
    return-void

    .line 207
    .end local v2    # "skinIndex":I
    .end local v3    # "skins":[Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 208
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 209
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 210
    :cond_7
    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->RIGHT:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    goto/16 :goto_3

    .line 213
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 224
    :cond_9
    const-wide v4, 0x3fe3333333333333L    # 0.6

    cmpg-double v4, v0, v4

    if-gez v4, :cond_a

    .line 225
    const/4 v4, 0x1

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboardMode:I

    .line 226
    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_LAYOUT_FULL_KEYBOARD:Ljava/lang/String;

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboard:Ljava/lang/String;

    .line 227
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mShowSecondaryPrints:Z

    goto :goto_5

    .line 229
    :cond_a
    const/4 v4, 0x3

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboardMode:I

    .line 230
    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_LAYOUT_FULL_KEYBOARD_WITH_SECONDARY_PRINTS:Ljava/lang/String;

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboard:Ljava/lang/String;

    .line 232
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mShowSecondaryPrints:Z

    goto :goto_5

    .line 236
    :cond_b
    const-string v4, "multitap"

    goto :goto_6

    .line 248
    .restart local v2    # "skinIndex":I
    .restart local v3    # "skins":[Ljava/lang/String;
    :cond_c
    const/4 v4, 0x0

    goto :goto_7
.end method

.method private logBatteryLevel(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, -0x1

    .line 356
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 358
    .local v0, "batteryLevelChangedFilter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 360
    .local v1, "batteryStatus":Landroid/content/Intent;
    const/4 v2, -0x1

    .line 361
    .local v2, "level":I
    const/4 v3, -0x1

    .line 362
    .local v3, "scale":I
    if-eqz v1, :cond_0

    .line 363
    const-string v4, "level"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 364
    const-string v4, "scale"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 367
    :cond_0
    if-ltz v2, :cond_1

    if-lez v3, :cond_1

    .line 368
    mul-int/lit8 v4, v2, 0x64

    div-int/2addr v4, v3

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mBatteryLevel:I

    .line 378
    :goto_0
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mBatteryLevel:I

    const/4 v5, 0x5

    if-ge v4, v5, :cond_2

    .line 379
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "To low batterylevel, monkey aborted"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 370
    :cond_1
    iput v5, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mBatteryLevel:I

    goto :goto_0

    .line 381
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLastBatteryLevelLogTime:J

    .line 382
    return-void
.end method

.method private triggerSync()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLastSyncTriggeredTime:J

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 195
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastSyncTime()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 196
    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastSyncTime(J)V

    .line 197
    invoke-interface {v0, v4, v5}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastBackupTimeDynamicModel(J)V

    .line 199
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudSyncTryCount(I)V

    .line 200
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 201
    return-void
.end method


# virtual methods
.method public deleteLegacyKeys(Ljava/lang/String;)V
    .locals 0
    .param p1, "legacyPrefix"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 671
    return-void
.end method

.method public edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    .locals 2

    .prologue
    .line 788
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 790
    .local v0, "normalEditor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings$1;-><init>(Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;)V

    return-object v1
.end method

.method public getActiveDaysBeforeCloud()I
    .locals 1

    .prologue
    .line 690
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveDaysTimestamp()J
    .locals 2

    .prologue
    .line 512
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getActiveLanguageLayouts()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLanguageLayouts:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getAutoAcceptHintCounter()I
    .locals 1

    .prologue
    .line 502
    const/4 v0, 0x5

    return v0
.end method

.method public getAutoDictionaryUpdateMode()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 743
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->OFF:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    return-object v0
.end method

.method public getAvailableDictionaryUpdates()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 710
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getCloudAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCloudLoginIdToken()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudLoginIdToken()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    move-result-object v0

    return-object v0
.end method

.method public getCloudSyncTryCount()I
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudSyncTryCount()I

    move-result v0

    return v0
.end method

.method public getCurrentNumberOfDevices()I
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCurrentNumberOfDevices()I

    move-result v0

    return v0
.end method

.method public getCurrentThemeInfo()Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 534
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDaysActiveCounter()I
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    return v0
.end method

.method public getDictionariesWaitingForNetwork()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 737
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getDictionariesWaitingForWiFi()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 731
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getFloatingKeyboardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mFloatingKeyboardType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mFloatingKeyboardType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFloatingMiniRelativePosition()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mFloatingRelativePosition:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getHasAgreedToDictionaryDownload()Z
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x0

    return v0
.end method

.method public getHasShownDictionaryDownloadDialog()Z
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    return v0
.end method

.method public getInputMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentInputMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getInputMethodEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentInputMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getIsWaitForWifiCheckboxChecked()Z
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyboardOpeningsCounter()I
    .locals 1

    .prologue
    .line 626
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyboardOpeningsWithDiscontinuedNpamCounter()I
    .locals 1

    .prologue
    .line 773
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyboardResizeHeightPxCurrent()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentResizeHeightPx:I

    return v0
.end method

.method public getKeyboardResizeHeightPxPrevious()I
    .locals 1

    .prologue
    .line 646
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mPreviousResizeHeightPx:I

    return v0
.end method

.method public getKeyboardSkin()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 528
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguageToggleHintShown()Z
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x1

    return v0
.end method

.method public getLanguagesUpdateDictionaryNotificationCount()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 778
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getLastBackupTimeDynamicModel()J
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastBackupTimeDynamicModel()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastDictionaryListRefreshTime()J
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastDictionaryListRefreshTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastDictionaryListVerifyTime()J
    .locals 2

    .prologue
    .line 753
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastDictionaryListVerifyTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastSnapshotActiveDay()I
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getDaysActiveCounter()I

    move-result v0

    return v0
.end method

.method public getLastSyncTime()J
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastSyncTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastTimeCloudAccessTokenRenewed()J
    .locals 2

    .prologue
    .line 574
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastTimeCloudAccessTokenRenewed()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastUsedEmojiTabPosition()I
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastUsedEmojiTabPosition()I

    move-result v0

    return v0
.end method

.method public getNumberOfHttpRequests()I
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getNumberOfHttpRequests()I

    move-result v0

    return v0
.end method

.method public getOneHandedKeyboardPosition()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mOneHandedKeyboardPosition:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    return-object v0
.end method

.method public getOtherDevicesInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getOtherDevicesInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPersonalizerPreviousState(Ljava/lang/String;I)I
    .locals 1
    .param p1, "personalizer"    # Ljava/lang/String;
    .param p2, "defaultState"    # I

    .prologue
    .line 656
    const/4 v0, 0x0

    return v0
.end method

.method public getPersonalizerState(Ljava/lang/String;)I
    .locals 1
    .param p1, "personalizer"    # Ljava/lang/String;

    .prologue
    .line 651
    const/4 v0, 0x0

    return v0
.end method

.method public getPhonepadSymbolKbdInitialState(Ljava/lang/String;)I
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 487
    const/4 v0, 0x0

    return v0
.end method

.method public getPortraitKeyboard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboard:Ljava/lang/String;

    return-object v0
.end method

.method public getPortraitKeyboardMode()I
    .locals 1

    .prologue
    .line 435
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboardMode:I

    return v0
.end method

.method public getPredictionEngine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 606
    const-string v0, "swift-key"

    return-object v0
.end method

.method public getPreviousFloatingKeyboardType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mPreviousFloatingKeyboardType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mPreviousFloatingKeyboardType:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_MINI:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrimaryLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentLanguageIso3:Ljava/lang/String;

    return-object v0
.end method

.method public getRefreshCloudAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getRefreshCloudAccessToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSetupWizardShown()Z
    .locals 1

    .prologue
    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public getSoftwareKeyboardPrediction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mSoftwareKeyboardPrediction:Ljava/lang/String;

    return-object v0
.end method

.method public getSoundFeedbackVolume()I
    .locals 1

    .prologue
    .line 522
    const/4 v0, 0x0

    return v0
.end method

.method public getSwapPunctuationHintCounter()I
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x5

    return v0
.end method

.method public getTraceAutoAccept()Z
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public getUpgradeVisualizationShown()Z
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x1

    return v0
.end method

.method public getUsedLatinLanguageLayouts()Ljava/util/Set;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x0

    return v0
.end method

.method public getVibratorDuration()I
    .locals 1

    .prologue
    .line 517
    const/4 v0, 0x0

    return v0
.end method

.method public hasShownCloudNudge()Z
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x0

    return v0
.end method

.method public isBackupAndSyncDataOld()Z
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncDataOld()Z

    move-result v0

    return v0
.end method

.method public isBackupAndSyncEnabled()Z
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v0

    return v0
.end method

.method public isCandidateSelectionAutoSpaceEnabled()Z
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyPreviewEnabled()Z
    .locals 1

    .prologue
    .line 685
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mKeyPreviewEnabled:Z

    return v0
.end method

.method public isNpamRemovedDialogShown()Z
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x1

    return v0
.end method

.method public isNumericKeysEnabled()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUseNumericKeys:Z

    return v0
.end method

.method public isOneHandedKeyboard()Z
    .locals 1

    .prologue
    .line 584
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUseOneHandedKeyboard:Z

    return v0
.end method

.method public isPeriodAndCommaKeysEnabled()Z
    .locals 1

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUsePeriodAndComma:Z

    return v0
.end method

.method public isPortraitKeybordPhonepad()Z
    .locals 2

    .prologue
    .line 611
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboardMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPredictionAutoReplaceEnabled()Z
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    return v0
.end method

.method public isSecondaryPrintsEnabled()Z
    .locals 1

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mShowSecondaryPrints:Z

    return v0
.end method

.method public isSmartLanguageDetection()Z
    .locals 1

    .prologue
    .line 758
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mSmartLanguageDetection:Z

    return v0
.end method

.method public isSmileyKeyEnabled()Z
    .locals 1

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUseSmiley:Z

    return v0
.end method

.method public isSoundFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .prologue
    .line 492
    const/4 v0, 0x0

    return v0
.end method

.method public isVoiceInputEnabled()Z
    .locals 1

    .prologue
    .line 410
    const/4 v0, 0x0

    return v0
.end method

.method public onReportDebugInformation(Lcom/sonyericsson/collaboration/OnDebugListener$Logger;)V
    .locals 3
    .param p1, "logger"    # Lcom/sonyericsson/collaboration/OnDebugListener$Logger;

    .prologue
    .line 1107
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    const-string v1, "PredictionEngine = swift-key"

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentKeyboard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboard:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentKeyboardMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentKeyboardMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1110
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentLanguageIso3 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentLanguageIso3:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentLanguageLayoutId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentLanguageLayoutId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLanguageLayouts = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->getLayoutsDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentInputMethod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentInputMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurrentSkin = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mCurrentSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUseSmiley = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUseSmiley:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUsePeriodAndComma = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUsePeriodAndComma:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUseNumericKeys = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUseNumericKeys:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    const-string v1, "BilingualSecondaryLanguage = none"

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUseOneHandedKeyboard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mUseOneHandedKeyboard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOneHandedKeyboardPosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mOneHandedKeyboardPosition:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFloatingKeyboardType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mFloatingKeyboardType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFloatingRelativePosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mFloatingRelativePosition:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShowSecondaryPrints = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mShowSecondaryPrints:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSmartLanguageDetection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mSmartLanguageDetection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    return-void
.end method

.method public registerListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    .prologue
    .line 661
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->registerListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V

    .line 662
    return-void
.end method

.method public reinitSettings(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->initSettings(Landroid/content/Context;Z)V

    .line 166
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLastLanguageSettingsUpdatedTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 168
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->initResizeSettings(Landroid/content/Context;)V

    .line 169
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->initLanguageSettings()V

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLastSyncTriggeredTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x2bf20

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->triggerSync()V

    .line 177
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mLastBatteryLevelLogTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 178
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->logBatteryLevel(Landroid/content/Context;)V

    .line 180
    :cond_2
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 783
    return-void
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 386
    return-void
.end method

.method public unregisterListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    .prologue
    .line 666
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/RandomSettings;->mNormalSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->unregisterListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V

    .line 667
    return-void
.end method
