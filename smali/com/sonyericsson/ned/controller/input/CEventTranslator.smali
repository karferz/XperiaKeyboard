.class public Lcom/sonyericsson/ned/controller/input/CEventTranslator;
.super Ljava/lang/Object;
.source "CEventTranslator.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/IBaseKeyHandler;
.implements Lcom/sonyericsson/collaboration/Bindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/input/CEventTranslator$Factory;,
        Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;
    }
.end annotation


# static fields
.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private burstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

.field private eventParsers:[Lcom/sonyericsson/ned/controller/IEventRepository;

.field private final storedEvents:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Object;",
            "Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/ned/controller/IBurstHandler;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/ned/controller/IEventRepository;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->storedEvents:Ljava/util/Hashtable;

    .line 36
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private getEvents(Lcom/sonyericsson/ned/controller/BaseKey;)[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 6
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/BaseKey;

    .prologue
    .line 42
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 43
    .local v1, "eventVector":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/sonyericsson/ned/controller/EventObject;>;"
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->eventParsers:[Lcom/sonyericsson/ned/controller/IEventRepository;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_1

    aget-object v0, v4, v3

    .line 44
    .local v0, "eventRepository":Lcom/sonyericsson/ned/controller/IEventRepository;
    invoke-interface {v0, p1}, Lcom/sonyericsson/ned/controller/IEventRepository;->getEvents(Lcom/sonyericsson/ned/controller/BaseKey;)[Lcom/sonyericsson/ned/controller/EventObject;

    move-result-object v2

    .line 45
    .local v2, "events":[Lcom/sonyericsson/ned/controller/EventObject;
    if-eqz v2, :cond_0

    .line 46
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 43
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "eventRepository":Lcom/sonyericsson/ned/controller/IEventRepository;
    .end local v2    # "events":[Lcom/sonyericsson/ned/controller/EventObject;
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sonyericsson/ned/controller/EventObject;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sonyericsson/ned/controller/EventObject;

    return-object v3
.end method


# virtual methods
.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 266
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/IEventRepository;

    if-ne p2, v0, :cond_0

    .line 267
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/IEventRepository;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->eventParsers:[Lcom/sonyericsson/ned/controller/IEventRepository;

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->eventParsers:[Lcom/sonyericsson/ned/controller/IEventRepository;

    .line 270
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 259
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/IBurstHandler;

    if-ne p2, v0, :cond_0

    .line 260
    check-cast p1, Lcom/sonyericsson/ned/controller/IBurstHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->burstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    .line 262
    :cond_0
    return-void
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 275
    sget-object v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public onBaseKey(Lcom/sonyericsson/ned/controller/BaseKey;)Z
    .locals 18
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/BaseKey;

    .prologue
    .line 60
    const/4 v1, 0x0

    .line 62
    .local v1, "consumed":Z
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->getEvents(Lcom/sonyericsson/ned/controller/BaseKey;)[Lcom/sonyericsson/ned/controller/EventObject;

    move-result-object v2

    .line 64
    .local v2, "events":[Lcom/sonyericsson/ned/controller/EventObject;
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getActionType()I

    move-result v15

    packed-switch v15, :pswitch_data_0

    .line 251
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->burstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    invoke-interface {v15, v2}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v1

    :cond_0
    :goto_0
    move v15, v1

    .line 254
    :goto_1
    return v15

    .line 68
    :pswitch_1
    const/4 v3, 0x0

    .line 69
    .local v3, "hasLongpressCommandEvent":Z
    const/4 v4, 0x0

    .line 75
    .local v4, "hasRepeatCommandEvent":Z
    if-eqz v2, :cond_1

    array-length v15, v2

    if-nez v15, :cond_2

    .line 77
    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 80
    :cond_2
    new-instance v15, Lcom/sonyericsson/ned/controller/BaseKey;

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getObject()Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x2

    invoke-direct/range {v15 .. v17}, Lcom/sonyericsson/ned/controller/BaseKey;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->getEvents(Lcom/sonyericsson/ned/controller/BaseKey;)[Lcom/sonyericsson/ned/controller/EventObject;

    move-result-object v10

    .line 82
    .local v10, "longpressEvents":[Lcom/sonyericsson/ned/controller/EventObject;
    if-eqz v10, :cond_3

    .line 83
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    array-length v15, v10

    if-ge v7, v15, :cond_3

    .line 84
    aget-object v15, v10, v7

    instance-of v15, v15, Lcom/sonyericsson/ned/controller/Command;

    if-eqz v15, :cond_7

    .line 85
    const/4 v3, 0x1

    .line 91
    .end local v7    # "i":I
    :cond_3
    new-instance v15, Lcom/sonyericsson/ned/controller/BaseKey;

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getObject()Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x3

    invoke-direct/range {v15 .. v17}, Lcom/sonyericsson/ned/controller/BaseKey;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->getEvents(Lcom/sonyericsson/ned/controller/BaseKey;)[Lcom/sonyericsson/ned/controller/EventObject;

    move-result-object v12

    .line 93
    .local v12, "repeatEvents":[Lcom/sonyericsson/ned/controller/EventObject;
    if-eqz v12, :cond_4

    .line 94
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    array-length v15, v12

    if-ge v7, v15, :cond_4

    .line 95
    aget-object v15, v12, v7

    instance-of v15, v15, Lcom/sonyericsson/ned/controller/Command;

    if-eqz v15, :cond_8

    .line 96
    const/4 v4, 0x1

    .line 102
    .end local v7    # "i":I
    :cond_4
    if-eqz v3, :cond_f

    if-nez v4, :cond_f

    .line 112
    const/4 v5, 0x0

    .line 115
    .local v5, "hasVirtualKeyEvent":Z
    const/4 v15, 0x1

    new-array v14, v15, [Lcom/sonyericsson/ned/controller/EventObject;

    .line 117
    .local v14, "virtualKeyEvent":[Lcom/sonyericsson/ned/controller/EventObject;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_4
    array-length v15, v2

    if-ge v8, v15, :cond_5

    .line 118
    aget-object v15, v2, v8

    instance-of v15, v15, Lcom/sonyericsson/ned/controller/VirtualKey;

    if-eqz v15, :cond_9

    .line 119
    const/4 v5, 0x1

    .line 120
    const/4 v15, 0x0

    aget-object v16, v2, v8

    aput-object v16, v14, v15

    .line 124
    :cond_5
    if-eqz v5, :cond_a

    array-length v15, v2

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 125
    const/4 v9, 0x0

    .line 126
    .local v9, "k":I
    array-length v15, v2

    add-int/lit8 v15, v15, -0x1

    new-array v13, v15, [Lcom/sonyericsson/ned/controller/EventObject;

    .line 127
    .local v13, "storeEvents":[Lcom/sonyericsson/ned/controller/EventObject;
    const/4 v8, 0x0

    :goto_5
    array-length v15, v2

    if-ge v8, v15, :cond_b

    .line 128
    aget-object v15, v2, v8

    instance-of v15, v15, Lcom/sonyericsson/ned/controller/Command;

    if-eqz v15, :cond_6

    .line 129
    aget-object v15, v2, v8

    aput-object v15, v13, v9

    .line 130
    add-int/lit8 v9, v9, 0x1

    .line 127
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 83
    .end local v5    # "hasVirtualKeyEvent":Z
    .end local v8    # "j":I
    .end local v9    # "k":I
    .end local v12    # "repeatEvents":[Lcom/sonyericsson/ned/controller/EventObject;
    .end local v13    # "storeEvents":[Lcom/sonyericsson/ned/controller/EventObject;
    .end local v14    # "virtualKeyEvent":[Lcom/sonyericsson/ned/controller/EventObject;
    .restart local v7    # "i":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 94
    .restart local v12    # "repeatEvents":[Lcom/sonyericsson/ned/controller/EventObject;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 117
    .end local v7    # "i":I
    .restart local v5    # "hasVirtualKeyEvent":Z
    .restart local v8    # "j":I
    .restart local v14    # "virtualKeyEvent":[Lcom/sonyericsson/ned/controller/EventObject;
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 133
    :cond_a
    if-nez v5, :cond_e

    .line 134
    move-object v13, v2

    .line 140
    .restart local v13    # "storeEvents":[Lcom/sonyericsson/ned/controller/EventObject;
    :cond_b
    :goto_6
    new-instance v6, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;

    invoke-direct {v6}, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;-><init>()V

    .line 141
    .local v6, "heritage":Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;
    iput-object v13, v6, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;->events:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 143
    const/4 v1, 0x1

    .line 146
    if-eqz v5, :cond_c

    .line 151
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->burstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    invoke-interface {v15, v14}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v15

    iput-boolean v15, v6, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;->consumed:Z

    .line 165
    .end local v5    # "hasVirtualKeyEvent":Z
    .end local v8    # "j":I
    .end local v13    # "storeEvents":[Lcom/sonyericsson/ned/controller/EventObject;
    .end local v14    # "virtualKeyEvent":[Lcom/sonyericsson/ned/controller/EventObject;
    :cond_c
    :goto_7
    iget-boolean v15, v6, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;->consumed:Z

    if-nez v15, :cond_d

    iget-object v15, v6, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;->events:[Lcom/sonyericsson/ned/controller/EventObject;

    if-eqz v15, :cond_0

    .line 166
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->storedEvents:Ljava/util/Hashtable;

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getIdentifier()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 137
    .end local v6    # "heritage":Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;
    .restart local v5    # "hasVirtualKeyEvent":Z
    .restart local v8    # "j":I
    .restart local v14    # "virtualKeyEvent":[Lcom/sonyericsson/ned/controller/EventObject;
    :cond_e
    const/4 v13, 0x0

    .restart local v13    # "storeEvents":[Lcom/sonyericsson/ned/controller/EventObject;
    goto :goto_6

    .line 155
    .end local v5    # "hasVirtualKeyEvent":Z
    .end local v8    # "j":I
    .end local v13    # "storeEvents":[Lcom/sonyericsson/ned/controller/EventObject;
    .end local v14    # "virtualKeyEvent":[Lcom/sonyericsson/ned/controller/EventObject;
    :cond_f
    new-instance v6, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;

    invoke-direct {v6}, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;-><init>()V

    .line 157
    .restart local v6    # "heritage":Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->burstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    invoke-interface {v15, v2}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v1

    .line 158
    iput-boolean v1, v6, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;->consumed:Z

    goto :goto_7

    .line 172
    .end local v3    # "hasLongpressCommandEvent":Z
    .end local v4    # "hasRepeatCommandEvent":Z
    .end local v6    # "heritage":Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;
    .end local v10    # "longpressEvents":[Lcom/sonyericsson/ned/controller/EventObject;
    .end local v12    # "repeatEvents":[Lcom/sonyericsson/ned/controller/EventObject;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->storedEvents:Ljava/util/Hashtable;

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getIdentifier()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;

    .line 175
    .restart local v6    # "heritage":Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;
    if-eqz v6, :cond_10

    .line 176
    const/4 v15, 0x1

    iput-boolean v15, v6, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;->consumed:Z

    .line 178
    const/4 v15, 0x0

    iput-object v15, v6, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;->events:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 181
    :cond_10
    if-eqz v2, :cond_0

    array-length v15, v2

    if-eqz v15, :cond_0

    .line 186
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->burstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    invoke-interface {v15, v2}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v1

    .line 189
    goto/16 :goto_0

    .line 193
    .end local v6    # "heritage":Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;
    :pswitch_3
    array-length v15, v2

    if-lez v15, :cond_0

    .line 194
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->burstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    invoke-interface {v15, v2}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v1

    goto/16 :goto_0

    .line 203
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->storedEvents:Ljava/util/Hashtable;

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getIdentifier()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;

    .line 204
    .restart local v6    # "heritage":Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->storedEvents:Ljava/util/Hashtable;

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getIdentifier()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    if-eqz v6, :cond_11

    .line 206
    iget-object v11, v6, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;->events:[Lcom/sonyericsson/ned/controller/EventObject;

    .line 215
    .local v11, "pressEvents":[Lcom/sonyericsson/ned/controller/EventObject;
    iget-boolean v15, v6, Lcom/sonyericsson/ned/controller/input/CEventTranslator$EventHeritage;->consumed:Z

    if-nez v15, :cond_11

    if-eqz v11, :cond_11

    .line 220
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->burstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    invoke-interface {v15, v11}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v1

    .line 224
    .end local v11    # "pressEvents":[Lcom/sonyericsson/ned/controller/EventObject;
    :cond_11
    if-eqz v2, :cond_0

    array-length v15, v2

    if-lez v15, :cond_0

    .line 225
    if-nez v1, :cond_12

    .line 227
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->burstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    invoke-interface {v15, v2}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v1

    goto/16 :goto_0

    .line 230
    :cond_12
    const/4 v14, 0x0

    .line 231
    .local v14, "virtualKeyEvent":Lcom/sonyericsson/ned/controller/EventObject;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_8
    array-length v15, v2

    if-ge v7, v15, :cond_13

    .line 232
    aget-object v15, v2, v7

    instance-of v15, v15, Lcom/sonyericsson/ned/controller/VirtualKey;

    if-eqz v15, :cond_14

    .line 233
    aget-object v14, v2, v7

    .line 237
    :cond_13
    if-eqz v14, :cond_0

    .line 242
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonyericsson/ned/controller/input/CEventTranslator;->burstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/EventObject;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v14, v16, v17

    invoke-interface/range {v15 .. v16}, Lcom/sonyericsson/ned/controller/IBurstHandler;->onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    goto/16 :goto_0

    .line 231
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
