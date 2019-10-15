.class public Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "UnsyncedMessagesDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 182
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 183
    const-string v0, "local-messages-database"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 184
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/model/cloud/UnsyncedMessagesDatabase;-><init>()V

    return-object v0
.end method
