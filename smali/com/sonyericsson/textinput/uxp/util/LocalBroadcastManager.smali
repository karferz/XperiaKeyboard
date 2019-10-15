.class public final Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$BroadcastRecord;,
        Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 68
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 69
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$1;-><init>(Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method private executePendingBroadcasts()V
    .locals 9

    .prologue
    .line 270
    :cond_0
    const/4 v2, 0x0

    .line 271
    .local v2, "brs":[Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$BroadcastRecord;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v5

    .line 272
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 273
    .local v0, "N":I
    if-gtz v0, :cond_1

    .line 274
    monitor-exit v5

    return-void

    .line 276
    :cond_1
    new-array v2, v0, [Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$BroadcastRecord;

    .line 277
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 278
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 279
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    array-length v6, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v1, v2, v5

    .line 281
    .local v1, "br":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$BroadcastRecord;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    iget-object v4, v1, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 282
    iget-object v4, v1, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;

    iget-object v4, v4, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v7, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 281
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 279
    .end local v0    # "N":I
    .end local v1    # "br":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$BroadcastRecord;
    .end local v3    # "j":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 280
    .restart local v0    # "N":I
    .restart local v1    # "br":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$BroadcastRecord;
    .restart local v3    # "j":I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    sget-object v1, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mInstance:Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mInstance:Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;

    .line 89
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mInstance:Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;

    monitor-exit v1

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .locals 7
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 102
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v6

    .line 103
    :try_start_0
    new-instance v2, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v2, p2, p1}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 104
    .local v2, "entry":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 105
    .local v3, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-nez v3, :cond_0

    .line 106
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    .restart local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_0
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 111
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 113
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v1, :cond_1

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    .restart local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_2
    monitor-exit v6

    .line 120
    return-void

    .line 119
    .end local v2    # "entry":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;
    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v4    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .locals 17
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 175
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v15

    .line 176
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 177
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 178
    .local v3, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 179
    .local v5, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 180
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 182
    .local v6, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    const/4 v8, 0x1

    .line 183
    .local v8, "debug":Z
    :goto_0
    if-eqz v8, :cond_0

    .line 184
    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Resolving type "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " scheme "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v16, " of intent "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 187
    .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v9, :cond_c

    .line 188
    if-eqz v8, :cond_1

    .line 189
    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Action list: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    const/4 v14, 0x0

    .line 193
    .local v14, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_9

    .line 194
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;

    .line 195
    .local v13, "receiver":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;
    if-eqz v8, :cond_2

    .line 196
    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Matching against filter "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v13, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_2
    iget-boolean v1, v13, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v1, :cond_5

    .line 200
    if-eqz v8, :cond_3

    .line 201
    const-string v1, "LocalBroadcastManager"

    const-string v7, "  Filter\'s target already added"

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 182
    .end local v8    # "debug":Z
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v10    # "i":I
    .end local v13    # "receiver":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 206
    .restart local v8    # "debug":Z
    .restart local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "i":I
    .restart local v13    # "receiver":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_5
    iget-object v1, v13, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string v7, "LocalBroadcastManager"

    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v11

    .line 208
    .local v11, "match":I
    if-ltz v11, :cond_8

    .line 209
    if-eqz v8, :cond_6

    .line 210
    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Filter matched!  match=0x"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_6
    if-nez v14, :cond_7

    .line 213
    new-instance v14, Ljava/util/ArrayList;

    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_7
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    const/4 v1, 0x1

    iput-boolean v1, v13, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    goto :goto_2

    .line 253
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "data":Landroid/net/Uri;
    .end local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "debug":Z
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v10    # "i":I
    .end local v11    # "match":I
    .end local v13    # "receiver":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 218
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v5    # "data":Landroid/net/Uri;
    .restart local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "debug":Z
    .restart local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "i":I
    .restart local v11    # "match":I
    .restart local v13    # "receiver":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;
    .restart local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_8
    if-eqz v8, :cond_3

    .line 220
    packed-switch v11, :pswitch_data_0

    .line 234
    :try_start_1
    const-string v12, "unknown reason"

    .line 237
    .local v12, "reason":Ljava/lang/String;
    :goto_3
    const-string v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "  Filter did not match: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 222
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_0
    const-string v12, "action"

    .line 223
    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 225
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_1
    const-string v12, "category"

    .line 226
    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 228
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_2
    const-string v12, "data"

    .line 229
    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 231
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_3
    const-string v12, "type"

    .line 232
    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_3

    .line 242
    .end local v11    # "match":I
    .end local v12    # "reason":Ljava/lang/String;
    .end local v13    # "receiver":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;
    :cond_9
    if-eqz v14, :cond_c

    .line 243
    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_a

    .line 244
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 243
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 246
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v7, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$BroadcastRecord;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v14}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 248
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 250
    :cond_b
    const/4 v1, 0x1

    monitor-exit v15

    .line 254
    .end local v10    # "i":I
    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    :goto_5
    return v1

    .line 253
    :cond_c
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 254
    const/4 v1, 0x0

    goto :goto_5

    .line 220
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 263
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 266
    :cond_0
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 12
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 131
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v10

    .line 132
    :try_start_0
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 133
    .local v4, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-nez v4, :cond_0

    .line 134
    monitor-exit v10

    .line 163
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v3, 0x0

    .local v3, "filterIndex":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_7

    .line 137
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/IntentFilter;

    .line 138
    .local v2, "filter":Landroid/content/IntentFilter;
    const/4 v1, 0x0

    .local v1, "actionIndex":I
    :goto_2
    invoke-virtual {v2}, Landroid/content/IntentFilter;->countActions()I

    move-result v9

    if-ge v1, v9, :cond_6

    .line 139
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "action":Ljava/lang/String;
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 141
    .local v7, "receiverRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v7, :cond_5

    .line 142
    const/4 v8, 0x0

    .line 143
    .local v8, "receiverRecordsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;

    .line 144
    .local v5, "receiverRecord":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;
    iget-object v11, v5, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v11, p1, :cond_1

    .line 145
    if-nez v8, :cond_2

    .line 146
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "receiverRecordsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .restart local v8    # "receiverRecordsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_2
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 162
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "actionIndex":I
    .end local v2    # "filter":Landroid/content/IntentFilter;
    .end local v3    # "filterIndex":I
    .end local v4    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v5    # "receiverRecord":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;
    .end local v7    # "receiverRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v8    # "receiverRecordsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 151
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "actionIndex":I
    .restart local v2    # "filter":Landroid/content/IntentFilter;
    .restart local v3    # "filterIndex":I
    .restart local v4    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .restart local v7    # "receiverRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v8    # "receiverRecordsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_3
    if-eqz v8, :cond_4

    .line 152
    :try_start_1
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;

    .line 153
    .local v6, "receiverRecordToRemove":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 156
    .end local v6    # "receiverRecordToRemove":Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_5

    .line 157
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v8    # "receiverRecordsToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 136
    .end local v0    # "action":Ljava/lang/String;
    .end local v7    # "receiverRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/util/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 162
    .end local v1    # "actionIndex":I
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_7
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
