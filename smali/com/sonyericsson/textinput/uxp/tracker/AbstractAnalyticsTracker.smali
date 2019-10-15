.class public abstract Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;
.super Ljava/lang/Object;
.source "AbstractAnalyticsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;
    }
.end annotation


# static fields
.field private static final CONTAINER_ID:Ljava/lang/String; = "GTM-KGWRW7"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_NUMBER_OF_DAYS_BETWEEN_SNAPSHOTS:I = 0x1e

.field private static final DO_DEBUG:Z = false

.field private static final GTM_CONTAINER_AWAIT_INTERVAL:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

.field private final mEventListenersQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mGaGtmUtils:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

.field private mIsInitialized:Z


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

    const-class v1, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/TextInputApplication;)V
    .locals 1
    .param p1, "application"    # Lcom/sonyericsson/textinput/uxp/TextInputApplication;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mEventListenersQueue:Ljava/util/List;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;)Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mGaGtmUtils:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;
    .param p1, "x1"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mGaGtmUtils:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mEventListenersQueue:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->pushSnapshotEvent(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 35
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->getNumberOfDaysBetweenSnapshot(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)I

    move-result v0

    return v0
.end method

.method private declared-synchronized getGaGtmUtils(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 192
    .local v0, "appContext":Landroid/content/Context;
    const/4 v1, 0x1

    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmSystemSetting;->readSomcGaSetting(Landroid/content/Context;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 193
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDirectBootLocked(Landroid/content/Context;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 197
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mGaGtmUtils:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    if-eqz v1, :cond_2

    .line 198
    if-eqz p1, :cond_0

    .line 199
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$2;

    invoke-direct {v2, p0, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$2;-><init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 206
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 185
    .end local v0    # "appContext":Landroid/content/Context;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 209
    .restart local v0    # "appContext":Landroid/content/Context;
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mEventListenersQueue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v1, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$3;-><init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;)V

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->initGaGtmUtils(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static getNumberOfDaysBetweenSnapshot(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)I
    .locals 6
    .param p0, "gaGtmUtils"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->getContainerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;

    move-result-object v1

    .line 84
    .local v1, "containerHolder":Lcom/google/android/gms/tagmanager/ContainerHolder;
    const/4 v2, 0x0

    .line 85
    .local v2, "nbrOfDays":I
    if-eqz v1, :cond_2

    .line 86
    invoke-interface {v1}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    .line 87
    .local v0, "container":Lcom/google/android/gms/tagmanager/Container;
    if-eqz v0, :cond_0

    .line 88
    const-string v3, "textinput-daysBetweenSnapshots"

    invoke-virtual {v0, v3}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-int v2, v4

    .line 90
    :cond_0
    if-gtz v2, :cond_1

    .line 91
    const/16 v2, 0x1e

    .line 96
    .end local v0    # "container":Lcom/google/android/gms/tagmanager/Container;
    :cond_1
    :goto_0
    return v2

    .line 94
    :cond_2
    const/16 v2, 0x1e

    goto :goto_0
.end method

.method private declared-synchronized initGaGtmUtils(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mIsInitialized:Z

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->mIsInitialized:Z

    .line 109
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$1;-><init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_0
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static pushSnapshotEvent(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p0, "gaGtmUtils"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "action"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 69
    const-string v6, "event"

    .line 70
    .local v6, "keyEvent":Ljava/lang/String;
    const-string v2, "gagtm-eventCategory"

    .line 71
    .local v2, "eventCategory":Ljava/lang/String;
    const-string v1, "gagtm-eventAction"

    .line 72
    .local v1, "eventAction":Ljava/lang/String;
    const-string v3, "gagtm-eventLabel"

    .line 73
    .local v3, "eventLabel":Ljava/lang/String;
    const-string v5, "gagtm-eventValue"

    .line 74
    .local v5, "eventValue":Ljava/lang/String;
    const-string v4, "snapshotEvent"

    .line 75
    .local v4, "eventName":Ljava/lang/String;
    const-string v0, "SnapshotSettings"

    .line 76
    .local v0, "category":Ljava/lang/String;
    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "event"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "snapshotEvent"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "gagtm-eventCategory"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-string v9, "SnapshotSettings"

    aput-object v9, v7, v8

    const/4 v8, 0x4

    const-string v9, "gagtm-eventAction"

    aput-object v9, v7, v8

    const/4 v8, 0x5

    aput-object p1, v7, v8

    const/4 v8, 0x6

    const-string v9, "gagtm-eventLabel"

    aput-object v9, v7, v8

    const/4 v8, 0x7

    aput-object p2, v7, v8

    const/16 v8, 0x8

    const-string v9, "gagtm-eventValue"

    aput-object v9, v7, v8

    const/16 v8, 0x9

    const-wide/16 v10, 0x0

    .line 78
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    .line 76
    invoke-static {v7}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected getNumberOfDaysBetweenSnapshot(Lcom/sonyericsson/textinput/uxp/tracker/OnContainerDataListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/tracker/OnContainerDataListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 330
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$8;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$8;-><init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;Lcom/sonyericsson/textinput/uxp/tracker/OnContainerDataListener;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->getGaGtmUtils(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;)V

    .line 337
    return-void
.end method

.method public pushAppView(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 286
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$6;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$6;-><init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->getGaGtmUtils(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;)V

    .line 292
    return-void
.end method

.method protected pushCustomDimension(Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;Ljava/lang/String;)V
    .locals 1
    .param p1, "dimension"    # Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 268
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$5;-><init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->getGaGtmUtils(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;)V

    .line 278
    return-void
.end method

.method protected pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "action"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 235
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 236
    return-void
.end method

.method protected pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .param p1, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "action"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "value"    # J

    .prologue
    .line 248
    new-instance v1, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$4;-><init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->getGaGtmUtils(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;)V

    .line 258
    return-void
.end method

.method protected pushNonSampledEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "action"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 303
    const-string v5, "event"

    .line 304
    .local v5, "keyEvent":Ljava/lang/String;
    const-string v1, "gagtm-eventCategory"

    .line 305
    .local v1, "eventCategory":Ljava/lang/String;
    const-string v0, "gagtm-eventAction"

    .line 306
    .local v0, "eventAction":Ljava/lang/String;
    const-string v2, "gagtm-eventLabel"

    .line 307
    .local v2, "eventLabel":Ljava/lang/String;
    const-string v4, "gagtm-eventValue"

    .line 308
    .local v4, "eventValue":Ljava/lang/String;
    const-string v3, "fullSampleRateEvent"

    .line 309
    .local v3, "eventName":Ljava/lang/String;
    new-instance v6, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$7;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$7;-><init>(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;->getGaGtmUtils(Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker$OnAnalyticsEventListener;)V

    .line 317
    return-void
.end method
