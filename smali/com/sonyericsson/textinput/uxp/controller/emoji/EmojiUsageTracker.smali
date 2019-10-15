.class public Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;
.super Ljava/lang/Object;
.source "EmojiUsageTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;,
        Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$EmojiUsageComparator;,
        Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$Factory;,
        Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$ReadyListener;
    }
.end annotation


# instance fields
.field private mDatabase:Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;

.field private mHasUpdatedUsageData:Z

.field private mIsLatestDataPersisted:Z

.field private mIsReady:Z

.field private final mLock:Ljava/lang/Object;

.field private mReadyListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$ReadyListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSortedCells:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageCounts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mReadyListeners:Ljava/util/List;

    .line 111
    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mSortedCells:Ljava/util/NavigableSet;

    .line 112
    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mUsageCounts:Ljava/util/Map;

    .line 113
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mIsReady:Z

    .line 114
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mHasUpdatedUsageData:Z

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mIsLatestDataPersisted:Z

    .line 116
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mUsageCounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mUsageCounts:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mIsReady:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mIsReady:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mReadyListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Ljava/util/NavigableSet;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mSortedCells:Ljava/util/NavigableSet;

    return-object v0
.end method

.method static synthetic access$502(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;
    .param p1, "x1"    # Ljava/util/NavigableSet;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mSortedCells:Ljava/util/NavigableSet;

    return-object p1
.end method

.method static synthetic access$702(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;
    .param p1, "x1"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mHasUpdatedUsageData:Z

    return p1
.end method

.method private initializeEmojiUsageDatabase(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 170
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 171
    :try_start_0
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;

    invoke-direct {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mDatabase:Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mDatabase:Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;

    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;-><init>(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$1;)V

    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->read(Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$ReadListener;)V

    .line 173
    monitor-exit v1

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mIsReady:Z

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mReadyListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mReadyListeners:Ljava/util/List;

    .line 184
    monitor-exit v1

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public frequentlyUsedEmojisAsCells()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Cell;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 239
    :try_start_0
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mIsReady:Z

    if-nez v2, :cond_0

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    monitor-exit v3

    .line 262
    :goto_0
    return-object v2

    .line 243
    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mHasUpdatedUsageData:Z

    if-eqz v2, :cond_2

    .line 254
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mSortedCells:Ljava/util/NavigableSet;

    invoke-interface {v2}, Ljava/util/NavigableSet;->clear()V

    .line 255
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mUsageCounts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 256
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/Integer;>;"
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mSortedCells:Ljava/util/NavigableSet;

    new-instance v6, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    const/4 v7, 0x0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v2, v8}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;-><init>(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    invoke-interface {v5, v6}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 258
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mHasUpdatedUsageData:Z

    .line 261
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mSortedCells:Ljava/util/NavigableSet;

    invoke-interface {v2}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 262
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/view/grid/Cell;>;"
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getMostUsedSkinToneVariant(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 6
    .param p1, "baseCodePoint"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->isReady()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 314
    invoke-static {p1}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isSkinToneBase(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 315
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->firstCodePoint()I

    move-result v1

    .line 317
    .local v1, "emojiBaseCodePoint":I
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->frequentlyUsedEmojisAsCells()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .line 318
    .local v0, "cell":Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 325
    .local v2, "label":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    const/4 v5, 0x2

    if-gt v4, v5, :cond_0

    .line 326
    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->firstCodePoint()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 331
    .end local v0    # "cell":Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
    .end local v1    # "emojiBaseCodePoint":I
    .end local v2    # "label":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    return-object v2

    :cond_1
    move-object v2, p1

    goto :goto_0
.end method

.method public hasUpdatedUsageData()Z
    .locals 2

    .prologue
    .line 272
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mHasUpdatedUsageData:Z

    monitor-exit v1

    return v0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 155
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mDatabase:Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;

    if-nez v0, :cond_0

    .line 157
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->initializeEmojiUsageDatabase(Landroid/content/Context;)V

    .line 159
    :cond_0
    monitor-exit v1

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public initialize(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$ReadyListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readyListener"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$ReadyListener;

    .prologue
    .line 136
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mReadyListeners:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mDatabase:Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;

    if-nez v0, :cond_1

    .line 142
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->initializeEmojiUsageDatabase(Landroid/content/Context;)V

    .line 146
    :cond_0
    :goto_0
    monitor-exit v1

    .line 147
    return-void

    .line 143
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mIsReady:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {p2}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$ReadyListener;->onUsageDataReady()V

    goto :goto_0

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 195
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mIsReady:Z

    monitor-exit v1

    return v0

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteUsage(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 4
    .param p1, "emoji"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 211
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 212
    :try_start_0
    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mIsReady:Z

    if-eqz v3, :cond_1

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mUsageCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mUsageCounts:Ljava/util/Map;

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mUsageCounts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mHasUpdatedUsageData:Z

    .line 220
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mIsLatestDataPersisted:Z

    .line 221
    monitor-exit v2

    move v0, v1

    .line 223
    :goto_1
    return v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mUsageCounts:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 224
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 223
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public persistUsageData()V
    .locals 5

    .prologue
    .line 284
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 285
    :try_start_0
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mIsReady:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mIsLatestDataPersisted:Z

    if-nez v2, :cond_2

    .line 286
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 288
    .local v1, "usageData":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mUsageCounts:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/CodePointString;

    .line 289
    .local v0, "emoji":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v0, :cond_0

    .line 290
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mUsageCounts:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 297
    .end local v0    # "emoji":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v1    # "usageData":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 294
    .restart local v1    # "usageData":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mDatabase:Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase;->write(Ljava/util/Map;)V

    .line 295
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->mIsLatestDataPersisted:Z

    .line 297
    .end local v1    # "usageData":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/Integer;>;"
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    return-void
.end method
