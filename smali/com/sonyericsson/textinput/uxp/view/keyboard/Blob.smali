.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;
.super Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;
.source "Blob.java"


# static fields
.field private static final BODY_ALPHA_VALUE:I = 0x99

.field private static final LOOKUP_SIZE:I = 0x64


# instance fields
.field private mAlpha:F

.field private final mBounds:Landroid/graphics/RectF;

.field private final mColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPathPaint:Landroid/graphics/Paint;

.field private final mSegment:[F

.field private final mSizeMap:[F

.field private final mSmoothPrecision:F

.field protected mTAlpha:J

.field private mVertexCount:I

.field private mVertices:[F


# direct methods
.method public constructor <init>(IFZFFFFF[F)V
    .locals 6
    .param p1, "color"    # I
    .param p2, "touchPrecision"    # F
    .param p3, "smooth"    # Z
    .param p4, "smoothPrecision"    # F
    .param p5, "weight0"    # F
    .param p6, "weight1"    # F
    .param p7, "velocity"    # F
    .param p8, "maxLength"    # F
    .param p9, "size"    # [F

    .prologue
    .line 42
    move-object v0, p0

    move v1, p2

    move v2, p8

    move v3, p7

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;-><init>(FFFFF)V

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mSegment:[F

    .line 29
    const/16 v0, 0xa

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVertices:[F

    .line 32
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mBounds:Landroid/graphics/RectF;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPathPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPaint:Landroid/graphics/Paint;

    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x0

    aget v1, p9, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p9, v0

    .line 45
    const/4 v0, 0x1

    const/4 v1, 0x1

    aget v1, p9, v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, p9, v0

    .line 47
    const/16 v0, 0x64

    invoke-static {v0, p9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->createCacheFloat(I[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mSizeMap:[F

    .line 48
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mColor:I

    .line 49
    iput p4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mSmoothPrecision:F

    .line 50
    iput-boolean p3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mSmooth:Z

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->setDefaultPaint()V

    .line 53
    return-void
.end method

.method private createBezierPath(FF[FILandroid/graphics/Canvas;)V
    .locals 22
    .param p1, "t0"    # F
    .param p2, "t1"    # F
    .param p3, "point"    # [F
    .param p4, "points"    # I
    .param p5, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPath:Landroid/graphics/Path;

    move-object/from16 v18, v0

    .line 255
    .local v18, "path":Landroid/graphics/Path;
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Path;->reset()V

    .line 257
    const/4 v5, 0x1

    move/from16 v0, p4

    if-ge v0, v5, :cond_1

    .line 316
    :cond_0
    return-void

    .line 261
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mP0:[F

    .local v2, "p0":[F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mP1:[F

    .local v3, "p1":[F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mP2:[F

    .line 262
    .local v4, "p2":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPc:[F

    move-object/from16 v19, v0

    .line 263
    .local v19, "pc":[F
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mC:[F

    .line 265
    .local v7, "c":[F
    add-int/lit8 v5, p4, -0x1

    move-object/from16 v0, p3

    invoke-static {v0, v5, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->get([FI[F)V

    .line 266
    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v5, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->get([FI[F)V

    .line 268
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v2, v6

    aput v6, v19, v5

    .line 269
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v2, v6

    aput v6, v19, v5

    .line 271
    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v6, 0x1

    aget v6, v2, v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 273
    const/16 v20, 0x2

    .line 274
    .local v20, "tailFirst":I
    move/from16 v21, p4

    .line 275
    .local v21, "tailLast":I
    shr-int/lit8 v15, p4, 0x1

    .line 276
    .local v15, "headFirst":I
    shr-int/lit8 v5, p4, 0x1

    add-int/lit8 v16, v5, 0x2

    .line 278
    .local v16, "headLast":I
    const/16 v17, 0x1

    .local v17, "i":I
    :goto_0
    add-int/lit8 v5, p4, 0x1

    move/from16 v0, v17

    if-ge v0, v5, :cond_0

    .line 279
    rem-int v5, v17, p4

    move-object/from16 v0, p3

    invoke-static {v0, v5, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->get([FI[F)V

    .line 281
    const/4 v5, 0x2

    move/from16 v0, v17

    if-eq v0, v5, :cond_2

    move/from16 v0, v17

    if-eq v0, v15, :cond_2

    move/from16 v0, v17

    move/from16 v1, v16

    if-eq v0, v1, :cond_2

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 286
    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v3, v6

    aput v6, v7, v5

    .line 287
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v3, v6

    aput v6, v7, v5

    .line 288
    const/4 v5, 0x2

    const/4 v6, 0x0

    aget v6, v3, v6

    aput v6, v7, v5

    .line 289
    const/4 v5, 0x3

    const/4 v6, 0x1

    aget v6, v3, v6

    aput v6, v7, v5

    .line 297
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mDrawPoints:Z

    if-eqz v5, :cond_3

    .line 299
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 300
    const/4 v5, 0x0

    aget v9, v2, v5

    const/4 v5, 0x1

    aget v10, v2, v5

    const/4 v5, 0x0

    aget v11, v19, v5

    const/4 v5, 0x1

    aget v12, v19, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p5

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 301
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPaint:Landroid/graphics/Paint;

    const v6, -0xffff01

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    const/4 v5, 0x0

    aget v9, v3, v5

    const/4 v5, 0x1

    aget v10, v3, v5

    const/4 v5, 0x0

    aget v11, v7, v5

    const/4 v5, 0x1

    aget v12, v7, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p5

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 305
    :cond_3
    const/4 v5, 0x0

    aget v9, v19, v5

    const/4 v5, 0x1

    aget v10, v19, v5

    const/4 v5, 0x0

    aget v11, v7, v5

    const/4 v5, 0x1

    aget v12, v7, v5

    const/4 v5, 0x0

    aget v13, v3, v5

    const/4 v5, 0x1

    aget v14, v3, v5

    move-object/from16 v8, v18

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 307
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v3, v6

    aput v6, v2, v5

    .line 308
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v3, v6

    aput v6, v2, v5

    .line 310
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v4, v6

    aput v6, v3, v5

    .line 311
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v4, v6

    aput v6, v3, v5

    .line 313
    const/4 v5, 0x0

    const/4 v6, 0x2

    aget v6, v7, v6

    aput v6, v19, v5

    .line 314
    const/4 v5, 0x1

    const/4 v6, 0x3

    aget v6, v7, v6

    aput v6, v19, v5

    .line 278
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    .line 290
    :cond_4
    shr-int/lit8 v5, p4, 0x1

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v17

    if-eq v0, v5, :cond_5

    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_6

    .line 292
    :cond_5
    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVectorA:Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVectorB:Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    invoke-static/range {v2 .. v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->getSmoothControlPoints([F[F[FFF[FLcom/sonyericsson/textinput/uxp/view/keyboard/Vector;Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;)V

    goto/16 :goto_1

    .line 294
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVectorA:Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVectorB:Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-static/range {v2 .. v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->getSmoothControlPoints([F[F[FFF[FLcom/sonyericsson/textinput/uxp/view/keyboard/Vector;Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;)V

    goto/16 :goto_1
.end method

.method private createPointList([FIF[FI)V
    .locals 20
    .param p1, "point"    # [F
    .param p2, "points"    # I
    .param p3, "t"    # F
    .param p4, "vertices"    # [F
    .param p5, "vertexCount"    # I

    .prologue
    .line 151
    const/4 v15, 0x0

    .line 152
    .local v15, "vertexOffset":I
    add-int/lit8 v13, p5, -0x1

    .line 153
    .local v13, "vertexBackTrailOffset":I
    const/4 v7, 0x0

    .line 154
    .local v7, "myT":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVectorA:Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 155
    .local v2, "a":Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVectorB:Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 156
    .local v3, "b":Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mP0:[F

    .local v8, "p0":[F
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mP1:[F

    .local v9, "p1":[F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mP2:[F

    .line 157
    .local v10, "p2":[F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mSegment:[F

    .line 158
    .local v12, "v":[F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mSizeMap:[F

    .line 160
    .local v11, "sizeMap":[F
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v8}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->get([FI[F)V

    .line 161
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->get([FI[F)V

    .line 164
    invoke-virtual {v2, v8, v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->set([F[F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 165
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->inv()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->normalise()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v17

    const/16 v18, 0x0

    aget v18, v11, v18

    invoke-virtual/range {v17 .. v18}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->multiply(F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 166
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "vertexOffset":I
    .local v16, "vertexOffset":I
    const/16 v17, 0x0

    aget v17, v8, v17

    iget-object v0, v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    aput v17, p4, v15

    .line 167
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "vertexOffset":I
    .restart local v15    # "vertexOffset":I
    const/16 v17, 0x1

    aget v17, v8, v17

    iget-object v0, v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    aput v17, p4, v16

    .line 169
    invoke-virtual {v2, v8, v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->set([F[F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 170
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-static {v2, v12, v11, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->fastGetVerts(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;[F[FI)V

    .line 171
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "vertexOffset":I
    .restart local v16    # "vertexOffset":I
    const/16 v17, 0x0

    aget v17, v8, v17

    const/16 v18, 0x0

    aget v18, v12, v18

    add-float v17, v17, v18

    aput v17, p4, v15

    .line 172
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "vertexOffset":I
    .restart local v15    # "vertexOffset":I
    const/16 v17, 0x1

    aget v17, v8, v17

    const/16 v18, 0x1

    aget v18, v12, v18

    add-float v17, v17, v18

    aput v17, p4, v16

    .line 174
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "vertexBackTrailOffset":I
    .local v14, "vertexBackTrailOffset":I
    const/16 v17, 0x1

    aget v17, v8, v17

    const/16 v18, 0x5

    aget v18, v12, v18

    add-float v17, v17, v18

    aput v17, p4, v13

    .line 175
    add-int/lit8 v13, v14, -0x1

    .end local v14    # "vertexBackTrailOffset":I
    .restart local v13    # "vertexBackTrailOffset":I
    const/16 v17, 0x0

    aget v17, v8, v17

    const/16 v18, 0x4

    aget v18, v12, v18

    add-float v17, v17, v18

    aput v17, p4, v14

    .line 177
    const/high16 v6, 0x42c80000    # 100.0f

    .line 180
    .local v6, "lookupScale":F
    const/4 v4, 0x2

    .local v4, "i":I
    move v14, v13

    .end local v13    # "vertexBackTrailOffset":I
    .restart local v14    # "vertexBackTrailOffset":I
    move/from16 v16, v15

    .end local v15    # "vertexOffset":I
    .restart local v16    # "vertexOffset":I
    :goto_0
    move/from16 v0, p2

    if-ge v4, v0, :cond_2

    .line 181
    move-object/from16 v0, p1

    invoke-static {v0, v4, v10}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->get([FI[F)V

    .line 183
    invoke-virtual {v2, v8, v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->set([F[F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 184
    invoke-virtual {v3, v9, v10}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->set([F[F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 185
    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->length()F

    move-result v17

    add-float v7, v7, v17

    .line 187
    div-float v17, v7, p3

    const/high16 v18, 0x42c80000    # 100.0f

    mul-float v17, v17, v18

    const/high16 v18, 0x3f000000    # 0.5f

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v5, v0

    .line 189
    .local v5, "index":I
    const/16 v17, 0x64

    move/from16 v0, v17

    if-lt v5, v0, :cond_0

    .line 190
    const/16 v5, 0x63

    .line 194
    :cond_0
    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->isInverse(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 199
    invoke-static {v2, v12, v11, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->fastGetVerts(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;[F[FI)V

    .line 204
    :goto_1
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "vertexOffset":I
    .restart local v15    # "vertexOffset":I
    const/16 v17, 0x0

    aget v17, v9, v17

    const/16 v18, 0x0

    aget v18, v12, v18

    add-float v17, v17, v18

    aput v17, p4, v16

    .line 205
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "vertexOffset":I
    .restart local v16    # "vertexOffset":I
    const/16 v17, 0x1

    aget v17, v9, v17

    const/16 v18, 0x1

    aget v18, v12, v18

    add-float v17, v17, v18

    aput v17, p4, v15

    .line 207
    add-int/lit8 v13, v14, -0x1

    .end local v14    # "vertexBackTrailOffset":I
    .restart local v13    # "vertexBackTrailOffset":I
    const/16 v17, 0x1

    aget v17, v9, v17

    const/16 v18, 0x5

    aget v18, v12, v18

    add-float v17, v17, v18

    aput v17, p4, v14

    .line 208
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "vertexBackTrailOffset":I
    .restart local v14    # "vertexBackTrailOffset":I
    const/16 v17, 0x0

    aget v17, v9, v17

    const/16 v18, 0x4

    aget v18, v12, v18

    add-float v17, v17, v18

    aput v17, p4, v13

    .line 210
    const/16 v17, 0x0

    const/16 v18, 0x0

    aget v18, v9, v18

    aput v18, v8, v17

    .line 211
    const/16 v17, 0x1

    const/16 v18, 0x1

    aget v18, v9, v18

    aput v18, v8, v17

    .line 213
    const/16 v17, 0x0

    const/16 v18, 0x0

    aget v18, v10, v18

    aput v18, v9, v17

    .line 214
    const/16 v17, 0x1

    const/16 v18, 0x1

    aget v18, v10, v18

    aput v18, v9, v17

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 201
    :cond_1
    invoke-static {v2, v3, v12, v11, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->fastGetVerts(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;[F[FI)V

    goto :goto_1

    .line 217
    .end local v5    # "index":I
    :cond_2
    add-int/lit8 v17, p2, -0x2

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->get([FI[F)V

    .line 218
    add-int/lit8 v17, p2, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v10}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->get([FI[F)V

    .line 221
    const/16 v5, 0x63

    .line 222
    .restart local v5    # "index":I
    invoke-virtual {v2, v9, v10}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->set([F[F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 224
    invoke-static {v2, v12, v11, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->fastGetVerts(Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;[F[FI)V

    .line 225
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "vertexOffset":I
    .restart local v15    # "vertexOffset":I
    const/16 v17, 0x0

    aget v17, v10, v17

    const/16 v18, 0x0

    aget v18, v12, v18

    add-float v17, v17, v18

    aput v17, p4, v16

    .line 226
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "vertexOffset":I
    .restart local v16    # "vertexOffset":I
    const/16 v17, 0x1

    aget v17, v10, v17

    const/16 v18, 0x1

    aget v18, v12, v18

    add-float v17, v17, v18

    aput v17, p4, v15

    .line 228
    invoke-virtual {v2, v9, v10}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->set([F[F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->normalise()Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    move-result-object v17

    aget v18, v11, v5

    invoke-virtual/range {v17 .. v18}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->multiply(F)Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;

    .line 230
    add-int/lit8 v15, v16, 0x1

    .end local v16    # "vertexOffset":I
    .restart local v15    # "vertexOffset":I
    const/16 v17, 0x0

    aget v17, v10, v17

    iget-object v0, v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    add-float v17, v17, v18

    aput v17, p4, v16

    .line 231
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "vertexOffset":I
    .restart local v16    # "vertexOffset":I
    const/16 v17, 0x1

    aget v17, v10, v17

    iget-object v0, v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/Vector;->mP:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    add-float v17, v17, v18

    aput v17, p4, v15

    .line 233
    add-int/lit8 v13, v14, -0x1

    .end local v14    # "vertexBackTrailOffset":I
    .restart local v13    # "vertexBackTrailOffset":I
    const/16 v17, 0x1

    aget v17, v10, v17

    const/16 v18, 0x5

    aget v18, v12, v18

    add-float v17, v17, v18

    aput v17, p4, v14

    .line 234
    add-int/lit8 v14, v13, -0x1

    .end local v13    # "vertexBackTrailOffset":I
    .restart local v14    # "vertexBackTrailOffset":I
    const/16 v17, 0x0

    aget v17, v10, v17

    const/16 v18, 0x4

    aget v18, v12, v18

    add-float v17, v17, v18

    aput v17, p4, v13

    .line 235
    return-void
.end method

.method static fromResource(Landroid/content/Context;ILcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "styleId"    # I
    .param p2, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .prologue
    .line 56
    sget-object v2, Lcom/sonyericsson/textinput/uxp/R$styleable;->Trace:[I

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 58
    .local v12, "a":Landroid/content/res/TypedArray;
    const/high16 v10, 0x442f0000    # 700.0f

    .line 59
    .local v10, "maxLength":F
    const/high16 v6, 0x40a00000    # 5.0f

    .line 60
    .local v6, "smoothPrecision":F
    const/high16 v9, 0x42480000    # 50.0f

    .line 61
    .local v9, "velocity":F
    const/high16 v15, 0x41700000    # 15.0f

    .local v15, "headSize":F
    const/high16 v18, 0x3f800000    # 1.0f

    .line 62
    .local v18, "tailSize":F
    const/high16 v4, 0x42480000    # 50.0f

    .line 63
    .local v4, "touchPrecision":F
    const/high16 v7, 0x3f800000    # 1.0f

    .local v7, "weight0":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 64
    .local v8, "weight1":F
    const v14, -0xff01

    .line 65
    .local v14, "color":I
    const/4 v5, 0x1

    .line 67
    .local v5, "smooth":Z
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v17

    .line 68
    .local v17, "n":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    .line 69
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v13

    .line 71
    .local v13, "attr":I
    packed-switch v13, :pswitch_data_0

    .line 68
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 73
    :pswitch_0
    invoke-virtual {v12, v13, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    .line 74
    goto :goto_1

    .line 76
    :pswitch_1
    invoke-virtual {v12, v13, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 77
    goto :goto_1

    .line 79
    :pswitch_2
    invoke-virtual {v12, v13, v10}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 80
    goto :goto_1

    .line 82
    :pswitch_3
    invoke-virtual {v12, v13, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 83
    goto :goto_1

    .line 85
    :pswitch_4
    invoke-virtual {v12, v13, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    .line 86
    goto :goto_1

    .line 88
    :pswitch_5
    invoke-virtual {v12, v13, v15}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v15

    .line 89
    goto :goto_1

    .line 91
    :pswitch_6
    move/from16 v0, v18

    invoke-virtual {v12, v13, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v18

    .line 92
    goto :goto_1

    .line 94
    :pswitch_7
    invoke-virtual {v12, v13, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 95
    goto :goto_1

    .line 97
    :pswitch_8
    invoke-virtual {v12, v13, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 98
    goto :goto_1

    .line 100
    :pswitch_9
    invoke-virtual {v12, v13, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 101
    goto :goto_1

    .line 107
    .end local v13    # "attr":I
    :cond_0
    const v2, 0x7f0f000d

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getAccentColor(I)I

    move-result v3

    .line 109
    .local v3, "accentColor":I
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/16 v19, 0x0

    aput v18, v11, v19

    const/16 v19, 0x1

    aput v15, v11, v19

    invoke-direct/range {v2 .. v11}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;-><init>(IFZFFFFF[F)V

    return-object v2

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_5
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method private update(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mInvalid:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mDrawPoints:Z

    if-eqz v0, :cond_3

    .line 320
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mInvalid:Z

    .line 322
    iget v11, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPoints:I

    .line 323
    .local v11, "points":I
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPoint:[F

    .line 324
    .local v10, "point":[F
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mT:F

    .line 326
    .local v3, "t":F
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mDrawPoints:Z

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mDebugPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 330
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mSmooth:Z

    if-eqz v0, :cond_5

    .line 331
    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mSmoothPrecision:F

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mWeight0:F

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mWeight1:F

    .end local v3    # "t":F
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPoint:[F

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPoints:I

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mDebugPath:Landroid/graphics/Path;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->smooth(FFF[FILandroid/graphics/Path;)F

    move-result v3

    .line 332
    .restart local v3    # "t":F
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mSmooths:I

    if-lez v0, :cond_5

    .line 333
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mSmooths:I

    .line 334
    .end local v11    # "points":I
    .local v2, "points":I
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mSmoothPoints:[F

    .line 338
    .end local v10    # "point":[F
    .local v1, "point":[F
    :goto_0
    mul-int/lit8 v0, v2, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVertexCount:I

    .line 339
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVertices:[F

    array-length v0, v0

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVertexCount:I

    if-ge v0, v4, :cond_2

    .line 340
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVertexCount:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVertices:[F

    .line 343
    :cond_2
    const/4 v0, 0x1

    if-le v2, v0, :cond_4

    .line 344
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVertices:[F

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVertexCount:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->createPointList([FIF[FI)V

    .line 345
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mWeight0:F

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mWeight1:F

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVertices:[F

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVertexCount:I

    shr-int/lit8 v8, v0, 0x1

    move-object v4, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->createBezierPath(FF[FILandroid/graphics/Canvas;)V

    .line 350
    .end local v1    # "point":[F
    .end local v2    # "points":I
    .end local v3    # "t":F
    :cond_3
    :goto_1
    return-void

    .line 347
    .restart local v1    # "point":[F
    .restart local v2    # "points":I
    .restart local v3    # "t":F
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    goto :goto_1

    .end local v1    # "point":[F
    .end local v2    # "points":I
    .restart local v10    # "point":[F
    .restart local v11    # "points":I
    :cond_5
    move-object v1, v10

    .end local v10    # "point":[F
    .restart local v1    # "point":[F
    move v2, v11

    .end local v11    # "points":I
    .restart local v2    # "points":I
    goto :goto_0
.end method


# virtual methods
.method public animate()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 393
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mIsAnimating:Z

    if-nez v4, :cond_0

    .line 409
    :goto_0
    return v3

    .line 397
    :cond_0
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVelocity:F

    cmpl-float v4, v4, v7

    if-nez v4, :cond_1

    .line 398
    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mIsAnimating:Z

    .line 409
    :goto_1
    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mIsAnimating:Z

    goto :goto_0

    .line 399
    :cond_1
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mAnimateAlpha:Z

    if-eqz v4, :cond_4

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 401
    .local v0, "cTime":J
    iget-wide v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mTAlpha:J

    sub-long v4, v0, v4

    long-to-float v4, v4

    const/high16 v5, 0x447a0000    # 1000.0f

    div-float v2, v4, v5

    .line 402
    .local v2, "time":F
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mAlpha:F

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVelocity:F

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mAlpha:F

    .line 403
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPathPaint:Landroid/graphics/Paint;

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mAlpha:F

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 404
    iput-wide v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mTAlpha:J

    .line 405
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mAlpha:F

    cmpl-float v4, v4, v7

    if-gtz v4, :cond_2

    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->animate()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mIsAnimating:Z

    goto :goto_1

    .line 407
    .end local v0    # "cTime":J
    .end local v2    # "time":F
    :cond_4
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->animate()Z

    move-result v3

    iput-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mIsAnimating:Z

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 360
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->clear()V

    .line 361
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 362
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 117
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->update(Landroid/graphics/Canvas;)V

    .line 119
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPoints:I

    if-nez v2, :cond_1

    .line 138
    :cond_0
    return-void

    .line 122
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 125
    iget-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mDrawPoints:Z

    if-eqz v2, :cond_0

    .line 126
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPoints:I

    shl-int/lit8 v1, v2, 0x1

    .line 128
    .local v1, "len":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPaint:Landroid/graphics/Paint;

    const v3, -0xff01

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 130
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPoint:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPoint:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 129
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 133
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPaint:Landroid/graphics/Paint;

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVertexCount:I

    if-ge v0, v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVertices:[F

    aget v2, v2, v0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mVertices:[F

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v5, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 134
    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method public getBoundingBox(Landroid/graphics/Rect;)Z
    .locals 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 366
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mBounds:Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 367
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 369
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 370
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 375
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 373
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPathPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 353
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->reset()V

    .line 354
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mAnimateAlpha:Z

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mTAlpha:J

    .line 356
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mAlpha:F

    .line 357
    return-void
.end method

.method public setDefaultPaint()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPathPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPathPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mPathPaint:Landroid/graphics/Paint;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 389
    return-void
.end method

.method public startAnimation(F)V
    .locals 2
    .param p1, "velocity"    # F

    .prologue
    .line 414
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceGraphics;->startAnimation(F)V

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mTAlpha:J

    .line 416
    const/high16 v0, 0x43190000    # 153.0f

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/Blob;->mAlpha:F

    .line 417
    return-void
.end method
