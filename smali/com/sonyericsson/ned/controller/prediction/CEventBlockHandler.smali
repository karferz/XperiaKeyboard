.class public Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;
.super Ljava/lang/Object;
.source "CEventBlockHandler.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/IEventBlockHandler;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

.field private mIsBlocked:Z

.field private final mPredictive:Lcom/sonyericsson/ned/model/IPredictive;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/ned/controller/IBurstHandler;Lcom/sonyericsson/ned/model/IPredictive;)V
    .locals 0
    .param p1, "burstHandler"    # Lcom/sonyericsson/ned/controller/IBurstHandler;
    .param p2, "predictive"    # Lcom/sonyericsson/ned/model/IPredictive;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    .line 39
    iput-object p2, p0, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    .line 40
    return-void
.end method


# virtual methods
.method public isEventsBlocked()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;->mIsBlocked:Z

    return v0
.end method

.method public onNoPendingPredictions()V
    .locals 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;->mIsBlocked:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;->mIsBlocked:Z

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    invoke-interface {v0}, Lcom/sonyericsson/ned/controller/IBurstHandler;->notifyUnblocked()V

    .line 77
    return-void
.end method

.method public updateBlockOnEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 2
    .param p1, "eventObject"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;->mIsBlocked:Z

    if-eqz v0, :cond_0

    .line 46
    const/4 v0, 0x1

    .line 58
    :goto_0
    return v0

    .line 49
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/EventObject;->getBlockType()Lcom/sonyericsson/ned/controller/EventBlockType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/ned/controller/EventBlockType;->BLOCK_TYPE_PENDING_PREDICTIONS:Lcom/sonyericsson/ned/controller/EventBlockType;

    if-ne v0, v1, :cond_1

    .line 50
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;->mPredictive:Lcom/sonyericsson/ned/model/IPredictive;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/IPredictive;->isPredictionsPending()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;->mIsBlocked:Z

    .line 51
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;->mIsBlocked:Z

    if-eqz v0, :cond_1

    .line 58
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/ned/controller/prediction/CEventBlockHandler;->mIsBlocked:Z

    goto :goto_0
.end method
