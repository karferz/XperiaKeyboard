.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "TabHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;
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

    .line 90
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 91
    const-string v0, "handle-tab"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/TabHandler$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 92
    return-void
.end method
