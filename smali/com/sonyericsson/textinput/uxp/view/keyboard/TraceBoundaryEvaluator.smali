.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;
.super Ljava/lang/Object;
.source "TraceBoundaryEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator$ITraceBoundaryChangedListener;
    }
.end annotation


# static fields
.field private static final DOMINATING_ASPECT_TRESHOLD:D = 1.25

.field private static final MARGINALIZED_ASPECT_TRESHOLD:D = 0.8

.field private static final MAXIMUM_TAP_COUNT:I = 0x3

.field private static final MAXIMUM_TRACE_BOUNDARY_DISTANCE_DP:I = 0x3c

.field private static final MINIMUM_TAP_COUNT:I = -0x1

.field private static final TRACE_BOUNDARY_FACTOR_FOR_TAP_MODE_DOMINATING:D = 1.0

.field private static final TRACE_BOUNDARY_FACTOR_FOR_TAP_MODE_MARGINALIZED:D = 1.25

.field private static final TRACE_BOUNDARY_FACTOR_FOR_TAP_MODE_NORMAL:D = 1.1

.field private static final TRACE_BOUNDARY_FACTOR_FOR_TRACE_MODE_DOMINATING:D = 0.6

.field private static final TRACE_BOUNDARY_FACTOR_FOR_TRACE_MODE_MARGINALIZED:D = 0.5

.field private static final TRACE_BOUNDARY_FACTOR_FOR_TRACE_MODE_NORMAL:D = 0.55


# instance fields
.field private final mMaxBoundaryPx:I

.field private mTapperCount:I

.field private mTraceBoundaryChange:Landroid/graphics/Rect;

.field private mTraceBoundaryChangedListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator$ITraceBoundaryChangedListener;

.field private mTraceEnabled:Z


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .param p1, "screenDensity"    # F

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTraceEnabled:Z

    .line 47
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTapperCount:I

    .line 54
    const/high16 v0, 0x42700000    # 60.0f

    mul-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mMaxBoundaryPx:I

    .line 55
    return-void
.end method


# virtual methods
.method public getTraceBoundary(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;)Landroid/graphics/Point;
    .locals 13
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .prologue
    .line 85
    if-eqz p1, :cond_a

    .line 86
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v8

    int-to-double v8, v8

    .line 87
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v10

    int-to-double v10, v10

    div-double v6, v8, v10

    .line 90
    .local v6, "keyAspect":D
    const-wide v8, 0x3fe999999999999aL    # 0.8

    cmpg-double v8, v6, v8

    if-gez v8, :cond_4

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->isUserTapping()Z

    move-result v8

    if-eqz v8, :cond_2

    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    .line 94
    .local v0, "boundaryFactorX":D
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->isUserTapping()Z

    move-result v8

    if-eqz v8, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 110
    .local v2, "boundaryFactorY":D
    :goto_1
    iget v8, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mMaxBoundaryPx:I

    int-to-double v8, v8

    .line 111
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v0

    .line 110
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v5, v8

    .line 112
    .local v5, "widthBoundary":I
    iget v8, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mMaxBoundaryPx:I

    int-to-double v8, v8

    .line 113
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v10

    int-to-double v10, v10

    mul-double/2addr v10, v2

    .line 112
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v4, v8

    .line 115
    .local v4, "heightBoundary":I
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTraceBoundaryChangedListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator$ITraceBoundaryChangedListener;

    if-eqz v8, :cond_1

    .line 116
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTraceBoundaryChange:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    .line 117
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTraceBoundaryChange:Landroid/graphics/Rect;

    .line 120
    :cond_0
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTraceBoundaryChange:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualCenterXPx()I

    move-result v9

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualCenterYPx()I

    move-result v10

    .line 121
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualCenterXPx()I

    move-result v11

    add-int/2addr v11, v5

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualCenterYPx()I

    move-result v12

    add-int/2addr v12, v4

    .line 120
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 124
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTraceBoundaryChangedListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator$ITraceBoundaryChangedListener;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->isUserTapping()Z

    move-result v9

    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTraceBoundaryChange:Landroid/graphics/Rect;

    invoke-interface {v8, p1, v9, v10}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator$ITraceBoundaryChangedListener;->onTraceBoundaryChanged(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;ZLandroid/graphics/Rect;)V

    .line 127
    :cond_1
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 129
    .end local v0    # "boundaryFactorX":D
    .end local v2    # "boundaryFactorY":D
    .end local v4    # "heightBoundary":I
    .end local v5    # "widthBoundary":I
    .end local v6    # "keyAspect":D
    :goto_2
    return-object v8

    .line 92
    .restart local v6    # "keyAspect":D
    :cond_2
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    .line 94
    .restart local v0    # "boundaryFactorX":D
    :cond_3
    const-wide v2, 0x3fe3333333333333L    # 0.6

    goto :goto_1

    .line 96
    .end local v0    # "boundaryFactorX":D
    :cond_4
    const-wide/high16 v8, 0x3ff4000000000000L    # 1.25

    cmpl-double v8, v6, v8

    if-lez v8, :cond_7

    .line 98
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->isUserTapping()Z

    move-result v8

    if-eqz v8, :cond_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 100
    .restart local v0    # "boundaryFactorX":D
    :goto_3
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->isUserTapping()Z

    move-result v8

    if-eqz v8, :cond_6

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    .restart local v2    # "boundaryFactorY":D
    :goto_4
    goto :goto_1

    .line 98
    .end local v0    # "boundaryFactorX":D
    .end local v2    # "boundaryFactorY":D
    :cond_5
    const-wide v0, 0x3fe3333333333333L    # 0.6

    goto :goto_3

    .line 100
    .restart local v0    # "boundaryFactorX":D
    :cond_6
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    goto :goto_4

    .line 104
    .end local v0    # "boundaryFactorX":D
    :cond_7
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->isUserTapping()Z

    move-result v8

    if-eqz v8, :cond_8

    const-wide v0, 0x3ff199999999999aL    # 1.1

    .line 106
    .restart local v0    # "boundaryFactorX":D
    :goto_5
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->isUserTapping()Z

    move-result v8

    if-eqz v8, :cond_9

    const-wide v2, 0x3ff199999999999aL    # 1.1

    .restart local v2    # "boundaryFactorY":D
    :goto_6
    goto/16 :goto_1

    .line 104
    .end local v0    # "boundaryFactorX":D
    .end local v2    # "boundaryFactorY":D
    :cond_8
    const-wide v0, 0x3fe199999999999aL    # 0.55

    goto :goto_5

    .line 106
    .restart local v0    # "boundaryFactorX":D
    :cond_9
    const-wide v2, 0x3fe199999999999aL    # 0.55

    goto :goto_6

    .line 129
    .end local v0    # "boundaryFactorX":D
    .end local v6    # "keyAspect":D
    :cond_a
    new-instance v8, Landroid/graphics/Point;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2
.end method

.method public isUserTapping()Z
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTapperCount:I

    if-gtz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTraceEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerTapEvent(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Z)V
    .locals 2
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "isLongPressEvent"    # Z

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTraceEnabled:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->isMeta()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 64
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTapperCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 65
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTapperCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTapperCount:I

    .line 68
    :cond_0
    return-void
.end method

.method public registerTraceEvent()V
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTapperCount:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 72
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTapperCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTapperCount:I

    .line 74
    :cond_0
    return-void
.end method

.method public registerTraceMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTraceEnabled:Z

    .line 78
    return-void
.end method

.method public setTraceBoundaryChangedListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator$ITraceBoundaryChangedListener;)V
    .locals 0
    .param p1, "traceBoundaryChangedListener"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator$ITraceBoundaryChangedListener;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->mTraceBoundaryChangedListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator$ITraceBoundaryChangedListener;

    .line 60
    return-void
.end method
