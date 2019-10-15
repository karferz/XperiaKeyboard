.class final Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;
.super Ljava/lang/Object;
.source "EmojiUsageTracker.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/model/emoji/EmojiUsageDatabase$ReadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DataInitializer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)V
    .locals 0

    .prologue
    .line 399
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$1;

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;-><init>(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)V

    return-void
.end method


# virtual methods
.method public onDataReady(Ljava/util/Map;)V
    .locals 9
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
    .line 402
    .local p1, "data":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->access$200(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 403
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->access$300(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->access$400(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 409
    if-nez p1, :cond_0

    .line 410
    monitor-exit v4

    .line 430
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    new-instance v5, Ljava/util/TreeSet;

    new-instance v6, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$EmojiUsageComparator;

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$EmojiUsageComparator;-><init>(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$1;)V

    invoke-direct {v5, v6}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-static {v3, v5}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->access$502(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    .line 414
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-static {v3, v5}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->access$102(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;Ljava/util/Map;)Ljava/util/Map;

    .line 416
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 417
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/CodePointString;

    .line 418
    .local v0, "codePointString":Lcom/sonyericsson/ned/model/CodePointString;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->access$100(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->access$500(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Ljava/util/NavigableSet;

    move-result-object v5

    new-instance v6, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v0, v8}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;-><init>(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)V

    invoke-interface {v5, v6}, Ljava/util/NavigableSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 429
    .end local v0    # "codePointString":Lcom/sonyericsson/ned/model/CodePointString;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/sonyericsson/ned/model/CodePointString;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 422
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->access$302(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;Z)Z

    .line 423
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->access$702(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;Z)Z

    .line 425
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$DataInitializer;->this$0:Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;->access$400(Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$ReadyListener;

    .line 426
    .local v2, "readyListener":Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$ReadyListener;
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$ReadyListener;->onUsageDataReady()V

    goto :goto_2

    .line 429
    .end local v2    # "readyListener":Lcom/sonyericsson/textinput/uxp/controller/emoji/EmojiUsageTracker$ReadyListener;
    :cond_2
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
