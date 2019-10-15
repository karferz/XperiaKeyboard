.class public final Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;
.super Ljava/lang/Object;
.source "EmojiUsageDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseWriter;,
        Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseReader;,
        Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;,
        Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$ReadListener;
    }
.end annotation


# static fields
.field private static final EMOJI_COLUMN_NAME:Ljava/lang/String; = "emoji"

.field private static final TABLE_NAME:Ljava/lang/String; = "EmojiUsageFrequency"

.field private static final TAG:Ljava/lang/String;

.field private static final USAGE_COLUMN_NAME:Ljava/lang/String; = "usage"

.field private static sDatabase:Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;

.field private static final sDatabaseExecutorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->TAG:Ljava/lang/String;

    .line 66
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->sDatabaseExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->mContext:Landroid/content/Context;

    .line 83
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->getDatabase(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getDatabase(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    const-class v1, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->sDatabase:Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->sDatabase:Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;

    .line 89
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->sDatabase:Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseCustodian;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public read(Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$ReadListener;)V
    .locals 3
    .param p1, "readListener"    # Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$ReadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 100
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseReader;

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v0}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseReader;-><init>(Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$ReadListener;Landroid/content/Context;)V

    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->sDatabaseExecutorService:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseReader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 102
    return-void
.end method

.method public write(Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "usageData":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/Integer;>;"
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->sDatabaseExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseWriter;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->mContext:Landroid/content/Context;

    invoke-direct {v1, p1, v2}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$DatabaseWriter;-><init>(Ljava/util/Map;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 112
    return-void
.end method
