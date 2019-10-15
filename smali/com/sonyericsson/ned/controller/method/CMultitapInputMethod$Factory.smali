.class public Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "CMultitapInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;
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

    .line 604
    const-class v0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;

    invoke-static {}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 605
    const-string v0, "current-input-method"

    const-string v1, "multitap"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 606
    const-string v0, "insert-on-key-down"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 607
    const-string v0, "strict-validation-check"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v0, "hide-invalid-choices"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const-string v0, "input-mode"

    const-string v1, "input-mode-text"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const-string v0, "prediction-activated"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 616
    const-string v0, "act-on-composing-text"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 617
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 621
    new-instance v0, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;

    const-string v1, "strict-validation-check"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "hide-invalid-choices"

    .line 622
    invoke-virtual {p0, v2}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "input-mode"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/controller/method/CMultitapInputMethod;-><init>(ZZLjava/lang/String;)V

    return-object v0
.end method
