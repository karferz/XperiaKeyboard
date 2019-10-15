.class public Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "CSingletapInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;
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

    .line 757
    const-class v0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;

    invoke-static {}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 758
    const-string v0, "current-input-method"

    const-string v1, "singletap"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 759
    const-string v0, "candidate-selection-auto-space"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    const-string v0, "input-mode"

    const-string v1, "input-mode-text"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    const-string v0, "enable-word-reopening"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string v0, "enable-commit-text-on-smiley-symbol-selection"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 769
    const-string v0, "max-predictive-candidates"

    const-string v1, "5"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 774
    new-instance v0, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;

    const-string v1, "candidate-selection-auto-space"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "input-mode"

    .line 775
    invoke-virtual {p0, v2}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable-word-reopening"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "max-predictive-candidates"

    .line 776
    invoke-virtual {p0, v4}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod$Factory;->getInteger(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/ned/controller/method/CSingletapInputMethod;-><init>(ZLjava/lang/String;ZI)V

    return-object v0
.end method
