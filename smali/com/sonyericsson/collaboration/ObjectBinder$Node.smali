.class final Lcom/sonyericsson/collaboration/ObjectBinder$Node;
.super Ljava/lang/Object;
.source "ObjectBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/collaboration/ObjectBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Node"
.end annotation


# instance fields
.field public children:[Lcom/sonyericsson/collaboration/ObjectBinder$Node;

.field public childrenLength:I

.field public final instance:Ljava/lang/Object;

.field public visited:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    iput-object p1, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->instance:Ljava/lang/Object;

    .line 428
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->childrenLength:I

    .line 429
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/collaboration/ObjectBinder$Node;[Lcom/sonyericsson/collaboration/ObjectBinder$Node;I[Ljava/lang/Object;I)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    .param p1, "x1"    # [Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    .param p2, "x2"    # I
    .param p3, "x3"    # [Ljava/lang/Object;
    .param p4, "x4"    # I

    .prologue
    .line 416
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->calcSequence([Lcom/sonyericsson/collaboration/ObjectBinder$Node;I[Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method private calcSequence([Lcom/sonyericsson/collaboration/ObjectBinder$Node;I[Ljava/lang/Object;I)I
    .locals 7
    .param p1, "path"    # [Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    .param p2, "pathLength"    # I
    .param p3, "sequence"    # [Ljava/lang/Object;
    .param p4, "sequenceIndex"    # I

    .prologue
    .line 447
    aput-object p0, p1, p2

    .line 448
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->visited:Z

    .line 449
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->childrenLength:I

    if-ge v1, v4, :cond_3

    .line 462
    iget-object v4, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->children:[Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    aget-object v0, v4, v1

    .line 463
    .local v0, "child":Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p2, :cond_1

    .line 464
    aget-object v4, p1, v2

    if-ne v4, v0, :cond_0

    .line 465
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cyclic nodes detected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->instance:Ljava/lang/Object;

    .line 466
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->instance:Ljava/lang/Object;

    .line 467
    invoke-direct {p0, v0, v6}, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->findLoop(Lcom/sonyericsson/collaboration/ObjectBinder$Node;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 463
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 472
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v4, v0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->visited:Z

    if-nez v4, :cond_2

    .line 473
    add-int/lit8 v4, p2, 0x1

    invoke-direct {v0, p1, v4, p3, p4}, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->calcSequence([Lcom/sonyericsson/collaboration/ObjectBinder$Node;I[Ljava/lang/Object;I)I

    move-result p4

    .line 449
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 477
    .end local v0    # "child":Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v3, p4, 0x1

    .end local p4    # "sequenceIndex":I
    .local v3, "sequenceIndex":I
    iget-object v4, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->instance:Ljava/lang/Object;

    aput-object v4, p3, p4

    .line 478
    return v3
.end method

.method private findLoop(Lcom/sonyericsson/collaboration/ObjectBinder$Node;Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "node"    # Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    .param p2, "instance"    # Ljava/lang/Object;

    .prologue
    .line 482
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p1, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->childrenLength:I

    if-ge v1, v3, :cond_2

    .line 483
    iget-object v3, p1, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->children:[Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    aget-object v0, v3, v1

    .line 484
    .local v0, "child":Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    iget-object v3, v0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->instance:Ljava/lang/Object;

    if-ne v3, p2, :cond_0

    .line 485
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->instance:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 494
    .end local v0    # "child":Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    :goto_1
    return-object v3

    .line 487
    .restart local v0    # "child":Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    :cond_0
    iget-object v3, v0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->children:[Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    if-eqz v3, :cond_1

    .line 488
    invoke-direct {p0, v0, p2}, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->findLoop(Lcom/sonyericsson/collaboration/ObjectBinder$Node;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 489
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->instance:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 482
    .end local v2    # "result":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 494
    .end local v0    # "child":Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method


# virtual methods
.method public addChild(Lcom/sonyericsson/collaboration/ObjectBinder$Node;)V
    .locals 4
    .param p1, "child"    # Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    .prologue
    const/4 v3, 0x0

    .line 432
    iget-object v1, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->children:[Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->childrenLength:I

    iget-object v2, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->children:[Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 436
    :cond_0
    iget v1, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->childrenLength:I

    add-int/lit8 v1, v1, 0x8

    new-array v0, v1, [Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    .line 437
    .local v0, "temp":[Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    iget-object v1, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->children:[Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    if-eqz v1, :cond_1

    .line 438
    iget-object v1, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->children:[Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    iget v2, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->childrenLength:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 440
    :cond_1
    iput-object v0, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->children:[Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    .line 442
    .end local v0    # "temp":[Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->children:[Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    iget v2, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->childrenLength:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->childrenLength:I

    aput-object p1, v1, v2

    .line 443
    return-void
.end method
