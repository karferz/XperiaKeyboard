.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/PhoneKeysEventRepository;
.super Ljava/lang/Object;
.source "PhoneKeysEventRepository.java"

# interfaces
.implements Lcom/sonyericsson/ned/controller/IEventRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/keyboard/PhoneKeysEventRepository$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEvents(Lcom/sonyericsson/ned/controller/BaseKey;)[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 8
    .param p1, "key"    # Lcom/sonyericsson/ned/controller/BaseKey;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 24
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getObject()Ljava/lang/Object;

    move-result-object v2

    .line 25
    .local v2, "keyObject":Ljava/lang/Object;
    instance-of v3, v2, Landroid/view/KeyEvent;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 26
    check-cast v1, Landroid/view/KeyEvent;

    .line 27
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 28
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/BaseKey;->getActionType()I

    move-result v0

    .line 29
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 31
    new-array v3, v7, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v4, Lcom/sonyericsson/ned/controller/Command;

    const-string v5, "back-key-down"

    invoke-direct {v4, v5}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v6

    .line 41
    .end local v0    # "action":I
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :goto_0
    return-object v3

    .line 34
    .restart local v0    # "action":I
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_0
    if-ne v0, v7, :cond_1

    .line 35
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v4, Lcom/sonyericsson/ned/controller/Command;

    const-string v5, "back-key-up"

    invoke-direct {v4, v5}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v6

    new-instance v4, Lcom/sonyericsson/ned/controller/Command;

    const-string v5, "reset-field"

    invoke-direct {v4, v5}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v7

    goto :goto_0

    .line 41
    .end local v0    # "action":I
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    new-array v3, v6, [Lcom/sonyericsson/ned/controller/EventObject;

    goto :goto_0
.end method
