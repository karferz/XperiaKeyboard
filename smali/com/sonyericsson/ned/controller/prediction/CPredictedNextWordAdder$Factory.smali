.class public Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "CPredictedNextWordAdder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;
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

    .line 533
    const-class v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;

    invoke-static {}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 534
    const-string v0, "next-word-prediction"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 535
    const-string v0, "next-word-prediction-accept"

    const-string v1, "manual"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v0, "input-mode"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v0, "smart-uri-and-email-endings"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v0, "email-domains"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v0, "current-input-method"

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 540
    const-string v0, "no-prediction-on-digits"

    const-string v1, "false"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 545
    new-instance v0, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;

    const-string v1, "next-word-prediction-accept"

    .line 546
    invoke-virtual {p0, v1}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "smart-uri-and-email-endings"

    invoke-virtual {p0, v2}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "input-mode"

    .line 547
    invoke-virtual {p0, v3}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "email-domains"

    .line 548
    invoke-virtual {p0, v4}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 547
    invoke-static {v4}, Lcom/sonyericsson/ned/model/CodePointString;->toCodePointStringArray([Ljava/lang/String;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/ned/controller/prediction/CPredictedNextWordAdder;-><init>(Ljava/lang/String;ZLjava/lang/String;[Lcom/sonyericsson/ned/model/CodePointString;)V

    return-object v0
.end method
