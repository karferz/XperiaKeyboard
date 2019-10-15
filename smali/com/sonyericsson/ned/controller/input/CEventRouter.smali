.class public Lcom/sonyericsson/ned/controller/input/CEventRouter;
.super Ljava/lang/Object;
.source "CEventRouter.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/IBurstHandler;
.implements Lcom/sonyericsson/collaboration/ManagedBindable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/ned/controller/input/CEventRouter$Factory;
    }
.end annotation


# static fields
.field private static final DO_DEBUG:Z

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBlockedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[",
            "Lcom/sonyericsson/ned/controller/EventObject;",
            ">;"
        }
    .end annotation
.end field

.field private mEventBlockHandler:Lcom/sonyericsson/ned/controller/IEventBlockHandler;

.field private mEventHandlers:[Lcom/sonyericsson/ned/controller/IEventHandlerV3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->REQUIRED:[Ljava/lang/Class;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/ned/controller/input/CEventRouter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mBlockedEvents:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private doEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 17
    .param p1, "events"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 66
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/ned/controller/input/CEventRouter;->postponeIfBlocked([Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 71
    const/4 v5, 0x0

    .line 120
    :cond_0
    return v5

    .line 74
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v8, "missedEventHandlers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/ned/controller/IEventHandlerV3;>;"
    const/4 v5, 0x0

    .line 82
    .local v5, "isConsumed":Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mEventHandlers:[Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    array-length v13, v12

    const/4 v9, 0x0

    move v11, v9

    :goto_0
    if-ge v11, v13, :cond_8

    aget-object v2, v12, v11

    .line 83
    .local v2, "eventHandler":Lcom/sonyericsson/ned/controller/IEventHandlerV3;
    const/4 v6, 0x0

    .line 84
    .local v6, "isProcessed":Z
    if-nez v5, :cond_4

    .line 85
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v14, :cond_4

    aget-object v1, p1, v10

    .line 86
    .local v1, "event":Lcom/sonyericsson/ned/controller/EventObject;
    invoke-interface {v2}, Lcom/sonyericsson/ned/controller/IEventHandlerV3;->getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;

    move-result-object v4

    .line 87
    .local v4, "eventsWanted":[Lcom/sonyericsson/ned/controller/EventObject;
    if-eqz v4, :cond_3

    array-length v9, v4

    if-lez v9, :cond_3

    .line 88
    array-length v15, v4

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v15, :cond_3

    aget-object v3, v4, v9

    .line 89
    .local v3, "eventWanted":Lcom/sonyericsson/ned/controller/EventObject;
    invoke-virtual {v3, v1}, Lcom/sonyericsson/ned/controller/EventObject;->match(Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 90
    const/4 v6, 0x1

    .line 91
    invoke-interface {v2, v1}, Lcom/sonyericsson/ned/controller/IEventHandlerV3;->onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v5

    .line 93
    :cond_2
    if-eqz v5, :cond_6

    .line 98
    .end local v3    # "eventWanted":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_3
    if-eqz v5, :cond_7

    .line 104
    .end local v1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    .end local v4    # "eventsWanted":[Lcom/sonyericsson/ned/controller/EventObject;
    :cond_4
    if-nez v6, :cond_5

    .line 105
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_5
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    goto :goto_0

    .line 88
    .restart local v1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    .restart local v3    # "eventWanted":Lcom/sonyericsson/ned/controller/EventObject;
    .restart local v4    # "eventsWanted":[Lcom/sonyericsson/ned/controller/EventObject;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 85
    .end local v3    # "eventWanted":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_7
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_1

    .line 116
    .end local v1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    .end local v2    # "eventHandler":Lcom/sonyericsson/ned/controller/IEventHandlerV3;
    .end local v4    # "eventsWanted":[Lcom/sonyericsson/ned/controller/EventObject;
    .end local v6    # "isProcessed":Z
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    .line 117
    .local v7, "missedEventHandler":Lcom/sonyericsson/ned/controller/IEventHandlerV3;
    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Lcom/sonyericsson/ned/controller/IEventHandlerV3;->onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V

    goto :goto_3
.end method

.method private postponeIfBlocked([Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 6
    .param p1, "events"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    const/4 v1, 0x0

    .line 124
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p1, v2

    .line 125
    .local v0, "event":Lcom/sonyericsson/ned/controller/EventObject;
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mEventBlockHandler:Lcom/sonyericsson/ned/controller/IEventBlockHandler;

    if-eqz v4, :cond_2

    .line 126
    invoke-virtual {v0}, Lcom/sonyericsson/ned/controller/EventObject;->getBlockType()Lcom/sonyericsson/ned/controller/EventBlockType;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_NONE:Lcom/sonyericsson/ned/controller/EventBlockType;

    if-eq v4, v5, :cond_0

    .line 127
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mEventBlockHandler:Lcom/sonyericsson/ned/controller/IEventBlockHandler;

    invoke-interface {v4, v0}, Lcom/sonyericsson/ned/controller/IEventBlockHandler;->updateBlockOnEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z

    .line 129
    :cond_0
    iget-object v4, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mEventBlockHandler:Lcom/sonyericsson/ned/controller/IEventBlockHandler;

    invoke-interface {v4}, Lcom/sonyericsson/ned/controller/IEventBlockHandler;->isEventsBlocked()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 130
    iget-object v1, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mBlockedEvents:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    const/4 v1, 0x1

    .line 138
    .end local v0    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_1
    return v1

    .line 124
    .restart local v0    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
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
    .line 175
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    if-ne p2, v0, :cond_0

    .line 176
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    iput-object v0, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mEventHandlers:[Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mEventHandlers:[Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
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
    .line 171
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 225
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
    .line 184
    sget-object v0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 8

    .prologue
    .line 199
    iget-object v6, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mEventHandlers:[Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    array-length v6, v6

    new-array v5, v6, [Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    .line 200
    .local v5, "sortedHandlers":[Lcom/sonyericsson/ned/controller/IEventHandlerV3;
    const/4 v0, 0x0

    .line 201
    .local v0, "chosen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 204
    const/4 v3, 0x0

    .line 205
    .local v3, "importance":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    iget-object v6, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mEventHandlers:[Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    array-length v6, v6

    if-ge v4, v6, :cond_1

    .line 206
    iget-object v6, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mEventHandlers:[Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    aget-object v6, v6, v4

    if-eqz v6, :cond_0

    .line 209
    iget-object v6, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mEventHandlers:[Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    aget-object v6, v6, v4

    invoke-interface {v6}, Lcom/sonyericsson/ned/controller/IEventHandlerV3;->getCategory()I

    move-result v1

    .line 210
    .local v1, "current":I
    if-gt v3, v1, :cond_0

    .line 211
    move v0, v4

    .line 212
    move v3, v1

    .line 205
    .end local v1    # "current":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 216
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mEventHandlers:[Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    aget-object v6, v6, v0

    aput-object v6, v5, v2

    .line 217
    iget-object v6, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mEventHandlers:[Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    const/4 v7, 0x0

    aput-object v7, v6, v0

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 219
    .end local v3    # "importance":I
    .end local v4    # "j":I
    :cond_2
    iput-object v5, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mEventHandlers:[Lcom/sonyericsson/ned/controller/IEventHandlerV3;

    .line 220
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public notifyUnblocked()V
    .locals 4

    .prologue
    .line 148
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mBlockedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mBlockedEvents:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 153
    .local v0, "blockedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Lcom/sonyericsson/ned/controller/EventObject;>;"
    iget-object v2, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mBlockedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 154
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonyericsson/ned/controller/EventObject;

    .line 155
    .local v1, "events":[Lcom/sonyericsson/ned/controller/EventObject;
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mBlockedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-direct {p0, v1}, Lcom/sonyericsson/ned/controller/input/CEventRouter;->doEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    goto :goto_0

    .line 162
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mBlockedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    .end local v0    # "blockedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Lcom/sonyericsson/ned/controller/EventObject;>;"
    .end local v1    # "events":[Lcom/sonyericsson/ned/controller/EventObject;
    :cond_1
    return-void
.end method

.method public onEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 1
    .param p1, "events"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mBlockedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0, p1}, Lcom/sonyericsson/ned/controller/input/CEventRouter;->doEventBurst([Lcom/sonyericsson/ned/controller/EventObject;)Z

    move-result v0

    .line 60
    :goto_0
    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mBlockedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEventBlockHandler(Lcom/sonyericsson/ned/controller/IEventBlockHandler;)V
    .locals 0
    .param p1, "eventBlockHandler"    # Lcom/sonyericsson/ned/controller/IEventBlockHandler;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/input/CEventRouter;->mEventBlockHandler:Lcom/sonyericsson/ned/controller/IEventBlockHandler;

    .line 144
    return-void
.end method
