.class public Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;
.super Ljava/lang/Object;
.source "TouchLockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;
    }
.end annotation


# instance fields
.field private final mTouchLockClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;->mTouchLockClients:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addTouchLockClient(Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;)V
    .locals 1
    .param p1, "client"    # Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;->mTouchLockClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;->mTouchLockClients:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    return-void
.end method

.method public isTouchLockedByAnyOtherClient(Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;)Z
    .locals 3
    .param p1, "me"    # Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;

    .prologue
    .line 25
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;->mTouchLockClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;

    .line 26
    .local v0, "client":Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;
    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;->isTouchLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    const/4 v1, 0x1

    .line 30
    .end local v0    # "client":Lcom/sonyericsson/textinput/uxp/view/TouchLockManager$ITouchLockClient;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
