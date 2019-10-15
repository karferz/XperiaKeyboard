.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$EmptyPredictions;
.super Lcom/touchtype_fluency/Predictions;
.source "PredictionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyPredictions"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/touchtype_fluency/Prediction;

    invoke-direct {p0, v0}, Lcom/touchtype_fluency/Predictions;-><init>([Lcom/touchtype_fluency/Prediction;)V

    .line 677
    return-void
.end method
