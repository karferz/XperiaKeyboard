.class public Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "KbdController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 99
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/KbdController;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 104
    return-void
.end method
