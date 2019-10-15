.class public Lcom/sonyericsson/textinput/uxp/controller/ResetFieldController$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "ResetFieldController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/ResetFieldController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/ResetFieldController;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/ResetFieldController;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 66
    return-void
.end method
