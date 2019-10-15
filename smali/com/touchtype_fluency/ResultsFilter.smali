.class public Lcom/touchtype_fluency/ResultsFilter;
.super Ljava/lang/Object;
.source "ResultsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;,
        Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;,
        Lcom/touchtype_fluency/ResultsFilter$PredictionMode;,
        Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;,
        Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;
    }
.end annotation


# instance fields
.field private final mcapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

.field private final mcorrection:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

.field private final mnTotal:I

.field private final mprediction:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

.field private final msearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

.field private final mverbatim:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 241
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .prologue
    .line 140
    sget-object v2, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    sget-object v3, Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;->ENABLED:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    sget-object v4, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;->CURRENT_WORD_PREDICT:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    sget-object v5, Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;->DEFAULT:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    sget-object v6, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->NORMAL:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionMode;Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    .line 146
    return-void
.end method

.method public constructor <init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;)V
    .locals 7

    .prologue
    .line 150
    sget-object v4, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;->CURRENT_WORD_PREDICT:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    sget-object v5, Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;->DEFAULT:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    sget-object v6, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->NORMAL:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionMode;Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    .line 151
    return-void
.end method

.method public constructor <init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionMode;Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V
    .locals 0

    .prologue
    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Lcom/touchtype_fluency/ResultsFilter;->mnTotal:I

    .line 166
    iput-object p2, p0, Lcom/touchtype_fluency/ResultsFilter;->mcapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    .line 167
    iput-object p3, p0, Lcom/touchtype_fluency/ResultsFilter;->mverbatim:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    .line 168
    iput-object p4, p0, Lcom/touchtype_fluency/ResultsFilter;->mprediction:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    .line 169
    iput-object p5, p0, Lcom/touchtype_fluency/ResultsFilter;->mcorrection:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    .line 170
    iput-object p6, p0, Lcom/touchtype_fluency/ResultsFilter;->msearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    .line 171
    return-void
.end method

.method public constructor <init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V
    .locals 7

    .prologue
    .line 155
    sget-object v4, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;->CURRENT_WORD_PREDICT:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    sget-object v5, Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;->DEFAULT:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionMode;Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    .line 156
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 220
    instance-of v1, p1, Lcom/touchtype_fluency/ResultsFilter;

    if-eqz v1, :cond_0

    .line 221
    check-cast p1, Lcom/touchtype_fluency/ResultsFilter;

    .line 222
    iget v1, p0, Lcom/touchtype_fluency/ResultsFilter;->mnTotal:I

    iget v2, p1, Lcom/touchtype_fluency/ResultsFilter;->mnTotal:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/ResultsFilter;->mcapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iget-object v2, p1, Lcom/touchtype_fluency/ResultsFilter;->mcapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/ResultsFilter;->mverbatim:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    iget-object v2, p1, Lcom/touchtype_fluency/ResultsFilter;->mverbatim:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/ResultsFilter;->mprediction:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    iget-object v2, p1, Lcom/touchtype_fluency/ResultsFilter;->mprediction:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/ResultsFilter;->mcorrection:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    iget-object v2, p1, Lcom/touchtype_fluency/ResultsFilter;->mcorrection:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/touchtype_fluency/ResultsFilter;->msearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    iget-object v2, p1, Lcom/touchtype_fluency/ResultsFilter;->msearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    invoke-virtual {v1, v2}, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 228
    :cond_0
    return v0
.end method

.method public getCapitalization()Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/touchtype_fluency/ResultsFilter;->mcapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    return-object v0
.end method

.method public getCorrection()Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/touchtype_fluency/ResultsFilter;->mcorrection:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    return-object v0
.end method

.method public getPrediction()Lcom/touchtype_fluency/ResultsFilter$PredictionMode;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/touchtype_fluency/ResultsFilter;->mprediction:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    return-object v0
.end method

.method public getPredictionSearchType()Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/touchtype_fluency/ResultsFilter;->msearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    return-object v0
.end method

.method public getTotal()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Lcom/touchtype_fluency/ResultsFilter;->mnTotal:I

    return v0
.end method

.method public getVerbatim()Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/touchtype_fluency/ResultsFilter;->mverbatim:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    return-object v0
.end method

.method public hashCode()I
    .locals 6

    .prologue
    .line 233
    iget v0, p0, Lcom/touchtype_fluency/ResultsFilter;->mnTotal:I

    iget-object v1, p0, Lcom/touchtype_fluency/ResultsFilter;->mcapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v1}, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/touchtype_fluency/ResultsFilter;->mverbatim:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    invoke-virtual {v2}, Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;->hashCode()I

    move-result v2

    iget-object v3, p0, Lcom/touchtype_fluency/ResultsFilter;->mprediction:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    invoke-virtual {v3}, Lcom/touchtype_fluency/ResultsFilter$PredictionMode;->hashCode()I

    move-result v3

    iget-object v4, p0, Lcom/touchtype_fluency/ResultsFilter;->mcorrection:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    invoke-virtual {v4}, Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;->hashCode()I

    move-result v4

    iget-object v5, p0, Lcom/touchtype_fluency/ResultsFilter;->msearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    invoke-virtual {v5}, Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;->hashCode()I

    move-result v5

    add-int/lit16 v5, v5, 0x95

    mul-int/lit16 v5, v5, 0x95

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x95

    add-int/2addr v3, v4

    mul-int/lit16 v3, v3, 0x95

    add-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x95

    add-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x95

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x95

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 214
    const-string v0, "Total: %d, %s, %s, %s, %s, %s"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/touchtype_fluency/ResultsFilter;->mnTotal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/touchtype_fluency/ResultsFilter;->mcapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/touchtype_fluency/ResultsFilter;->mverbatim:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/touchtype_fluency/ResultsFilter;->mprediction:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/touchtype_fluency/ResultsFilter;->mcorrection:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/touchtype_fluency/ResultsFilter;->msearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public with(Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;)Lcom/touchtype_fluency/ResultsFilter;
    .locals 7

    .prologue
    .line 180
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    iget v1, p0, Lcom/touchtype_fluency/ResultsFilter;->mnTotal:I

    iget-object v3, p0, Lcom/touchtype_fluency/ResultsFilter;->mverbatim:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    iget-object v4, p0, Lcom/touchtype_fluency/ResultsFilter;->mprediction:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    iget-object v5, p0, Lcom/touchtype_fluency/ResultsFilter;->mcorrection:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    iget-object v6, p0, Lcom/touchtype_fluency/ResultsFilter;->msearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionMode;Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    return-object v0
.end method

.method public with(Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;)Lcom/touchtype_fluency/ResultsFilter;
    .locals 7

    .prologue
    .line 192
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    iget v1, p0, Lcom/touchtype_fluency/ResultsFilter;->mnTotal:I

    iget-object v2, p0, Lcom/touchtype_fluency/ResultsFilter;->mcapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iget-object v3, p0, Lcom/touchtype_fluency/ResultsFilter;->mverbatim:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    iget-object v4, p0, Lcom/touchtype_fluency/ResultsFilter;->mprediction:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    iget-object v6, p0, Lcom/touchtype_fluency/ResultsFilter;->msearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionMode;Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    return-object v0
.end method

.method public with(Lcom/touchtype_fluency/ResultsFilter$PredictionMode;)Lcom/touchtype_fluency/ResultsFilter;
    .locals 7

    .prologue
    .line 188
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    iget v1, p0, Lcom/touchtype_fluency/ResultsFilter;->mnTotal:I

    iget-object v2, p0, Lcom/touchtype_fluency/ResultsFilter;->mcapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iget-object v3, p0, Lcom/touchtype_fluency/ResultsFilter;->mverbatim:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    iget-object v5, p0, Lcom/touchtype_fluency/ResultsFilter;->mcorrection:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    iget-object v6, p0, Lcom/touchtype_fluency/ResultsFilter;->msearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionMode;Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    return-object v0
.end method

.method public with(Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)Lcom/touchtype_fluency/ResultsFilter;
    .locals 7

    .prologue
    .line 196
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    iget v1, p0, Lcom/touchtype_fluency/ResultsFilter;->mnTotal:I

    iget-object v2, p0, Lcom/touchtype_fluency/ResultsFilter;->mcapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iget-object v3, p0, Lcom/touchtype_fluency/ResultsFilter;->mverbatim:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    iget-object v4, p0, Lcom/touchtype_fluency/ResultsFilter;->mprediction:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    iget-object v5, p0, Lcom/touchtype_fluency/ResultsFilter;->mcorrection:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionMode;Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    return-object v0
.end method

.method public with(Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;)Lcom/touchtype_fluency/ResultsFilter;
    .locals 7

    .prologue
    .line 184
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    iget v1, p0, Lcom/touchtype_fluency/ResultsFilter;->mnTotal:I

    iget-object v2, p0, Lcom/touchtype_fluency/ResultsFilter;->mcapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iget-object v4, p0, Lcom/touchtype_fluency/ResultsFilter;->mprediction:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    iget-object v5, p0, Lcom/touchtype_fluency/ResultsFilter;->mcorrection:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    iget-object v6, p0, Lcom/touchtype_fluency/ResultsFilter;->msearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionMode;Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    return-object v0
.end method

.method public withTotal(I)Lcom/touchtype_fluency/ResultsFilter;
    .locals 7

    .prologue
    .line 176
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    iget-object v2, p0, Lcom/touchtype_fluency/ResultsFilter;->mcapitalization:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iget-object v3, p0, Lcom/touchtype_fluency/ResultsFilter;->mverbatim:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    iget-object v4, p0, Lcom/touchtype_fluency/ResultsFilter;->mprediction:Lcom/touchtype_fluency/ResultsFilter$PredictionMode;

    iget-object v5, p0, Lcom/touchtype_fluency/ResultsFilter;->mcorrection:Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;

    iget-object v6, p0, Lcom/touchtype_fluency/ResultsFilter;->msearchType:Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;Lcom/touchtype_fluency/ResultsFilter$PredictionMode;Lcom/touchtype_fluency/ResultsFilter$CorrectionMode;Lcom/touchtype_fluency/ResultsFilter$PredictionSearchType;)V

    return-object v0
.end method
