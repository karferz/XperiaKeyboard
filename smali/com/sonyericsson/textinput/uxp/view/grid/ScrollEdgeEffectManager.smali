.class final Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;
.super Ljava/lang/Object;
.source "ScrollEdgeEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;,
        Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;
    }
.end annotation


# static fields
.field private static final HORIZONTAL_PULL_DELTA_DISTANCE_MODIFIER:F = 0.7f

.field private static final SIMILAR_COLORS_THRESHOLD:I = 0x3c

.field private static final VERTICAL_PULL_DELTA_DISTANCE_MODIFIER:F = 0.2f


# instance fields
.field private final mBottomEdgeEffect:Landroid/widget/EdgeEffect;

.field private final mLeftEdgeEffect:Landroid/widget/EdgeEffect;

.field private final mRightEdgeEffect:Landroid/widget/EdgeEffect;

.field private mState:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

.field private final mTopEdgeEffect:Landroid/widget/EdgeEffect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mTopEdgeEffect:Landroid/widget/EdgeEffect;

    .line 82
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mBottomEdgeEffect:Landroid/widget/EdgeEffect;

    .line 83
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mLeftEdgeEffect:Landroid/widget/EdgeEffect;

    .line 84
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mRightEdgeEffect:Landroid/widget/EdgeEffect;

    .line 85
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;->INACTIVE:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mState:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    .line 86
    return-void
.end method

.method private findEdgeEffect(Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;)Landroid/widget/EdgeEffect;
    .locals 2
    .param p1, "edge"    # Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    .prologue
    .line 113
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$1;->$SwitchMap$com$sonyericsson$textinput$uxp$view$grid$ScrollEdgeEffectManager$Edge:[I

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 128
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Encountered unexpected edge."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 115
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mTopEdgeEffect:Landroid/widget/EdgeEffect;

    .line 124
    :goto_0
    return-object v0

    .line 118
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mBottomEdgeEffect:Landroid/widget/EdgeEffect;

    goto :goto_0

    .line 121
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mLeftEdgeEffect:Landroid/widget/EdgeEffect;

    goto :goto_0

    .line 124
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mRightEdgeEffect:Landroid/widget/EdgeEffect;

    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public absorbEdge(Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;I)V
    .locals 2
    .param p1, "edge"    # Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;
    .param p2, "velocity"    # I

    .prologue
    .line 286
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mState:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;->INACTIVE:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mState:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;->DRAWING_ABSORB_EFFECT:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    if-ne v0, v1, :cond_1

    .line 289
    :cond_0
    if-lez p2, :cond_2

    .line 290
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;->DRAWING_ABSORB_EFFECT:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mState:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    .line 291
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->findEdgeEffect(Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;)Landroid/widget/EdgeEffect;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 296
    :cond_1
    :goto_0
    return-void

    .line 293
    :cond_2
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;->INACTIVE:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mState:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;III)Z
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "splitHalfWidth"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 154
    if-nez p4, :cond_2

    move v2, p2

    .line 155
    .local v2, "leftHalfWidth":I
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mTopEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v2, p3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 156
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mBottomEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v2, p3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 157
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mLeftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p3, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 158
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mRightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p3, p2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 160
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mTopEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 161
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 164
    int-to-float v5, v2

    int-to-float v6, p3

    :try_start_0
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 165
    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 166
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mBottomEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 174
    const/4 v5, 0x0

    int-to-float v6, p3

    :try_start_1
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 175
    const/high16 v5, -0x3d4c0000    # -90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 176
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mLeftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 184
    int-to-float v5, p2

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 186
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mRightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 188
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 191
    if-eqz p4, :cond_0

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 196
    sub-int v1, p2, p4

    .line 197
    .local v1, "leftBounds":I
    int-to-float v5, v1

    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 198
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mTopEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 200
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 203
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 207
    int-to-float v5, p2

    int-to-float v6, p3

    :try_start_4
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 208
    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 209
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mBottomEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 211
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 215
    .end local v1    # "leftBounds":I
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mTopEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mBottomEdgeEffect:Landroid/widget/EdgeEffect;

    .line 216
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mLeftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mRightEdgeEffect:Landroid/widget/EdgeEffect;

    .line 217
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_3

    move v0, v3

    .line 219
    .local v0, "areAllEdgeEffectsFinished":Z
    :goto_1
    if-eqz v0, :cond_1

    .line 220
    sget-object v5, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;->INACTIVE:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mState:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    .line 223
    :cond_1
    if-nez v0, :cond_4

    :goto_2
    return v3

    .end local v0    # "areAllEdgeEffectsFinished":Z
    .end local v2    # "leftHalfWidth":I
    :cond_2
    move v2, p4

    .line 154
    goto/16 :goto_0

    .line 168
    .restart local v2    # "leftHalfWidth":I
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v3

    .line 178
    :catchall_1
    move-exception v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v3

    .line 188
    :catchall_2
    move-exception v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v3

    .line 200
    .restart local v1    # "leftBounds":I
    :catchall_3
    move-exception v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v3

    .line 211
    :catchall_4
    move-exception v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    throw v3

    .end local v1    # "leftBounds":I
    :cond_3
    move v0, v4

    .line 217
    goto :goto_1

    .restart local v0    # "areAllEdgeEffectsFinished":Z
    :cond_4
    move v3, v4

    .line 223
    goto :goto_2
.end method

.method public pullEdge(Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;F)V
    .locals 3
    .param p1, "edge"    # Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;
    .param p2, "deltaDistance"    # F

    .prologue
    .line 253
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_4

    .line 256
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;->DRAWING_PULL_EFFECT:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mState:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    .line 259
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->TOP:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->BOTTOM:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    if-ne p1, v1, :cond_1

    .line 260
    :cond_0
    const v1, 0x3e4ccccd    # 0.2f

    mul-float v0, p2, v1

    .line 268
    .local v0, "modifiedDeltaDistance":F
    :goto_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->findEdgeEffect(Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;)Landroid/widget/EdgeEffect;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 272
    .end local v0    # "modifiedDeltaDistance":F
    :goto_1
    return-void

    .line 261
    :cond_1
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->LEFT:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    if-eq p1, v1, :cond_2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->RIGHT:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    if-ne p1, v1, :cond_3

    .line 262
    :cond_2
    const v1, 0x3f333333    # 0.7f

    mul-float v0, p2, v1

    .restart local v0    # "modifiedDeltaDistance":F
    goto :goto_0

    .line 265
    .end local v0    # "modifiedDeltaDistance":F
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "Encountered unexpected edge."

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 270
    :cond_4
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;->INACTIVE:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mState:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$State;

    goto :goto_1
.end method

.method public releaseAll()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mTopEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mBottomEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mLeftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 235
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mRightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 236
    return-void
.end method

.method public verifyEdgeColor(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V
    .locals 3
    .param p1, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .prologue
    .line 95
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLollipopOrNewer()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mTopEdgeEffect:Landroid/widget/EdgeEffect;

    .line 96
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->getColor()I

    move-result v1

    const v2, 0x7f0d004e

    invoke-interface {p1, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v2

    .line 95
    invoke-static {v1, v2}, Lcom/sonyericsson/ned/util/ColorUtil;->getColorDistance(II)I

    move-result v1

    const/16 v2, 0x3c

    if-ge v1, v2, :cond_0

    .line 98
    const v1, 0x7f0f0008

    invoke-interface {p1, v1}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getAccentColor(I)I

    move-result v0

    .line 99
    .local v0, "color":I
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mTopEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 100
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mBottomEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 101
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mLeftEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 102
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;->mRightEdgeEffect:Landroid/widget/EdgeEffect;

    invoke-virtual {v1, v0}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 104
    .end local v0    # "color":I
    :cond_0
    return-void
.end method
