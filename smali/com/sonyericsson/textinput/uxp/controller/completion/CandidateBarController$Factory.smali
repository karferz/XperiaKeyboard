.class public Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "CandidateBarController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 261
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 262
    const-string v0, "prediction-activated"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "show-prediction-candidates"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    const-string v0, "soft-keyboard"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v0, "orientation"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v0, "explore-by-touch"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 271
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;-><init>()V

    .line 272
    .local v0, "instance":Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;
    const-string v1, "show-prediction-candidates"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->access$102(Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;Z)Z

    .line 275
    const-string v1, "soft-keyboard"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->access$202(Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;Z)Z

    .line 276
    const-string v1, "prediction-activated"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->access$302(Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;Z)Z

    .line 277
    const-string v1, "orientation"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "landscape"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    const/4 v1, 0x2

    iput v1, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mOrientation:I

    .line 282
    :goto_1
    const-string v1, "explore-by-touch"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->access$402(Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;Z)Z

    .line 283
    return-object v0

    .line 275
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 280
    :cond_1
    iput v2, v0, Lcom/sonyericsson/textinput/uxp/controller/completion/CandidateBarController;->mOrientation:I

    goto :goto_1
.end method
