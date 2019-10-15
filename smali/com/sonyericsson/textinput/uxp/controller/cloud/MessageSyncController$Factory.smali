.class public Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "MessageSyncController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 106
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 107
    const-string v0, "sync-messages-with-cloud"

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 108
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;

    const-string v1, "sync-messages-with-cloud"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/MessageSyncController;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
