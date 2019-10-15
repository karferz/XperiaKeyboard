.class public Lcom/sonymobile/gagtmhelper/GaGtmUtils;
.super Ljava/lang/Object;
.source "GaGtmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;,
        Lcom/sonymobile/gagtmhelper/GaGtmUtils$GaSettingsMode;
    }
.end annotation


# static fields
.field private static final GA_DEFAULT_DISPATCH_PERIOD:I = 0x708

.field private static final GTM_BUFFERED_EVENTS_FILENAME:Ljava/lang/String; = "GTM_buffered_events"

.field private static final GTM_BUFFERED_EVENTS_VERSION:I = 0x0

.field private static final GTM_KEY_DEVICE_BUILD_ID:Ljava/lang/String; = "gagtm-deviceBuildId"

.field private static final GTM_KEY_DEVICE_BUILD_MODEL:Ljava/lang/String; = "gagtm-deviceBuildModel"

.field private static final GTM_KEY_DEVICE_BUILD_TYPE:Ljava/lang/String; = "gagtm-deviceBuildType"

.field private static final GTM_KEY_DEVICE_CUSTOMER_ID:Ljava/lang/String; = "gagtm-deviceCustomerId"

.field private static final GTM_KEY_DEVICE_CUSTOMIZATION:Ljava/lang/String; = "gagtm-deviceCustomization"

.field private static final GTM_KEY_DEVICE_CUSTOMIZATION_REVISION:Ljava/lang/String; = "gagtm-deviceCustomizationRevision"

.field private static final GTM_KEY_DEVICE_NETWORK_MCC:Ljava/lang/String; = "gagtm-deviceNetworkMcc"

.field private static final GTM_KEY_DEVICE_NETWORK_MNC:Ljava/lang/String; = "gagtm-deviceNetworkMnc"

.field private static final GTM_KEY_DEVICE_SIM_MCC:Ljava/lang/String; = "gagtm-deviceSimMcc"

.field private static final GTM_KEY_DEVICE_SIM_MNC:Ljava/lang/String; = "gagtm-deviceSimMnc"

.field private static final GTM_KEY_EVENT:Ljava/lang/String; = "event"

.field private static final GTM_KEY_EVENT_ACTION:Ljava/lang/String; = "gagtm-eventAction"

.field private static final GTM_KEY_EVENT_CATEGORY:Ljava/lang/String; = "gagtm-eventCategory"

.field private static final GTM_KEY_EVENT_LABEL:Ljava/lang/String; = "gagtm-eventLabel"

.field private static final GTM_KEY_EVENT_VALUE:Ljava/lang/String; = "gagtm-eventValue"

.field private static final GTM_KEY_EXCEPTION_DESCRIPTION:Ljava/lang/String; = "gagtm-exceptionDescription"

.field private static final GTM_KEY_GA_DISPATCH_PERIOD:Ljava/lang/String; = "gagtm-dispatchPeriod"

.field private static final GTM_KEY_GA_EXCEPTION_MAX_REPORTED_ROWS:Ljava/lang/String; = "gagtm-exceptionMaxReportedRows"

.field private static final GTM_KEY_GA_EXCEPTION_MAX_TRAVERSED_ROWS:Ljava/lang/String; = "gagtm-exceptionMaxTraversedRows"

.field private static final GTM_KEY_GA_EXCEPTION_PACKAGE_NAMES:Ljava/lang/String; = "gagtm-exceptionPackageNames"

.field private static final GTM_KEY_SCREEN_NAME:Ljava/lang/String; = "gagtm-screenName"

.field private static final GTM_KEY_TIMING_CATEGORY:Ljava/lang/String; = "gagtm-timingCategory"

.field private static final GTM_KEY_TIMING_LABEL:Ljava/lang/String; = "gagtm-timingLabel"

.field private static final GTM_KEY_TIMING_VALUE:Ljava/lang/String; = "gagtm-timingValue"

.field private static final GTM_KEY_TIMING_VAR:Ljava/lang/String; = "gagtm-timingVar"

.field public static final IGNORE_SETTING:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "GaGtmHelper"

.field private static final MANUFACTURER_SONY:Ljava/lang/String; = "Sony"

.field private static final MANUFACTURER_SONYERICSSON:Ljava/lang/String; = "SonyEricsson"

.field private static final MAX_BUFFERED_PENDING_EVENTS:I = 0x32

.field private static final SYSTEM_BUILD_CUSTOMER_ID:Ljava/lang/String; = "ro.somc.customerid"

.field private static final SYSTEM_BUILD_CUSTOMIZATION:Ljava/lang/String; = "ro.semc.version.cust"

.field private static final SYSTEM_BUILD_CUSTOMIZATION_REVISION:Ljava/lang/String; = "ro.semc.version.cust_revision"

.field public static final XPERIA_RELY_ON_SETTING_OTHER_MANUFACTURERS_OPT_IN:I = 0x1

.field private static volatile sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

.field private static final sLock:Ljava/lang/Object;

.field private static final sPendingEventsLock:Ljava/lang/Object;


# instance fields
.field private mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

.field private mContainerId:Ljava/lang/String;

.field private volatile mContainerLoaded:Z

.field private mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

.field private mContainerLoadingTimeout:I

.field private mContext:Landroid/content/Context;

.field private mDefaultContainerResourceId:I

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

.field private mInitCalled:Z

.field private mPendingEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSettingsMode:I

.field private mTagManager:Lcom/google/android/gms/tagmanager/TagManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    .line 131
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sPendingEventsLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    .line 133
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    .line 136
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    .line 138
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    .line 140
    iput-boolean v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    .line 141
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    .line 144
    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 154
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    .line 158
    iput-boolean v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    .line 301
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const-string v0, "GaGtmHelper"

    const-string v1, "GaGtmUtils constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 46
    iget v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mSettingsMode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->deserializeQueueFromFileAndPushLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->flushDataLayerQueueLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->isRunningOnXperia()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;)Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .param p1, "x1"    # Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->downloadContainerLocked()V

    return-void
.end method

.method static synthetic access$602(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Lcom/google/android/gms/tagmanager/ContainerHolder;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .param p1, "x1"    # Lcom/google/android/gms/tagmanager/ContainerHolder;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushInitDefaultsToDataLayer()V

    return-void
.end method

.method static synthetic access$902(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    return p1
.end method

.method private deserializeQueueFromFileAndPushLocked()V
    .locals 22

    .prologue
    .line 397
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 398
    const-string v17, "GaGtmHelper"

    const-string v18, "deserializeQueueFromFile"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v17

    const-string v18, "GTM_buffered_events"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v3, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 404
    .local v3, "bufferFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_2

    .line 405
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 406
    const-string v17, "GaGtmHelper"

    const-string v18, "File is empty skip"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_1
    :goto_0
    return-void

    .line 412
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 413
    .local v12, "manager":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .line 414
    .local v11, "info":Landroid/content/pm/PackageInfo;
    const/4 v2, 0x0

    .line 416
    .local v2, "appVersion":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    .line 417
    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    .line 416
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    .line 418
    iget-object v2, v11, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_1
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 424
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Current appVersion="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_3
    const/4 v6, 0x0

    .line 428
    .local v6, "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v10, 0x0

    .line 429
    .local v10, "fis":Ljava/io/FileInputStream;
    const/4 v13, 0x0

    .line 432
    .local v13, "ois":Ljava/io/ObjectInputStream;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "GTM_buffered_events"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v10

    .line 433
    new-instance v14, Ljava/io/ObjectInputStream;

    invoke-direct {v14, v10}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_14
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 437
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .local v14, "ois":Ljava/io/ObjectInputStream;
    :try_start_2
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v16

    .line 438
    .local v16, "version":I
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_4

    .line 439
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Read version="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_4
    if-nez v16, :cond_f

    .line 443
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v15

    .line 446
    .local v15, "readObject":Ljava/lang/Object;
    move-object v0, v15

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    .line 447
    .local v4, "bufferedAppVersion":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 448
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Read bufferedAppVersion="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_5
    invoke-virtual {v2, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 453
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v15

    .line 456
    move-object v0, v15

    check-cast v0, Ljava/util/LinkedList;

    move-object v6, v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 484
    .end local v4    # "bufferedAppVersion":Ljava/lang/String;
    .end local v15    # "readObject":Ljava/lang/Object;
    :cond_6
    :goto_2
    if-eqz v14, :cond_7

    .line 486
    :try_start_3
    invoke-virtual {v14}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    .line 491
    :cond_7
    :goto_3
    if-eqz v10, :cond_19

    .line 493
    :try_start_4
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-object v13, v14

    .line 500
    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .end local v16    # "version":I
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "GTM_buffered_events"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v8

    .line 501
    .local v8, "deleted":Z
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_9

    .line 502
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Buffer file deleted="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_9
    if-eqz v6, :cond_1

    .line 510
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 511
    const-string v17, "GaGtmHelper"

    const-string v18, "Push buffered events"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v7

    .line 514
    .local v7, "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    sget-object v18, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v18

    .line 516
    :goto_5
    :try_start_5
    invoke-virtual {v6}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .local v5, "bufferedEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v5, :cond_18

    .line 517
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 518
    const-string v17, "GaGtmHelper"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "item="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_b
    invoke-virtual {v7, v5}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_5

    .line 522
    .end local v5    # "bufferedEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v17

    monitor-exit v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v17

    .line 419
    .end local v6    # "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7    # "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    .end local v8    # "deleted":Z
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v9

    .line 420
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, ""

    goto/16 :goto_1

    .line 458
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v4    # "bufferedAppVersion":Ljava/lang/String;
    .restart local v6    # "bufferedEvents":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v15    # "readObject":Ljava/lang/Object;
    .restart local v16    # "version":I
    :cond_c
    :try_start_6
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 459
    const-string v17, "GaGtmHelper"

    const-string v18, "Bad app version. Skip"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_11
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_2

    .line 467
    .end local v4    # "bufferedAppVersion":Ljava/lang/String;
    .end local v15    # "readObject":Ljava/lang/Object;
    .end local v16    # "version":I
    :catch_1
    move-exception v9

    move-object v13, v14

    .line 468
    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .local v9, "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    :goto_6
    :try_start_7
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 469
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "FileNotFoundException="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 484
    :cond_d
    if-eqz v13, :cond_e

    .line 486
    :try_start_8
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 491
    :cond_e
    :goto_7
    if-eqz v10, :cond_8

    .line 493
    :try_start_9
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_4

    .line 494
    :catch_2
    move-exception v17

    goto/16 :goto_4

    .line 463
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v16    # "version":I
    :cond_f
    :try_start_a
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 464
    const-string v17, "GaGtmHelper"

    const-string v18, "Bad format version. Skip"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/OptionalDataException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_11
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_2

    .line 471
    .end local v16    # "version":I
    :catch_3
    move-exception v9

    move-object v13, v14

    .line 472
    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .local v9, "e":Ljava/io/OptionalDataException;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    :goto_8
    :try_start_b
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 473
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "OptionalDataException="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/OptionalDataException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 484
    :cond_10
    if-eqz v13, :cond_11

    .line 486
    :try_start_c
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c

    .line 491
    :cond_11
    :goto_9
    if-eqz v10, :cond_8

    .line 493
    :try_start_d
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_4

    .line 494
    :catch_4
    move-exception v17

    goto/16 :goto_4

    .end local v9    # "e":Ljava/io/OptionalDataException;
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v16    # "version":I
    :catch_5
    move-exception v17

    move-object v13, v14

    .line 495
    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_4

    .line 475
    .end local v16    # "version":I
    :catch_6
    move-exception v9

    .line 476
    .local v9, "e":Ljava/io/IOException;
    :goto_a
    :try_start_e
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 477
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "IOException="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 484
    :cond_12
    if-eqz v13, :cond_13

    .line 486
    :try_start_f
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_d

    .line 491
    :cond_13
    :goto_b
    if-eqz v10, :cond_8

    .line 493
    :try_start_10
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    goto/16 :goto_4

    .line 494
    :catch_7
    move-exception v17

    goto/16 :goto_4

    .line 479
    .end local v9    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v9

    .line 480
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    :goto_c
    :try_start_11
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 481
    const-string v17, "GaGtmHelper"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ClassNotFoundException="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 484
    :cond_14
    if-eqz v13, :cond_15

    .line 486
    :try_start_12
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_e

    .line 491
    :cond_15
    :goto_d
    if-eqz v10, :cond_8

    .line 493
    :try_start_13
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    goto/16 :goto_4

    .line 494
    :catch_9
    move-exception v17

    goto/16 :goto_4

    .line 484
    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    :catchall_1
    move-exception v17

    :goto_e
    if-eqz v13, :cond_16

    .line 486
    :try_start_14
    invoke-virtual {v13}, Ljava/io/ObjectInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f

    .line 491
    :cond_16
    :goto_f
    if-eqz v10, :cond_17

    .line 493
    :try_start_15
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_10

    .line 495
    :cond_17
    :goto_10
    throw v17

    .line 522
    .restart local v5    # "bufferedEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    .restart local v8    # "deleted":Z
    :cond_18
    :try_start_16
    monitor-exit v18
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_0

    .line 487
    .end local v5    # "bufferedEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    .end local v8    # "deleted":Z
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v16    # "version":I
    :catch_a
    move-exception v17

    goto/16 :goto_3

    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .end local v16    # "version":I
    .local v9, "e":Ljava/io/FileNotFoundException;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    :catch_b
    move-exception v17

    goto/16 :goto_7

    .local v9, "e":Ljava/io/OptionalDataException;
    :catch_c
    move-exception v17

    goto/16 :goto_9

    .local v9, "e":Ljava/io/IOException;
    :catch_d
    move-exception v17

    goto :goto_b

    .local v9, "e":Ljava/lang/ClassNotFoundException;
    :catch_e
    move-exception v17

    goto :goto_d

    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    :catch_f
    move-exception v18

    goto :goto_f

    .line 494
    :catch_10
    move-exception v18

    goto :goto_10

    .line 484
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    :catchall_2
    move-exception v17

    move-object v13, v14

    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_e

    .line 479
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    :catch_11
    move-exception v9

    move-object v13, v14

    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto :goto_c

    .line 475
    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    :catch_12
    move-exception v9

    move-object v13, v14

    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_a

    .line 471
    :catch_13
    move-exception v9

    goto/16 :goto_8

    .line 467
    :catch_14
    move-exception v9

    goto/16 :goto_6

    .end local v13    # "ois":Ljava/io/ObjectInputStream;
    .restart local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v16    # "version":I
    :cond_19
    move-object v13, v14

    .end local v14    # "ois":Ljava/io/ObjectInputStream;
    .restart local v13    # "ois":Ljava/io/ObjectInputStream;
    goto/16 :goto_4
.end method

.method private downloadContainerLocked()V
    .locals 5

    .prologue
    .line 545
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 546
    const-string v1, "GaGtmHelper"

    const-string v2, "downloadContainerLocked"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    .line 549
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    iget v3, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    .line 550
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/tagmanager/TagManager;->loadContainerPreferFresh(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 551
    .local v0, "pendingResult":Lcom/google/android/gms/common/api/PendingResult;, "Lcom/google/android/gms/common/api/PendingResult<Lcom/google/android/gms/tagmanager/ContainerHolder;>;"
    new-instance v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;-><init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    iget v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    .line 625
    return-void
.end method

.method private flushDataLayerQueueLocked()V
    .locals 6

    .prologue
    .line 628
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    const-string v2, "GaGtmHelper"

    const-string v3, "flushDataLayerQueueLocked"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    .line 634
    .local v0, "dataLayer":Lcom/google/android/gms/tagmanager/DataLayer;
    sget-object v3, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sPendingEventsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 635
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .local v1, "pendingEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_2

    .line 636
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    const-string v2, "GaGtmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_0

    .line 641
    .end local v1    # "pendingEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "pendingEvent":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 642
    return-void
.end method

.method public static getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .locals 2

    .prologue
    .line 530
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    if-nez v0, :cond_1

    .line 531
    const-class v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    monitor-enter v1

    .line 532
    :try_start_0
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-direct {v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .line 535
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    :cond_1
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    return-object v0

    .line 535
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private isRunningOnXperia()Z
    .locals 2

    .prologue
    .line 267
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "SonyEricsson"

    .line 268
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

.method private pushInitDefaultsToDataLayer()V
    .locals 18

    .prologue
    .line 793
    const-string v3, ""

    .line 794
    .local v3, "customization":Ljava/lang/String;
    const-string v4, ""

    .line 795
    .local v4, "customizationRevision":Ljava/lang/String;
    const-string v2, ""

    .line 796
    .local v2, "customerId":Ljava/lang/String;
    const-string v10, ""

    .line 797
    .local v10, "simMnc":Ljava/lang/String;
    const-string v9, ""

    .line 798
    .local v9, "simMcc":Ljava/lang/String;
    const-string v7, ""

    .line 799
    .local v7, "networkMnc":Ljava/lang/String;
    const-string v6, ""

    .line 801
    .local v6, "networkMcc":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 802
    const-string v13, "GaGtmHelper"

    const-string v14, "pushInitDefaultsToDataLayer"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v14, "ro.semc.version.cust"

    invoke-static {v13, v14}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 808
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v14, "ro.semc.version.cust_revision"

    .line 809
    invoke-static {v13, v14}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 810
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v14, "ro.somc.customerid"

    invoke-static {v13, v14}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 818
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v14, "phone"

    .line 819
    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    .line 823
    .local v12, "tm":Landroid/telephony/TelephonyManager;
    :try_start_1
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v13

    const/4 v14, 0x5

    if-ne v13, v14, :cond_7

    .line 825
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v11

    .line 826
    .local v11, "simOperator":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x5

    if-eq v13, v14, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x6

    if-ne v13, v14, :cond_3

    .line 827
    :cond_2
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v11, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 829
    const/4 v13, 0x3

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 846
    .end local v11    # "simOperator":Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_2
    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v8

    .line 847
    .local v8, "networkOperator":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x5

    if-eq v13, v14, :cond_4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x6

    if-ne v13, v14, :cond_5

    .line 848
    :cond_4
    const/4 v13, 0x0

    const/4 v14, 0x3

    invoke-virtual {v8, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 849
    const/4 v13, 0x3

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v7

    .line 857
    .end local v8    # "networkOperator":Ljava/lang/String;
    :cond_5
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-object v14, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 859
    .local v1, "buildId":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 860
    const-string v13, "GaGtmHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pushing to data layer deviceBuildModel:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "deviceBuildId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", deviceBuildType:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "deviceCustomization:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "deviceCustomizationRevision:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "deviceCustomerId: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", deviceSimMcc: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "deviceSimMnc: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", deviceNetworkMcc: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "deviceNetworkMnc: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_6
    sget-object v14, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sPendingEventsLock:Ljava/lang/Object;

    monitor-enter v14

    .line 872
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    const/16 v15, 0x14

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "gagtm-deviceBuildModel"

    aput-object v17, v15, v16

    const/16 v16, 0x1

    sget-object v17, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const-string v17, "gagtm-deviceBuildId"

    aput-object v17, v15, v16

    const/16 v16, 0x3

    aput-object v1, v15, v16

    const/16 v16, 0x4

    const-string v17, "gagtm-deviceBuildType"

    aput-object v17, v15, v16

    const/16 v16, 0x5

    sget-object v17, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v17, v15, v16

    const/16 v16, 0x6

    const-string v17, "gagtm-deviceCustomization"

    aput-object v17, v15, v16

    const/16 v16, 0x7

    aput-object v3, v15, v16

    const/16 v16, 0x8

    const-string v17, "gagtm-deviceCustomizationRevision"

    aput-object v17, v15, v16

    const/16 v16, 0x9

    aput-object v4, v15, v16

    const/16 v16, 0xa

    const-string v17, "gagtm-deviceCustomerId"

    aput-object v17, v15, v16

    const/16 v16, 0xb

    aput-object v2, v15, v16

    const/16 v16, 0xc

    const-string v17, "gagtm-deviceSimMcc"

    aput-object v17, v15, v16

    const/16 v16, 0xd

    aput-object v9, v15, v16

    const/16 v16, 0xe

    const-string v17, "gagtm-deviceSimMnc"

    aput-object v17, v15, v16

    const/16 v16, 0xf

    aput-object v10, v15, v16

    const/16 v16, 0x10

    const-string v17, "gagtm-deviceNetworkMcc"

    aput-object v17, v15, v16

    const/16 v16, 0x11

    aput-object v6, v15, v16

    const/16 v16, 0x12

    const-string v17, "gagtm-deviceNetworkMnc"

    aput-object v17, v15, v16

    const/16 v16, 0x13

    aput-object v7, v15, v16

    .line 873
    invoke-static {v15}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v15

    .line 872
    invoke-virtual {v13, v15}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 883
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 884
    return-void

    .line 812
    .end local v1    # "buildId":Ljava/lang/String;
    .end local v12    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v5

    .line 813
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 814
    const-string v13, "GaGtmHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SystemProperty exception:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 834
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v12    # "tm":Landroid/telephony/TelephonyManager;
    :cond_7
    :try_start_4
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 835
    const-string v13, "GaGtmHelper"

    const-string v14, "SIM state is not ready"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    .line 838
    :catch_1
    move-exception v5

    .line 839
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 840
    const-string v13, "GaGtmHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected exception reading SIM info:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 851
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 852
    .restart local v5    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 853
    const-string v13, "GaGtmHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unexpected exception reading network info:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 883
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "buildId":Ljava/lang/String;
    :catchall_0
    move-exception v13

    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v13
.end method


# virtual methods
.method public getContainerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 2

    .prologue
    .line 649
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 650
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    monitor-exit v1

    return-object v0

    .line 651
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "defaultContainerResourceId"    # I
    .param p4, "settingsMode"    # I

    .prologue
    .line 289
    iget v5, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    iget-object v6, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->init(Landroid/content/Context;Ljava/lang/String;IIILcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;)Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;IIILcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "containerId"    # Ljava/lang/String;
    .param p3, "defaultContainerResourceId"    # I
    .param p4, "settingsMode"    # I
    .param p5, "containerLoadingTimeout"    # I
    .param p6, "callback"    # Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    .prologue
    const/4 v0, 0x1

    .line 198
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-boolean v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    if-eqz v2, :cond_1

    .line 201
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const-string v0, "GaGtmHelper"

    const-string v2, "Ignoring call to init, already called."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 263
    :goto_0
    return v0

    .line 206
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    .line 208
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    const-string v2, "GaGtmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " defaultContainerResourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " containerLoadingTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    if-eqz p6, :cond_2

    .line 214
    const-string v2, "GaGtmHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    .line 221
    iput p3, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    .line 222
    iput p5, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    .line 223
    iput-object p6, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    .line 224
    iput p4, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mSettingsMode:I

    .line 227
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;

    invoke-direct {v3, p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;-><init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    const-string v4, "init_thread"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 261
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pushAppView(Ljava/lang/String;)V
    .locals 3
    .param p1, "screenName"    # Ljava/lang/String;

    .prologue
    .line 660
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushAppView screenName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "appView"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gagtm-screenName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 665
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 664
    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 666
    return-void
.end method

.method public pushEndSession()V
    .locals 3

    .prologue
    .line 728
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    const-string v0, "GaGtmHelper"

    const-string v1, "pushEndSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "endSession"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 733
    return-void
.end method

.method public pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 4
    .param p1, "eventCategory"    # Ljava/lang/String;
    .param p2, "eventAction"    # Ljava/lang/String;
    .param p3, "eventLabel"    # Ljava/lang/String;
    .param p4, "eventValue"    # J

    .prologue
    .line 679
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushEvent category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gagtm-eventCategory"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string v2, "gagtm-eventAction"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gagtm-eventLabel"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p3, v0, v1

    const/16 v1, 0x8

    const-string v2, "gagtm-eventValue"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 688
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 686
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 685
    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 689
    return-void
.end method

.method public pushException(Ljava/lang/String;)V
    .locals 3
    .param p1, "exceptionDescription"    # Ljava/lang/String;

    .prologue
    .line 742
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 743
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushException exceptionDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "exception"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gagtm-exceptionDescription"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 748
    return-void
.end method

.method public pushStartSession()V
    .locals 3

    .prologue
    .line 717
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    const-string v0, "GaGtmHelper"

    const-string v1, "pushStartSession"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "startSession"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 722
    return-void
.end method

.method public pushTiming(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "timingCategory"    # Ljava/lang/String;
    .param p2, "timingValue"    # J
    .param p4, "timingVar"    # Ljava/lang/String;
    .param p5, "timingLabel"    # Ljava/lang/String;

    .prologue
    .line 702
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 703
    const-string v0, "GaGtmHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushTiming category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 704
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " var="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 703
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_0
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "timing"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gagtm-timingCategory"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string v2, "gagtm-timingValue"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 709
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gagtm-timingVar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    aput-object p4, v0, v1

    const/16 v1, 0x8

    const-string v2, "gagtm-timingLabel"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object p5, v0, v1

    .line 708
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 707
    invoke-virtual {p0, v0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    .line 711
    return-void
.end method

.method public pushToDataLayer(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, "keyValueData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    if-eqz v0, :cond_1

    .line 759
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    const-string v0, "GaGtmHelper"

    const-string v1, "pushToDataLayer send directly to data layer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_0
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 764
    monitor-exit v1

    .line 783
    :goto_0
    return-void

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 767
    :cond_1
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 768
    const-string v0, "GaGtmHelper"

    const-string v1, "Container is NOT loaded, add to queue"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_2
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sPendingEventsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 773
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v2, 0x32

    if-ge v0, v2, :cond_4

    .line 774
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 781
    :cond_3
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 776
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 777
    const-string v0, "GaGtmHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max pending events reached. Dropping event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1
.end method

.method public serializeQueueToFile()V
    .locals 12

    .prologue
    .line 311
    sget-object v8, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v8

    .line 312
    :try_start_0
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 313
    const-string v7, "GaGtmHelper"

    const-string v9, "serializeQueueToFile"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    sget-object v9, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sPendingEventsLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :try_start_1
    iget-object v7, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-nez v7, :cond_2

    .line 319
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 320
    const-string v7, "GaGtmHelper"

    const-string v10, "No buffered events to serialize to file."

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 390
    :goto_0
    return-void

    .line 326
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v4

    .line 327
    .local v4, "manager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 328
    .local v3, "info":Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .line 330
    .local v0, "appVersion":Ljava/lang/String;
    :try_start_4
    iget-object v7, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    .line 331
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    .line 330
    invoke-virtual {v4, v7, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 332
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 336
    :goto_1
    :try_start_5
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 337
    const-string v7, "GaGtmHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Current appVersion="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 343
    :cond_3
    const/4 v2, 0x0

    .line 344
    .local v2, "fos":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 346
    .local v5, "oos":Ljava/io/ObjectOutputStream;
    :try_start_6
    iget-object v7, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v10, "GTM_buffered_events"

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    .line 348
    new-instance v6, Ljava/io/ObjectOutputStream;

    invoke-direct {v6, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 351
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .local v6, "oos":Ljava/io/ObjectOutputStream;
    :try_start_7
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 352
    const-string v7, "GaGtmHelper"

    const-string v10, "Write version"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 357
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 358
    const-string v7, "GaGtmHelper"

    const-string v10, "Write app version"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_5
    invoke-virtual {v6, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 363
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 364
    const-string v7, "GaGtmHelper"

    const-string v10, "Write pending events to file"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_6
    iget-object v7, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v6, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 373
    if-eqz v6, :cond_7

    .line 375
    :try_start_8
    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 380
    :cond_7
    :goto_2
    if-eqz v2, :cond_d

    .line 382
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object v5, v6

    .line 388
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :cond_8
    :goto_3
    :try_start_a
    monitor-exit v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 389
    :try_start_b
    monitor-exit v8

    goto/16 :goto_0

    .end local v0    # "appVersion":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "manager":Landroid/content/pm/PackageManager;
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    throw v7

    .line 333
    .restart local v0    # "appVersion":Ljava/lang/String;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    .restart local v4    # "manager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_c
    const-string v0, ""
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_1

    .line 383
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v7

    move-object v5, v6

    .line 384
    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_3

    .line 367
    :catch_2
    move-exception v1

    .line 368
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    :try_start_d
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 369
    const-string v7, "GaGtmHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "IOException="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 373
    :cond_9
    if-eqz v5, :cond_a

    .line 375
    :try_start_e
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 380
    :cond_a
    :goto_5
    if-eqz v2, :cond_8

    .line 382
    :try_start_f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto :goto_3

    .line 383
    :catch_3
    move-exception v7

    goto :goto_3

    .line 373
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v7

    :goto_6
    if-eqz v5, :cond_b

    .line 375
    :try_start_10
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 380
    :cond_b
    :goto_7
    if-eqz v2, :cond_c

    .line 382
    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 384
    :cond_c
    :goto_8
    :try_start_12
    throw v7

    .line 388
    .end local v0    # "appVersion":Ljava/lang/String;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .end local v4    # "manager":Landroid/content/pm/PackageManager;
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_2
    move-exception v7

    monitor-exit v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    :try_start_13
    throw v7
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 376
    .restart local v0    # "appVersion":Ljava/lang/String;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "info":Landroid/content/pm/PackageInfo;
    .restart local v4    # "manager":Landroid/content/pm/PackageManager;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v7

    goto :goto_2

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    :catch_5
    move-exception v7

    goto :goto_5

    .end local v1    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v10

    goto :goto_7

    .line 383
    :catch_7
    move-exception v10

    goto :goto_8

    .line 373
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_3
    move-exception v7

    move-object v5, v6

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_6

    .line 367
    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :catch_8
    move-exception v1

    move-object v5, v6

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_4

    .end local v5    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v6    # "oos":Ljava/io/ObjectOutputStream;
    :cond_d
    move-object v5, v6

    .end local v6    # "oos":Ljava/io/ObjectOutputStream;
    .restart local v5    # "oos":Ljava/io/ObjectOutputStream;
    goto :goto_3
.end method

.method public setContainerDefaults()V
    .locals 9

    .prologue
    .line 891
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 892
    const-string v6, "GaGtmHelper"

    const-string v7, "setContainerDefaults"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    iget-object v6, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-nez v6, :cond_2

    .line 896
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 897
    const-string v6, "GaGtmHelper"

    const-string v7, "container holder is null exiting"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_1
    :goto_0
    return-void

    .line 902
    :cond_2
    iget-object v6, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    invoke-interface {v6}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    .line 904
    .local v0, "container":Lcom/google/android/gms/tagmanager/Container;
    if-nez v0, :cond_3

    .line 905
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 906
    const-string v6, "GaGtmHelper"

    const-string v7, "container is null exiting"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 911
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 912
    const-string v6, "GaGtmHelper"

    const-string v7, "container is default"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_4
    const-string v6, "gagtm-dispatchPeriod"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v1, v6

    .line 917
    .local v1, "gaDispatchPeriod":I
    if-gtz v1, :cond_5

    .line 920
    const/16 v1, 0x708

    .line 922
    :cond_5
    iget-object v6, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v5

    .line 923
    .local v5, "googleAnalytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 924
    const-string v6, "GaGtmHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "gaDispatchPeriod:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_6
    invoke-virtual {v5, v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    .line 931
    const-string v6, "gagtm-exceptionMaxReportedRows"

    .line 932
    invoke-virtual {v0, v6}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v2, v6

    .line 933
    .local v2, "gaExceptionMaxReportedRows":I
    invoke-static {v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setMaxReportedRows(I)V

    .line 936
    const-string v6, "gagtm-exceptionMaxTraversedRows"

    .line 937
    invoke-virtual {v0, v6}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-int v3, v6

    .line 938
    .local v3, "gaExceptionMaxTraversedRows":I
    invoke-static {v3}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setMaxTraversedRows(I)V

    .line 941
    const-string v6, "gagtm-exceptionPackageNames"

    invoke-virtual {v0, v6}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 942
    .local v4, "gaExceptionPackageNames":Ljava/lang/String;
    invoke-static {v4}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setEnabledPackageNames(Ljava/lang/String;)V

    goto :goto_0
.end method
