.class abstract Lcom/google/common/collect/HashBiMap$Itr;
.super Ljava/lang/Object;
.source "HashBiMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field next:Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field nextBucket:I

.field final synthetic this$0:Lcom/google/common/collect/HashBiMap;

.field toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/common/collect/HashBiMap;)V
    .locals 2

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Itr;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Itr<TT;>;"
    const/4 v1, 0x0

    .line 331
    iput-object p1, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->nextBucket:I

    .line 333
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->next:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 334
    iput-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 335
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 2

    .prologue
    .line 338
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Itr;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Itr<TT;>;"
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iget v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    if-eq v0, v1, :cond_0

    .line 339
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 341
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Itr;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Itr<TT;>;"
    const/4 v0, 0x1

    .line 345
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$Itr;->checkForConcurrentModification()V

    .line 346
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->next:Lcom/google/common/collect/HashBiMap$BiEntry;

    if-eqz v1, :cond_1

    .line 356
    :goto_0
    return v0

    .line 354
    :cond_0
    iget v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->nextBucket:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->nextBucket:I

    .line 349
    :cond_1
    iget v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->nextBucket:I

    iget-object v2, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v2}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 350
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/HashBiMap$Itr;->nextBucket:I

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 351
    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v1}, Lcom/google/common/collect/HashBiMap;->access$100(Lcom/google/common/collect/HashBiMap;)[Lcom/google/common/collect/HashBiMap$BiEntry;

    move-result-object v1

    iget v2, p0, Lcom/google/common/collect/HashBiMap$Itr;->nextBucket:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/common/collect/HashBiMap$Itr;->nextBucket:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->next:Lcom/google/common/collect/HashBiMap$BiEntry;

    goto :goto_0

    .line 356
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 361
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Itr;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Itr<TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$Itr;->checkForConcurrentModification()V

    .line 362
    invoke-virtual {p0}, Lcom/google/common/collect/HashBiMap$Itr;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->next:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 367
    .local v0, "entry":Lcom/google/common/collect/HashBiMap$BiEntry;, "Lcom/google/common/collect/HashBiMap$BiEntry<TK;TV;>;"
    iget-object v1, v0, Lcom/google/common/collect/HashBiMap$BiEntry;->nextInKToVBucket:Lcom/google/common/collect/HashBiMap$BiEntry;

    iput-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->next:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 368
    iput-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 369
    invoke-virtual {p0, v0}, Lcom/google/common/collect/HashBiMap$Itr;->output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method abstract output(Lcom/google/common/collect/HashBiMap$BiEntry;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/HashBiMap$BiEntry",
            "<TK;TV;>;)TT;"
        }
    .end annotation
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 374
    .local p0, "this":Lcom/google/common/collect/HashBiMap$Itr;, "Lcom/google/common/collect/HashBiMap<TK;TV;>.Itr<TT;>;"
    invoke-direct {p0}, Lcom/google/common/collect/HashBiMap$Itr;->checkForConcurrentModification()V

    .line 375
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 376
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    invoke-static {v0, v1}, Lcom/google/common/collect/HashBiMap;->access$200(Lcom/google/common/collect/HashBiMap;Lcom/google/common/collect/HashBiMap$BiEntry;)V

    .line 377
    iget-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->this$0:Lcom/google/common/collect/HashBiMap;

    invoke-static {v0}, Lcom/google/common/collect/HashBiMap;->access$000(Lcom/google/common/collect/HashBiMap;)I

    move-result v0

    iput v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->expectedModCount:I

    .line 378
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/HashBiMap$Itr;->toRemove:Lcom/google/common/collect/HashBiMap$BiEntry;

    .line 379
    return-void

    .line 375
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
