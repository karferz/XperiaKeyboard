.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "SoftEventRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 333
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 334
    const-string v0, "soft-keyboard"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 335
    const-string v0, "session-type"

    const-string v1, "normal"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v0, "symbols-type"

    const-string v1, "emoji"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "current-input-method"

    const-string v1, ""

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 338
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 342
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;

    const-string v1, "session-type"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "symbols-type"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "current-input-method"

    .line 343
    invoke-virtual {p0, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/SoftEventRepository;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
