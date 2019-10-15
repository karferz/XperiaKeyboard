.class public Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;
.super Landroid/app/IntentService;
.source "PersonalizerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;,
        Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;,
        Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$PersonalizerServiceBinder;
    }
.end annotation


# static fields
.field public static final BROADCAST_ACTION:Ljava/lang/String; = "personalizer_service"

.field public static final BROADCAST_EXTRA_RESULT:Ljava/lang/String; = "personalizer_service_result"

.field public static final BROADCAST_EXTRA_SERVICE_ID:Ljava/lang/String; = "personalizer_service_id"

.field private static final DEBUG:Z = false

.field public static final KEY_PERSONALIZER_ERROR:Ljava/lang/String; = "com.sonyericsson.textinput.uxp.swiftkeypersonalizer.error"

.field private static final MAX_SERVICE_TRY_COUNT:I = 0x5

.field private static final NOTIFICATION_ID:I = 0x25ca5

.field public static final SERVICE_GMAIL:I = 0x2

.field static final SERVICE_LIST:[I

.field private static final SERVICE_SLEEP_TIME:J = 0x2710L

.field public static final SERVICE_SMS:I = 0x5

.field public static final START_BROADCAST_RESULT_NEEDED:Ljava/lang/String; = "broadcast_result_needed"

.field public static final START_EXTRA_ACCOUNT:Ljava/lang/String; = "account"

.field public static final START_EXTRA_CONSUMER_KEY:Ljava/lang/String; = "consumer_key"

.field public static final START_EXTRA_CONSUMER_SECRET:Ljava/lang/String; = "consumer_secret"

.field public static final START_EXTRA_SERVICE_ID:Ljava/lang/String; = "serviceId"

.field public static final START_EXTRA_TOKEN:Ljava/lang/String; = "token"

.field public static final START_EXTRA_TOKEN_SECRET:Ljava/lang/String; = "token_secret"

.field private static final TAG:Ljava/lang/String;

.field private static final sPersonalizerKeyToIdTable:Ljava/util/HashMap;
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

.field private static final sWritingLock:Ljava/lang/Object;


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private mGmailParserTask:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

.field private mGmailTryCount:I

.field private mGotGmailProgress:Z

.field private mGotSmsProgress:Z

.field private mHandler:Landroid/os/Handler;

.field private mPersonalizerHandler:Landroid/os/Handler;

.field private final mPreviousState:Landroid/util/SparseIntArray;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mSmsParserTask:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

.field private mSmsTryCount:I

.field private final mState:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->SERVICE_LIST:[I

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->TAG:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->sPersonalizerKeyToIdTable:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->sWritingLock:Ljava/lang/Object;

    return-void

    .line 49
    :array_0
    .array-data 4
        0x2
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "PersonalizerService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$PersonalizerServiceBinder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$PersonalizerServiceBinder;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mBinder:Landroid/os/IBinder;

    .line 60
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mState:Landroid/util/SparseIntArray;

    .line 61
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mPreviousState:Landroid/util/SparseIntArray;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mGotSmsProgress:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mGotSmsProgress:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    .prologue
    .line 31
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mSmsTryCount:I

    return v0
.end method

.method static synthetic access$1008(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    .prologue
    .line 31
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mSmsTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mSmsTryCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mGotGmailProgress:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mGotGmailProgress:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mGmailParserTask:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    .prologue
    .line 31
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mGmailTryCount:I

    return v0
.end method

.method static synthetic access$1708(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)I
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    .prologue
    .line 31
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mGmailTryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mGmailTryCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mSmsParserTask:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->createFailNotification(IZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->setState(IIZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->createSuccessNotification(IZ)V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->writeStoredState()V

    return-void
.end method

.method private broadcastResult(II)V
    .locals 2
    .param p1, "serviceId"    # I
    .param p2, "resultCode"    # I

    .prologue
    .line 359
    new-instance v0, Landroid/content/Intent;

    const-string v1, "personalizer_service"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 360
    .local v0, "resultIntent":Landroid/content/Intent;
    const-string v1, "personalizer_service_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 361
    const-string v1, "personalizer_service_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 363
    return-void
.end method

.method private createFailNotification(IZ)V
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "isResultBroadcastNeeded"    # Z

    .prologue
    .line 279
    if-eqz p2, :cond_0

    .line 280
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->broadcastResult(II)V

    .line 283
    :cond_0
    const/4 v0, 0x0

    .line 285
    .local v0, "text":Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 299
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->createIntentAndNotification(ZLjava/lang/CharSequence;)V

    .line 300
    return-void

    .line 287
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mContext:Landroid/content/Context;

    const v2, 0x7f0700f5

    .line 288
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 290
    goto :goto_0

    .line 292
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mContext:Landroid/content/Context;

    const v2, 0x7f0700eb

    .line 293
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 295
    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createIntentAndNotification(ZLjava/lang/CharSequence;)V
    .locals 8
    .param p1, "success"    # Z
    .param p2, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 257
    if-eqz p1, :cond_0

    .line 258
    new-instance v4, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/NotificationDeletedService;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v4, "intent":Landroid/content/Intent;
    sget-object v5, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->SERVICE:Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    .line 266
    .local v5, "type":Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mContext:Landroid/content/Context;

    const v1, 0x25ca5

    const v6, 0x7f0200ab

    move-object v3, p2

    move v7, v2

    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil;->createAndSendNotification(Landroid/content/Context;IILjava/lang/CharSequence;Landroid/content/Intent;Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;IZ)V

    .line 268
    return-void

    .line 261
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "type":Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;
    :cond_0
    new-instance v4, Landroid/content/Intent;

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerSettingsActivity;

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 262
    .restart local v4    # "intent":Landroid/content/Intent;
    const/high16 v0, 0x20000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    const-string v0, "notification-start"

    const/4 v1, 0x1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    sget-object v5, Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;->ACTIVITY:Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;

    .restart local v5    # "type":Lcom/sonyericsson/textinput/uxp/util/NotificationUtil$PendingIntentType;
    goto :goto_0
.end method

.method private createSuccessNotification(IZ)V
    .locals 3
    .param p1, "serviceId"    # I
    .param p2, "isResultBroadcastNeeded"    # Z

    .prologue
    .line 224
    if-eqz p2, :cond_0

    .line 225
    const/4 v1, -0x1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->broadcastResult(II)V

    .line 228
    :cond_0
    const-string v0, ""

    .line 230
    .local v0, "text":Ljava/lang/CharSequence;
    packed-switch p1, :pswitch_data_0

    .line 251
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->createIntentAndNotification(ZLjava/lang/CharSequence;)V

    .line 252
    return-void

    .line 235
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mContext:Landroid/content/Context;

    const v2, 0x7f0700f7

    .line 236
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 238
    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mContext:Landroid/content/Context;

    const v2, 0x7f0700ee

    .line 244
    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 246
    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getPersonalizerKeyToIdTable(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->sPersonalizerKeyToIdTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->sPersonalizerKeyToIdTable:Ljava/util/HashMap;

    const v1, 0x7f070178

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 86
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->sPersonalizerKeyToIdTable:Ljava/util/HashMap;

    const v1, 0x7f070179

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 87
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->sPersonalizerKeyToIdTable:Ljava/util/HashMap;

    return-object v0
.end method

.method private getPreviousState(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mPreviousState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x0

    .line 174
    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 177
    .local v6, "extras":Landroid/os/Bundle;
    if-eqz v6, :cond_0

    .line 179
    const-string v0, "serviceId"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 181
    .local v2, "serviceId":I
    const/4 v0, 0x5

    if-ne v2, v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->parseSMS()V

    .line 213
    .end local v2    # "serviceId":I
    .end local v6    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 188
    .restart local v2    # "serviceId":I
    .restart local v6    # "extras":Landroid/os/Bundle;
    :cond_1
    if-ne v2, v7, :cond_2

    .line 190
    const/4 v0, 0x1

    invoke-direct {p0, v7, v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->setState(IIZ)V

    .line 192
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->writeStoredState()V

    .line 194
    const-string v0, "token"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "token":Ljava/lang/String;
    const-string v0, "account"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/accounts/Account;

    .line 196
    .local v4, "account":Landroid/accounts/Account;
    const-string v0, "broadcast_result_needed"

    .line 197
    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 199
    .local v5, "isResultBroadcastNeeded":Z
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;ILjava/lang/String;Landroid/accounts/Account;Z)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mGmailParserTask:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mGmailParserTask:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 208
    .end local v3    # "token":Ljava/lang/String;
    .end local v4    # "account":Landroid/accounts/Account;
    .end local v5    # "isResultBroadcastNeeded":Z
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service id: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "not implemented"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setPreviousState(II)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mPreviousState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 346
    return-void
.end method

.method private setState(IIZ)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # I
    .param p3, "overwritePreviousState"    # Z

    .prologue
    .line 333
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 335
    if-eqz p3, :cond_0

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->setPreviousState(II)V

    .line 338
    :cond_0
    return-void
.end method

.method private writeStoredState()V
    .locals 6

    .prologue
    .line 306
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 307
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    sget-object v4, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->sWritingLock:Ljava/lang/Object;

    monitor-enter v4

    .line 308
    :try_start_0
    sget-object v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->sPersonalizerKeyToIdTable:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 309
    .local v1, "key":Ljava/lang/String;
    sget-object v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->sPersonalizerKeyToIdTable:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 311
    .local v2, "serviceId":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_1

    .line 312
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v3

    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setPersonalizerState(Ljava/lang/String;I)V

    .line 314
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mPreviousState:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 316
    invoke-direct {p0, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->getPreviousState(I)I

    move-result v3

    .line 315
    invoke-interface {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setPersonalizerPreviousState(Ljava/lang/String;I)V

    goto :goto_0

    .line 320
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "serviceId":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 319
    :cond_2
    :try_start_1
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 320
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    return-void
.end method


# virtual methods
.method public getPersonalizerState(I)I
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mState:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method public isParsingGmail()Z
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mGmailParserTask:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mGmailParserTask:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunGmailParser;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isParsingSms()Z
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mSmsParserTask:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mSmsParserTask:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 99
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mContext:Landroid/content/Context;

    .line 102
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSettings(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 103
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    .line 107
    sget-object v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->sPersonalizerKeyToIdTable:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "key":Ljava/lang/String;
    sget-object v3, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->sPersonalizerKeyToIdTable:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 110
    .local v1, "serviceId":I
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v3, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPersonalizerState(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v3, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->setState(IIZ)V

    .line 111
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mState:Landroid/util/SparseIntArray;

    .line 112
    invoke-virtual {v6, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-interface {v3, v0, v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPersonalizerPreviousState(Ljava/lang/String;I)I

    move-result v3

    .line 111
    invoke-direct {p0, v1, v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->setPreviousState(II)V

    goto :goto_0

    .line 118
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "serviceId":I
    :cond_0
    const/4 v2, 0x0

    .line 119
    .local v2, "staleStateChanged":Z
    sget-object v5, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->SERVICE_LIST:[I

    array-length v6, v5

    move v3, v4

    :goto_1
    if-ge v3, v6, :cond_2

    aget v1, v5, v3

    .line 120
    .restart local v1    # "serviceId":I
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->getPersonalizerState(I)I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 121
    invoke-direct {p0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->getPreviousState(I)I

    move-result v4

    invoke-direct {p0, v1, v4, v7}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->setState(IIZ)V

    .line 122
    const/4 v2, 0x1

    .line 119
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 125
    .end local v1    # "serviceId":I
    :cond_2
    if-eqz v2, :cond_3

    .line 126
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->writeStoredState()V

    .line 128
    :cond_3
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->init(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->init(Landroid/content/Intent;)V

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public parseSMS()V
    .locals 3

    .prologue
    const/4 v2, 0x5

    const/4 v1, 0x1

    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, v2, v1, v0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->setState(IIZ)V

    .line 158
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->writeStoredState()V

    .line 160
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    invoke-direct {v0, p0, v2, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;-><init>(Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;IZ)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mSmsParserTask:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    .line 164
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mPersonalizerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->mSmsParserTask:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService$RunSmsParser;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method

.method public resetAllStoredStates()V
    .locals 5

    .prologue
    .line 352
    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->sPersonalizerKeyToIdTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 353
    .local v0, "id":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->setState(IIZ)V

    goto :goto_0

    .line 355
    .end local v0    # "id":Ljava/lang/Integer;
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->writeStoredState()V

    .line 356
    return-void
.end method

.method public setFailed(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 324
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->setState(IIZ)V

    .line 325
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/PersonalizerService;->writeStoredState()V

    .line 326
    return-void
.end method
