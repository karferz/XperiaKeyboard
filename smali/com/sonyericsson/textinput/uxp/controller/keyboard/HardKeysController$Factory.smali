.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "HardKeysController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;
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

    .line 75
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 76
    const-string v0, "handle-hardware-keys"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HardKeysController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 77
    return-void
.end method
