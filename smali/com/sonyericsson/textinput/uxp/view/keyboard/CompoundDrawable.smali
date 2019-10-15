.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "CompoundDrawable.java"


# static fields
.field private static final NON_EXISTING_INTRINSIC_SIZE:I = -0x1


# instance fields
.field private final mAlpha:[I

.field private final mCompounds:[Landroid/graphics/drawable/Drawable;

.field private final mGravity:[I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private final mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;


# direct methods
.method public constructor <init>([Landroid/graphics/drawable/Drawable;[I)V
    .locals 2
    .param p1, "compounds"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # [I

    .prologue
    .line 97
    array-length v0, p1

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->createFullOpaqueAlphaArray(I)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;-><init>([Landroid/graphics/drawable/Drawable;[I[ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 98
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;[ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 1
    .param p1, "compounds"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # [I
    .param p3, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    .line 84
    array-length v0, p1

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->createFullOpaqueAlphaArray(I)[I

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;-><init>([Landroid/graphics/drawable/Drawable;[I[ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V

    .line 86
    return-void
.end method

.method public constructor <init>([Landroid/graphics/drawable/Drawable;[I[ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 3
    .param p1, "compounds"    # [Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # [I
    .param p3, "alpha"    # [I
    .param p4, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    const/4 v2, -0x1

    .line 59
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 60
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mCompounds:[Landroid/graphics/drawable/Drawable;

    .line 62
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mGravity:[I

    .line 63
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mAlpha:[I

    .line 64
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->applyAlpha(D)V

    .line 65
    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mIntrinsicWidth:I

    .line 66
    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mIntrinsicHeight:I

    .line 67
    return-void
.end method

.method private applyAlpha(D)V
    .locals 7
    .param p1, "mult"    # D

    .prologue
    .line 189
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mCompounds:[Landroid/graphics/drawable/Drawable;

    array-length v1, v2

    .line 190
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 191
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mCompounds:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mAlpha:[I

    aget v3, v3, v0

    int-to-double v4, v3

    mul-double/2addr v4, p1

    double-to-int v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    return-void
.end method

.method private static createFullOpaqueAlphaArray(I)[I
    .locals 2
    .param p0, "compoundCount"    # I

    .prologue
    .line 101
    new-array v0, p0, [I

    .line 102
    .local v0, "fullAlpha":[I
    const/16 v1, 0xff

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 103
    return-object v0
.end method

.method public static setInsets(IIIILandroid/graphics/drawable/LayerDrawable;[Landroid/graphics/drawable/Drawable;[ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)Landroid/graphics/Point;
    .locals 20
    .param p0, "left"    # I
    .param p1, "top"    # I
    .param p2, "right"    # I
    .param p3, "bottom"    # I
    .param p4, "layerDrawable"    # Landroid/graphics/drawable/LayerDrawable;
    .param p5, "compounds"    # [Landroid/graphics/drawable/Drawable;
    .param p6, "gravity"    # [I
    .param p7, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    .line 122
    const/4 v13, -0x1

    .line 123
    .local v13, "intrinsicWidth":I
    const/4 v12, -0x1

    .line 125
    .local v12, "intrinsicHeight":I
    new-instance v16, Landroid/graphics/Rect;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Rect;-><init>()V

    .line 126
    .local v16, "placement":Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v10, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 128
    .local v10, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v4

    move-object/from16 v0, p5

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v4, v0, :cond_0

    .line 129
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v19, "layer count have changed"

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    move-object/from16 v0, p5

    array-length v4, v0

    if-ge v5, v4, :cond_4

    .line 142
    aget-object v11, p5, v5

    .line 143
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v18

    .line 144
    .local v18, "scaledWidth":I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 145
    .local v17, "scaledHeight":I
    instance-of v4, v11, Lcom/sonyericsson/textinput/uxp/view/keyboard/TextDrawable;

    if-nez v4, :cond_1

    instance-of v4, v11, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;

    if-nez v4, :cond_1

    instance-of v4, v11, Landroid/graphics/drawable/LayerDrawable;

    if-nez v4, :cond_1

    if-eqz p7, :cond_1

    .line 147
    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p7

    move/from16 v1, v19

    invoke-interface {v0, v4, v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v18

    .line 149
    sget-object v4, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p7

    move/from16 v1, v19

    invoke-interface {v0, v4, v1}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v17

    .line 157
    :cond_1
    aget v4, p6, v5

    move/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v16

    invoke-static {v4, v0, v1, v10, v2}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 163
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v0, v10, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v6, v4, v19

    .line 164
    .local v6, "insetLeft":I
    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v10, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v7, v4, v19

    .line 165
    .local v7, "insetTop":I
    iget v4, v10, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    sub-int v8, v4, v19

    .line 166
    .local v8, "insetRight":I
    iget v4, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    sub-int v9, v4, v19

    .local v9, "insetBottom":I
    move-object/from16 v4, p4

    .line 167
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 174
    add-int v4, v18, v6

    add-int v15, v4, v8

    .line 175
    .local v15, "layerWidth":I
    if-le v15, v13, :cond_2

    .line 176
    move v13, v15

    .line 179
    :cond_2
    add-int v4, v17, v7

    add-int v14, v4, v9

    .line 180
    .local v14, "layerHeight":I
    if-le v14, v12, :cond_3

    .line 181
    move v12, v14

    .line 136
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 185
    .end local v6    # "insetLeft":I
    .end local v7    # "insetTop":I
    .end local v8    # "insetRight":I
    .end local v9    # "insetBottom":I
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v14    # "layerHeight":I
    .end local v15    # "layerWidth":I
    .end local v17    # "scaledHeight":I
    .end local v18    # "scaledWidth":I
    :cond_4
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4, v13, v12}, Landroid/graphics/Point;-><init>(II)V

    return-object v4
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 4
    .param p1, "alpha"    # I

    .prologue
    .line 216
    int-to-double v0, p1

    const-wide v2, 0x406fe00000000000L    # 255.0

    div-double/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->applyAlpha(D)V

    .line 217
    return-void
.end method

.method public setBounds(IIII)V
    .locals 10
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v9, 0x0

    .line 197
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mCompounds:[Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mGravity:[I

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p0

    invoke-static/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->setInsets(IIIILandroid/graphics/drawable/LayerDrawable;[Landroid/graphics/drawable/Drawable;[ILcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)Landroid/graphics/Point;

    move-result-object v8

    .line 199
    .local v8, "size":Landroid/graphics/Point;
    iget v0, v8, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mIntrinsicWidth:I

    .line 200
    iget v0, v8, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mIntrinsicHeight:I

    .line 201
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mIntrinsicWidth:I

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/CompoundDrawable;->mIntrinsicHeight:I

    invoke-super {p0, v9, v9, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    .line 202
    return-void
.end method
