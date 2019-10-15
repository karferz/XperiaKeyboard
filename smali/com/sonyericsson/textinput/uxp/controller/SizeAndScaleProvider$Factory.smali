.class public Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "SizeAndScaleProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 509
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 510
    const-string v0, "enable-numeric-keys"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const-string v0, "floating-keyboard-type"

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    const-string v0, "current-input-method"

    const-string v1, "full"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    const-string v0, "form-factor"

    const-string v1, "phone"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-string v0, "orientation"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 520
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    const-string v1, "enable-numeric-keys"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "current-input-method"

    .line 521
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "form-factor"

    .line 522
    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 521
    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->access$100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "floating-keyboard-type"

    .line 522
    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "portrait"

    const-string v5, "orientation"

    .line 523
    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;-><init>(ZZLjava/lang/String;Z)V

    return-object v0
.end method
