.class public final Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;
.super Ljava/lang/Object;
.source "ObjectEnvironmentBuilder.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/OnDebugListener;


# static fields
.field private static final DO_DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final factories:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonyericsson/collaboration/ObjectFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instances:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/collaboration/ObjectFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final rebindableObjects:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final requirements:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->instances:Ljava/util/Hashtable;

    .line 23
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->rebindableObjects:Ljava/util/Hashtable;

    .line 30
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->requirements:Ljava/util/Hashtable;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->factories:Ljava/util/Vector;

    .line 32
    return-void
.end method

.method private retrieveInstance(ZLcom/sonyericsson/collaboration/ObjectFactory;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "rebuild"    # Z
    .param p2, "factory"    # Lcom/sonyericsson/collaboration/ObjectFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/sonyericsson/collaboration/ObjectFactory;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 247
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 248
    .local v0, "instance":Ljava/lang/Object;
    const-class v2, Lcom/sonyericsson/collaboration/ManagedRebindable;

    invoke-virtual {v2, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 249
    .local v1, "isRebindable":Z
    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 250
    iget-object v2, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->rebindableObjects:Ljava/util/Hashtable;

    invoke-virtual {v2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 251
    invoke-virtual {p2, v0}, Lcom/sonyericsson/collaboration/ObjectFactory;->onReuse(Ljava/lang/Object;)V

    .line 253
    .end local v0    # "instance":Ljava/lang/Object;
    :cond_0
    if-nez v0, :cond_1

    .line 254
    invoke-virtual {p2}, Lcom/sonyericsson/collaboration/ObjectFactory;->createInstance()Ljava/lang/Object;

    move-result-object v0

    .line 255
    .restart local v0    # "instance":Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 256
    iget-object v2, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->rebindableObjects:Ljava/util/Hashtable;

    invoke-virtual {v2, p3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .end local v0    # "instance":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V
    .locals 1
    .param p1, "factory"    # Lcom/sonyericsson/collaboration/ObjectFactory;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->factories:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 44
    return-void
.end method

.method public addFactory(Ljava/lang/String;)V
    .locals 5
    .param p1, "clazz"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->instances:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/collaboration/ObjectFactory;

    .line 57
    .local v1, "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    if-nez v1, :cond_0

    .line 58
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    check-cast v1, Lcom/sonyericsson/collaboration/ObjectFactory;

    .line 59
    .restart local v1    # "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    iget-object v2, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->instances:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->addFactory(Lcom/sonyericsson/collaboration/ObjectFactory;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 72
    .end local v1    # "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 64
    .local v0, "exception":Ljava/lang/InstantiationException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Factory takes parameters ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "exception":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 67
    .local v0, "exception":Ljava/lang/IllegalAccessException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Factory not visible ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    .end local v0    # "exception":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 70
    .local v0, "exception":Ljava/lang/ClassNotFoundException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Factory not found ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addRequirement(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->requirements:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method public addRequirement(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->requirements:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method public build([Ljava/lang/Object;Z)[Ljava/lang/Object;
    .locals 26
    .param p1, "base"    # [Ljava/lang/Object;
    .param p2, "rebuild"    # Z

    .prologue
    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->requirements:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Hashtable;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v15, v0, [Ljava/lang/String;

    .line 94
    .local v15, "names":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->requirements:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v15}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "names":[Ljava/lang/String;
    check-cast v15, [Ljava/lang/String;

    .line 97
    .restart local v15    # "names":[Ljava/lang/String;
    new-instance v17, Ljava/util/Vector;

    invoke-direct/range {v17 .. v17}, Ljava/util/Vector;-><init>()V

    .line 98
    .local v17, "processed":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonyericsson/collaboration/ObjectFactory;>;"
    const/4 v6, 0x0

    .local v6, "factoriesIndex":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->factories:Ljava/util/Vector;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v6, v0, :cond_5

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->factories:Ljava/util/Vector;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/collaboration/ObjectFactory;

    .line 106
    .local v7, "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    invoke-virtual {v7, v15}, Lcom/sonyericsson/collaboration/ObjectFactory;->requirementsFulfilled([Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 107
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_1
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    aget-object v5, p1, v22

    .line 108
    .local v5, "clazz":Ljava/lang/Object;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v24

    invoke-virtual {v7}, Lcom/sonyericsson/collaboration/ObjectFactory;->getObjectClass()Ljava/lang/Class;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 109
    const/4 v7, 0x0

    .line 118
    .end local v5    # "clazz":Ljava/lang/Object;
    :cond_0
    :goto_2
    if-eqz v7, :cond_1

    .line 120
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 123
    array-length v0, v15

    move/from16 v24, v0

    const/16 v22, 0x0

    move/from16 v23, v22

    :goto_3
    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    aget-object v14, v15, v23

    .line 127
    .local v14, "name":Ljava/lang/String;
    move-object v13, v14

    .line 128
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->requirements:Ljava/util/Hashtable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    invoke-virtual {v7, v13, v0}, Lcom/sonyericsson/collaboration/ObjectFactory;->softSetParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_4

    .line 129
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 98
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 107
    .restart local v5    # "clazz":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 114
    .end local v5    # "clazz":Ljava/lang/Object;
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 123
    .restart local v13    # "key":Ljava/lang/String;
    .restart local v14    # "name":Ljava/lang/String;
    :cond_4
    add-int/lit8 v22, v23, 0x1

    move/from16 v23, v22

    goto :goto_3

    .line 137
    .end local v7    # "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "name":Ljava/lang/String;
    :cond_5
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 138
    .local v10, "instancesAdded":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_4
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_6

    aget-object v8, p1, v22

    .line 139
    .local v8, "instance":Ljava/lang/Object;
    invoke-virtual {v10, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 138
    add-int/lit8 v22, v22, 0x1

    goto :goto_4

    .line 143
    .end local v8    # "instance":Ljava/lang/Object;
    :cond_6
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 144
    .local v9, "instances":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_7

    aget-object v8, p1, v22

    .line 145
    .restart local v8    # "instance":Ljava/lang/Object;
    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 144
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    .line 149
    .end local v8    # "instance":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v22

    if-lez v22, :cond_e

    .line 153
    move-object v11, v10

    .line 154
    .local v11, "instancesToProcess":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    new-instance v10, Ljava/util/Vector;

    .end local v10    # "instancesAdded":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 155
    .restart local v10    # "instancesAdded":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    const/4 v12, 0x0

    .line 156
    .local v12, "instancesToProcessIndex":I
    :goto_6
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v12, v0, :cond_7

    .line 162
    const/16 v18, 0x0

    .local v18, "processedIndex":I
    :goto_7
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 170
    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/collaboration/ObjectFactory;

    .line 171
    .restart local v7    # "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    invoke-virtual {v7}, Lcom/sonyericsson/collaboration/ObjectFactory;->getRequiredInterfaces()[Ljava/lang/Class;

    move-result-object v4

    .line 172
    .local v4, "bindings":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v4, :cond_8

    .line 173
    array-length v0, v4

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_8
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    aget-object v3, v4, v22

    .line 174
    .local v3, "binding":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v24, Lcom/sonyericsson/collaboration/Optional;

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 176
    invoke-virtual {v11, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    .line 175
    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 183
    invoke-virtual {v7}, Lcom/sonyericsson/collaboration/ObjectFactory;->getObjectClass()Ljava/lang/Class;

    move-result-object v21

    .line 184
    .local v21, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->retrieveInstance(ZLcom/sonyericsson/collaboration/ObjectFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .line 187
    .restart local v8    # "instance":Ljava/lang/Object;
    add-int/lit8 v19, v18, -0x1

    .end local v18    # "processedIndex":I
    .local v19, "processedIndex":I
    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->removeElementAt(I)V

    .line 190
    invoke-virtual {v10, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 191
    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move/from16 v18, v19

    .line 162
    .end local v3    # "binding":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "instance":Ljava/lang/Object;
    .end local v19    # "processedIndex":I
    .end local v21    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "processedIndex":I
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 173
    .restart local v3    # "binding":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    add-int/lit8 v22, v22, 0x1

    goto :goto_8

    .line 202
    .end local v3    # "binding":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "bindings":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    :cond_a
    const/16 v18, 0x0

    :goto_9
    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_d

    .line 209
    invoke-virtual {v11, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v8

    .line 210
    .restart local v8    # "instance":Ljava/lang/Object;
    instance-of v0, v8, Lcom/sonyericsson/collaboration/Bindable;

    move/from16 v22, v0

    if-eqz v22, :cond_b

    .line 211
    check-cast v8, Lcom/sonyericsson/collaboration/Bindable;

    .end local v8    # "instance":Ljava/lang/Object;
    invoke-interface {v8}, Lcom/sonyericsson/collaboration/Bindable;->getNeeds()[Ljava/lang/Class;

    move-result-object v4

    .line 212
    .restart local v4    # "bindings":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v4, :cond_b

    .line 213
    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/collaboration/ObjectFactory;

    .line 214
    .restart local v7    # "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    invoke-virtual {v7}, Lcom/sonyericsson/collaboration/ObjectFactory;->getObjectClass()Ljava/lang/Class;

    move-result-object v21

    .line 215
    .restart local v21    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v0, v4

    move/from16 v23, v0

    const/16 v22, 0x0

    :goto_a
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_b

    aget-object v3, v4, v22

    .line 216
    .restart local v3    # "binding":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 223
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->retrieveInstance(ZLcom/sonyericsson/collaboration/ObjectFactory;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v16

    .line 226
    .local v16, "object":Ljava/lang/Object;
    add-int/lit8 v19, v18, -0x1

    .end local v18    # "processedIndex":I
    .restart local v19    # "processedIndex":I
    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->removeElementAt(I)V

    .line 229
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 230
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move/from16 v18, v19

    .line 202
    .end local v3    # "binding":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "bindings":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    .end local v16    # "object":Ljava/lang/Object;
    .end local v19    # "processedIndex":I
    .end local v21    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "processedIndex":I
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 215
    .restart local v3    # "binding":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "bindings":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v7    # "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    .restart local v21    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_c
    add-int/lit8 v22, v22, 0x1

    goto :goto_a

    .line 156
    .end local v3    # "binding":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "bindings":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v7    # "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    .end local v21    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_6

    .line 241
    .end local v11    # "instancesToProcess":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Object;>;"
    .end local v12    # "instancesToProcessIndex":I
    .end local v18    # "processedIndex":I
    :cond_e
    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    .line 242
    .local v20, "result":[Ljava/lang/Object;
    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 243
    return-object v20
.end method

.method public clearFactories()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->factories:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 36
    return-void
.end method

.method public clearRequirements()V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->requirements:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 40
    return-void
.end method

.method public onReportDebugInformation(Lcom/sonyericsson/collaboration/OnDebugListener$Logger;)V
    .locals 7
    .param p1, "logger"    # Lcom/sonyericsson/collaboration/OnDebugListener$Logger;

    .prologue
    .line 264
    iget-object v3, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->requirements:Ljava/util/Hashtable;

    if-eqz v3, :cond_0

    .line 265
    new-instance v1, Ljava/util/TreeSet;

    iget-object v3, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->requirements:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 266
    .local v1, "keys":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 267
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonyericsson/collaboration/ObjectEnvironmentBuilder;->requirements:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 268
    .local v2, "value":Ljava/lang/Object;
    const-string v4, "TextInput::Requirement "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 271
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    const-string v3, "TextInput::Requirement "

    const-string v4, "No requirements."

    invoke-interface {p1, v3, v4}, Lcom/sonyericsson/collaboration/OnDebugListener$Logger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_1
    return-void
.end method
