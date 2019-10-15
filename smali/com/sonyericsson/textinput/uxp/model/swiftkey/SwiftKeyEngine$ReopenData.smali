.class Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReopenData"
.end annotation


# instance fields
.field private final mExactMatch:Ljava/lang/String;

.field private final mInputHistory:Lcom/touchtype_fluency/TouchHistory;

.field private final mResultsFilter:Lcom/touchtype_fluency/ResultsFilter;


# direct methods
.method public constructor <init>(Lcom/touchtype_fluency/TouchHistory;Ljava/lang/String;Lcom/touchtype_fluency/ResultsFilter;)V
    .locals 0
    .param p1, "inputHistory"    # Lcom/touchtype_fluency/TouchHistory;
    .param p2, "exactMatch"    # Ljava/lang/String;
    .param p3, "resultsFilter"    # Lcom/touchtype_fluency/ResultsFilter;

    .prologue
    .line 2776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2777
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;->mInputHistory:Lcom/touchtype_fluency/TouchHistory;

    .line 2778
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;->mExactMatch:Ljava/lang/String;

    .line 2779
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;->mResultsFilter:Lcom/touchtype_fluency/ResultsFilter;

    .line 2780
    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;)Lcom/touchtype_fluency/TouchHistory;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;->mInputHistory:Lcom/touchtype_fluency/TouchHistory;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;)Lcom/touchtype_fluency/ResultsFilter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;->mResultsFilter:Lcom/touchtype_fluency/ResultsFilter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$ReopenData;->mExactMatch:Ljava/lang/String;

    return-object v0
.end method
