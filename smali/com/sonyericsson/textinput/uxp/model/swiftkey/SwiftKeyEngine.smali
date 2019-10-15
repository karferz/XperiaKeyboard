.class public final Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"

# interfaces
.implements Lcom/sonyericsson/ned/model/IPredictive;
.implements Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProviderListener;
.implements Lcom/sonyericsson/collaboration/ManagedRebindable;
.implements Lcom/sonyericsson/ned/model/ITextBufferListener;
.implements Lcom/sonyericsson/ned/controller/ICursorListener;
.implements Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;
.implements Lcom/sonyericsson/ned/model/IUserDictionary;
.implements Lcom/sonyericsson/ned/controller/IWordSuggesterListener;
.implements Lcom/sonyericsson/ned/controller/ICaseSuggestionListener;
.implements Lcom/sonyericsson/ned/model/ILoadDictionaryListener;
.implements Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$LoadDictionaryCallback;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$WriteDynamicModelRunnable;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$NoPendingPredictionsNotifier;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$Factory;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SwiftKeyDebugLog;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$OnWordsRemovedListener;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;
    }
.end annotation


# static fields
.field private static final BLACKLIST_FILE_NAME:Ljava/lang/String; = "/blacklist"

.field private static final CHARACTERMAP_JSON:Ljava/lang/String; = "/charactermap.json"

.field private static final CREDIT_CARD_EXCLUSIONS_PATTERN:Ljava/lang/String; = "((\\d{3,4}[ -]?){3,4}\\d{3,4})"

.field private static final DEBUG:Z = false

.field private static final DEBUG_PREDICTION:Z = false

.field private static final DEBUG_VERBOSE:Z = false

.field private static final EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

.field private static final FLOATING_KEYBOARD_TYPE_VERSION_MINI:Ljava/lang/String; = "-v3"

.field private static final FULL_KEYBOARD_VERSION:Ljava/lang/String; = "-v9"

.field private static final KEYPRESS_MODEL_PREFIX:Ljava/lang/String; = "/keypress-model-"

.field public static final LICENSE:Ljava/lang/String; = "SEMC_nolimit_flow_parameter_7497782f"

.field private static final MAX_NUMBER_OF_CONTACT_SPECIFIC_MODELS:I = 0x1e

.field private static final MAX_TOUCH_HISTORY_SIZE:I = 0x1f4

.field private static final MODEL_SIZE_PREFIX:Ljava/lang/String; = "-size"

.field private static final NUMBER_OF_DESIRED_CANDIDATES:I = 0x14

.field private static final NUMBER_OF_EXACT_MATCHES:I = 0x2

.field private static final ONEHANDED_CONFIDENCE_FACTOR:F = 0.45f

.field private static final ONE_HANDED:Ljava/lang/String; = "-one-handed-v3-"

.field private static final PROBABILITY_FACTOR_FOR_UPPER_CASE_CANDIDATES:F = 0.4f

.field private static final PRUNE_CONTACTS_TO:I = 0x14

.field private static final PUNCTUATION_ARMENIAN_JSON_FILE:Ljava/lang/String; = "punctuation_armenian.json"

.field private static final PUNCTUATION_DEFAULT_JSON_FILE:Ljava/lang/String; = "punctuation_default.json"

.field private static final PUNCTUATION_GREEK_JSON_FILE:Ljava/lang/String; = "punctuation_greek.json"

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SCREEN_DENSITY_PREFIX:Ljava/lang/String; = "-dens"

.field public static final SPACE_SCALE_FACTOR_FOR_TYPING:F = 1.2f

.field public static final SWIFT_KEY:Ljava/lang/String; = "swift-key"

.field private static final SWIPE_TROUGH_SPACE_DISABLE_FACTOR:F = 0.0f

.field private static final TAG:Ljava/lang/String;

.field private static final WITH_NUMERIC_KEYS:Ljava/lang/String; = "-with-numeric-keys-v4"

.field private static final mPredictionExecutor:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;

.field private static sDictionaryConfigurationListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

.field private static final sHistory:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

.field private static final sInstanceLock:Ljava/lang/Object;

.field private static final sIntentionalEventsLock:Ljava/lang/Object;

.field private static volatile sIsSessionDestructionPending:Z


# instance fields
.field private mAppFilesDir:Ljava/lang/String;

.field private mCaseLanguage:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentPunctuationRule:Ljava/lang/String;

.field private final mCurrentlyLoadingLanguages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;"
        }
    .end annotation
.end field

.field private mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

.field private mEnableLearning:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInputMethodServiceGlue:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

.field private mInputModeAdvisor:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

.field private mIntentionalEvents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActive:Z

.field private mIsCloudWorkModelCreated:Z

.field private mIsDynamicModelLoaded:Z

.field private mIsOneHandedKeyboard:Z

.field private mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

.field private mKeyPressModelPath:Ljava/lang/String;

.field private mKeyProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

.field private mKeyResourceProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

.field public mKeyboardType:Ljava/lang/String;

.field private mKeys:[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

.field private final mKeysComparator:Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;

.field private mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

.field private mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

.field private mLastTextAfterCursor:Lcom/sonyericsson/ned/model/CodePointString;

.field private mLastTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

.field private mLatinLanguageCount:I

.field private final mLayoutFilter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/CodepointRange;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadDictionaryListeners:[Lcom/sonyericsson/ned/model/ILoadDictionaryListener;

.field private final mLoadLanguageLock:Ljava/lang/Object;

.field private final mLoadProgressListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;

.field private final mLoadedLanguages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMakeDynamicModelBackup:Z

.field private mMaxCandidates:I

.field private final mMyWordsTagSelector:Lcom/touchtype_fluency/TagSelector;

.field private mPointCount:I

.field private mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

.field private mPredictionEngineListeners:[Lcom/sonyericsson/ned/model/IPredictionEngineListener;

.field private final mPredictionListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/controller/IPredictionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictiveKeyProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProvider;

.field private mPrimaryLanguageScript:Ljava/lang/String;

.field private mRebind:Z

.field private mRemoveWordsTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;

.field private final mSaveKeyPressModelLock:Ljava/lang/Object;

.field private mSetUpAndLoadCharacterMapTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mShiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

.field private mShouldSaveModel:Z

.field private mSpaceLanguage:Z

.field private mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

.field private mSymbols:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagSelector:Lcom/touchtype_fluency/TagSelector;

.field private mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

.field private mUnsyncedMessagesDatabase:Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

.field private final mVietnameseHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;

.field private mWhiteListDatabase:Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 157
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionExecutor:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->TAG:Ljava/lang/String;

    .line 203
    const-string v0, "((\\d{3,4}[ -]?){3,4}\\d{3,4})"

    .line 204
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    .line 207
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/ned/model/ITextBuffer;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProvider;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/sonyericsson/ned/model/ILoadDictionaryListener;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-class v2, Lcom/sonyericsson/ned/controller/IWordNotInDictionaryListener;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-class v2, Lcom/sonyericsson/ned/model/IPredictionEngineListener;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->REQUIRED:[Ljava/lang/Class;

    .line 216
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sHistory:Ljava/util/LinkedHashMap;

    .line 218
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstanceLock:Ljava/lang/Object;

    .line 219
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sIntentionalEventsLock:Ljava/lang/Object;

    .line 222
    sput-boolean v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sIsSessionDestructionPending:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadLanguageLock:Ljava/lang/Object;

    .line 233
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSaveKeyPressModelLock:Ljava/lang/Object;

    .line 234
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeysComparator:Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;

    .line 235
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mMyWordsTagSelector:Lcom/touchtype_fluency/TagSelector;

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLayoutFilter:Ljava/util/List;

    .line 259
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadedLanguages:Ljava/util/Set;

    .line 263
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCurrentlyLoadingLanguages:Ljava/util/Set;

    .line 264
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mHandler:Landroid/os/Handler;

    .line 265
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadProgressListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;

    .line 267
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mVietnameseHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;

    .line 268
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionListeners:Ljava/util/ArrayList;

    .line 282
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 283
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextAfterCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 286
    const-string v1, ""

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModelPath:Ljava/lang/String;

    .line 287
    const-string v1, ""

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPrimaryLanguageScript:Ljava/lang/String;

    .line 303
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mShouldSaveModel:Z

    .line 306
    const-string v1, ""

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCurrentPunctuationRule:Ljava/lang/String;

    .line 312
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$2;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mTagSelector:Lcom/touchtype_fluency/TagSelector;

    .line 349
    :try_start_0
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-direct {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 350
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    const-string v3, "SEMC_nolimit_flow_parameter_7497782f"

    .line 351
    invoke-static {v3}, Lcom/touchtype_fluency/util/SwiftKeySession;->create(Ljava/lang/String;)Lcom/touchtype_fluency/util/SwiftKeySession;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;-><init>(Lcom/touchtype_fluency/util/SwiftKeySession;)V

    .line 350
    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setSwiftKeySession(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;)V

    .line 352
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v1

    new-instance v2, Lcom/touchtype_fluency/util/ExclusionPattern;

    const-string v3, "((\\d{3,4}[ -]?){3,4}\\d{3,4})"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/touchtype_fluency/util/ExclusionPattern;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->setExclusionPattern(Lcom/touchtype_fluency/util/ExclusionPattern;)V
    :try_end_0
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_0
    return-void

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Lcom/touchtype_fluency/LicenseException;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/touchtype_fluency/LicenseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->updatePredictionData(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;[Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p1, "x1"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "x2"    # Lcom/sonyericsson/ned/controller/PredictionType;

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->fireOnPredictionsAvailable([Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V

    return-void
.end method

.method static synthetic access$1200()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionExecutor:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isVietnamese(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$2300()V
    .locals 0

    .prologue
    .line 140
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->ensureInstance()V

    return-void
.end method

.method static synthetic access$2402(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mEnableLearning:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mMakeDynamicModelBackup:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsOneHandedKeyboard:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsOneHandedKeyboard:Z

    return p1
.end method

.method static synthetic access$2700()Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sHistory:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p1, "x1"    # I

    .prologue
    .line 140
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mMaxCandidates:I

    return p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->shallOnlyPrimaryLanguageBeEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Landroid/content/Context;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    invoke-static {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createEngineAndLoadDynamicModel(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$3400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;
    .param p2, "x2"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p3, "x3"    # Ljava/util/Set;

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->loadDictionaries(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$3500()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstanceLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    .prologue
    .line 140
    sput-object p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sDictionaryConfigurationListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isValidLocalSession()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800()Z
    .locals 1

    .prologue
    .line 140
    sget-boolean v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sIsSessionDestructionPending:Z

    return v0
.end method

.method static synthetic access$3900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sIntentionalEventsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIntentionalEvents:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Ljava/util/Set;Z)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p1, "x1"    # Ljava/util/Set;
    .param p2, "x2"    # Z

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createKeyCharacterMap(Ljava/util/Set;Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadLanguageLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCurrentlyLoadingLanguages:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadProgressListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/touchtype_fluency/Predictor;Ljava/util/Map;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p1, "x1"    # Lcom/touchtype_fluency/Predictor;
    .param p2, "x2"    # Ljava/util/Map;
    .param p3, "x3"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->loadCharacterMaps(Lcom/touchtype_fluency/Predictor;Ljava/util/Map;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addPictogramsToLayoutFilter()V

    return-void
.end method

.method static synthetic access$4900(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLayoutFilter:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->fireOnPredictionEngineReadyToPredict()V

    return-void
.end method

.method static synthetic access$5100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->fireOnNoPendingPredictions()V

    return-void
.end method

.method static synthetic access$5200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadedLanguages:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSaveKeyPressModelLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mShouldSaveModel:Z

    return v0
.end method

.method static synthetic access$5500(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModelPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/touchtype_fluency/TagSelector;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mTagSelector:Lcom/touchtype_fluency/TagSelector;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->fireOnDictionariesLoaded()V

    return-void
.end method

.method static synthetic access$5800(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method static synthetic access$5802(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p1, "x1"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)Lcom/sonyericsson/ned/model/ITextBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createEngineAndLoadDynamicModel(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createCloudWorkModel(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$800()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .param p1, "x1"    # Z

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsCloudWorkModelCreated:Z

    return p1
.end method

.method private static addCandidatesToRange([ILjava/util/List;)V
    .locals 4
    .param p0, "candidates"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/CodepointRange;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "ranges":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/CodepointRange;>;"
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p0, v1

    .line 557
    .local v0, "candidate":I
    new-instance v3, Lcom/touchtype_fluency/CodepointRange;

    invoke-direct {v3, v0, v0}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 559
    .end local v0    # "candidate":I
    :cond_0
    return-void
.end method

.method private addCharacterMap(Lcom/touchtype_fluency/Predictor;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .param p1, "predictor"    # Lcom/touchtype_fluency/Predictor;
    .param p2, "language"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/charactermap.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1729
    .local v1, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1731
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1732
    invoke-interface {p1}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/touchtype_fluency/InputMapper;->addCharacterMap(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1738
    if-eqz v2, :cond_0

    .line 1740
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1746
    :cond_0
    :goto_0
    return-void

    .line 1741
    :catch_0
    move-exception v0

    .line 1742
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1733
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 1738
    if-eqz v2, :cond_0

    .line 1740
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1741
    :catch_2
    move-exception v0

    .line 1742
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1735
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 1736
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1738
    if-eqz v2, :cond_0

    .line 1740
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 1741
    :catch_4
    move-exception v0

    .line 1742
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1738
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    .line 1740
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1743
    :cond_1
    :goto_2
    throw v3

    .line 1741
    :catch_5
    move-exception v0

    .line 1742
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 1735
    .end local v0    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v3

    move-object v0, v3

    goto :goto_1
.end method

.method private addHistory(Lcom/sonyericsson/ned/model/CodePointString;Lcom/touchtype_fluency/TouchHistory;)V
    .locals 5
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "inputBuffer"    # Lcom/touchtype_fluency/TouchHistory;

    .prologue
    .line 858
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sHistory:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 863
    :try_start_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sHistory:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sHistory:Ljava/util/LinkedHashMap;

    new-instance v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;

    .line 866
    invoke-virtual {p2}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v0

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getExactMatch()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 867
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getExactMatch()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 868
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getResultFilter()Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v4

    invoke-direct {v3, p2, v0, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;-><init>(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/String;Lcom/touchtype_fluency/ResultsFilter;)V

    .line 864
    invoke-virtual {v2, p1, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    monitor-exit v1

    .line 875
    return-void

    .line 867
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 874
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private addPictogramsToLayoutFilter()V
    .locals 6

    .prologue
    .line 1606
    sget-object v1, Lcom/sonyericsson/ned/util/SemcTextUtil;->ALL_PICTOGRAM_RANGES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;

    .line 1607
    .local v0, "pictogramRange":Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLayoutFilter:Ljava/util/List;

    new-instance v3, Lcom/touchtype_fluency/CodepointRange;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;->getStartPosition()I

    move-result v4

    .line 1608
    invoke-virtual {v0}, Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;->getEndPosition()I

    move-result v5

    invoke-direct {v3, v4, v5}, Lcom/touchtype_fluency/CodepointRange;-><init>(II)V

    .line 1607
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1610
    .end local v0    # "pictogramRange":Lcom/sonyericsson/ned/util/SemcTextUtil$PictogramRange;
    :cond_0
    return-void
.end method

.method public static addSequence(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .param p0, "sequence"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 551
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createEngineAndLoadDynamicModel(Landroid/content/Context;)V

    .line 552
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addSequence(Ljava/lang/String;ZLjava/lang/String;)V

    .line 553
    return-void
.end method

.method private addSequence(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 8
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "whiteList"    # Z
    .param p3, "fieldHint"    # Ljava/lang/String;

    .prologue
    .line 1369
    move-object v0, p3

    .line 1370
    .local v0, "currentFieldHint":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1371
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getContactId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getContactId()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    .line 1372
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1373
    const/4 v0, 0x0

    .line 1375
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v5

    sget-object v6, Lcom/touchtype_fluency/Sequence$Type;->MESSAGE_START:Lcom/touchtype_fluency/Sequence$Type;

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1376
    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getContactId()Ljava/lang/String;

    move-result-object v7

    .line 1375
    invoke-virtual {v5, p1, v6, v7, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->isSmartLanguageDetection()Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz p2, :cond_3

    .line 1385
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v5

    .line 1386
    invoke-interface {v5}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v2

    .line 1387
    .local v2, "tokenizer":Lcom/touchtype_fluency/Tokenizer;
    invoke-interface {v2, p1}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v4

    .line 1388
    .local v4, "words":Lcom/touchtype_fluency/Sequence;
    invoke-virtual {v4}, Lcom/touchtype_fluency/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/Term;

    .line 1389
    .local v1, "term":Lcom/touchtype_fluency/Term;
    invoke-virtual {v1}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v3

    .line 1390
    .local v3, "word":Ljava/lang/String;
    const/4 v6, 0x1

    invoke-direct {p0, v3, v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isAllowedPrediction(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1391
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mWhiteListDatabase:Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    invoke-interface {v6, v7, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;->putWord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1395
    .end local v1    # "term":Lcom/touchtype_fluency/Term;
    .end local v2    # "tokenizer":Lcom/touchtype_fluency/Tokenizer;
    .end local v3    # "word":Ljava/lang/String;
    .end local v4    # "words":Lcom/touchtype_fluency/Sequence;
    :cond_3
    return-void
.end method

.method private addTouchHistoryMultiCharacter(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 1
    .param p1, "primaryCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 1982
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addTouchHistoryMultiCharacter(Ljava/lang/String;)V

    .line 1983
    return-void
.end method

.method private addTouchHistoryMultiCharacter(Ljava/lang/String;)V
    .locals 2
    .param p1, "multiCharacter"    # Ljava/lang/String;

    .prologue
    .line 1986
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isIntentionalEvent(Ljava/lang/String;)Z

    move-result v0

    .line 1987
    .local v0, "isIntentional":Z
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/touchtype_fluency/TouchHistory;->addMultiCharacter(Ljava/lang/String;Z)V

    .line 1988
    return-void
.end method

.method private addTouchHistoryPress([IJ)V
    .locals 4
    .param p1, "points"    # [I
    .param p2, "pointTime"    # J

    .prologue
    .line 1991
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v0

    new-instance v1, Lcom/touchtype_fluency/Point;

    const/4 v2, 0x0

    aget v2, p1, v2

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    sget-object v2, Lcom/touchtype_fluency/TouchHistory$ShiftState;->UNSHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/touchtype_fluency/TouchHistory;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;J)V

    .line 1993
    return-void
.end method

.method public static addWord(Lcom/sonyericsson/ned/model/CodePointString;Landroid/content/Context;)V
    .locals 1
    .param p0, "word"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 628
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createEngineAndLoadDynamicModel(Landroid/content/Context;)V

    .line 629
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addWord(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 630
    return-void
.end method

.method private appendTouchHistorySample(Lcom/touchtype_fluency/Point;J)V
    .locals 2
    .param p1, "point"    # Lcom/touchtype_fluency/Point;
    .param p2, "pointTime"    # J

    .prologue
    .line 1996
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/touchtype_fluency/TouchHistory;->appendSample(Lcom/touchtype_fluency/Point;J)V

    .line 1997
    return-void
.end method

.method public static clearUserData(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 568
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->ensureInstance()V

    .line 571
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 572
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v1

    .line 573
    .local v1, "swiftKeyLanguagePackHandler":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-object v3, v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v3

    .line 574
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->clearUserData(Lcom/touchtype_fluency/util/LanguagePackManager;)V

    .line 575
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createWhiteListDatabase()Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;

    move-result-object v2

    .line 576
    .local v2, "whiteListDatabase":Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;
    invoke-interface {v2, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;->clearDatabase(Landroid/content/Context;)V

    .line 577
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindwhiteListDatabase(Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;)V
    :try_end_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 581
    .end local v1    # "swiftKeyLanguagePackHandler":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .end local v2    # "whiteListDatabase":Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;
    :goto_0
    return-void

    .line 578
    :catch_0
    move-exception v0

    .line 579
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 578
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private compareWithShifted()Z
    .locals 1

    .prologue
    .line 933
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isShifted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCaseLanguage:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private convertAndResetTouchHistory()V
    .locals 3

    .prologue
    .line 1595
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getExactMatch()Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1598
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    .line 1597
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

    invoke-interface {v0}, Lcom/touchtype_fluency/KeyPressModel;->set()V

    .line 1602
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

    .line 1603
    return-void
.end method

.method private static createCloudWorkModel(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 614
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->ensureInstance()V

    .line 615
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsCloudWorkModelCreated:Z

    if-nez v0, :cond_0

    .line 616
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->ensureCreatePersistentCloudWorkModel(Landroid/content/Context;)V

    .line 618
    :cond_0
    return-void
.end method

.method private static createEngineAndLoadDynamicModel(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 610
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createEngineAndLoadDynamicModel(Landroid/content/Context;Z)V

    .line 611
    return-void
.end method

.method private static createEngineAndLoadDynamicModel(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "doRepairDynamicModelIfNeeded"    # Z

    .prologue
    .line 585
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->ensureInstance()V

    .line 586
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-boolean v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsDynamicModelLoaded:Z

    if-nez v0, :cond_0

    .line 587
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->ensureCreateOrLoadPersistentDynamicModel(Landroid/content/Context;Z)V

    .line 590
    :cond_0
    return-void
.end method

.method private createKeyCharacterMap(Ljava/util/Set;Z)Ljava/util/Map;
    .locals 10
    .param p2, "removePrimaryCandidatesFromIntentionalEvents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "intentionalEvents":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 1436
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 1437
    .local v1, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLayoutFilter:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1438
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v0, v4, v2

    .line 1439
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    iget v6, v0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->type:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 1440
    iget-object v6, v0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLayoutFilter:Ljava/util/List;

    invoke-static {v6, v7}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addCandidatesToRange([ILjava/util/List;)V

    .line 1441
    iget-object v6, v0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->shiftedCandidates:[I

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLayoutFilter:Ljava/util/List;

    invoke-static {v6, v7}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addCandidatesToRange([ILjava/util/List;)V

    .line 1442
    iget-object v6, v0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    array-length v6, v6

    if-le v6, v9, :cond_0

    .line 1443
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getPrimaryCandidates()[I

    move-result-object v7

    aget v7, v7, v3

    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    iget-object v7, v0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    iget-object v8, v0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    array-length v8, v8

    .line 1444
    invoke-static {v7, v9, v8}, Lcom/sonyericsson/ned/model/CodePointString;->toStringArray([III)[Ljava/lang/String;

    move-result-object v7

    .line 1443
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    :cond_0
    if-eqz p2, :cond_1

    .line 1448
    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    aget v7, v7, v3

    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1449
    iget-object v6, v0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->shiftedCandidates:[I

    array-length v6, v6

    if-lez v6, :cond_1

    .line 1450
    new-instance v6, Ljava/lang/String;

    iget-object v7, v0, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->shiftedCandidates:[I

    aget v7, v7, v3

    invoke-static {v7}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    invoke-interface {p1, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1438
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1456
    .end local v0    # "key":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    :cond_2
    return-object v1
.end method

.method private createNewTouchHistory(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 6
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 2138
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    new-instance v2, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v2}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 2139
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toIntArray()[I

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget v0, v2, v1

    .line 2140
    .local v0, "character":I
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v4

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/touchtype_fluency/TouchHistory;->addCharacter(Ljava/lang/Character;)V

    .line 2139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2142
    .end local v0    # "character":I
    :cond_0
    return-void
.end method

.method private deleteOldHeatMaps(I)V
    .locals 10
    .param p1, "keyboardResizeHeightPxCurrent"    # I

    .prologue
    .line 1649
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v7}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getKeyboardResizeHeightPxPrevious()I

    move-result v3

    .line 1650
    .local v3, "keyboardResizeHeightPxPrevious":I
    if-eq p1, v3, :cond_1

    .line 1652
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900e9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1654
    .local v2, "keyboardHeightMaxChangePx":I
    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-eq v7, v2, :cond_0

    .line 1657
    new-instance v1, Ljava/io/File;

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mAppFilesDir:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1658
    .local v1, "heatMapFolder":Ljava/io/File;
    new-instance v7, Lorg/apache/commons/io/filefilter/SuffixFileFilter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-size"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/commons/io/filefilter/SuffixFileFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v6

    .line 1660
    .local v6, "oldSizeHeatMaps":[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 1661
    array-length v8, v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v6, v7

    .line 1662
    .local v4, "oldSizeHeatMap":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mAppFilesDir:Ljava/lang/String;

    invoke-direct {v5, v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1663
    .local v5, "oldSizeHeatMapFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1661
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1671
    .end local v1    # "heatMapFolder":Ljava/io/File;
    .end local v4    # "oldSizeHeatMap":Ljava/lang/String;
    .end local v5    # "oldSizeHeatMapFile":Ljava/io/File;
    .end local v6    # "oldSizeHeatMaps":[Ljava/lang/String;
    :cond_0
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v7}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 1672
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setKeyboardResizeHeightPxPrevious(I)V

    .line 1673
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 1675
    .end local v0    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    .end local v2    # "keyboardHeightMaxChangePx":I
    :cond_1
    return-void
.end method

.method private ensureCreateOrLoadPersistentDynamicModel(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "doRepairDynamicModelIfNeeded"    # Z

    .prologue
    .line 594
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsDynamicModelLoaded:Z

    if-nez v1, :cond_0

    .line 596
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 597
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v0

    .line 598
    .local v0, "swiftKeyLanguagePackHandler":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 599
    invoke-static {p1, v1, v0, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->createOrLoadPersistentDynamicModel(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsDynamicModelLoaded:Z

    .line 603
    .end local v0    # "swiftKeyLanguagePackHandler":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    :cond_0
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsDynamicModelLoaded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mMakeDynamicModelBackup:Z

    if-eqz v1, :cond_1

    .line 604
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mMakeDynamicModelBackup:Z

    .line 605
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-static {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->makeConfigBackup(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;Landroid/content/Context;)V

    .line 607
    :cond_1
    return-void
.end method

.method private ensureCreatePersistentCloudWorkModel(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 621
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsCloudWorkModelCreated:Z

    if-nez v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 623
    invoke-static {p1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->createPersistentCloudWorkModel(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsCloudWorkModelCreated:Z

    .line 625
    :cond_0
    return-void
.end method

.method private static ensureInstance()V
    .locals 2

    .prologue
    .line 372
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 373
    :try_start_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .line 376
    :cond_0
    monitor-exit v1

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private findIndexKeyFor(I)Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .locals 9
    .param p1, "c"    # I

    .prologue
    const/4 v3, 0x0

    .line 2145
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_4

    aget-object v1, v5, v4

    .line 2146
    .local v1, "predictiveKey":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    iget-object v7, v1, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    array-length v8, v7

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_2

    aget v0, v7, v2

    .line 2147
    .local v0, "candidate":I
    if-ne p1, v0, :cond_1

    .line 2157
    .end local v0    # "candidate":I
    .end local v1    # "predictiveKey":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    :cond_0
    :goto_2
    return-object v1

    .line 2146
    .restart local v0    # "candidate":I
    .restart local v1    # "predictiveKey":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2151
    .end local v0    # "candidate":I
    :cond_2
    iget-object v7, v1, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->shiftedCandidates:[I

    array-length v8, v7

    move v2, v3

    :goto_3
    if-ge v2, v8, :cond_3

    aget v0, v7, v2

    .line 2152
    .restart local v0    # "candidate":I
    if-eq p1, v0, :cond_0

    .line 2151
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2145
    .end local v0    # "candidate":I
    :cond_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    .line 2157
    .end local v1    # "predictiveKey":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private findKey(I)Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 948
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->findKeyIndex(I)I

    move-result v0

    .line 949
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private fireOnDictionariesLoaded()V
    .locals 7

    .prologue
    .line 766
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadDictionaryListeners:[Lcom/sonyericsson/ned/model/ILoadDictionaryListener;

    if-eqz v2, :cond_1

    .line 767
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadLanguageLock:Ljava/lang/Object;

    monitor-enter v3

    .line 768
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadDictionaryListeners:[Lcom/sonyericsson/ned/model/ILoadDictionaryListener;

    array-length v5, v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v0, v4, v2

    .line 769
    .local v0, "listener":Lcom/sonyericsson/ned/model/ILoadDictionaryListener;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 770
    .local v1, "loadedLanguages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadedLanguages:Ljava/util/Set;

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 771
    invoke-interface {v0, v1}, Lcom/sonyericsson/ned/model/ILoadDictionaryListener;->onDictionariesLoaded(Ljava/util/Set;)V

    .line 768
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 773
    .end local v0    # "listener":Lcom/sonyericsson/ned/model/ILoadDictionaryListener;
    .end local v1    # "loadedLanguages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    monitor-exit v3

    .line 775
    :cond_1
    return-void

    .line 773
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private fireOnNoPendingPredictions()V
    .locals 5

    .prologue
    .line 748
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsActive:Z

    if-nez v2, :cond_0

    .line 760
    :goto_0
    return-void

    .line 752
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 753
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionListeners:Ljava/util/ArrayList;

    .line 755
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 756
    .local v1, "predictionListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/controller/IPredictionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/controller/IPredictionListener;

    .line 757
    .local v0, "listener":Lcom/sonyericsson/ned/controller/IPredictionListener;
    invoke-interface {v0}, Lcom/sonyericsson/ned/controller/IPredictionListener;->onNoPendingPredictions()V

    goto :goto_1

    .line 759
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/IPredictionListener;
    .end local v1    # "predictionListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/controller/IPredictionListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "predictionListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/controller/IPredictionListener;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private fireOnPredictionEngineReadyToPredict()V
    .locals 4

    .prologue
    .line 781
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionEngineListeners:[Lcom/sonyericsson/ned/model/IPredictionEngineListener;

    if-eqz v1, :cond_0

    .line 782
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionEngineListeners:[Lcom/sonyericsson/ned/model/IPredictionEngineListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 783
    .local v0, "listener":Lcom/sonyericsson/ned/model/IPredictionEngineListener;
    invoke-interface {v0}, Lcom/sonyericsson/ned/model/IPredictionEngineListener;->onReadyToPredict()V

    .line 782
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 786
    .end local v0    # "listener":Lcom/sonyericsson/ned/model/IPredictionEngineListener;
    :cond_0
    return-void
.end method

.method private fireOnPredictionsAvailable([Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V
    .locals 5
    .param p1, "newPredictions"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "predictionType"    # Lcom/sonyericsson/ned/controller/PredictionType;

    .prologue
    .line 729
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsActive:Z

    if-nez v2, :cond_0

    .line 741
    :goto_0
    return-void

    .line 733
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionListeners:Ljava/util/ArrayList;

    monitor-enter v3

    .line 734
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionListeners:Ljava/util/ArrayList;

    .line 736
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 737
    .local v1, "predictionListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/controller/IPredictionListener;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/controller/IPredictionListener;

    .line 738
    .local v0, "listener":Lcom/sonyericsson/ned/controller/IPredictionListener;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/ned/controller/IPredictionListener;->onPredictionsAvailable([Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V

    goto :goto_1

    .line 740
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/IPredictionListener;
    .end local v1    # "predictionListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/controller/IPredictionListener;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "predictionListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/controller/IPredictionListener;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private getActiveLanguages()Ljava/util/Set;
    .locals 5
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
    .line 1614
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1615
    .local v2, "languages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/ILanguage;>;"
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    if-eqz v3, :cond_0

    .line 1616
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ILanguageController;->getActiveLanguages()Ljava/util/ArrayList;

    move-result-object v2

    .line 1619
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1621
    .local v0, "activeLanguages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/ned/model/ILanguage;

    .line 1622
    .local v1, "iLanguage":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1624
    .end local v1    # "iLanguage":Lcom/sonyericsson/ned/model/ILanguage;
    :cond_1
    return-object v0
.end method

.method private getDownloadFlow(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;
    .locals 3
    .param p1, "engineFlow"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    .prologue
    .line 1923
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$8;->$SwitchMap$com$sonyericsson$textinput$uxp$model$swiftkey$SwiftKeyEngine$EngineFlow:[I

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1928
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown EngineFlow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1926
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->INITIATION:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    return-object v0

    .line 1923
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDynamicModelStreamWriter(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/StreamWriter;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 447
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$4;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getInstance()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
    .locals 1

    .prologue
    .line 367
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->ensureInstance()V

    .line 368
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    return-object v0
.end method

.method private getKeyPressModelPath(I)Ljava/lang/String;
    .locals 4
    .param p1, "keyboardResizeHeightPxCurrent"    # I

    .prologue
    .line 1460
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1461
    .local v1, "pathBuilder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mAppFilesDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    const-string v2, "/keypress-model-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1463
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLayoutId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1464
    const-string v2, "-v9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1465
    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->HYPHEN:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1466
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyboardType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1468
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1469
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 1470
    const-string v2, "-dens"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1471
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 1476
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    :cond_0
    if-eqz p1, :cond_1

    .line 1477
    const-string v2, "-size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1478
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1481
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getNumberOfNonVietnameseLatinLanguageScripts(Ljava/util/Set;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 800
    .local p1, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 801
    .local v1, "latinLanguageCount":I
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 802
    .local v0, "language":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "latin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 803
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isVietnamese(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 807
    .end local v0    # "language":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method public static getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "object"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 686
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v0

    .line 687
    invoke-interface {v0, p0, p1}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private getQwertyKeyModel()Ljava/util/HashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Lcom/touchtype_fluency/KeyShape;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1414
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1416
    .local v2, "keyModel":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/touchtype_fluency/KeyShape;[Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    array-length v11, v10

    move v8, v9

    :goto_0
    if-ge v8, v11, :cond_1

    aget-object v1, v10, v8

    .line 1417
    .local v1, "key":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    new-instance v5, Ljava/lang/String;

    .line 1418
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getPrimaryCandidates()[I

    move-result-object v12

    aget v12, v12, v9

    .line 1417
    invoke-static {v12}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v12

    invoke-direct {v5, v12}, Ljava/lang/String;-><init>([C)V

    .line 1419
    .local v5, "primaryCandidate":Ljava/lang/String;
    const-string v12, " "

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 1420
    new-instance v4, Lcom/touchtype_fluency/Point;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getLeftBound()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getCenterY()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v4, v12, v13}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    .line 1421
    .local v4, "left":Lcom/touchtype_fluency/Point;
    new-instance v6, Lcom/touchtype_fluency/Point;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getRightBound()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getCenterY()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v6, v12, v13}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    .line 1422
    .local v6, "right":Lcom/touchtype_fluency/Point;
    const v12, 0x3f99999a    # 1.2f

    const/4 v13, 0x0

    invoke-static {v4, v6, v12, v13}, Lcom/touchtype_fluency/KeyShape;->lineKey(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/Point;FF)Lcom/touchtype_fluency/KeyShape;

    move-result-object v3

    .line 1429
    .end local v4    # "left":Lcom/touchtype_fluency/Point;
    .end local v6    # "right":Lcom/touchtype_fluency/Point;
    .local v3, "keyShape":Lcom/touchtype_fluency/KeyShape;
    :goto_1
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getPrimaryCandidates()[I

    move-result-object v12

    invoke-static {v12}, Lcom/sonyericsson/ned/util/ArrayUtil;->toStringArray([I)[Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1425
    .end local v3    # "keyShape":Lcom/touchtype_fluency/KeyShape;
    :cond_0
    new-instance v7, Lcom/touchtype_fluency/Point;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getLeftBound()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getTopBound()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v7, v12, v13}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    .line 1426
    .local v7, "topLeft":Lcom/touchtype_fluency/Point;
    new-instance v0, Lcom/touchtype_fluency/Point;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getRightBound()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getBottomBound()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v0, v12, v13}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    .line 1427
    .local v0, "bottomRight":Lcom/touchtype_fluency/Point;
    invoke-static {v7, v0}, Lcom/touchtype_fluency/KeyShape;->scaledPointKey(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/Point;)Lcom/touchtype_fluency/KeyShape;

    move-result-object v3

    .restart local v3    # "keyShape":Lcom/touchtype_fluency/KeyShape;
    goto :goto_1

    .line 1431
    .end local v0    # "bottomRight":Lcom/touchtype_fluency/Point;
    .end local v1    # "key":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .end local v3    # "keyShape":Lcom/touchtype_fluency/KeyShape;
    .end local v5    # "primaryCandidate":Ljava/lang/String;
    .end local v7    # "topLeft":Lcom/touchtype_fluency/Point;
    :cond_1
    return-object v2
.end method

.method private getResultFilter()Lcom/touchtype_fluency/ResultsFilter;
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getCaseMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1053
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getDefaultFilter()Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/ResultsFilter;->with(Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1046
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getDefaultFilter()Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->INITIAL_UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/ResultsFilter;->with(Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    goto :goto_0

    .line 1049
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getDefaultFilter()Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v0, v1}, Lcom/touchtype_fluency/ResultsFilter;->with(Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    goto :goto_0

    .line 1044
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 2389
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    .line 2390
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2392
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_0

    .line 2394
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2393
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    .line 2396
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 2395
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 2396
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 2398
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported default value"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getWords(Landroid/content/Context;)[Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 653
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createEngineAndLoadDynamicModel(Landroid/content/Context;)V

    .line 654
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getWords()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleDownloadComplete(ZLjava/lang/String;)V
    .locals 8
    .param p1, "success"    # Z
    .param p2, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 2609
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .line 2611
    .local v4, "swiftKeyLanguagePackHandler":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    if-nez v4, :cond_1

    .line 2652
    :cond_0
    :goto_0
    return-void

    .line 2617
    :cond_1
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    .line 2623
    .local v3, "languagePackManager":Lcom/touchtype_fluency/util/LanguagePackManager;
    if-eqz p1, :cond_2

    .line 2625
    invoke-virtual {v4, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePack(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v1

    .line 2626
    .local v1, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isValidSession()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    .line 2628
    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v5

    .line 2627
    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getLanguageIso3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2636
    .local v2, "languagePackIso3":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->shouldDowloadedLanguageBeEnabled(Ljava/lang/String;)Z

    move-result v5

    .line 2635
    invoke-virtual {v3, v1, v5}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    .line 2639
    .end local v1    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    .end local v2    # "languagePackIso3":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isValidSession()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2640
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadLanguageLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2642
    :try_start_0
    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v5

    .line 2641
    invoke-virtual {v4, v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->isDownloadInProgress(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 2643
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2645
    .local v0, "allActiveLanguagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v5

    .line 2644
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/util/LanguagePack;

    .line 2646
    .restart local v1    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2650
    .end local v0    # "allActiveLanguagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .end local v1    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2648
    .restart local v0    # "allActiveLanguagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    :cond_3
    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    .line 2650
    .end local v0    # "allActiveLanguagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private hasPredictionForTap(Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;)Z
    .locals 4
    .param p1, "virtualKey"    # Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;

    .prologue
    .line 1185
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1186
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isVietnamese(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1187
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasKeyIndex()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getKeyIndexString()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->hasKey(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1188
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->compareWithShifted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualCenterXPx()I

    move-result v2

    .line 1189
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualCenterYPx()I

    move-result v3

    .line 1187
    invoke-virtual {p0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->hasKey(Lcom/sonyericsson/ned/model/CodePointString;II)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasValidCandidateForPrediction(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Z
    .locals 4
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1193
    invoke-virtual {p1, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 1194
    .local v0, "primaryCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasKeyIndex()Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_1

    .line 1195
    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    if-ne v3, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1
.end method

.method private isAllowedPrediction(Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "prediction"    # Ljava/lang/String;
    .param p2, "allowWhitelist"    # Z

    .prologue
    const/4 v3, 0x1

    .line 821
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->isSmartLanguageDetection()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 836
    :cond_0
    :goto_0
    return v3

    .line 825
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 826
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguageLocale()Ljava/util/Locale;

    move-result-object v4

    .line 825
    invoke-virtual {p1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 827
    .local v1, "lowerCasePrediction":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v4

    .line 828
    invoke-interface {v4}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v2

    .line 830
    .local v2, "predictor":Lcom/touchtype_fluency/Predictor;
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isPredictionInPrimaryModel(Ljava/lang/String;Lcom/touchtype_fluency/Predictor;)Z

    move-result v0

    .line 831
    .local v0, "isInPrimaryModel":Z
    if-nez v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 832
    invoke-direct {p0, p1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isPredictionInPrimaryModel(Ljava/lang/String;Lcom/touchtype_fluency/Predictor;)Z

    move-result v0

    .line 835
    :cond_2
    if-nez v0, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isPredictionInDisabledModels(Ljava/lang/String;Lcom/touchtype_fluency/Predictor;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_3

    .line 836
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isPredictionInWhiteListDatabase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isExistingModelValid(Lcom/touchtype_fluency/KeyPressModel;[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;)Z
    .locals 13
    .param p1, "keyPressModel"    # Lcom/touchtype_fluency/KeyPressModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layoutKeys"    # [Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 1543
    const/4 v6, 0x1

    .line 1544
    .local v6, "valid":Z
    array-length v9, p2

    move v7, v8

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v1, p2, v7

    .line 1545
    .local v1, "layoutKey":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    new-instance v10, Lcom/touchtype_fluency/Point;

    .line 1546
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getCenterX()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getCenterY()I

    move-result v12

    int-to-float v12, v12

    invoke-direct {v10, v11, v12}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    .line 1545
    invoke-interface {p1, v10}, Lcom/touchtype_fluency/KeyPressModel;->mostLikelyKey(Lcom/touchtype_fluency/Point;)[Ljava/lang/String;

    move-result-object v2

    .line 1547
    .local v2, "modelKey":[Ljava/lang/String;
    aget-object v5, v2, v8

    .line 1549
    .local v5, "primaryModelKeyCandidate":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getPrimaryCandidates()[I

    move-result-object v10

    aget v10, v10, v8

    .line 1548
    invoke-static {v10}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v4

    .line 1550
    .local v4, "primaryLayoutKeyCandidate":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1551
    const/4 v6, 0x0

    .line 1552
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModelPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mAppFilesDir:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1565
    .local v3, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    .line 1566
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 1567
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_0

    .line 1568
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushKeyPressModelCleared(Ljava/lang/String;)V

    .line 1574
    .end local v0    # "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    .end local v1    # "layoutKey":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .end local v2    # "modelKey":[Ljava/lang/String;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "primaryLayoutKeyCandidate":Ljava/lang/String;
    .end local v5    # "primaryModelKeyCandidate":Ljava/lang/String;
    :cond_0
    return v6

    .line 1544
    .restart local v1    # "layoutKey":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .restart local v2    # "modelKey":[Ljava/lang/String;
    .restart local v4    # "primaryLayoutKeyCandidate":Ljava/lang/String;
    .restart local v5    # "primaryModelKeyCandidate":Ljava/lang/String;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public static isInDictionary(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 643
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createEngineAndLoadDynamicModel(Landroid/content/Context;)V

    .line 644
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isInDictionary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isInStaticDictionary(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1
    .param p0, "word"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 648
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createEngineAndLoadDynamicModel(Landroid/content/Context;)V

    .line 649
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isInStaticDictionary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isIntentionalEvent(Ljava/lang/String;)Z
    .locals 8
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2000
    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sIntentionalEventsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2001
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-char v0, v4, v2

    .line 2002
    .local v0, "c":C
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIntentionalEvents:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2003
    monitor-exit v3

    .line 2007
    .end local v0    # "c":C
    :goto_1
    return v1

    .line 2001
    .restart local v0    # "c":C
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2006
    .end local v0    # "c":C
    :cond_1
    monitor-exit v3

    .line 2007
    const/4 v1, 0x1

    goto :goto_1

    .line 2006
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isPredictionInDisabledModels(Ljava/lang/String;Lcom/touchtype_fluency/Predictor;)Z
    .locals 1
    .param p1, "prediction"    # Ljava/lang/String;
    .param p2, "predictor"    # Lcom/touchtype_fluency/Predictor;

    .prologue
    .line 844
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->disabledModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v0

    return v0
.end method

.method private isPredictionInPrimaryModel(Ljava/lang/String;Lcom/touchtype_fluency/Predictor;)Z
    .locals 2
    .param p1, "prediction"    # Ljava/lang/String;
    .param p2, "predictor"    # Lcom/touchtype_fluency/Predictor;

    .prologue
    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 850
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v1

    .line 849
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/touchtype_fluency/TagSelectors;->taggedWith(Ljava/lang/String;)Lcom/touchtype_fluency/TagSelector;

    move-result-object v0

    .line 848
    invoke-interface {p2, p1, v0}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v0

    return v0
.end method

.method private isPredictionInWhiteListDatabase(Ljava/lang/String;)Z
    .locals 2
    .param p1, "prediction"    # Ljava/lang/String;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mWhiteListDatabase:Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;->hasWord(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isReadyToGetWords(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "readyListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;

    .prologue
    .line 659
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createEngineAndLoadDynamicModel(Landroid/content/Context;)V

    .line 660
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isReadyToGetWords(Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;)Z

    move-result v0

    return v0
.end method

.method private isShifted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1292
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getCaseMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1293
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getCaseMode()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSymbolsMode()Z
    .locals 2

    .prologue
    .line 1528
    const-string v0, "input-mode-symbols"

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mInputModeAdvisor:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;->getCurrentInputMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isTrace(Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;)Z
    .locals 2
    .param p1, "localizedVirtualKey"    # Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;

    .prologue
    .line 1302
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->getPointCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidLocalSession()Z
    .locals 1

    .prologue
    .line 706
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isValidSession()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidSession()Z
    .locals 1

    .prologue
    .line 393
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidTouchEvent(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 3
    .param p1, "virtualKey"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v1, 0x0

    .line 1306
    instance-of v2, p1, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 1307
    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;

    .line 1308
    .local v0, "localizedVirtualKey":Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isTrace(Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1309
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->hasPredictionForTap(Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1311
    .end local v0    # "localizedVirtualKey":Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;
    :cond_1
    return v1
.end method

.method private isVietnamese(Ljava/lang/String;)Z
    .locals 1
    .param p1, "iso3Code"    # Ljava/lang/String;

    .prologue
    .line 790
    const-string v0, "vie"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadCharacterMaps(Lcom/touchtype_fluency/Predictor;Ljava/util/Map;Landroid/content/Context;)V
    .locals 4
    .param p1, "predictor"    # Lcom/touchtype_fluency/Predictor;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/touchtype_fluency/Predictor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1758
    .local p2, "characterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype_fluency/InputMapper;->removeAllCharacterMaps()V

    .line 1759
    invoke-interface {p1}, Lcom/touchtype_fluency/Predictor;->getInputMapper()Lcom/touchtype_fluency/InputMapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lcom/touchtype_fluency/InputMapper;->addCharacterMap(Ljava/util/Map;Z)V

    .line 1761
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->shallOnlyPrimaryLanguageBeEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1762
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addCharacterMap(Lcom/touchtype_fluency/Predictor;Ljava/lang/String;Landroid/content/Context;)V

    .line 1770
    :goto_0
    return-void

    .line 1764
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadLanguageLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1765
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadedLanguages:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1766
    .local v0, "language":Ljava/lang/String;
    invoke-direct {p0, p1, v0, p3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addCharacterMap(Lcom/touchtype_fluency/Predictor;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 1768
    .end local v0    # "language":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private loadDictionaries(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/util/Set;)V
    .locals 10
    .param p1, "engineFlow"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;
    .param p2, "swiftKeyLanguagePackHandler"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;",
            "Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1849
    .line 1850
    .local p3, "activeLanguages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v4

    .line 1851
    .local v4, "languagePackManager":Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-virtual {v4}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v1

    .line 1852
    .local v1, "allLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadLanguageLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1853
    const/4 v5, 0x0

    .line 1854
    .local v5, "loadLanguages":Z
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1857
    .local v0, "allActiveLanguagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/util/LanguagePack;

    .line 1859
    .local v2, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getLanguageIso3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1860
    .local v3, "languagePackLanguageIso3":Ljava/lang/String;
    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1861
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1865
    :cond_1
    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadedLanguages:Ljava/util/Set;

    .line 1866
    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCurrentlyLoadingLanguages:Ljava/util/Set;

    .line 1867
    invoke-interface {v8, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1868
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1869
    :cond_2
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->doesDictionaryNeedReloadDueToUserDownloadCompleted()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1870
    :cond_3
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1871
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->isPreinstalled()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1877
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getDownloadFlow(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    move-result-object v8

    .line 1876
    invoke-virtual {p2, v8, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->downloadDirectly(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Lcom/touchtype_fluency/util/LanguagePack;)V

    goto :goto_0

    .line 1919
    .end local v0    # "allActiveLanguagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .end local v2    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    .end local v3    # "languagePackLanguageIso3":Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1889
    .restart local v0    # "allActiveLanguagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .restart local v2    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    .restart local v3    # "languagePackLanguageIso3":Ljava/lang/String;
    :cond_4
    const/4 v8, 0x1

    :try_start_1
    invoke-virtual {v4, v2, v8}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    .line 1890
    const/4 v5, 0x1

    goto :goto_0

    .line 1893
    :cond_5
    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadedLanguages:Ljava/util/Set;

    .line 1894
    invoke-interface {v8, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1898
    const/4 v8, 0x0

    invoke-virtual {v4, v2, v8}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    .line 1899
    const/4 v5, 0x1

    goto :goto_0

    .line 1906
    .end local v2    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    .end local v3    # "languagePackLanguageIso3":Ljava/lang/String;
    :cond_6
    invoke-virtual {p2, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->isDownloadInProgress(Ljava/util/List;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1907
    if-eqz v5, :cond_8

    .line 1908
    invoke-direct {p0, v0, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V

    .line 1909
    const/4 v6, 0x0

    .line 1910
    invoke-virtual {p2, v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->setDoesDictionaryNeedReloadDueToUserDownloadCompleted(Z)V

    .line 1919
    :cond_7
    :goto_1
    monitor-exit v7

    .line 1920
    return-void

    .line 1911
    :cond_8
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCurrentlyLoadingLanguages:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1916
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$LoadDictionaryCallback;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v9}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$LoadDictionaryCallback;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;)V

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private loadExistingModel(Ljava/lang/String;)Z
    .locals 3
    .param p1, "keyPressModelPath"    # Ljava/lang/String;

    .prologue
    .line 1780
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

    if-eqz v1, :cond_0

    .line 1782
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

    invoke-interface {v1, p1}, Lcom/touchtype_fluency/KeyPressModel;->loadFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1783
    const/4 v1, 0x1

    .line 1788
    :goto_0
    return v1

    .line 1784
    :catch_0
    move-exception v0

    .line 1785
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->TAG:Ljava/lang/String;

    const-string v2, "Error loading existing model"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1788
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1784
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static loadLanguages(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;Ljava/util/Set;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "engineFlow"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 673
    .local p2, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 674
    :try_start_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sDictionaryConfigurationListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    if-nez v1, :cond_0

    .line 675
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;Ljava/util/Set;)V

    sput-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sDictionaryConfigurationListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    .line 679
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v0

    .line 680
    .local v0, "swiftKeyLanguagePackHandler":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sDictionaryConfigurationListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$DictionaryConfigurationListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;)V

    .line 682
    .end local v0    # "swiftKeyLanguagePackHandler":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    :cond_0
    monitor-exit v2

    .line 683
    return-void

    .line 682
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;)V
    .locals 2
    .param p2, "languagePackManager"    # Lcom/touchtype_fluency/util/LanguagePackManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;",
            "Lcom/touchtype_fluency/util/LanguagePackManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2559
    .local p1, "allActiveLanguagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isValidLocalSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2560
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadLanguageLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2561
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCurrentlyLoadingLanguages:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2562
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadedLanguages:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2563
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2564
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setDictionariesLoaded(Z)V

    .line 2565
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadProgressListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;

    invoke-virtual {v0, p1, p2, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->loadLanguagesProgressive(Ljava/util/List;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$InternalLoadProgressListener;)V

    .line 2568
    :cond_0
    return-void

    .line 2563
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static mergeDynamicModels(Ljava/io/File;Landroid/content/Context;)V
    .locals 6
    .param p0, "tempFile"    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createEngineAndLoadDynamicModel(Landroid/content/Context;)V

    .line 418
    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyDynamicModelHandler;->sDynamicModelLock:Ljava/lang/Object;

    monitor-enter v3

    .line 422
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v1

    .line 423
    .local v1, "swiftKeyLanguagePackHandler":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-object v2, v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v2

    .line 424
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v4

    new-instance v5, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$3;

    invoke-direct {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$3;-><init>()V

    .line 423
    invoke-virtual {v2, p0, v4, v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->mergeDynamicLanguageModels(Ljava/io/File;Lcom/touchtype_fluency/util/LanguagePackManager;Lcom/touchtype_fluency/util/CompletionListener;)V
    :try_end_0
    .catch Lcom/touchtype_fluency/InvalidDataException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    .end local v1    # "swiftKeyLanguagePackHandler":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    :goto_0
    :try_start_1
    monitor-exit v3

    .line 437
    return-void

    .line 433
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 434
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 433
    :catch_1
    move-exception v2

    move-object v0, v2

    goto :goto_1
.end method

.method private processKey(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 7
    .param p1, "virtualKey"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v3, 0x1

    .line 1943
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1945
    .local v1, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$8;->$SwitchMap$com$sonyericsson$textinput$uxp$model$swiftkey$PredictionData$KeyboardMode:[I

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1978
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 1947
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->hasValidCandidateForPrediction(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1949
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isShifted()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 1950
    .local v2, "primaryCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isVietnamese(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1952
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getCurrentVietnameseWord(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 1954
    .local v0, "currentWord":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->clearExactMatch()V

    .line 1955
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->appendToExactMatch(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 1956
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    new-instance v5, Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    goto :goto_0

    .line 1958
    .end local v0    # "currentWord":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->appendToExactMatch(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 1959
    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addTouchHistoryMultiCharacter(Lcom/sonyericsson/ned/model/CodePointString;)V

    goto :goto_0

    .line 1965
    .end local v2    # "primaryCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    :pswitch_1
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasKeyIndex()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1966
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v4

    .line 1967
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getKeyIndexCharacter()I

    move-result v5

    int-to-char v5, v5

    .line 1966
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/touchtype_fluency/TouchHistory;->addMultiCharacter(Ljava/lang/String;)V

    .line 1973
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->clearExactMatch()V

    .line 1974
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setLastPhonePadKey(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)V

    goto :goto_0

    .line 1970
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isShifted()Z

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 1971
    .restart local v2    # "primaryCandidate":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addTouchHistoryMultiCharacter(Lcom/sonyericsson/ned/model/CodePointString;)V

    goto :goto_1

    .line 1945
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processTouch(Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;)Z
    .locals 8
    .param p1, "virtualKey"    # Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;

    .prologue
    const/4 v7, 0x0

    .line 2033
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->getPointCount()I

    move-result v2

    .line 2034
    .local v2, "pointCount":I
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->getPoints()[I

    move-result-object v4

    .line 2035
    .local v4, "points":[I
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->getPointTimes()[J

    move-result-object v3

    .line 2037
    .local v3, "pointTimes":[J
    const/4 v5, 0x2

    if-le v2, v5, :cond_1

    .line 2038
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPointCount:I

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2039
    new-instance v5, Lcom/touchtype_fluency/Point;

    aget v6, v4, v0

    int-to-float v6, v6

    add-int/lit8 v7, v0, 0x1

    aget v7, v4, v7

    int-to-float v7, v7

    invoke-direct {v5, v6, v7}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    div-int/lit8 v6, v0, 0x2

    aget-wide v6, v3, v6

    invoke-direct {p0, v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->appendTouchHistorySample(Lcom/touchtype_fluency/Point;J)V

    .line 2038
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 2042
    :cond_0
    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPointCount:I

    .line 2049
    .end local v0    # "i":I
    :goto_1
    const/4 v5, 0x1

    return v5

    .line 2044
    :cond_1
    iput v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPointCount:I

    .line 2045
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 2046
    .local v1, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isShifted()Z

    move-result v6

    invoke-virtual {v1, v6}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getPrimaryCandidate(Z)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->appendToExactMatch(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 2047
    aget-wide v6, v3, v7

    invoke-direct {p0, v4, v6, v7}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addTouchHistoryPress([IJ)V

    goto :goto_1
.end method

.method public static removeWord(Lcom/sonyericsson/ned/model/CodePointString;Landroid/content/Context;)V
    .locals 1
    .param p0, "word"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 633
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createEngineAndLoadDynamicModel(Landroid/content/Context;)V

    .line 634
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->removeWord(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 635
    return-void
.end method

.method public static removeWords(Ljava/util/HashSet;Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 638
    .local p0, "words":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/ned/model/CodePointString;>;"
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createEngineAndLoadDynamicModel(Landroid/content/Context;)V

    .line 639
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->removeWords(Ljava/util/HashSet;)V

    .line 640
    return-void
.end method

.method private reopenFromHistory(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 11
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v6, 0x0

    .line 2099
    sget-object v7, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sHistory:Ljava/util/LinkedHashMap;

    monitor-enter v7

    .line 2100
    :try_start_0
    sget-object v8, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sHistory:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;

    .line 2102
    .local v4, "reopenData":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;
    if-eqz v4, :cond_5

    .line 2103
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;->access$1800(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v1

    .line 2104
    .local v1, "inputBuffer":Lcom/touchtype_fluency/TouchHistory;
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;->access$1900(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setResultFilter(Lcom/touchtype_fluency/ResultsFilter;)V

    .line 2105
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setIsUsingCaseResultFilters(Z)V

    .line 2106
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->clearExactMatch()V

    .line 2108
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v8

    sget-object v9, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->FULL_KEYBOARD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    if-ne v8, v9, :cond_2

    .line 2109
    new-instance v5, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v5}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    .line 2110
    .local v5, "useOnceTouchHistory":Lcom/touchtype_fluency/TouchHistory;
    invoke-virtual {v5, v1}, Lcom/touchtype_fluency/TouchHistory;->appendHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 2111
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v6, v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setUseOnceTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 2112
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->createNewTouchHistory(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 2113
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v6, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->appendToExactMatch(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 2128
    .end local v5    # "useOnceTouchHistory":Lcom/touchtype_fluency/TouchHistory;
    :cond_0
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;->access$2000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 2129
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;->access$2000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setUseOnceExactMatch(Ljava/lang/StringBuffer;)V

    .line 2131
    :cond_1
    const/4 v6, 0x1

    monitor-exit v7

    .line 2134
    .end local v1    # "inputBuffer":Lcom/touchtype_fluency/TouchHistory;
    :goto_0
    return v6

    .line 2115
    .restart local v1    # "inputBuffer":Lcom/touchtype_fluency/TouchHistory;
    :cond_2
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    new-instance v9, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v9}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    invoke-virtual {v8, v9}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 2116
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2117
    .local v2, "integer":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v9}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->findIndexKeyFor(I)Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    move-result-object v3

    .line 2118
    .local v3, "key":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    if-eqz v3, :cond_3

    iget v9, v3, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->type:I

    const/4 v10, 0x2

    if-eq v9, v10, :cond_3

    .line 2119
    iget-object v9, v3, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->candidates:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-static {v9}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v0

    .line 2120
    .local v0, "chars":[C
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v0}, Ljava/lang/String;-><init>([C)V

    invoke-direct {p0, v9}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addTouchHistoryMultiCharacter(Ljava/lang/String;)V

    goto :goto_1

    .line 2133
    .end local v0    # "chars":[C
    .end local v1    # "inputBuffer":Lcom/touchtype_fluency/TouchHistory;
    .end local v2    # "integer":Ljava/lang/Integer;
    .end local v3    # "key":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .end local v4    # "reopenData":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 2123
    .restart local v1    # "inputBuffer":Lcom/touchtype_fluency/TouchHistory;
    .restart local v4    # "reopenData":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;
    :cond_4
    :try_start_1
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v8

    invoke-virtual {v8}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 2125
    monitor-exit v7

    goto :goto_0

    .line 2133
    .end local v1    # "inputBuffer":Lcom/touchtype_fluency/TouchHistory;
    :cond_5
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private saveKeyPressModel()V
    .locals 4

    .prologue
    .line 994
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSaveKeyPressModelLock:Ljava/lang/Object;

    monitor-enter v1

    .line 999
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mShouldSaveModel:Z

    .line 1000
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModelPath:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SaveKeyPressModelRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/touchtype_fluency/KeyPressModel;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->submitTask(Ljava/lang/Runnable;)V

    .line 1004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

    .line 1005
    return-void

    .line 1000
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private setDebugParameters(Lcom/touchtype_fluency/ParameterSet;)V
    .locals 3
    .param p1, "parameterSet"    # Lcom/touchtype_fluency/ParameterSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/touchtype_fluency/ParameterOutOfRangeException;
        }
    .end annotation

    .prologue
    .line 2328
    const-string v1, "continuous-input"

    const-string v2, "end-decay"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2329
    .local v0, "parameter":Lcom/touchtype_fluency/Parameter;
    const-string v1, "end-decay"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2331
    const-string v1, "continuous-input"

    const-string v2, "feature-threshold"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2332
    const-string v1, "feature-threshold"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2334
    const-string v1, "continuous-input"

    const-string v2, "feature-hysteresis"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2335
    const-string v1, "feature-hysteresis"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2337
    const-string v1, "continuous-input"

    const-string v2, "upcase-probability"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2338
    const-string v1, "upcase-probability"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2340
    const-string v1, "continuous-input"

    const-string v2, "downcase-probability"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2341
    const-string v1, "downcase-probability"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2343
    const-string v1, "continuous-input"

    const-string v2, "prefix-probability"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2344
    const-string v1, "prefix-probability"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2346
    const-string v1, "continuous-input"

    const-string v2, "confidence-factor"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2347
    const-string v1, "confidence-factor"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2349
    const-string v1, "continuous-input"

    const-string v2, "multi-term-leniency"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2350
    const-string v1, "multi-term-leniency"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2352
    const-string v1, "continuous-input"

    const-string v2, "min-skip-probability"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2353
    const-string v1, "min-skip-probability"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2355
    const-string v1, "continuous-input"

    const-string v2, "free-skip-duration"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2356
    const-string v1, "free-skip-duration"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2358
    const-string v1, "continuous-input"

    const-string v2, "dwell-duration-decay"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2359
    const-string v1, "dwell-duration-decay"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2361
    const-string v1, "continuous-input"

    const-string v2, "dwell-duration-factor"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2362
    const-string v1, "dwell-duration-factor"

    .line 2363
    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 2362
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2365
    const-string v1, "continuous-input"

    const-string v2, "free-skip-distance"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2366
    const-string v1, "free-skip-distance"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2368
    const-string v1, "continuous-input"

    const-string v2, "trace-speed-weight"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2369
    const-string v1, "trace-speed-weight"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2371
    const-string v1, "continuous-input"

    const-string v2, "adapt-trace-speed"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2372
    const-string v1, "adapt-trace-speed"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2374
    const-string v1, "continuous-input"

    const-string v2, "distance-decay"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2375
    const-string v1, "distance-decay"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2377
    const-string v1, "continuous-input"

    const-string v2, "length-decay"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2378
    const-string v1, "length-decay"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2380
    const-string v1, "continuous-input"

    const-string v2, "end-decay"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2381
    const-string v1, "end-decay"

    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2383
    const-string v1, "continuous-input"

    const-string v2, "prefix-skip-probability"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2384
    const-string v1, "prefix-skip-probability"

    .line 2385
    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 2384
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getSharedPreferencesValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2386
    return-void
.end method

.method private setGenericKeyboardParameters(Lcom/touchtype_fluency/ParameterSet;)V
    .locals 3
    .param p1, "parameterSet"    # Lcom/touchtype_fluency/ParameterSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Lcom/touchtype_fluency/ParameterOutOfRangeException;
        }
    .end annotation

    .prologue
    .line 2239
    const-string v1, "input-model"

    const-string v2, "upcase-probability"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2240
    .local v0, "parameter":Lcom/touchtype_fluency/Parameter;
    const v1, 0x3ecccccd    # 0.4f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2242
    const-string v1, "contact-specific"

    const-string v2, "max-contacts"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2243
    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2245
    const-string v1, "contact-specific"

    const-string v2, "prune-contacts-to"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2246
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2253
    const-string v1, "results"

    const-string v2, "layout-filter-dynamic"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2254
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2256
    return-void
.end method

.method private setIntentionalEvents()V
    .locals 12

    .prologue
    const/4 v5, 0x0

    .line 1691
    sget-object v6, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sIntentionalEventsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1692
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;->getAllKeys()Ljava/util/List;

    move-result-object v0

    .line 1693
    .local v0, "allKeys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIntentionalEvents:Ljava/util/HashSet;

    .line 1694
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1695
    .local v3, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasSecondCandidates(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1696
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    array-length v9, v8

    move v4, v5

    :goto_0
    if-ge v4, v9, :cond_1

    aget-object v1, v8, v4

    .line 1697
    .local v1, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIntentionalEvents:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1696
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1700
    .end local v1    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasSecondCandidates(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1701
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    array-length v9, v8

    move v4, v5

    :goto_1
    if-ge v4, v9, :cond_2

    aget-object v1, v8, v4

    .line 1702
    .restart local v1    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIntentionalEvents:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1701
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1705
    .end local v1    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasSecondaryPrint(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1706
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrintCount(Z)I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1707
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIntentionalEvents:Ljava/util/HashSet;

    const/4 v8, 0x1

    invoke-virtual {v3, v8, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrintCandidate(ZI)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1706
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1710
    .end local v2    # "i":I
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->hasSecondaryPrint(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1711
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrintCount(Z)I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 1712
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIntentionalEvents:Ljava/util/HashSet;

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getSecondaryPrintCandidate(ZI)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1711
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1716
    .end local v2    # "i":I
    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getAllCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    array-length v9, v8

    move v4, v5

    :goto_4
    if-ge v4, v9, :cond_5

    aget-object v1, v8, v4

    .line 1717
    .restart local v1    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIntentionalEvents:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1716
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1719
    .end local v1    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_5
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getAllCandidates(Z)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    array-length v9, v8

    move v4, v5

    :goto_5
    if-ge v4, v9, :cond_0

    aget-object v1, v8, v4

    .line 1720
    .restart local v1    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIntentionalEvents:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1719
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1723
    .end local v1    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v3    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    :cond_6
    monitor-exit v6

    .line 1724
    return-void

    .line 1723
    .end local v0    # "allKeys":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;>;"
    :catchall_0
    move-exception v4

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private setParameters()V
    .locals 5

    .prologue
    .line 2259
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v2

    .line 2260
    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getParameterSet()Lcom/touchtype_fluency/ParameterSet;

    move-result-object v1

    .line 2261
    .local v1, "parameterSet":Lcom/touchtype_fluency/ParameterSet;
    if-nez v1, :cond_0

    .line 2262
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parameterSet from SwiftKey was null! SwiftKey version : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2263
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->getSourceVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", And LanguagePackManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "version is : + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2264
    invoke-static {}, Lcom/touchtype_fluency/util/LanguagePackManager;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2267
    :cond_0
    :try_start_0
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$8;->$SwitchMap$com$sonyericsson$textinput$uxp$model$swiftkey$PredictionData$KeyboardMode:[I

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 2284
    :goto_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->setGenericKeyboardParameters(Lcom/touchtype_fluency/ParameterSet;)V

    .line 2288
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2289
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->setDebugParameters(Lcom/touchtype_fluency/ParameterSet;)V

    .line 2296
    :cond_1
    :goto_1
    return-void

    .line 2272
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->setQwertyKeyboardParameters(Lcom/touchtype_fluency/ParameterSet;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/touchtype_fluency/ParameterOutOfRangeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 2292
    :catch_0
    move-exception v0

    .line 2293
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2278
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->setPhonePadParameters(Lcom/touchtype_fluency/ParameterSet;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/touchtype_fluency/ParameterOutOfRangeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2292
    :catch_1
    move-exception v0

    goto :goto_2

    .line 2267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setPhonePadParameters(Lcom/touchtype_fluency/ParameterSet;)V
    .locals 5
    .param p1, "parameterSet"    # Lcom/touchtype_fluency/ParameterSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Lcom/touchtype_fluency/ParameterOutOfRangeException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 2302
    const-string v1, "results"

    const-string v2, "num-exact-match-limit"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2303
    .local v0, "parameter":Lcom/touchtype_fluency/Parameter;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2305
    const-string v1, "input-model"

    const-string v2, "infer-space-probability"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2306
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2308
    const-string v1, "input-model"

    const-string v2, "use-wildcards"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2309
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2311
    const-string v1, "input-model"

    const-string v2, "swap-probability"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2312
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2314
    const-string v1, "input-model"

    const-string v2, "prefix-probability"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2315
    const v1, 0x3a83126f    # 0.001f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2317
    const-string v1, "input-model"

    const-string v2, "confidence-factor"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2318
    const v1, 0x3f4ccccd    # 0.8f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2320
    const-string v1, "tokenization"

    const-string v2, "use-stochastic-tokenizer"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2321
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2323
    return-void
.end method

.method private setPunctuationRules()V
    .locals 5

    .prologue
    .line 1793
    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCaseLanguage:Z

    if-eqz v3, :cond_2

    .line 1794
    const/4 v2, 0x0

    .line 1796
    .local v2, "punctuationRule":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1798
    .local v0, "assetsManager":Landroid/content/res/AssetManager;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "hye"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCurrentPunctuationRule:Ljava/lang/String;

    const-string v4, "punctuation_armenian.json"

    .line 1801
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1802
    const-string v3, "punctuation_armenian.json"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1803
    const-string v3, "punctuation_armenian.json"

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCurrentPunctuationRule:Ljava/lang/String;

    .line 1813
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1814
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v3

    invoke-interface {v3}, Lcom/touchtype_fluency/Session;->getPunctuator()Lcom/touchtype_fluency/Punctuator;

    move-result-object v3

    .line 1815
    invoke-interface {v3, v2}, Lcom/touchtype_fluency/Punctuator;->addRules(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lcom/touchtype_fluency/DependencyNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1821
    :cond_1
    if-eqz v2, :cond_2

    .line 1823
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1830
    .end local v0    # "assetsManager":Landroid/content/res/AssetManager;
    .end local v2    # "punctuationRule":Ljava/io/InputStream;
    :cond_2
    :goto_1
    return-void

    .line 1804
    .restart local v0    # "assetsManager":Landroid/content/res/AssetManager;
    .restart local v2    # "punctuationRule":Ljava/io/InputStream;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ell"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCurrentPunctuationRule:Ljava/lang/String;

    const-string v4, "punctuation_greek.json"

    .line 1806
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1807
    const-string v3, "punctuation_greek.json"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1808
    const-string v3, "punctuation_greek.json"

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCurrentPunctuationRule:Ljava/lang/String;
    :try_end_2
    .catch Lcom/touchtype_fluency/DependencyNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1818
    .end local v0    # "assetsManager":Landroid/content/res/AssetManager;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1819
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1821
    if-eqz v2, :cond_2

    .line 1823
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 1824
    :catch_1
    move-exception v1

    .line 1825
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1809
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "assetsManager":Landroid/content/res/AssetManager;
    :cond_4
    :try_start_5
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCurrentPunctuationRule:Ljava/lang/String;

    const-string v4, "punctuation_default.json"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1810
    const-string v3, "punctuation_default.json"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1811
    const-string v3, "punctuation_default.json"

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCurrentPunctuationRule:Ljava/lang/String;
    :try_end_5
    .catch Lcom/touchtype_fluency/DependencyNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1818
    .end local v0    # "assetsManager":Landroid/content/res/AssetManager;
    :catch_2
    move-exception v3

    move-object v1, v3

    goto :goto_2

    .line 1824
    .restart local v0    # "assetsManager":Landroid/content/res/AssetManager;
    :catch_3
    move-exception v1

    .line 1825
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1821
    .end local v0    # "assetsManager":Landroid/content/res/AssetManager;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_5

    .line 1823
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1826
    :cond_5
    :goto_3
    throw v3

    .line 1824
    :catch_4
    move-exception v1

    .line 1825
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method private setQwertyKeyboardParameters(Lcom/touchtype_fluency/ParameterSet;)V
    .locals 3
    .param p1, "parameterSet"    # Lcom/touchtype_fluency/ParameterSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;,
            Lcom/touchtype_fluency/ParameterOutOfRangeException;
        }
    .end annotation

    .prologue
    .line 2193
    const-string v1, "results"

    const-string v2, "num-exact-match-limit"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2194
    .local v0, "parameter":Lcom/touchtype_fluency/Parameter;
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2196
    const-string v1, "input-model"

    const-string v2, "infer-space-probability"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2197
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isVietnamese(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 2198
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->isAvertSpaceAfterTrace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2199
    :cond_0
    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->reset()V

    .line 2204
    :goto_0
    const-string v1, "continuous-input"

    const-string v2, "confidence-factor"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2205
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsOneHandedKeyboard:Z

    if-eqz v1, :cond_2

    .line 2206
    const v1, 0x3ee66666    # 0.45f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2211
    :goto_1
    const-string v1, "tokenization"

    const-string v2, "use-stochastic-tokenizer"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2212
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isVietnamese(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2213
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2218
    :goto_2
    const-string v1, "input-model"

    const-string v2, "use-wildcards"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2219
    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->reset()V

    .line 2221
    const-string v1, "input-model"

    const-string v2, "swap-probability"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2222
    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->reset()V

    .line 2224
    const-string v1, "input-model"

    const-string v2, "prefix-probability"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2225
    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->reset()V

    .line 2227
    const-string v1, "input-model"

    const-string v2, "confidence-factor"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2228
    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->reset()V

    .line 2230
    const-string v1, "continuous-input"

    const-string v2, "dwell-duration-factor"

    invoke-interface {p1, v1, v2}, Lcom/touchtype_fluency/ParameterSet;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/touchtype_fluency/Parameter;

    move-result-object v0

    .line 2231
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    .line 2233
    return-void

    .line 2201
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Parameter;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 2208
    :cond_2
    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->reset()V

    goto :goto_1

    .line 2215
    :cond_3
    invoke-interface {v0}, Lcom/touchtype_fluency/Parameter;->reset()V

    goto :goto_2
.end method

.method private setUpKeyPressModel(Lcom/touchtype_fluency/Predictor;)V
    .locals 3
    .param p1, "predictor"    # Lcom/touchtype_fluency/Predictor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 1628
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 1629
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getKeyboardResizeHeightPxCurrent()I

    move-result v0

    .line 1630
    .local v0, "keyboardResizeHeightPxCurrent":I
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getKeyPressModelPath(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModelPath:Ljava/lang/String;

    .line 1631
    invoke-interface {p1}, Lcom/touchtype_fluency/Predictor;->getKeyPressModel()Lcom/touchtype_fluency/KeyPressModel;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

    .line 1632
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSaveKeyPressModelLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1633
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mShouldSaveModel:Z

    .line 1634
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1635
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModelPath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->loadExistingModel(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isExistingModelValid(Lcom/touchtype_fluency/KeyPressModel;[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1638
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getQwertyKeyModel()Ljava/util/HashMap;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/KeyPressModel;->setKeys(Ljava/util/Map;)V

    .line 1640
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->deleteOldHeatMaps(I)V

    .line 1641
    return-void

    .line 1634
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setUpPredictionTask()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1128
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->clone(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)V

    return-object v0
.end method

.method private setUpSymbolsMode(Z)V
    .locals 3
    .param p1, "isInputModeSymbols"    # Z

    .prologue
    .line 1678
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sIntentionalEventsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1679
    if-eqz p1, :cond_1

    .line 1682
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIntentionalEvents:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSymbols:Ljava/util/HashSet;

    .line 1687
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1688
    return-void

    .line 1683
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSymbols:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 1685
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIntentionalEvents:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSymbols:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1687
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private shallOnlyPrimaryLanguageBeEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 794
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPrimaryLanguageScript:Ljava/lang/String;

    const-string v2, "latin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLatinLanguageCount:I

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 795
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isVietnamese(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 796
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->isSmartLanguageDetection()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldDowloadedLanguageBeEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "languagePackIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 2655
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 2656
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->isSmartLanguageDetection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 2659
    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2658
    invoke-static {p1, v0}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isNonVietnameseLatinLanguage(Ljava/lang/String;Ljava/lang/String;)Z

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

.method private shouldIncludeEmojisInPrediction(Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;)Z
    .locals 3
    .param p1, "keyResourceProvider"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    .prologue
    .line 1239
    .line 1240
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;->getLeftFunctionKeyContent()Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    move-result-object v0

    .line 1241
    .local v0, "leftFunctionKeyContent":Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->FULL_KEYBOARD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->SMILEY:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;->WEB_EDIT:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$LeftFunctionKeyContent;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static trimHistory()V
    .locals 3

    .prologue
    .line 380
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sHistory:Ljava/util/LinkedHashMap;

    monitor-enter v1

    .line 381
    :goto_0
    :try_start_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sHistory:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_0

    .line 382
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sHistory:Ljava/util/LinkedHashMap;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sHistory:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 385
    return-void
.end method

.method private updateLanguageFields()V
    .locals 2

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setPrimaryLanguages(Ljava/lang/String;)V

    .line 1579
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1580
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1579
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPrimaryLanguageScript:Ljava/lang/String;

    .line 1581
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v1}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setPrimaryLanguageLocale(Ljava/util/Locale;)V

    .line 1582
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1583
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageProperties(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "non-space-language"

    .line 1582
    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/ArrayUtil;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSpaceLanguage:Z

    .line 1584
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1585
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1584
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->isCaseLanguage(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mCaseLanguage:Z

    .line 1586
    return-void

    .line 1582
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updatePredictionData(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;)V
    .locals 2
    .param p1, "predictionData"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1112
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getProcessedPredictions()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 1111
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setProcessedPredictions([Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 1113
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setPredictions(Lcom/touchtype_fluency/Predictions;)V

    .line 1114
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1115
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastSuccessfulStringPrediction()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 1114
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setLastSuccessfulStringPrediction([Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 1116
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getUseOnceTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setUseOnceTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 1117
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getUseOnceExactMatch()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setUseOnceExactMatch(Ljava/lang/StringBuffer;)V

    .line 1118
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1119
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->isExactMatchAvailableInDictionary()Z

    move-result v1

    .line 1118
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setExactMatchAvailableInDictionary(Z)V

    .line 1120
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getExactMatchOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setExactMatchOffset(I)V

    .line 1121
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getExactMatch()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setExactMatch(Ljava/lang/StringBuffer;)V

    .line 1122
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1123
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastSuccessfulTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v1

    .line 1122
    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setLastSuccessfulTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 1124
    return-void
.end method

.method private updateReopenPredictionData(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 3
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 2176
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getResultFilter()Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setResultFilter(Lcom/touchtype_fluency/ResultsFilter;)V

    .line 2177
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 2178
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->clearExactMatch()V

    .line 2179
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->appendToExactMatch(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 2180
    return-void
.end method

.method public static writeDynamicModel()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    if-eqz v0, :cond_0

    .line 398
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$WriteDynamicModelRunnable;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->sInstance:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$WriteDynamicModelRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->submitTask(Ljava/lang/Runnable;)V

    .line 402
    :cond_0
    return-void
.end method

.method private writeTrainingSequence()V
    .locals 6

    .prologue
    .line 1008
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    sget-object v4, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextAfterCursor:Lcom/sonyericsson/ned/model/CodePointString;

    sget-object v4, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    if-eq v3, v4, :cond_1

    .line 1011
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextAfterCursor:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/ned/model/CodePointString;->append(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1012
    .local v1, "sequence":Ljava/lang/String;
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getFieldHint()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addSequence(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1013
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$WriteDynamicModelRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$WriteDynamicModelRunnable;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$1;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->submitTask(Ljava/lang/Runnable;)V

    .line 1014
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mUnsyncedMessagesDatabase:Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    if-eqz v3, :cond_1

    .line 1015
    invoke-static {v1}, Lcom/sonyericsson/ned/util/StringUtil;->splitSentenceOnWordsWithDigits(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1017
    .local v2, "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1018
    .local v0, "s":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mUnsyncedMessagesDatabase:Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    invoke-interface {v4, v5, v0}, Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;->write(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1022
    .end local v0    # "s":Ljava/lang/String;
    .end local v1    # "sequence":Ljava/lang/String;
    .end local v2    # "split":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public addWord(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 3
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 2433
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/touchtype_fluency/Sequence$Type;->NORMAL:Lcom/touchtype_fluency/Sequence$Type;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->addSequence(Ljava/lang/String;Lcom/touchtype_fluency/Sequence$Type;)V

    .line 2434
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
    .line 884
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/model/ILoadDictionaryListener;

    if-ne p2, v0, :cond_0

    .line 885
    new-array v0, p1, [Lcom/sonyericsson/ned/model/ILoadDictionaryListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadDictionaryListeners:[Lcom/sonyericsson/ned/model/ILoadDictionaryListener;

    .line 886
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLoadDictionaryListeners:[Lcom/sonyericsson/ned/model/ILoadDictionaryListener;

    .line 891
    :goto_0
    return-object v0

    .line 887
    :cond_0
    const-class v0, Lcom/sonyericsson/ned/model/IPredictionEngineListener;

    if-ne p2, v0, :cond_1

    .line 888
    new-array v0, p1, [Lcom/sonyericsson/ned/model/IPredictionEngineListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionEngineListeners:[Lcom/sonyericsson/ned/model/IPredictionEngineListener;

    .line 889
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionEngineListeners:[Lcom/sonyericsson/ned/model/IPredictionEngineListener;

    goto :goto_0

    .line 891
    :cond_1
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
    .line 896
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/model/ITextBuffer;

    if-ne p2, v0, :cond_1

    .line 897
    check-cast p1, Lcom/sonyericsson/ned/model/ITextBuffer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 925
    :cond_0
    :goto_0
    return-void

    .line 898
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProvider;

    if-ne p2, v0, :cond_2

    .line 899
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictiveKeyProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProvider;

    goto :goto_0

    .line 900
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_3

    .line 901
    check-cast p1, Lcom/sonyericsson/ned/model/ILanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0

    .line 902
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_3
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_4

    .line 903
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 904
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_4
    const-class v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    if-ne p2, v0, :cond_5

    .line 905
    check-cast p1, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mInputMethodServiceGlue:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    goto :goto_0

    .line 906
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_5
    const-class v0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    if-ne p2, v0, :cond_6

    .line 907
    check-cast p1, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mShiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    goto :goto_0

    .line 908
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_6
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    if-ne p2, v0, :cond_7

    .line 909
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyProvider;

    goto :goto_0

    .line 910
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_7
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    if-ne p2, v0, :cond_8

    .line 911
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mInputModeAdvisor:Lcom/sonyericsson/textinput/uxp/controller/keyboard/InputModeAdvisor;

    goto :goto_0

    .line 912
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_8
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    if-ne p2, v0, :cond_9

    .line 913
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mUnsyncedMessagesDatabase:Lcom/sonyericsson/textinput/uxp/model/IUnsyncedMessages;

    goto :goto_0

    .line 914
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_9
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;

    if-ne p2, v0, :cond_a

    .line 915
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mWhiteListDatabase:Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;

    goto :goto_0

    .line 916
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_a
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    if-ne p2, v0, :cond_b

    .line 917
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyResourceProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    goto :goto_0

    .line 918
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_b
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-ne p2, v0, :cond_c

    .line 919
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    goto :goto_0

    .line 920
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_c
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    if-ne p2, v0, :cond_d

    .line 921
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    goto :goto_0

    .line 922
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_d
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    if-ne p2, v0, :cond_0

    .line 923
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 970
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->removeDownloadListener(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;)V

    .line 971
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsActive:Z

    .line 972
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionExecutor:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->cancelAllActiveTasks()V

    .line 973
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 974
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->resetTemporaryModel()V

    .line 975
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->trimHistory()V

    .line 976
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mEnableLearning:Z

    if-eqz v0, :cond_0

    .line 977
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->writeTrainingSequence()V

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

    if-eqz v0, :cond_1

    .line 980
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->saveKeyPressModel()V

    .line 983
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v1}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 984
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->clearExactMatch()V

    .line 985
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextAfterCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 986
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 988
    :cond_2
    return-void
.end method

.method public findKeyIndex(I)I
    .locals 3
    .param p1, "c"    # I

    .prologue
    .line 943
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeysComparator:Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;

    .line 944
    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;->setSearchCandidate(I)Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeysComparator:Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;

    .line 943
    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public getCurrentVietnameseWord(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "primaryCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mVietnameseHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->getCurrentWord(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultCandidateIndex()I
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->PHONEPAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1027
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1028
    :cond_0
    const/4 v0, 0x0

    .line 1030
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getExactMatchOffset()I

    move-result v0

    goto :goto_0
.end method

.method public getExactMatch()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getExactMatch()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method public getMostLikelyKey(Lcom/touchtype_fluency/Point;)[Ljava/lang/String;
    .locals 1
    .param p1, "point"    # Lcom/touchtype_fluency/Point;

    .prologue
    .line 959
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

    if-eqz v0, :cond_0

    .line 960
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

    invoke-interface {v0, p1}, Lcom/touchtype_fluency/KeyPressModel;->mostLikelyKey(Lcom/touchtype_fluency/Point;)[Ljava/lang/String;

    move-result-object v0

    .line 962
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 1035
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getNumberOfKeys()I
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v0

    return v0
.end method

.method public getPredictions(Lcom/sonyericsson/ned/model/CodePointString;ZLcom/sonyericsson/ned/controller/PredictionType;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 6
    .param p1, "textFragment"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "shiftToLowerCase"    # Z
    .param p3, "predictionType"    # Lcom/sonyericsson/ned/controller/PredictionType;

    .prologue
    const/4 v3, 0x1

    .line 1062
    sget-object v4, Lcom/sonyericsson/ned/controller/PredictionType;->NEXT_WORD:Lcom/sonyericsson/ned/controller/PredictionType;

    if-ne p3, v4, :cond_1

    move v0, v3

    .line 1063
    .local v0, "isNextWord":Z
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getExactMatch()Ljava/lang/StringBuffer;

    move-result-object v2

    .line 1064
    .local v2, "theExactMatch":Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4, p3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setPredictionType(Lcom/sonyericsson/ned/controller/PredictionType;)V

    .line 1065
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTextFragment()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object p1

    .end local p1    # "textFragment":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    invoke-virtual {v4, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setTextFragment(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 1067
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setShiftToLowerCase(Z)V

    .line 1071
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPredictionType()Lcom/sonyericsson/ned/controller/PredictionType;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/ned/controller/PredictionType;->TRACE:Lcom/sonyericsson/ned/controller/PredictionType;

    if-ne v4, v5, :cond_2

    .line 1072
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setMaxCandidates(I)V

    .line 1078
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->setUpPredictionTask()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;

    move-result-object v1

    .line 1079
    .local v1, "predictionAsyncTask":Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;
    new-instance v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$5;

    invoke-direct {v3, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$5;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V

    invoke-virtual {v1, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;->setPredictionTaskListener(Lcom/sonyericsson/textinput/uxp/model/swiftkey/IPredictionTaskListener;)V

    .line 1100
    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionExecutor:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->schedule(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;)V

    .line 1101
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    return-object v3

    .line 1062
    .end local v0    # "isNextWord":Z
    .end local v1    # "predictionAsyncTask":Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionTask;
    .end local v2    # "theExactMatch":Ljava/lang/StringBuffer;
    .restart local p1    # "textFragment":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1074
    .end local p1    # "textFragment":Lcom/sonyericsson/ned/model/CodePointString;
    .restart local v0    # "isNextWord":Z
    .restart local v2    # "theExactMatch":Ljava/lang/StringBuffer;
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mMaxCandidates:I

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setMaxCandidates(I)V

    goto :goto_1
.end method

.method public getPredictiveKeyProvider()Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProvider;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictiveKeyProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProvider;

    return-object v0
.end method

.method public getReopenWordPrediction(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/controller/PredictionType;)V
    .locals 2
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "textBeforeWord"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "predictionType"    # Lcom/sonyericsson/ned/controller/PredictionType;

    .prologue
    .line 2164
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setTextFragment(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 2165
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->reopenFromHistory(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2172
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTextFragment()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getPredictions(Lcom/sonyericsson/ned/model/CodePointString;ZLcom/sonyericsson/ned/controller/PredictionType;)Lcom/sonyericsson/ned/model/CodePointString;

    .line 2173
    return-void

    .line 2170
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->updateReopenPredictionData(Lcom/sonyericsson/ned/model/CodePointString;)V

    goto :goto_0
.end method

.method public getVietnameseComposingLength()I
    .locals 1

    .prologue
    .line 2520
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mVietnameseHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->getComposingLength()I

    move-result v0

    return v0
.end method

.method public getWords()[Ljava/lang/String;
    .locals 8

    .prologue
    .line 2419
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v6

    .line 2420
    invoke-interface {v6}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mMyWordsTagSelector:Lcom/touchtype_fluency/TagSelector;

    invoke-interface {v6, v7}, Lcom/touchtype_fluency/Trainer;->getNovelTerms(Lcom/touchtype_fluency/TagSelector;)Ljava/util/Map;

    move-result-object v3

    .line 2421
    .local v3, "termMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/touchtype_fluency/Term;Ljava/lang/Long;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2422
    .local v4, "terms":Ljava/util/Set;, "Ljava/util/Set<Lcom/touchtype_fluency/Term;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 2424
    .local v5, "words":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 2425
    .local v0, "i":I
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/Term;

    .line 2426
    .local v2, "term":Lcom/touchtype_fluency/Term;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    invoke-virtual {v2}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v0

    move v0, v1

    .line 2427
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 2428
    .end local v2    # "term":Lcom/touchtype_fluency/Term;
    :cond_0
    return-object v5
.end method

.method public hasKey(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 5
    .param p1, "primaryCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1162
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeysComparator:Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;

    .line 1163
    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;->setSearchCandidate(I)Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeysComparator:Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    if-ltz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public hasKey(Lcom/sonyericsson/ned/model/CodePointString;II)Z
    .locals 5
    .param p1, "primaryCandidate"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v1, 0x0

    .line 1168
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1169
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeysComparator:Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;

    .line 1170
    invoke-virtual {p1, v1}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;->setSearchCandidate(I)Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeysComparator:Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey$PredictiveKeyComparator;

    .line 1169
    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 1171
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->contains(II)Z

    move-result v1

    .line 1175
    .end local v0    # "index":I
    :cond_0
    return v1
.end method

.method public hasPrediction(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 2
    .param p1, "virtualKey"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    .line 1180
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/VirtualKey;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 1181
    .local v0, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isValidTouchEvent(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->hasValidCandidateForPrediction(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 7

    .prologue
    .line 1202
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    new-instance v2, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v2}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 1203
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->clearExactMatch()V

    .line 1204
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    new-instance v3, Lcom/touchtype_fluency/ResultsFilter;

    const/16 v4, 0x14

    sget-object v5, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1205
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v1

    sget-object v6, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->FULL_KEYBOARD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    if-ne v1, v6, :cond_1

    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;->ENABLED:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    :goto_0
    invoke-direct {v3, v4, v5, v1}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;)V

    .line 1204
    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setDefaultFilter(Lcom/touchtype_fluency/ResultsFilter;)V

    .line 1208
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getDefaultFilter()Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setResultFilter(Lcom/touchtype_fluency/ResultsFilter;)V

    .line 1209
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mAppFilesDir:Ljava/lang/String;

    .line 1210
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mAppFilesDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/user"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/blacklist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/touchtype_fluency/Trainer;->setBlacklist(Ljava/lang/String;)V

    .line 1213
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->ensureCreateOrLoadPersistentDynamicModel(Landroid/content/Context;Z)V

    .line 1215
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    .line 1216
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 1217
    .local v0, "application":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 1218
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyResourceProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;

    .line 1219
    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->shouldIncludeEmojisInPrediction(Lcom/sonyericsson/textinput/uxp/model/keyboard/IKeyResourceProvider;)Z

    move-result v2

    .line 1218
    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setIncludeEmojisInPrediction(Z)V

    .line 1220
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mRebind:Z

    .line 1222
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mEmojiUsageTracker:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->isReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1227
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$6;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$6;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1236
    :cond_0
    return-void

    .line 1205
    .end local v0    # "application":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    :cond_1
    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;->DISABLED:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    goto/16 :goto_0
.end method

.method public initOptional()V
    .locals 2

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mShiftAdvisor:Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    invoke-virtual {v1}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->getCurrentCase()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setCaseMode(I)V

    .line 1253
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mInputMethodServiceGlue:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mInputMethodServiceGlue:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;->addOnDestroyListener(Lcom/sonyericsson/textinput/uxp/glue/OnDestroyListener;)V

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->addDownloadListener(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;)V

    .line 1257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mIsActive:Z

    .line 1258
    return-void
.end method

.method public isDisambiguationCandidate(II)Z
    .locals 6
    .param p1, "firstIndex"    # I
    .param p2, "secondIndex"    # I

    .prologue
    const/4 v3, 0x0

    .line 1262
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getProcessedPredictions()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    array-length v4, v4

    if-ge p1, v4, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1263
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getProcessedPredictions()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    array-length v4, v4

    if-ge p2, v4, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1264
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getProcessedPredictions()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1265
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getProcessedPredictions()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    aget-object v5, v5, p2

    invoke-virtual {v5}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 1280
    :cond_0
    :goto_0
    return v3

    .line 1269
    :cond_1
    if-eq p1, p2, :cond_2

    .line 1270
    const/4 v0, 0x0

    .line 1271
    .local v0, "i":I
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getProcessedPredictions()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    aget-object v4, v4, p1

    invoke-virtual {v4}, Lcom/sonyericsson/ned/model/CodePointString;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1272
    .local v1, "integer":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->findKey(I)Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    move-result-object v2

    .line 1273
    .local v2, "key":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getProcessedPredictions()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    aget-object v5, v5, p2

    .line 1274
    invoke-virtual {v5, v0}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v5

    .line 1273
    invoke-virtual {v2, v5}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->isCandidate(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1277
    add-int/lit8 v0, v0, 0x1

    .line 1278
    goto :goto_1

    .line 1280
    .end local v0    # "i":I
    .end local v1    # "integer":Ljava/lang/Integer;
    .end local v2    # "key":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isExactMatchAvailableInDictionary()Z
    .locals 1

    .prologue
    .line 2525
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->isExactMatchAvailableInDictionary()Z

    move-result v0

    return v0
.end method

.method public isInDictionary(Ljava/lang/String;)Z
    .locals 2
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    .line 2450
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->dynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v1

    .line 2449
    invoke-interface {v0, p1, v1}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v0

    return v0
.end method

.method public isInStaticDictionary(Ljava/lang/String;)Z
    .locals 2
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    .line 2456
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->staticModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v1

    .line 2455
    invoke-interface {v0, p1, v1}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;Lcom/touchtype_fluency/TagSelector;)Z

    move-result v0

    return v0
.end method

.method public isNewWord(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 3
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    .line 1286
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1285
    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 1286
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    .line 1287
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    .line 1288
    invoke-interface {v2}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 1287
    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Predictor;->queryTerm(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPredictionsPending()Z
    .locals 1

    .prologue
    .line 1134
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionExecutor:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$PredictionExecutor;->isTaskPending()Z

    move-result v0

    return v0
.end method

.method public isReadyToGetWords(Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;)Z
    .locals 3
    .param p1, "readyListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;

    .prologue
    .line 2461
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mRemoveWordsTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mRemoveWordsTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->access$2100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 2462
    .local v0, "ready":Z
    :goto_0
    if-nez v0, :cond_1

    .line 2463
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mRemoveWordsTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$7;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$7;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Lcom/sonyericsson/textinput/uxp/model/swiftkey/OnDictionaryReadyListener;)V

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;->addOnWordsRemovedListener(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$OnWordsRemovedListener;)V

    .line 2470
    :cond_1
    return v0

    .line 2461
    .end local v0    # "ready":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpellingCandidate(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1298
    const/4 v0, 0x0

    return v0
.end method

.method public isWordDelimiter(I)Z
    .locals 1
    .param p1, "c"    # I

    .prologue
    .line 2515
    const/4 v0, 0x0

    new-array v0, v0, [C

    invoke-static {p1, v0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isWordDelimiter(I[C)Z

    move-result v0

    return v0
.end method

.method public isWordInWhiteListDatabase(Ljava/lang/String;)Z
    .locals 2
    .param p1, "prediction"    # Ljava/lang/String;

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mWhiteListDatabase:Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/IWhiteList;->hasWord(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onCandidateSelection(Ljava/lang/Object;ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V
    .locals 4
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "reason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    .prologue
    .line 2486
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastSuccessfulStringPrediction()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    array-length v1, v1

    if-ge p2, v1, :cond_1

    .line 2487
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastSuccessfulStringPrediction()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    aget-object v1, v1, p2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 2488
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastSuccessfulTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v2

    .line 2487
    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->addHistory(Lcom/sonyericsson/ned/model/CodePointString;Lcom/touchtype_fluency/TouchHistory;)V

    .line 2489
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/touchtype_fluency/Predictions;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/Prediction;

    .line 2490
    .local v0, "prediction":Lcom/touchtype_fluency/Prediction;
    invoke-virtual {v0}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 2491
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastSuccessfulStringPrediction()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    aget-object v3, v3, p2

    .line 2490
    invoke-virtual {v2, v3}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2492
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 2493
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getLastSuccessfulTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Lcom/touchtype_fluency/Trainer;->learnFrom(Lcom/touchtype_fluency/TouchHistory;Lcom/touchtype_fluency/Prediction;)V

    goto :goto_0

    .line 2497
    .end local v0    # "prediction":Lcom/touchtype_fluency/Prediction;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->clearExactMatch()V

    .line 2498
    return-void
.end method

.method public onCandidatesCanceled(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 2502
    return-void
.end method

.method public onCandidatesChanged(Ljava/lang/Object;III[Lcom/sonyericsson/ned/model/CodePointString;IILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "stemCharsLength"    # I
    .param p3, "activeCandidateIndex"    # I
    .param p4, "highlightedCandidateIndex"    # I
    .param p5, "candidates"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p6, "cursorPos"    # I
    .param p7, "nbrCorrectionCandidates"    # I
    .param p8, "changeReason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .prologue
    .line 2511
    return-void
.end method

.method public onCaseChanged(IZ)V
    .locals 1
    .param p1, "newCase"    # I
    .param p2, "tapped"    # Z

    .prologue
    .line 2535
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setCaseMode(I)V

    .line 2536
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setIsUsingCaseResultFilters(Z)V

    .line 2537
    return-void
.end method

.method public onDeletion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "cursorIndex"    # I
    .param p5, "nbrDeleted"    # I

    .prologue
    .line 1317
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 1318
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextAfterCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 1319
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 2415
    return-void
.end method

.method public onDictionariesLoaded(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dictionaries":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 2576
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSetUpAndLoadCharacterMapTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;

    if-eqz v0, :cond_0

    .line 2577
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSetUpAndLoadCharacterMapTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;

    invoke-virtual {v0, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->cancel(Z)Z

    .line 2579
    :cond_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 2580
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v2

    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v2

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isSymbolsMode()Z

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Landroid/content/Context;Lcom/touchtype_fluency/Predictor;Z)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSetUpAndLoadCharacterMapTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;

    .line 2581
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSetUpAndLoadCharacterMapTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$SetUpCharacterMapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2582
    return-void
.end method

.method public onDownloadCancelled(Ljava/lang/String;)V
    .locals 1
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 2591
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->handleDownloadComplete(ZLjava/lang/String;)V

    .line 2592
    return-void
.end method

.method public onDownloadFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 2601
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->handleDownloadComplete(ZLjava/lang/String;)V

    .line 2602
    return-void
.end method

.method public onDownloadFinished(Ljava/lang/String;)V
    .locals 1
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 2586
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->handleDownloadComplete(ZLjava/lang/String;)V

    .line 2587
    return-void
.end method

.method public onFinishComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 9
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "committedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 1325
    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mEnableLearning:Z

    if-nez v6, :cond_1

    .line 1354
    :cond_0
    return-void

    .line 1328
    :cond_1
    sget-object v6, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v6, p4}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1329
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v6

    invoke-interface {v6}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v4

    .line 1330
    .local v4, "trainer":Lcom/touchtype_fluency/Trainer;
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v6

    .line 1331
    invoke-interface {v6}, Lcom/touchtype_fluency/Session;->getTokenizer()Lcom/touchtype_fluency/Tokenizer;

    move-result-object v3

    .line 1333
    .local v3, "tokenizer":Lcom/touchtype_fluency/Tokenizer;
    sget-object v6, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->EXCLUSION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p4}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 1334
    .local v0, "sequence":[Ljava/lang/String;
    array-length v7, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v2, v0, v6

    .line 1335
    .local v2, "string":Ljava/lang/String;
    invoke-interface {v3, v2}, Lcom/touchtype_fluency/Tokenizer;->split(Ljava/lang/String;)Lcom/touchtype_fluency/Sequence;

    move-result-object v1

    .line 1336
    .local v1, "sequences":Lcom/touchtype_fluency/Sequence;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/touchtype_fluency/Sequence;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 1337
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/touchtype_fluency/Sequence;->takeFirst(I)Lcom/touchtype_fluency/Sequence;

    move-result-object v5

    .line 1338
    .local v5, "wordSequence":Lcom/touchtype_fluency/Sequence;
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/touchtype_fluency/Sequence;->dropFirst(I)Lcom/touchtype_fluency/Sequence;

    move-result-object v1

    .line 1339
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/touchtype_fluency/Sequence;->get(I)Lcom/touchtype_fluency/Term;

    move-result-object v8

    invoke-virtual {v8}, Lcom/touchtype_fluency/Term;->getTerm()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isNewWord(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1348
    invoke-static {}, Lcom/touchtype_fluency/TagSelectors;->temporaryDynamicModels()Lcom/touchtype_fluency/TagSelector;

    move-result-object v8

    invoke-interface {v4, v5, v8}, Lcom/touchtype_fluency/Trainer;->addSequence(Lcom/touchtype_fluency/Sequence;Lcom/touchtype_fluency/TagSelector;)V

    goto :goto_1

    .line 1334
    .end local v5    # "wordSequence":Lcom/touchtype_fluency/Sequence;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public onIndexChange(Ljava/lang/Object;Lcom/sonyericsson/ned/controller/CursorPosition;Lcom/sonyericsson/ned/controller/CursorPosition;ILcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "position"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p3, "composing"    # Lcom/sonyericsson/ned/controller/CursorPosition;
    .param p4, "reason"    # I
    .param p5, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p6, "characterIndex"    # I

    .prologue
    .line 2404
    const/4 v0, 0x4

    if-ne p4, v0, :cond_0

    .line 2405
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->writeTrainingSequence()V

    .line 2407
    :cond_0
    return-void
.end method

.method public onInsertion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "insertion"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 1401
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 1402
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextAfterCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 1403
    return-void
.end method

.method public onNewComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "composing"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 1409
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextAfterCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 1410
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    .line 1411
    return-void
.end method

.method public onNewPredictiveKeys()V
    .locals 4

    .prologue
    .line 1490
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mRebind:Z

    if-nez v2, :cond_0

    .line 1491
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->updateLanguageFields()V

    .line 1492
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->setParameters()V

    .line 1493
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->setPunctuationRules()V

    .line 1494
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getActiveLanguages()Ljava/util/Set;

    move-result-object v0

    .line 1495
    .local v0, "activeLanguages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->FIELD_INITIATION:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    invoke-static {v2, v3, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->loadLanguages(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;Ljava/util/Set;)V

    .line 1496
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getNumberOfNonVietnameseLatinLanguageScripts(Ljava/util/Set;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLatinLanguageCount:I

    .line 1499
    .end local v0    # "activeLanguages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->setIntentionalEvents()V

    .line 1501
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v2

    .line 1502
    invoke-interface {v2}, Lcom/touchtype_fluency/Session;->getPredictor()Lcom/touchtype_fluency/Predictor;

    move-result-object v1

    .line 1504
    .local v1, "predictor":Lcom/touchtype_fluency/Predictor;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictiveKeyProvider:Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProvider;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProvider;->getPredictiveKeys()[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    .line 1505
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 1525
    :goto_0
    return-void

    .line 1510
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeys:[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1511
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->FULL_KEYBOARD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isSymbolsMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1512
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->setUpKeyPressModel(Lcom/touchtype_fluency/Predictor;)V

    .line 1519
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mKeyPressModel:Lcom/touchtype_fluency/KeyPressModel;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->PHONEPAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    if-eq v2, v3, :cond_3

    .line 1520
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isSymbolsMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1521
    :cond_3
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->convertAndResetTouchHistory()V

    .line 1524
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isSymbolsMode()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->setUpSymbolsMode(Z)V

    goto :goto_0
.end method

.method public onPreComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 1934
    return-void
.end method

.method public onProgress(Ljava/lang/String;II)V
    .locals 0
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "current"    # I
    .param p3, "maximum"    # I

    .prologue
    .line 2597
    return-void
.end method

.method public onReplacement(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "inserted"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 1940
    return-void
.end method

.method public onUpdateInputView(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 2411
    return-void
.end method

.method public printPredictionData(Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;)V
    .locals 0
    .param p1, "predictionData"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .prologue
    .line 1154
    return-void
.end method

.method public processPrediction(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 4
    .param p1, "virtualKey"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    const/4 v0, 0x1

    .line 2012
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v1

    const/16 v2, 0x1f4

    if-lt v1, v2, :cond_1

    .line 2029
    .end local p1    # "virtualKey":Lcom/sonyericsson/ned/controller/VirtualKey;
    :cond_0
    :goto_0
    return v0

    .line 2017
    .restart local p1    # "virtualKey":Lcom/sonyericsson/ned/controller/VirtualKey;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 2023
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mTextBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    const/16 v3, 0x64

    invoke-interface {v2, v3}, Lcom/sonyericsson/ned/model/ITextBuffer;->getSubstringBeforeCursor(I)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setTextFragment(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 2025
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getResultFilter()Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setResultFilter(Lcom/touchtype_fluency/ResultsFilter;)V

    .line 2028
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isValidTouchEvent(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, p1, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;

    .line 2029
    .end local p1    # "virtualKey":Lcom/sonyericsson/ned/controller/VirtualKey;
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->processTouch(Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .restart local p1    # "virtualKey":Lcom/sonyericsson/ned/controller/VirtualKey;
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->processKey(Lcom/sonyericsson/ned/controller/VirtualKey;)Z

    move-result v0

    goto :goto_0
.end method

.method public registerPredictionListener(Lcom/sonyericsson/ned/controller/IPredictionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/ned/controller/IPredictionListener;

    .prologue
    .line 712
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 713
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    monitor-exit v1

    .line 715
    return-void

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reinit()V
    .locals 1

    .prologue
    .line 2541
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mRebind:Z

    .line 2542
    return-void
.end method

.method public reinitOptional()V
    .locals 0

    .prologue
    .line 2547
    return-void
.end method

.method public removeAllIndices()V
    .locals 2

    .prologue
    .line 2054
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v1}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 2055
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->clearExactMatch()V

    .line 2056
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPointCount:I

    .line 2057
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setLastSuccessfulStringPrediction([Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 2058
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    new-instance v1, Lcom/touchtype_fluency/TouchHistory;

    invoke-direct {v1}, Lcom/touchtype_fluency/TouchHistory;-><init>()V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setLastSuccessfulTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 2059
    return-void
.end method

.method public removeLastIndex()I
    .locals 6

    .prologue
    .line 2063
    const/4 v2, 0x0

    .line 2064
    .local v2, "removedCharacter":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/touchtype_fluency/TouchHistory;->dropLast(I)Lcom/touchtype_fluency/TouchHistory;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 2065
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2066
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mLastTextBeforeCursor:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v3}, Lcom/sonyericsson/ned/model/CodePointString;->lastCodePoint()I

    move-result v2

    .line 2068
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getExactMatch()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 2069
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 2070
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getExactMatch()Ljava/lang/StringBuffer;

    move-result-object v3

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 2071
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getPrimaryLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->isVietnamese(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    .line 2072
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getKeyboardMode()Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v3

    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->FULL_KEYBOARD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    if-ne v3, v4, :cond_1

    .line 2073
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mVietnameseHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;

    .line 2074
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$VietnameseHandler;->removeCurrentWordLastIndex()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    .line 2075
    .local v0, "currentWord":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->clearExactMatch()V

    .line 2076
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->appendToExactMatch(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 2077
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    new-instance v4, Lcom/touchtype_fluency/TouchHistory;

    invoke-virtual {v0}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/touchtype_fluency/TouchHistory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setTouchHistory(Lcom/touchtype_fluency/TouchHistory;)V

    .line 2080
    .end local v0    # "currentWord":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getTouchHistory()Lcom/touchtype_fluency/TouchHistory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype_fluency/TouchHistory;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 2081
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    sget-object v4, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setLastSuccessfulStringPrediction([Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 2089
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPointCount:I

    .line 2090
    return v2
.end method

.method public removeWord(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 2
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->getSession()Lcom/touchtype_fluency/Session;

    move-result-object v0

    invoke-interface {v0}, Lcom/touchtype_fluency/Session;->getTrainer()Lcom/touchtype_fluency/Trainer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/touchtype_fluency/Trainer;->removeTerm(Ljava/lang/String;)V

    .line 2439
    return-void
.end method

.method public removeWords(Ljava/util/HashSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2443
    .local p1, "words":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonyericsson/ned/model/CodePointString;>;"
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Ljava/util/HashSet;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mRemoveWordsTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;

    .line 2444
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->getSwiftKeySession()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mRemoveWordsTask:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$RemoveWordsFromDictionary;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeySessionWrapper;->submitTask(Ljava/lang/Runnable;)V

    .line 2445
    return-void
.end method

.method public setCase(IZ)V
    .locals 1
    .param p1, "caseMode"    # I
    .param p2, "invalidate"    # Z

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setCaseMode(I)V

    .line 2185
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionData:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;->setIsUsingCaseResultFilters(Z)V

    .line 2186
    return-void
.end method

.method public setPredictionContext(Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "word"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 2530
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->updateReopenPredictionData(Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 2531
    return-void
.end method

.method public shallAcceptWordBeforeTrace(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    .line 2475
    instance-of v0, p1, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;

    .line 2476
    .end local p1    # "key":Lcom/sonyericsson/ned/controller/VirtualKey;
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/controller/LocalizedVirtualKey;->getPointCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shallAddSpaceBeforeTrace(Lcom/sonyericsson/ned/controller/VirtualKey;)Z
    .locals 1
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/VirtualKey;

    .prologue
    .line 2481
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSpaceLanguage:Z

    return v0
.end method

.method public unregisterPredictionListener(Lcom/sonyericsson/ned/controller/IPredictionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/ned/controller/IPredictionListener;

    .prologue
    .line 719
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionListeners:Ljava/util/ArrayList;

    monitor-enter v1

    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mPredictionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 721
    monitor-exit v1

    .line 722
    return-void

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public useSpaceAsWordSeparator()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->mSpaceLanguage:Z

    return v0
.end method
