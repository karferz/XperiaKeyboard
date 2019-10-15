.class public final Lcom/sonyericsson/collaboration/ObjectBinder;
.super Ljava/lang/Object;
.source "ObjectBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    }
.end annotation


# static fields
.field private static final DO_DEBUG:Z


# instance fields
.field private instances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/sonyericsson/collaboration/ObjectBinderListener;

.field private name:Ljava/lang/String;

.field private startupSequence:[Lcom/sonyericsson/collaboration/ManagedBindable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "untitled"

    invoke-direct {p0, v0}, Lcom/sonyericsson/collaboration/ObjectBinder;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->instances:Ljava/util/List;

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->listener:Lcom/sonyericsson/collaboration/ObjectBinderListener;

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private bindableInit(ZLjava/lang/Object;Lcom/sonyericsson/collaboration/ManagedBindable;)V
    .locals 1
    .param p1, "rebind"    # Z
    .param p2, "instance"    # Ljava/lang/Object;
    .param p3, "managed"    # Lcom/sonyericsson/collaboration/ManagedBindable;

    .prologue
    .line 361
    if-eqz p1, :cond_0

    instance-of v0, p3, Lcom/sonyericsson/collaboration/ManagedRebindable;

    if-eqz v0, :cond_0

    .line 366
    :try_start_0
    check-cast p2, Lcom/sonyericsson/collaboration/ManagedRebindable;

    .end local p2    # "instance":Ljava/lang/Object;
    invoke-interface {p2}, Lcom/sonyericsson/collaboration/ManagedRebindable;->reinit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :goto_0
    return-void

    .line 368
    :catchall_0
    move-exception v0

    throw v0

    .line 377
    .restart local p2    # "instance":Ljava/lang/Object;
    :cond_0
    :try_start_1
    invoke-interface {p3}, Lcom/sonyericsson/collaboration/ManagedBindable;->init()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 379
    :catchall_1
    move-exception v0

    throw v0
.end method

.method private bindableInitOptional(ZI)V
    .locals 1
    .param p1, "rebind"    # Z
    .param p2, "i"    # I

    .prologue
    .line 387
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->startupSequence:[Lcom/sonyericsson/collaboration/ManagedBindable;

    aget-object v0, v0, p2

    instance-of v0, v0, Lcom/sonyericsson/collaboration/ManagedRebindable;

    if-eqz v0, :cond_0

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->startupSequence:[Lcom/sonyericsson/collaboration/ManagedBindable;

    aget-object v0, v0, p2

    check-cast v0, Lcom/sonyericsson/collaboration/ManagedRebindable;

    invoke-interface {v0}, Lcom/sonyericsson/collaboration/ManagedRebindable;->reinitOptional()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    :goto_0
    return-void

    .line 394
    :catchall_0
    move-exception v0

    throw v0

    .line 403
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->startupSequence:[Lcom/sonyericsson/collaboration/ManagedBindable;

    aget-object v0, v0, p2

    invoke-interface {v0}, Lcom/sonyericsson/collaboration/ManagedBindable;->initOptional()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 405
    :catchall_1
    move-exception v0

    throw v0
.end method


# virtual methods
.method public dispose(Z)V
    .locals 11
    .param p1, "rebind"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 65
    iget-object v6, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->startupSequence:[Lcom/sonyericsson/collaboration/ManagedBindable;

    if-eqz v6, :cond_3

    .line 66
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->startupSequence:[Lcom/sonyericsson/collaboration/ManagedBindable;

    array-length v6, v6

    if-gt v1, v6, :cond_2

    .line 67
    iget-object v6, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->startupSequence:[Lcom/sonyericsson/collaboration/ManagedBindable;

    iget-object v8, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->startupSequence:[Lcom/sonyericsson/collaboration/ManagedBindable;

    array-length v8, v8

    sub-int/2addr v8, v1

    aget-object v3, v6, v8

    .line 68
    .local v3, "managedBindable":Lcom/sonyericsson/collaboration/ManagedBindable;
    if-eqz p1, :cond_0

    instance-of v6, v3, Lcom/sonyericsson/collaboration/ManagedRebindable;

    if-nez v6, :cond_1

    .line 73
    :cond_0
    :try_start_0
    invoke-interface {v3}, Lcom/sonyericsson/collaboration/ManagedBindable;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v6

    throw v6

    .line 83
    .end local v3    # "managedBindable":Lcom/sonyericsson/collaboration/ManagedBindable;
    :cond_2
    iput-object v10, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->startupSequence:[Lcom/sonyericsson/collaboration/ManagedBindable;

    .line 84
    iput-object v10, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->listener:Lcom/sonyericsson/collaboration/ObjectBinderListener;

    .line 85
    iput-object v10, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->name:Ljava/lang/String;

    .line 88
    .end local v1    # "i":I
    :cond_3
    iget-object v6, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->instances:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 89
    .local v2, "instance":Ljava/lang/Object;
    instance-of v6, v2, Lcom/sonyericsson/collaboration/Bindable;

    if-eqz v6, :cond_4

    move-object v0, v2

    .line 90
    check-cast v0, Lcom/sonyericsson/collaboration/Bindable;

    .line 91
    .local v0, "b":Lcom/sonyericsson/collaboration/Bindable;
    invoke-interface {v0}, Lcom/sonyericsson/collaboration/Bindable;->getNeeds()[Ljava/lang/Class;

    move-result-object v5

    .line 92
    .local v5, "needs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v5, :cond_4

    .line 93
    array-length v9, v5

    move v6, v7

    :goto_1
    if-ge v6, v9, :cond_4

    aget-object v4, v5, v6

    .line 94
    .local v4, "need":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-interface {v0, v10, v4}, Lcom/sonyericsson/collaboration/Bindable;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 95
    invoke-interface {v0, v7, v4}, Lcom/sonyericsson/collaboration/Bindable;->bindMany(ILjava/lang/Class;)[Ljava/lang/Object;

    .line 93
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 101
    .end local v0    # "b":Lcom/sonyericsson/collaboration/Bindable;
    .end local v2    # "instance":Ljava/lang/Object;
    .end local v4    # "need":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "needs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    iput-object v10, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->instances:Ljava/util/List;

    .line 102
    return-void
.end method

.method public getObjects()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->instances:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public init(Z)V
    .locals 45
    .param p1, "rebind"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException;
        }
    .end annotation

    .prologue
    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->instances:Ljava/util/List;

    move-object/from16 v38, v0

    if-nez v38, :cond_0

    .line 121
    new-instance v38, Ljava/lang/IllegalStateException;

    const-string v39, "A binder can only be initialized once"

    invoke-direct/range {v38 .. v39}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v38

    .line 125
    :cond_0
    new-instance v22, Ljava/util/Hashtable;

    invoke-direct/range {v22 .. v22}, Ljava/util/Hashtable;-><init>()V

    .line 126
    .local v22, "instanceToNode":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Object;Lcom/sonyericsson/collaboration/ObjectBinder$Node;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->instances:Ljava/util/List;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v0, v38

    new-array v0, v0, [Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    move-object/from16 v26, v0

    .line 129
    .local v26, "nodes":[Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    const/16 v27, 0x0

    .line 130
    .local v27, "numBindables":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->instances:Ljava/util/List;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_2

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->instances:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 136
    .local v21, "instance":Ljava/lang/Object;
    new-instance v25, Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/sonyericsson/collaboration/ObjectBinder$Node;-><init>(Ljava/lang/Object;)V

    .line 137
    .local v25, "node":Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    aput-object v25, v26, v18

    .line 141
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/sonyericsson/collaboration/Bindable;

    move/from16 v38, v0

    if-eqz v38, :cond_1

    .line 142
    add-int/lit8 v27, v27, 0x1

    .line 130
    :cond_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 147
    .end local v21    # "instance":Ljava/lang/Object;
    .end local v25    # "node":Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    :cond_2
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v17, "failures":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    new-instance v10, Ljava/util/Hashtable;

    invoke-direct {v10}, Ljava/util/Hashtable;-><init>()V

    .line 149
    .local v10, "cache":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Object;[Ljava/lang/Object;>;"
    move/from16 v0, v27

    new-array v0, v0, [Lcom/sonyericsson/collaboration/Bindable;

    move-object/from16 v29, v0

    .line 150
    .local v29, "objects":[Lcom/sonyericsson/collaboration/Bindable;
    const/16 v18, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->instances:Ljava/util/List;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_a

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->instances:Ljava/util/List;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    .line 155
    .restart local v21    # "instance":Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/sonyericsson/collaboration/Bindable;

    move/from16 v38, v0

    if-eqz v38, :cond_8

    .line 159
    add-int/lit8 v27, v27, -0x1

    move-object/from16 v38, v21

    check-cast v38, Lcom/sonyericsson/collaboration/Bindable;

    aput-object v38, v29, v27

    move-object/from16 v38, v21

    .line 162
    check-cast v38, Lcom/sonyericsson/collaboration/Bindable;

    invoke-interface/range {v38 .. v38}, Lcom/sonyericsson/collaboration/Bindable;->getNeeds()[Ljava/lang/Class;

    move-result-object v36

    .line 163
    .local v36, "required":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v36, :cond_8

    .line 164
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v41, v0

    const/16 v38, 0x0

    move/from16 v40, v38

    :goto_2
    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_8

    aget-object v13, v36, v40

    .line 165
    .local v13, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/Object;

    .line 168
    .local v11, "cached":[Ljava/lang/Object;
    if-nez v11, :cond_7

    .line 170
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v9, "bucket":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->instances:Ljava/util/List;

    move-object/from16 v38, v0

    invoke-interface/range {v38 .. v38}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_3
    :goto_3
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_4

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 173
    .local v12, "candidate":Ljava/lang/Object;
    invoke-virtual {v13, v12}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_3

    .line 174
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    const-class v38, Lcom/sonyericsson/collaboration/Optional;

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v38

    if-nez v38, :cond_3

    .line 178
    aget-object v42, v26, v18

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    move-object/from16 v0, v42

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->addChild(Lcom/sonyericsson/collaboration/ObjectBinder$Node;)V

    goto :goto_3

    .line 188
    .end local v12    # "candidate":Ljava/lang/Object;
    :cond_4
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-eqz v38, :cond_6

    .line 189
    const-class v38, Lcom/sonyericsson/collaboration/Optional;

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v38

    if-nez v38, :cond_5

    const-class v38, Lcom/sonyericsson/collaboration/DependentOptional;

    .line 190
    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v38

    if-nez v38, :cond_5

    .line 191
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v9    # "bucket":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5
    :goto_4
    add-int/lit8 v38, v40, 0x1

    move/from16 v40, v38

    goto :goto_2

    .line 194
    .restart local v9    # "bucket":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_6
    invoke-interface {v9}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v10, v13, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 198
    .end local v9    # "bucket":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_7
    const-class v38, Lcom/sonyericsson/collaboration/Optional;

    move-object/from16 v0, v38

    invoke-virtual {v0, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v38

    if-nez v38, :cond_5

    .line 199
    array-length v0, v11

    move/from16 v42, v0

    const/16 v38, 0x0

    move/from16 v39, v38

    :goto_5
    move/from16 v0, v39

    move/from16 v1, v42

    if-ge v0, v1, :cond_5

    aget-object v5, v11, v39

    .line 200
    .local v5, "aCached":Ljava/lang/Object;
    aget-object v43, v26, v18

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    move-object/from16 v0, v43

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->addChild(Lcom/sonyericsson/collaboration/ObjectBinder$Node;)V

    .line 199
    add-int/lit8 v38, v39, 0x1

    move/from16 v39, v38

    goto :goto_5

    .line 209
    .end local v5    # "aCached":Ljava/lang/Object;
    .end local v11    # "cached":[Ljava/lang/Object;
    .end local v13    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v36    # "required":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->listener:Lcom/sonyericsson/collaboration/ObjectBinderListener;

    move-object/from16 v38, v0

    if-eqz v38, :cond_9

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->listener:Lcom/sonyericsson/collaboration/ObjectBinderListener;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectBinderListener;->componentAdded(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    :cond_9
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 215
    .end local v21    # "instance":Ljava/lang/Object;
    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_e

    .line 217
    const/16 v18, 0x0

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_d

    .line 218
    add-int/lit8 v23, v18, 0x1

    .local v23, "j":I
    :goto_7
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v0, v23

    move/from16 v1, v38

    if-ge v0, v1, :cond_b

    .line 219
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Ljava/lang/Class;

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Ljava/lang/Class;

    invoke-virtual/range {v38 .. v39}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v38

    if-eqz v38, :cond_c

    .line 220
    invoke-interface/range {v17 .. v18}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 221
    add-int/lit8 v18, v18, -0x1

    .line 217
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 218
    :cond_c
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 228
    .end local v23    # "j":I
    :cond_d
    new-instance v39, Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException;

    .line 229
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v38

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v38, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v38

    check-cast v38, [Ljava/lang/Class;

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException;-><init>([Lcom/sonyericsson/collaboration/Bindable;[Ljava/lang/Class;)V

    throw v39

    .line 233
    :cond_e
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v0, v0, [Lcom/sonyericsson/collaboration/ObjectBinder$Node;

    move-object/from16 v31, v0

    .line 234
    .local v31, "path":[Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v14, v0, [Ljava/lang/Object;

    .line 235
    .local v14, "dependencySequence":[Ljava/lang/Object;
    const/16 v32, 0x0

    .line 236
    .local v32, "pos":I
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v39, v0

    const/16 v38, 0x0

    :goto_8
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_10

    aget-object v25, v26, v38

    .line 239
    .restart local v25    # "node":Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->visited:Z

    move/from16 v40, v0

    if-nez v40, :cond_f

    .line 240
    const/16 v40, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    move/from16 v2, v40

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v14, v3}, Lcom/sonyericsson/collaboration/ObjectBinder$Node;->access$000(Lcom/sonyericsson/collaboration/ObjectBinder$Node;[Lcom/sonyericsson/collaboration/ObjectBinder$Node;I[Ljava/lang/Object;I)I

    move-result v32

    .line 236
    :cond_f
    add-int/lit8 v38, v38, 0x1

    goto :goto_8

    .line 245
    .end local v25    # "node":Lcom/sonyericsson/collaboration/ObjectBinder$Node;
    :cond_10
    invoke-virtual {v10}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v16

    .line 246
    .local v16, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<[Ljava/lang/Object;>;"
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v38

    if-eqz v38, :cond_13

    .line 258
    const/16 v19, 0x0

    .line 259
    .local v19, "index":I
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 260
    .local v8, "bucket":[Ljava/lang/Object;
    array-length v0, v8

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    .line 261
    .local v37, "sorted":[Ljava/lang/Object;
    array-length v0, v14

    move/from16 v40, v0

    const/16 v38, 0x0

    move/from16 v39, v38

    move/from16 v20, v19

    .end local v19    # "index":I
    .local v20, "index":I
    :goto_a
    move/from16 v0, v39

    move/from16 v1, v40

    if-ge v0, v1, :cond_12

    aget-object v21, v14, v39

    .line 262
    .restart local v21    # "instance":Ljava/lang/Object;
    array-length v0, v8

    move/from16 v41, v0

    const/16 v38, 0x0

    :goto_b
    move/from16 v0, v38

    move/from16 v1, v41

    if-ge v0, v1, :cond_1d

    aget-object v4, v8, v38

    .line 263
    .local v4, "aBucket":Ljava/lang/Object;
    move-object/from16 v0, v21

    if-ne v4, v0, :cond_11

    .line 264
    add-int/lit8 v19, v20, 0x1

    .end local v20    # "index":I
    .restart local v19    # "index":I
    aput-object v4, v37, v20

    .line 261
    .end local v4    # "aBucket":Ljava/lang/Object;
    :goto_c
    add-int/lit8 v38, v39, 0x1

    move/from16 v39, v38

    move/from16 v20, v19

    .end local v19    # "index":I
    .restart local v20    # "index":I
    goto :goto_a

    .line 262
    .restart local v4    # "aBucket":Ljava/lang/Object;
    :cond_11
    add-int/lit8 v38, v38, 0x1

    goto :goto_b

    .line 269
    .end local v4    # "aBucket":Ljava/lang/Object;
    .end local v21    # "instance":Ljava/lang/Object;
    :cond_12
    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    .line 273
    .end local v8    # "bucket":[Ljava/lang/Object;
    .end local v20    # "index":I
    .end local v37    # "sorted":[Ljava/lang/Object;
    :cond_13
    const/16 v28, 0x0

    .line 274
    .local v28, "numManaged":I
    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v41, v0

    const/16 v38, 0x0

    move/from16 v40, v38

    :goto_d
    move/from16 v0, v40

    move/from16 v1, v41

    if-ge v0, v1, :cond_18

    aget-object v7, v29, v40

    .line 278
    .local v7, "bindable":Lcom/sonyericsson/collaboration/Bindable;
    invoke-interface {v7}, Lcom/sonyericsson/collaboration/Bindable;->getNeeds()[Ljava/lang/Class;

    move-result-object v36

    .line 279
    .restart local v36    # "required":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v36, :cond_16

    .line 280
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v42, v0

    const/16 v38, 0x0

    move/from16 v39, v38

    :goto_e
    move/from16 v0, v39

    move/from16 v1, v42

    if-ge v0, v1, :cond_16

    aget-object v6, v36, v39

    .line 285
    .local v6, "aRequired":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v13, v6

    .line 286
    .restart local v13    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, [Ljava/lang/Object;

    .line 287
    .local v35, "providers":[Ljava/lang/Object;
    if-eqz v35, :cond_15

    .line 297
    const/16 v38, 0x0

    aget-object v30, v35, v38

    .line 298
    .local v30, "one":Ljava/lang/Object;
    move-object/from16 v0, v30

    invoke-interface {v7, v0, v13}, Lcom/sonyericsson/collaboration/Bindable;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 299
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    invoke-interface {v7, v0, v13}, Lcom/sonyericsson/collaboration/Bindable;->bindMany(ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    .line 300
    .local v15, "dest":[Ljava/lang/Object;
    if-eqz v15, :cond_14

    .line 301
    const/16 v38, 0x0

    const/16 v43, 0x0

    array-length v0, v15

    move/from16 v44, v0

    move-object/from16 v0, v35

    move/from16 v1, v38

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->listener:Lcom/sonyericsson/collaboration/ObjectBinderListener;

    move-object/from16 v38, v0

    if-eqz v38, :cond_15

    .line 306
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v43, v0

    const/16 v38, 0x0

    :goto_f
    move/from16 v0, v38

    move/from16 v1, v43

    if-ge v0, v1, :cond_15

    aget-object v34, v35, v38

    .line 307
    .local v34, "provider":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->listener:Lcom/sonyericsson/collaboration/ObjectBinderListener;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    invoke-interface {v0, v1, v7, v2, v13}, Lcom/sonyericsson/collaboration/ObjectBinderListener;->bondAdded(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 306
    add-int/lit8 v38, v38, 0x1

    goto :goto_f

    .line 280
    .end local v15    # "dest":[Ljava/lang/Object;
    .end local v30    # "one":Ljava/lang/Object;
    .end local v34    # "provider":Ljava/lang/Object;
    :cond_15
    add-int/lit8 v38, v39, 0x1

    move/from16 v39, v38

    goto :goto_e

    .line 315
    .end local v6    # "aRequired":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v13    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v35    # "providers":[Ljava/lang/Object;
    :cond_16
    instance-of v0, v7, Lcom/sonyericsson/collaboration/ManagedBindable;

    move/from16 v38, v0

    if-eqz v38, :cond_17

    .line 316
    add-int/lit8 v28, v28, 0x1

    .line 274
    :cond_17
    add-int/lit8 v38, v40, 0x1

    move/from16 v40, v38

    goto/16 :goto_d

    .line 325
    .end local v7    # "bindable":Lcom/sonyericsson/collaboration/Bindable;
    .end local v36    # "required":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_18
    const/16 v32, 0x0

    .line 326
    move/from16 v0, v28

    new-array v0, v0, [Lcom/sonyericsson/collaboration/ManagedBindable;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/collaboration/ObjectBinder;->startupSequence:[Lcom/sonyericsson/collaboration/ManagedBindable;

    .line 327
    array-length v0, v14

    move/from16 v39, v0

    const/16 v38, 0x0

    move/from16 v33, v32

    .end local v32    # "pos":I
    .local v33, "pos":I
    :goto_10
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_19

    aget-object v21, v14, v38

    .line 330
    .restart local v21    # "instance":Ljava/lang/Object;
    move-object/from16 v0, v21

    instance-of v0, v0, Lcom/sonyericsson/collaboration/ManagedBindable;

    move/from16 v40, v0

    if-eqz v40, :cond_1c

    move-object/from16 v24, v21

    .line 334
    check-cast v24, Lcom/sonyericsson/collaboration/ManagedBindable;

    .line 335
    .local v24, "managed":Lcom/sonyericsson/collaboration/ManagedBindable;
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, v21

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/collaboration/ObjectBinder;->bindableInit(ZLjava/lang/Object;Lcom/sonyericsson/collaboration/ManagedBindable;)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->startupSequence:[Lcom/sonyericsson/collaboration/ManagedBindable;

    move-object/from16 v40, v0

    add-int/lit8 v32, v33, 0x1

    .end local v33    # "pos":I
    .restart local v32    # "pos":I
    aput-object v24, v40, v33

    .line 327
    .end local v24    # "managed":Lcom/sonyericsson/collaboration/ManagedBindable;
    :goto_11
    add-int/lit8 v38, v38, 0x1

    move/from16 v33, v32

    .end local v32    # "pos":I
    .restart local v33    # "pos":I
    goto :goto_10

    .line 341
    .end local v21    # "instance":Ljava/lang/Object;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->listener:Lcom/sonyericsson/collaboration/ObjectBinderListener;

    move-object/from16 v38, v0

    if-eqz v38, :cond_1a

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->listener:Lcom/sonyericsson/collaboration/ObjectBinderListener;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->startupSequence:[Lcom/sonyericsson/collaboration/ManagedBindable;

    move-object/from16 v39, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    move-object/from16 v2, v39

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectBinderListener;->startupSequenceUpdated(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 345
    :cond_1a
    const/16 v18, 0x0

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectBinder;->startupSequence:[Lcom/sonyericsson/collaboration/ManagedBindable;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_1b

    .line 346
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/collaboration/ObjectBinder;->bindableInitOptional(ZI)V

    .line 345
    add-int/lit8 v18, v18, 0x1

    goto :goto_12

    .line 348
    :cond_1b
    return-void

    .restart local v21    # "instance":Ljava/lang/Object;
    :cond_1c
    move/from16 v32, v33

    .end local v33    # "pos":I
    .restart local v32    # "pos":I
    goto :goto_11

    .end local v28    # "numManaged":I
    .restart local v8    # "bucket":[Ljava/lang/Object;
    .restart local v20    # "index":I
    .restart local v37    # "sorted":[Ljava/lang/Object;
    :cond_1d
    move/from16 v19, v20

    .end local v20    # "index":I
    .restart local v19    # "index":I
    goto/16 :goto_c
.end method

.method public setListener(Lcom/sonyericsson/collaboration/ObjectBinderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/sonyericsson/collaboration/ObjectBinderListener;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->listener:Lcom/sonyericsson/collaboration/ObjectBinderListener;

    .line 358
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public use(Ljava/lang/Object;)V
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->instances:Ljava/util/List;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not possible to add more instances after the binder has been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->instances:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public use([Ljava/lang/Object;)V
    .locals 2
    .param p1, "instances"    # [Ljava/lang/Object;

    .prologue
    .line 49
    if-nez p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not possible to add more instances after the binder has been initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectBinder;->instances:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 55
    return-void
.end method
