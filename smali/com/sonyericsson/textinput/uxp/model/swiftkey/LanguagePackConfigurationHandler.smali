.class public Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
.super Ljava/lang/Object;
.source "LanguagePackConfigurationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;,
        Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_VERBOSE:Z = false

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_NOT_SET:J


# instance fields
.field private final mConfigurationListenerQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigurationLock:Ljava/lang/Object;

.field private final mContext:Landroid/content/Context;

.field private mHasRetriedFailedNuking:Z

.field private mIsRefreshed:Z

.field private mIsRefreshing:Z

.field private mIsVerified:Z

.field private mIsVerifying:Z

.field private mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

.field private final mListenerLock:Ljava/lang/Object;

.field private mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

.field private mRefreshRetryCount:I

.field private final mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mVerifyRetryCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->TAG:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mListenerLock:Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->NORMAL:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    .line 79
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mContext:Landroid/content/Context;

    .line 80
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationListenerQueue:Ljava/util/ArrayList;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->doReset(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->verifyIfNeeded(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->refreshIfNeeded(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->fireOnConfigured(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setRefreshing(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 35
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshRetryCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshRetryCount:I

    return p1
.end method

.method static synthetic access$1408(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 35
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshRetryCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeLastRefreshTime()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setRefreshed(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->scheduleConfigurationIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 35
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mVerifyRetryCount:I

    return v0
.end method

.method static synthetic access$402(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mVerifyRetryCount:I

    return p1
.end method

.method static synthetic access$408(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 35
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mVerifyRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mVerifyRetryCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeLastVerifyTime()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setVerified(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setVerifying(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;)Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private doReset(Ljava/lang/String;)V
    .locals 3
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 288
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 289
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeResetVerifyTime()V

    .line 290
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeResetRefreshTime()V

    .line 291
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mVerifyRetryCount:I

    .line 292
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshRetryCount:I

    .line 293
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    .line 294
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->scheduleConfigurationIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    move-result v0

    .line 295
    .local v0, "isCallbackScheduledForLater":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-nez v0, :cond_0

    .line 297
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->fireOnConfigured(Z)V

    .line 299
    :cond_0
    return-void

    .line 295
    .end local v0    # "isCallbackScheduledForLater":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private fireOnConfigured(Z)V
    .locals 4
    .param p1, "isSuccess"    # Z

    .prologue
    .line 636
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 640
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationListenerQueue:Ljava/util/ArrayList;

    .line 641
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 642
    .local v0, "configurationListenerQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;>;"
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationListenerQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 643
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;

    .line 649
    .local v1, "listener":Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
    invoke-interface {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;->onLanguagePacksConfigured(Z)V

    goto :goto_0

    .line 643
    .end local v0    # "configurationListenerQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;>;"
    .end local v1    # "listener":Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 651
    .restart local v0    # "configurationListenerQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;>;"
    :cond_0
    return-void
.end method

.method private getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 193
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;

    return-object v0
.end method

.method private isRefreshing()Z
    .locals 2

    .prologue
    .line 176
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsRefreshing:Z

    monitor-exit v1

    return v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isVerifying()Z
    .locals 2

    .prologue
    .line 141
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsVerifying:Z

    monitor-exit v1

    return v0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private noteRefreshReason(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 654
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mContext:Landroid/content/Context;

    .line 655
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 656
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-eqz v0, :cond_0

    .line 657
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushDictionaryJsonRefreashed(Ljava/lang/String;)V

    .line 659
    :cond_0
    return-void
.end method

.method private refreshIfNeeded(Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isUserConfirmedDownload"    # Z

    .prologue
    .line 421
    const/4 v0, 0x1

    .line 422
    .local v0, "isRefreshScheduled":Z
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 423
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->allowedToConnectToNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    if-eq v1, v3, :cond_1

    .line 426
    const/4 v0, 0x0

    .line 437
    :cond_0
    :goto_0
    monitor-exit v2

    .line 438
    return v0

    .line 428
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastDictionaryListRefreshTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->UPDATE_CHECK:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    if-ne v1, v3, :cond_3

    .line 430
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->refreshLanguagePacks(Ljava/lang/String;Z)V

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 431
    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isRefreshing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 433
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setRefreshed(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshLanguagePacks(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isUserConfirmedDownload"    # Z

    .prologue
    .line 553
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v4

    .line 554
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isRefreshing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 555
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 559
    .local v2, "startTime":J
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setRefreshed(Z)V

    .line 560
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setRefreshing(Z)V

    .line 561
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;

    invoke-direct {v0, p0, v2, v3, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$4;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;JZ)V

    .line 619
    .local v0, "refreshListener":Lcom/touchtype_fluency/util/RefreshListener;
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->noteRefreshReason(Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    sget-object v5, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    if-eq v1, v5, :cond_1

    .line 621
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->refresh(Lcom/touchtype_fluency/util/RefreshListener;)V

    .line 631
    .end local v0    # "refreshListener":Lcom/touchtype_fluency/util/RefreshListener;
    .end local v2    # "startTime":J
    :cond_0
    :goto_0
    monitor-exit v4

    .line 632
    return-void

    .line 623
    .restart local v0    # "refreshListener":Lcom/touchtype_fluency/util/RefreshListener;
    .restart local v2    # "startTime":J
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->forceRefresh(Lcom/touchtype_fluency/util/RefreshListener;)V

    goto :goto_0

    .line 631
    .end local v0    # "refreshListener":Lcom/touchtype_fluency/util/RefreshListener;
    .end local v2    # "startTime":J
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private reset(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 250
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 251
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isVerifying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->doReset(Ljava/lang/String;)V

    .line 261
    :goto_0
    monitor-exit v1

    .line 262
    return-void

    .line 254
    :cond_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$1;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    goto :goto_0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private scheduleConfigurationIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z
    .locals 1
    .param p1, "configurationListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->scheduleConfigurationIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private scheduleConfigurationIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "configurationListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "isUserConfirmedDownload"    # Z

    .prologue
    .line 356
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 363
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationListenerQueue:Ljava/util/ArrayList;

    .line 364
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 365
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationListenerQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->verifyIfNeeded(Ljava/lang/String;Z)Z

    move-result v0

    .line 370
    .local v0, "isCallbackScheduledForLater":Z
    if-nez v0, :cond_1

    .line 371
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->refreshIfNeeded(Ljava/lang/String;Z)Z

    move-result v0

    .line 373
    :cond_1
    return v0

    .line 367
    .end local v0    # "isCallbackScheduledForLater":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setRefreshed(Z)V
    .locals 2
    .param p1, "isRefreshed"    # Z

    .prologue
    .line 167
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsRefreshed:Z

    .line 172
    monitor-exit v1

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setRefreshing(Z)V
    .locals 2
    .param p1, "isRefreshing"    # Z

    .prologue
    .line 182
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 186
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsRefreshing:Z

    .line 187
    monitor-exit v1

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setVerified(Z)V
    .locals 2
    .param p1, "verified"    # Z

    .prologue
    .line 132
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsVerified:Z

    .line 137
    monitor-exit v1

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setVerifying(Z)V
    .locals 2
    .param p1, "verifying"    # Z

    .prologue
    .line 147
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_0
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsVerifying:Z

    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private verifyIfNeeded(Ljava/lang/String;Z)Z
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isUserConfirmedDownload"    # Z

    .prologue
    const/4 v0, 0x1

    .line 409
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 410
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getLastDictionaryListVerifyTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 411
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->verifyLanguagePacks(Ljava/lang/String;Z)V

    .line 416
    :cond_0
    monitor-exit v1

    :goto_0
    return v0

    .line 412
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isVerifying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 413
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setVerified(Z)V

    .line 414
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 417
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private verifyLanguagePacks(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isUserConfirmedDownload"    # Z

    .prologue
    .line 457
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v7

    .line 458
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isVerifying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    .line 463
    .local v2, "startTime":J
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setVerified(Z)V

    .line 464
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->setVerifying(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    :try_start_1
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$3;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;JLjava/lang/String;Z)V

    .line 530
    .local v0, "completionListener":Lcom/touchtype_fluency/util/CompletionListener;
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v1

    const-string v4, "SEMC_nolimit_flow_parameter_7497782f"

    invoke-virtual {v1, v4, v0}, Lcom/touchtype_fluency/util/LanguagePackManager;->verify(Ljava/lang/String;Lcom/touchtype_fluency/util/CompletionListener;)Z
    :try_end_1
    .catch Lcom/touchtype_fluency/LicenseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    .end local v0    # "completionListener":Lcom/touchtype_fluency/util/CompletionListener;
    .end local v2    # "startTime":J
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v7

    .line 541
    return-void

    .line 531
    .restart local v2    # "startTime":J
    :catch_0
    move-exception v6

    .line 532
    .local v6, "e":Lcom/touchtype_fluency/LicenseException;
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->TAG:Ljava/lang/String;

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/tracker/SomcFabric;->logNonFatalEvent(Ljava/lang/Exception;)V

    goto :goto_0

    .line 540
    .end local v2    # "startTime":J
    .end local v6    # "e":Lcom/touchtype_fluency/LicenseException;
    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private writeLastRefreshTime()V
    .locals 2

    .prologue
    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeLastRefreshTime(J)V

    .line 104
    return-void
.end method

.method private writeLastRefreshTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 115
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 116
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastDictionaryListRefreshTime(J)V

    .line 117
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 118
    return-void
.end method

.method private writeLastVerifyTime()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeLastVerifyTime(J)V

    .line 86
    return-void
.end method

.method private writeLastVerifyTime(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 97
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 98
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastDictionaryListVerifyTime(J)V

    .line 99
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 100
    return-void
.end method

.method private writeResetRefreshTime()V
    .locals 2

    .prologue
    .line 107
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeLastRefreshTime(J)V

    .line 108
    return-void
.end method

.method private writeResetVerifyTime()V
    .locals 2

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->writeLastVerifyTime(J)V

    .line 90
    return-void
.end method


# virtual methods
.method public checkForDictionaryUpdates(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;)V
    .locals 4
    .param p1, "configurationListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 274
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    sget-object v3, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    if-eq v1, v3, :cond_0

    .line 276
    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->UPDATE_CHECK:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    .line 278
    :cond_0
    const-string v1, "Update"

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->scheduleConfigurationIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    move-result v0

    .line 280
    .local v0, "isCallbackScheduledForLater":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    if-nez v0, :cond_1

    .line 282
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->fireOnConfigured(Z)V

    .line 284
    :cond_1
    return-void

    .line 280
    .end local v0    # "isCallbackScheduledForLater":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public configureForced(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "configurationListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 387
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 388
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    if-ne v0, v2, :cond_1

    .line 389
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;->FORCED:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mRefreshMode:Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$RefreshMode;

    .line 390
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    .line 403
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    .line 404
    monitor-exit v1

    .line 405
    return-void

    .line 393
    :cond_1
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$2;-><init>(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z

    goto :goto_0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;)Z
    .locals 1
    .param p1, "configurationListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public configureIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "configurationListener"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "isUserConfirmedDownload"    # Z

    .prologue
    .line 324
    .line 325
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->scheduleConfigurationIfNeeded(Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$ConfigurationListener;Ljava/lang/String;Z)Z

    move-result v0

    .line 326
    .local v0, "isCallbackScheduledForLater":Z
    if-nez v0, :cond_0

    .line 327
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->fireOnConfigured(Z)V

    .line 329
    :cond_0
    return v0
.end method

.method public isRefreshed()Z
    .locals 2

    .prologue
    .line 161
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsRefreshed:Z

    monitor-exit v1

    return v0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isVerified()Z
    .locals 2

    .prologue
    .line 126
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mConfigurationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mIsVerified:Z

    monitor-exit v1

    return v0

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyUnusedDictionariesDeleted()V
    .locals 1

    .prologue
    .line 245
    const-string v0, "PreInstalledDeleted"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->reset(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public nukeLanguagePackFile(Ljava/lang/String;)Z
    .locals 6
    .param p1, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mContext:Landroid/content/Context;

    .line 208
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->nukeLanguageConfig(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;

    move-result-object v0

    .line 209
    .local v0, "result":Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;
    sget-object v3, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;->SUCCESS:Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->TAG:Ljava/lang/String;

    const-string v3, "Corrupt language pack"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->reset(Ljava/lang/String;)V

    .line 234
    :goto_0
    return v1

    .line 216
    :cond_0
    sget-object v3, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;->ERROR:Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils$NukingResult;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mHasRetriedFailedNuking:Z

    if-nez v3, :cond_1

    .line 219
    const-wide/16 v4, 0xc8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 220
    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mHasRetriedFailedNuking:Z

    .line 221
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->nukeLanguagePackFile(Ljava/lang/String;)Z

    move v1, v2

    .line 222
    goto :goto_0

    .line 224
    :cond_1
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;->mHasRetriedFailedNuking:Z

    :cond_2
    move v1, v2

    .line 234
    goto :goto_0
.end method
