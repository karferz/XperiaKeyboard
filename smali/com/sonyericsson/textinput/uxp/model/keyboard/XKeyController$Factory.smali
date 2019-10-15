.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "XKeyController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;
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

    .line 65
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 66
    const-string v0, "soft-keyboard"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 67
    return-void
.end method
