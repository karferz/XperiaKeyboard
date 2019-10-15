.class public Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
.super Ljava/lang/Object;
.source "SwiftKeyLanguagePackHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DICTIONARIES_URL:Ljava/lang/String; = "https://skslm.swiftkey.net/sony/downloads/sksdk-1.5/languagePacksSSL.json"

.field private static final MAXIMUM_NUMBER_OF_ACTIVE_LANGUAGES:I = 0x3

.field private static final MAX_NBR_OF_LANGUAGE_UPDATE_NOTIFICATIONS:I = 0x3

.field public static final NOTIFICATION_ID:I = 0x0

.field private static final ONE_DAY:I = 0x5265c00

.field public static final PROGRESS_UNKNOWN:I = -0x1

.field private static final SWIFTKEY_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_CHECK_INTERVALL:I = 0x34fd9000

.field static final mLogger:Lcom/touchtype_fluency/LoggingListener;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mConfigurationHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

.field private final mContext:Landroid/content/Context;

.field private mDoesDictionaryNeedReloadDueToUserDownloadCompleted:Z

.field private final mDownloadListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloadListenersLock:Ljava/lang/Object;

.field private final mDownloadProgress:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

.field private final mLanguagePackConfigurationListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;

.field private mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private mLastAutoDownloadFailed:Z

.field private final mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mShownFailedNotification:Z

.field private final mWaitingForDownloadPendingVerifyAndRefresh:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->TAG:Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$1;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLogger:Lcom/touchtype_fluency/LoggingListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "languageLayoutConfig"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mDownloadListenersLock:Ljava/lang/Object;

    .line 102
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mDownloadListeners:Ljava/util/HashSet;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mDownloadProgress:Ljava/util/HashMap;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mWaitingForDownloadPendingVerifyAndRefresh:Ljava/util/concurrent/ConcurrentHashMap;

    .line 136
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 138
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 139
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mConfigurationHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .line 140
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$1;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguagePackConfigurationListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;

    .line 141
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Ljava/util/Set;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->writeUpdatesAvailableToSharedPreferences(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->doDownloadsAfterRefresh(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mWaitingForDownloadPendingVerifyAndRefresh:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->notifyUserAboutDownloadFailure(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;II)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->fireOnProgress(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->noteDownloadProgress(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->clearDownloadProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->updateAvailableDictionariesInSettings(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mConfigurationHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLastAutoDownloadFailed:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->fireOnDownloadFinished(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->fireOnDownloadCancelled(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->fireOnDownloadFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->createNoNetworkConnectionDialog(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Ljava/util/Set;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;
    .param p2, "x2"    # Ljava/util/Set;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->batchDownloadLanguages(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$902(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mShownFailedNotification:Z

    return p1
.end method

.method private batchDownloadLanguages(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Ljava/util/Set;)V
    .locals 2
    .param p1, "downloadFlow"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 664
    .local p2, "downloadLanguages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    .line 665
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 664
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->downloadPendingVerifyAndRefresh(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Ljava/util/Set;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 666
    return-void
.end method

.method private checkForDictionaryUpdates(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/ILanguage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 779
    .local p1, "activeLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/ILanguage;>;"
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    .line 780
    .local v1, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 781
    invoke-interface {v5}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLanguagesUpdateDictionaryNotificationCount()Ljava/util/HashMap;

    move-result-object v4

    .line 782
    .local v4, "languageUpdateNotifications":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 783
    .local v0, "activeLanguageDisplayNames":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/ned/model/ILanguage;

    .line 784
    .local v3, "language":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 785
    .local v2, "id":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 786
    invoke-interface {v3}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v7

    .line 785
    invoke-virtual {v6, v7}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 789
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "language":Lcom/sonyericsson/ned/model/ILanguage;
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mConfigurationHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    new-instance v6, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;

    invoke-direct {v6, p0, v4, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$6;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Ljava/util/HashMap;Ljava/util/HashMap;Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->checkForDictionaryUpdates(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;)V

    .line 860
    return-void
.end method

.method private checkIfLastDownloadFailed(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;)V
    .locals 1
    .param p1, "tokenProvider"    # Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    .prologue
    .line 557
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLastAutoDownloadFailed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mShownFailedNotification:Z

    if-nez v0, :cond_0

    .line 558
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->dismissPreviousAlertDialog()V

    .line 559
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->createFailDialog(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 562
    :cond_0
    return-void
.end method

.method private clearDownloadProgress(Ljava/lang/String;)V
    .locals 1
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mDownloadProgress:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method private cloneAllDownloadsListeners()Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 174
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mDownloadListenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 175
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mDownloadListeners:Ljava/util/HashSet;

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v1

    return-object v0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private createDialog(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;
    .locals 4
    .param p1, "tokenProvider"    # Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;
    .param p2, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 759
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 761
    .local v0, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 762
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 764
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;->getToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 765
    const/16 v3, 0x3eb

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 766
    const v3, 0x20002

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 768
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 769
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 770
    return-object v0
.end method

.method private createDownloadAlertDialog(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;Ljava/util/Set;)Landroid/app/AlertDialog;
    .locals 9
    .param p1, "tokenProvider"    # Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/app/AlertDialog;"
        }
    .end annotation

    .prologue
    .line 670
    .local p2, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->dismissPreviousAlertDialog()V

    .line 671
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 672
    .local v4, "resources":Landroid/content/res/Resources;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 674
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f070062

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 677
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    .local v3, "languageNames":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 679
    .local v1, "languageIndex":I
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 680
    .local v2, "languageIso3":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-virtual {v7, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    add-int/lit8 v1, v1, 0x1

    .line 682
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 683
    const-string v7, ", "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 688
    .end local v2    # "languageIso3":Ljava/lang/String;
    :cond_1
    const v6, 0x7f070063

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 690
    .local v5, "text":Ljava/lang/String;
    sget-boolean v6, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_SHOW_DATA_CHARGE_WARNING:Z

    if-eqz v6, :cond_2

    .line 691
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const v7, 0x7f07005a

    .line 692
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 691
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 694
    :cond_2
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 696
    const v6, 0x7f07003a

    new-instance v7, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;

    invoke-direct {v7, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$2;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;Ljava/util/Set;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 714
    const v6, 0x7f070013

    new-instance v7, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$3;

    invoke-direct {v7, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$3;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 725
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->createDialog(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method

.method private createFailDialog(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;)Landroid/app/AlertDialog;
    .locals 3
    .param p1, "tokenProvider"    # Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    .prologue
    .line 743
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 744
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070060

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 746
    const v1, 0x7f07005f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 748
    const v1, 0x7f070019

    new-instance v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$5;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 755
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->createDialog(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private createLanguagePackManager(Ljava/lang/String;)V
    .locals 4
    .param p1, "filesDir"    # Ljava/lang/String;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-nez v0, :cond_1

    .line 219
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLollipopOrNewer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->setUseDisconnectForCancel(Z)V

    .line 224
    :cond_0
    new-instance v0, Lcom/touchtype_fluency/util/FileStorage;

    .line 225
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getPreloadedPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/touchtype_fluency/util/FileStorage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "https://skslm.swiftkey.net/sony/downloads/sksdk-1.5/languagePacksSSL.json"

    const/4 v2, 0x3

    const/4 v3, 0x0

    .line 224
    invoke-static {v0, v1, v2, v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getInstance(Lcom/touchtype_fluency/util/Storage;Ljava/lang/String;ILcom/touchtype_fluency/LoggingListener;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 228
    :cond_1
    return-void
.end method

.method private createNoNetworkConnectionDialog(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;)Landroid/app/AlertDialog;
    .locals 3
    .param p1, "tokenProvider"    # Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;

    .prologue
    .line 729
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 730
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f07006e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 731
    const v1, 0x7f070069

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 732
    const v1, 0x7f070019

    new-instance v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$4;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$4;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 739
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->createDialog(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private dismissPreviousAlertDialog()V
    .locals 1

    .prologue
    .line 867
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->isAlertDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 870
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 871
    return-void
.end method

.method private doDownloadsAfterRefresh(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p1, "allLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/touchtype_fluency/util/LanguagePack;

    .line 237
    .local v5, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mWaitingForDownloadPendingVerifyAndRefresh:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 239
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mWaitingForDownloadPendingVerifyAndRefresh:Ljava/util/concurrent/ConcurrentHashMap;

    .line 240
    invoke-virtual {v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;

    .line 241
    .local v0, "data":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mWaitingForDownloadPendingVerifyAndRefresh:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    if-eqz v0, :cond_1

    .line 244
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;->access$200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    move-result-object v7

    invoke-virtual {p0, v7, v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->downloadDirectly(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Lcom/touchtype_fluency/util/LanguagePack;)V

    .line 246
    :cond_1
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mWaitingForDownloadPendingVerifyAndRefresh:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v7, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 250
    .end local v0    # "data":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;
    .end local v3    # "id":Ljava/lang/String;
    .end local v5    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mWaitingForDownloadPendingVerifyAndRefresh:Ljava/util/concurrent/ConcurrentHashMap;

    .line 251
    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 258
    .local v2, "downloadEntries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 259
    .local v1, "downloadDataEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getLanguageIso3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    .local v4, "languageIso3":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->fireOnDownloadFailed(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    .end local v1    # "downloadDataEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;>;"
    .end local v4    # "languageIso3":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mWaitingForDownloadPendingVerifyAndRefresh:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 266
    return-void
.end method

.method private fireOnDownloadCancelled(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->cloneAllDownloadsListeners()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;

    .line 151
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;->onDownloadCancelled(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;
    :cond_0
    return-void
.end method

.method private fireOnDownloadFailed(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->cloneAllDownloadsListeners()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;

    .line 163
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;->onDownloadFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;
    :cond_0
    return-void
.end method

.method private fireOnDownloadFinished(Ljava/lang/String;)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->cloneAllDownloadsListeners()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;

    .line 145
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;->onDownloadFinished(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;
    :cond_0
    return-void
.end method

.method private fireOnProgress(Ljava/lang/String;II)V
    .locals 3
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "current"    # I
    .param p3, "maximum"    # I

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->cloneAllDownloadsListeners()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;

    .line 157
    .local v0, "listener":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;->onProgress(Ljava/lang/String;II)V

    goto :goto_0

    .line 159
    .end local v0    # "listener":Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;
    :cond_0
    return-void
.end method

.method private getActiveLanguagesNeedingDownload(Ljava/util/Set;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Ljava/util/Set;
    .locals 5
    .param p1    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 538
    .local p1, "languagesScheduledForDownload":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 539
    .local v0, "activeLanguagesNeedingDownload":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 540
    .local v1, "languageIso3":Ljava/lang/String;
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 541
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePack(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v2

    .line 542
    .local v2, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->isPreinstalled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 543
    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->hasDictionary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 545
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 549
    .end local v1    # "languageIso3":Ljava/lang/String;
    .end local v2    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_3
    return-object v0
.end method

.method private initializeLanguagePackManager(Ljava/lang/String;)V
    .locals 3
    .param p1, "filesDir"    # Ljava/lang/String;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->createLanguagePackManager(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mConfigurationHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguagePackConfigurationListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;

    const-string v2, "Initiation1"

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    .line 215
    return-void
.end method

.method private isAlertDialogShowing()Z
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mAlertDialog:Landroid/app/AlertDialog;

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

.method private isAutoUpdateAllowed()Z
    .locals 2

    .prologue
    .line 655
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 656
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getAutoDictionaryUpdateMode()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    move-result-object v0

    .line 657
    .local v0, "autoDictionaryUpdateMode":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->WIFI_ONLY:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    .line 658
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasWifiConnection(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->ANY_TIME:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private noteDownloadProgress(Ljava/lang/String;I)V
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;
    .param p2, "downloadProgress"    # I

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mDownloadProgress:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method private notifyUserAboutDownloadFailure(Ljava/lang/String;)V
    .locals 9
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v7}, Lcom/sonyericsson/textinput/uxp/controller/settings/LanguageSelectActivity;->newIntent(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v4

    .line 442
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 443
    const-string v0, "notification-start"

    invoke-virtual {v4, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 445
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 446
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getLanguageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 448
    .local v8, "languageName":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07005e

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v8, v5, v1

    invoke-virtual {v0, v2, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 451
    .local v3, "text":Ljava/lang/String;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->ACTIVITY:Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    const v6, 0x7f0200aa

    move v2, v1

    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->createAndSendNotification(Landroid/content/Context;IILjava/lang/CharSequence;Landroid/content/Intent;Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;IZ)V

    .line 454
    return-void
.end method

.method private performAutoUpdate(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/ILanguage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 636
    .local p1, "activeLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/ILanguage;>;"
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 637
    invoke-interface {v5}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getAvailableDictionaryUpdates()Ljava/util/Set;

    move-result-object v3

    .line 638
    .local v3, "availableDictionaryUpdates":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 639
    .local v4, "languagesToBeDownloaded":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/ILanguage;

    .line 640
    .local v0, "activeLanguage":Lcom/sonyericsson/ned/model/ILanguage;
    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ILanguage;->getIso3()Ljava/lang/String;

    move-result-object v2

    .line 641
    .local v2, "activeLanguageIso3":Ljava/lang/String;
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 642
    .local v1, "activeLanguageId":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 643
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 646
    .end local v0    # "activeLanguage":Lcom/sonyericsson/ned/model/ILanguage;
    .end local v1    # "activeLanguageId":Ljava/lang/String;
    .end local v2    # "activeLanguageIso3":Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 650
    sget-object v5, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->AUTO_UPDATE:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    invoke-direct {p0, v5, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->batchDownloadLanguages(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Ljava/util/Set;)V

    .line 652
    :cond_2
    return-void
.end method

.method private declared-synchronized updateAvailableDictionariesInSettings(Ljava/lang/String;)V
    .locals 3
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 197
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getAvailableDictionaryUpdates()Ljava/util/Set;

    move-result-object v1

    .line 198
    .local v1, "updateIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 199
    .local v0, "newUpdateIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 200
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 201
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->writeUpdatesAvailableToSharedPreferences(Ljava/util/Set;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 197
    .end local v0    # "newUpdateIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "updateIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized writeUpdatesAvailableToSharedPreferences(Ljava/util/Set;)V
    .locals 2
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
    .line 206
    .local p1, "updateIDs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 207
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setAvailableDictionaryUpdates(Ljava/util/Set;)V

    .line 208
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    monitor-exit p0

    return-void

    .line 206
    .end local v0    # "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public addDownloadListener(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;

    .prologue
    .line 379
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mDownloadListenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mDownloadListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 381
    monitor-exit v1

    .line 382
    return-void

    .line 381
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelDownload(Ljava/lang/String;)V
    .locals 5
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 339
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->clearDownloadProgress(Ljava/lang/String;)V

    .line 340
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mWaitingForDownloadPendingVerifyAndRefresh:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    .line 342
    .local v0, "allLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/util/LanguagePack;

    .line 343
    .local v1, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->cancelDownload()V

    .line 348
    .end local v1    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_1
    return-void
.end method

.method public configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;)V
    .locals 2
    .param p1, "configurationListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;

    .prologue
    .line 356
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mConfigurationHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    const-string v1, "Initiation2"

    invoke-virtual {v0, p1, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    .line 358
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 553
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->dismissPreviousAlertDialog()V

    .line 554
    return-void
.end method

.method public doesDictionaryNeedReloadDueToUserDownloadCompleted()Z
    .locals 1

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mDoesDictionaryNeedReloadDueToUserDownloadCompleted:Z

    return v0
.end method

.method protected download(Lcom/touchtype_fluency/util/LanguagePack;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;)V
    .locals 2
    .param p1, "languagePack"    # Lcom/touchtype_fluency/util/LanguagePack;
    .param p2, "downloadListenerInternal"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;

    .prologue
    .line 285
    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getLanguageIso3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->noteDownloadProgress(Ljava/lang/String;I)V

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v0, p1, p2}, Lcom/touchtype_fluency/util/LanguagePackManager;->downloadLanguage(Lcom/touchtype_fluency/util/LanguagePack;Lcom/touchtype_fluency/util/ProgressListener;)Z

    .line 287
    return-void
.end method

.method public downloadDirectly(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 1
    .param p1, "downloadFlow"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;
    .param p2, "languagePack"    # Lcom/touchtype_fluency/util/LanguagePack;

    .prologue
    .line 276
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Lcom/touchtype_fluency/util/LanguagePack;)V

    invoke-virtual {p0, p2, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->download(Lcom/touchtype_fluency/util/LanguagePack;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListenerInternal;)V

    .line 277
    return-void
.end method

.method public downloadPendingVerifyAndRefresh(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Ljava/lang/String;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 1
    .param p1, "downloadFlow"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;
    .param p2, "languageIso3"    # Ljava/lang/String;
    .param p3, "filesDir"    # Ljava/lang/String;
    .param p4, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 301
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 302
    .local v0, "languagesIso3":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->downloadPendingVerifyAndRefresh(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Ljava/util/Set;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 304
    return-void
.end method

.method public downloadPendingVerifyAndRefresh(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Ljava/util/Set;Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 7
    .param p1, "downloadFlow"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;
    .param p3, "filesDir"    # Ljava/lang/String;
    .param p4, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "languagesIso3":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 323
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    .local v1, "languageIso3":Ljava/lang/String;
    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->noteDownloadProgress(Ljava/lang/String;I)V

    .line 325
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mWaitingForDownloadPendingVerifyAndRefresh:Ljava/util/concurrent/ConcurrentHashMap;

    .line 326
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;

    const/4 v6, 0x0

    invoke-direct {v5, p4, p1, v6}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$WaitingForDownloadData;-><init>(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$1;)V

    .line 325
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 329
    .end local v1    # "languageIso3":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, p3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->createLanguagePackManager(Ljava/lang/String;)V

    .line 330
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->USER_DOWNLOAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    invoke-virtual {p1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->AUTO_DOWNLOAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    .line 331
    invoke-virtual {p1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 332
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getHasAgreedToDictionaryDownload()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 333
    .local v0, "isUserConfirmedDownload":Z
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mConfigurationHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguagePackConfigurationListener:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$LanguagePackConfigurationListener;

    const-string v4, "Initiation1"

    invoke-virtual {v2, v3, v4, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;Z)Z

    .line 336
    return-void
.end method

.method public downloadWaitingForNetwork(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 514
    if-eqz p1, :cond_2

    .line 516
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 517
    .local v4, "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    .line 518
    .local v3, "settings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v2

    .line 521
    .local v2, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getDictionariesWaitingForNetwork()Ljava/util/Set;

    move-result-object v0

    .line 522
    .local v0, "dictionariesWaitingForNetwork":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 523
    invoke-interface {v2, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setDictionariesWaitingForNetwork(Ljava/util/Set;)V

    .line 527
    :cond_0
    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getDictionariesWaitingForWiFi()Ljava/util/Set;

    move-result-object v1

    .line 528
    .local v1, "dictionariesWaitingForWiFi":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 529
    invoke-interface {v2, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setDictionariesWaitingForWiFi(Ljava/util/Set;)V

    .line 532
    :cond_1
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 534
    .end local v0    # "dictionariesWaitingForNetwork":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "dictionariesWaitingForWiFi":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    .end local v3    # "settings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .end local v4    # "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    :cond_2
    return-void
.end method

.method public downloadWaitingForWiFi(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 488
    if-eqz p1, :cond_2

    .line 490
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 491
    .local v4, "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    .line 492
    .local v3, "settings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v2

    .line 494
    .local v2, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getDictionariesWaitingForWiFi()Ljava/util/Set;

    move-result-object v1

    .line 495
    .local v1, "dictionariesWaitingForWiFi":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 496
    invoke-interface {v2, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setDictionariesWaitingForWiFi(Ljava/util/Set;)V

    .line 501
    :cond_0
    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getDictionariesWaitingForNetwork()Ljava/util/Set;

    move-result-object v0

    .line 502
    .local v0, "dictionariesWaitingForNetwork":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 503
    invoke-interface {v2, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setDictionariesWaitingForNetwork(Ljava/util/Set;)V

    .line 506
    :cond_1
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 508
    .end local v0    # "dictionariesWaitingForNetwork":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "dictionariesWaitingForWiFi":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    .end local v3    # "settings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .end local v4    # "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    :cond_2
    return-void
.end method

.method public getAvailableUpdates(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)Ljava/util/Set;
    .locals 5
    .param p1, "mSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 457
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 458
    .local v2, "languages":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getAvailableDictionaryUpdates()Ljava/util/Set;

    move-result-object v1

    .line 459
    .local v1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 460
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getLanguageIso3(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 462
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method public getDownloadPercentage(Ljava/lang/String;)I
    .locals 2
    .param p1, "languageIso3"    # Ljava/lang/String;

    .prologue
    .line 181
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mDownloadProgress:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 182
    .local v0, "progress":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 183
    const/4 v1, -0x1

    .line 185
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getLanguagePack(Ljava/lang/String;)Lcom/touchtype_fluency/util/LanguagePack;
    .locals 5
    .param p1, "languageIso3"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 402
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-eqz v2, :cond_1

    .line 403
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    invoke-virtual {v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    .line 404
    .local v0, "allLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/util/LanguagePack;

    .line 405
    .local v1, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->getId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 410
    .end local v0    # "allLanguages":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    .end local v1    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-nez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->initializeLanguagePackManager(Ljava/lang/String;)V

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method public isDictionaryNeedingNetworkDownload(Landroid/content/Context;Lcom/touchtype_fluency/util/LanguagePack;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "languagePack"    # Lcom/touchtype_fluency/util/LanguagePack;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "languageIso3"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "isUpdateNeeded"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 430
    if-eqz p2, :cond_3

    .line 431
    if-eqz p4, :cond_0

    invoke-interface {p2}, Lcom/touchtype_fluency/util/LanguagePack;->isUpdateAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 432
    :cond_0
    invoke-interface {p2}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p2}, Lcom/touchtype_fluency/util/LanguagePack;->isPreinstalled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move v0, v1

    .line 434
    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->isLanguagePackManagerVerified()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p1, p3}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->hasDictionary(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public isDownloadInProgress(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/touchtype_fluency/util/LanguagePack;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 473
    .local p1, "languagePacks":Ljava/util/List;, "Ljava/util/List<Lcom/touchtype_fluency/util/LanguagePack;>;"
    const/4 v0, 0x0

    .line 474
    .local v0, "isDownloadInProgress":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/touchtype_fluency/util/LanguagePack;

    .line 475
    .local v1, "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    invoke-interface {v1}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloadInProgress()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 476
    const/4 v0, 0x1

    .line 480
    .end local v1    # "languagePack":Lcom/touchtype_fluency/util/LanguagePack;
    :cond_1
    return v0
.end method

.method public isLanguagePackManagerVerified()Z
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mConfigurationHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isVerified()Z

    move-result v0

    return v0
.end method

.method public notifyUnusedDictionariesDeleted()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mConfigurationHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->notifyUnusedDictionariesDeleted()V

    .line 365
    return-void
.end method

.method public refreshAndEventualAutoDownload(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;Ljava/util/ArrayList;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;Z)V
    .locals 8
    .param p1, "tokenProvider"    # Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;
    .param p3, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .param p4, "isDialogsAllowed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/ned/model/ILanguage;",
            ">;",
            "Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 567
    .local p2, "activeLanguages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/model/ILanguage;>;"
    if-eqz p4, :cond_0

    .line 568
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->checkIfLastDownloadFailed(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;)V

    .line 571
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 572
    .local v3, "languagesToBeDownloaded":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getDictionariesWaitingForNetwork()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 573
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasWifiConnection(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 574
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getDictionariesWaitingForWiFi()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 577
    :cond_1
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getHasShownDictionaryDownloadDialog()Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz p4, :cond_4

    .line 578
    invoke-direct {p0, v3, p3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getActiveLanguagesNeedingDownload(Ljava/util/Set;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Ljava/util/Set;

    move-result-object v0

    .line 581
    .local v0, "activeLanguagesNeedingDownload":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 582
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->createDownloadAlertDialog(Lcom/sonyericsson/textinput/uxp/view/ITokenProvider;Ljava/util/Set;)Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mAlertDialog:Landroid/app/AlertDialog;

    .line 584
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 606
    .end local v0    # "activeLanguagesNeedingDownload":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasNetworkConnection(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 607
    invoke-virtual {v3}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 611
    sget-object v4, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;->AUTO_DOWNLOAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;

    invoke-direct {p0, v4, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->batchDownloadLanguages(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadFlow;Ljava/util/Set;)V

    .line 633
    :cond_3
    :goto_1
    return-void

    .line 586
    :cond_4
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getHasAgreedToDictionaryDownload()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 588
    invoke-direct {p0, v3, p3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getActiveLanguagesNeedingDownload(Ljava/util/Set;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)Ljava/util/Set;

    move-result-object v0

    .line 590
    .restart local v0    # "activeLanguagesNeedingDownload":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 594
    invoke-virtual {v3, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 600
    :cond_5
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v1

    .line 601
    .local v1, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setHasAgreedToDictionaryDownload(Z)V

    .line 602
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    goto :goto_0

    .line 613
    .end local v0    # "activeLanguagesNeedingDownload":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_6
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->isAutoUpdateAllowed()Z

    move-result v2

    .line 615
    .local v2, "isAutoUpdateAllowed":Z
    if-eqz v2, :cond_7

    .line 616
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->performAutoUpdate(Ljava/util/ArrayList;)V

    .line 619
    :cond_7
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->allowedToConnectToNetwork(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    if-eqz v2, :cond_3

    .line 620
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastDictionaryListRefreshTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/32 v6, 0x34fd9000

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 622
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->checkForDictionaryUpdates(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public removeDownloadListener(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler$DownloadListener;

    .prologue
    .line 385
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mDownloadListenersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mDownloadListeners:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 387
    monitor-exit v1

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDoesDictionaryNeedReloadDueToUserDownloadCompleted(Z)V
    .locals 0
    .param p1, "doesDictionaryNeedReloadDueToUserDownloadCompleted"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->mDoesDictionaryNeedReloadDueToUserDownloadCompleted:Z

    .line 398
    return-void
.end method
