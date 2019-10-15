.class final Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;
.super Ljava/lang/Object;
.source "CellPainter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;,
        Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;,
        Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$LabelShadow;
    }
.end annotation


# static fields
.field private static final EMPTY_STATE_SET:[I

.field private static final HEAP_MEMORY_ALLOCATION_FACTOR_ACTIVE:F = 0.36f

.field private static final HEAP_MEMORY_ALLOOCATION_FACTOR_PASSIVE:F = 0.125f

.field private static final HINT_LABEL_FACTOR:F = 0.66f

.field private static final INDICATOR_INVERSE_SCALE_FACTOR:F = 0.7f

.field private static final MIN_SPACE_BETWEEN_CONTENT_FACTOR:F = 0.05f

.field private static final PRESSED_STATE_SET:[I


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mBitmapCache:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;

.field private final mBitmapPaint:Landroid/graphics/Paint;

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private final mContext:Landroid/content/Context;

.field private mDefaultTextSize:F

.field private final mFontScaleFactor:F

.field private final mHintLabelPaint:Landroid/text/TextPaint;

.field private final mIconScaleFactor:F

.field private final mIndicatorPaint:Landroid/graphics/Paint;

.field private final mLabelPaint:Landroid/text/TextPaint;

.field private final mSubLabelPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->PRESSED_STATE_SET:[I

    .line 75
    new-array v0, v3, [I

    const v1, 0x10100a9

    aput v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->EMPTY_STATE_SET:[I

    .line 78
    return-void
.end method

.method constructor <init>(Landroid/content/Context;FFLcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconScaleFactor"    # F
    .param p3, "fontScaleFactor"    # F
    .param p4, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBitmapPaint:Landroid/graphics/Paint;

    .line 90
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mLabelPaint:Landroid/text/TextPaint;

    .line 95
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mHintLabelPaint:Landroid/text/TextPaint;

    .line 100
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mSubLabelPaint:Landroid/text/TextPaint;

    .line 105
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 110
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBorderPaint:Landroid/graphics/Paint;

    .line 115
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;

    invoke-direct {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBitmapCache:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;

    .line 145
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mContext:Landroid/content/Context;

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mSubLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mHintLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 150
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 151
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 152
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 156
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mLabelPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    const v2, 0x7f0d0034

    .line 157
    invoke-interface {p4, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v2

    .line 156
    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 159
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mIconScaleFactor:F

    .line 160
    iput p3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mFontScaleFactor:F

    .line 161
    return-void
.end method

.method private static getScaledBitmap(Landroid/content/Context;IF)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceIdentifier"    # I
    .param p2, "scaleFactor"    # F

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    .local v0, "bitmapFromResource":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 168
    .local v3, "scaledBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int v2, v4

    .line 170
    .local v2, "primaryContentWidth":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    float-to-int v1, v4

    .line 171
    .local v1, "primaryContentHeight":I
    const/4 v4, 0x1

    invoke-static {v0, v2, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 173
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 175
    .end local v1    # "primaryContentHeight":I
    .end local v2    # "primaryContentWidth":I
    :cond_0
    return-object v3
.end method

.method private paintBackground(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "cell"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "cellDimensions"    # Landroid/graphics/Rect;
    .param p4, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 188
    if-eqz p4, :cond_2

    .line 190
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->PRESSED_STATE_SET:[I

    .line 195
    .local v0, "backgroundState":[I
    :goto_0
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 196
    invoke-virtual {p4, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 197
    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 201
    .end local v0    # "backgroundState":[I
    :cond_0
    :goto_1
    return-void

    .line 193
    :cond_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->EMPTY_STATE_SET:[I

    .restart local v0    # "backgroundState":[I
    goto :goto_0

    .line 198
    .end local v0    # "backgroundState":[I
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method private paintBorder(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "cellDimensions"    # Landroid/graphics/Rect;
    .param p3, "cellBorderThicknessPx"    # I

    .prologue
    .line 318
    if-lez p3, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBorderPaint:Landroid/graphics/Paint;

    int-to-float v1, p3

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 322
    :cond_0
    return-void
.end method

.method private paintContent(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 28
    .param p1, "cell"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
    .param p2, "canvas"    # Landroid/graphics/Canvas;
    .param p3, "cellDimensions"    # Landroid/graphics/Rect;

    .prologue
    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->iconResourceIdentifier()I

    move-result v24

    if-eqz v24, :cond_6

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBitmapCache:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;

    move-object/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->iconResourceIdentifier()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 218
    .local v8, "icon":Landroid/graphics/Bitmap;
    if-nez v8, :cond_1

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->iconResourceIdentifier()I

    move-result v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mIconScaleFactor:F

    move/from16 v26, v0

    invoke-static/range {v24 .. v26}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->getScaledBitmap(Landroid/content/Context;IF)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 220
    if-nez v8, :cond_0

    .line 221
    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Null icon in cell "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->iconResourceIdentifier()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 224
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBitmapCache:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;

    move-object/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->iconResourceIdentifier()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v8}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->put(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 227
    :cond_1
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v25

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v26

    sub-int v25, v25, v26

    div-int/lit8 v25, v25, 0x2

    add-int v6, v24, v25

    .line 230
    .local v6, "contentX":I
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->subLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v24

    if-nez v24, :cond_5

    .line 231
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v24

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    sub-int v24, v24, v25

    div-int/lit8 v17, v24, 0x2

    .line 239
    .local v17, "spaceBetweenHeightContent":I
    :goto_0
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v7, v24, v17

    .line 240
    .local v7, "contentY":I
    int-to-float v0, v6

    move/from16 v24, v0

    int-to-float v0, v7

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBitmapPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v8, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 272
    .end local v6    # "contentX":I
    .end local v7    # "contentY":I
    .end local v8    # "icon":Landroid/graphics/Bitmap;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->subLabel()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v18

    .line 273
    .local v18, "subLabel":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v18, :cond_2

    .line 274
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mSubLabelPaint:Landroid/text/TextPaint;

    move-object/from16 v26, v0

    invoke-virtual/range {v18 .. v18}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v26

    sub-float v25, v25, v26

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v19, v24, v25

    .line 277
    .local v19, "subLabelX":F
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v24, v24, v17

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mSubLabelPaint:Landroid/text/TextPaint;

    move-object/from16 v25, v0

    .line 278
    invoke-virtual/range {v25 .. v25}, Landroid/text/TextPaint;->descent()F

    move-result v25

    sub-float v20, v24, v25

    .line 279
    .local v20, "subLabelY":F
    invoke-virtual/range {v18 .. v18}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mSubLabelPaint:Landroid/text/TextPaint;

    move-object/from16 v25, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 282
    .end local v19    # "subLabelX":F
    .end local v20    # "subLabelY":F
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->isVariantSelectionSupported()Z

    move-result v24

    if-eqz v24, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0200c3

    invoke-static/range {v24 .. v25}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    .line 286
    .local v22, "triangle":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const v25, 0x3f333333    # 0.7f

    .line 287
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v12, v0

    .line 288
    .local v12, "left":I
    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Rect;->right:I

    .line 289
    .local v14, "right":I
    sub-int v15, v14, v12

    .line 290
    .local v15, "sideLength":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    sub-int v21, v24, v15

    .line 291
    .local v21, "top":I
    move-object/from16 v0, p3

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 292
    .local v5, "bottom":I
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v12, v1, v14, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mIndicatorPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Paint;->getColor()I

    move-result v24

    sget-object v25, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0200c4

    invoke-static/range {v24 .. v25}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 299
    .local v23, "triangleBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    .line 303
    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v24

    check-cast v24, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual/range {v24 .. v24}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getKeyboardSkin()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    .line 302
    invoke-static/range {v24 .. v25}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSkin(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    move-result-object v16

    .line 304
    .local v16, "skin":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    if-eqz v16, :cond_3

    .line 305
    const v24, 0x7f0d004e

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v24

    sget-object v25, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 310
    :cond_3
    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 311
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 313
    invoke-static/range {v16 .. v16}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 315
    .end local v5    # "bottom":I
    .end local v12    # "left":I
    .end local v14    # "right":I
    .end local v15    # "sideLength":I
    .end local v16    # "skin":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    .end local v21    # "top":I
    .end local v22    # "triangle":Landroid/graphics/drawable/Drawable;
    .end local v23    # "triangleBackground":Landroid/graphics/drawable/Drawable;
    :cond_4
    return-void

    .line 233
    .end local v17    # "spaceBetweenHeightContent":I
    .end local v18    # "subLabel":Lcom/sonyericsson/ned/model/CodePointString;
    .restart local v6    # "contentX":I
    .restart local v8    # "icon":Landroid/graphics/Bitmap;
    :cond_5
    const v24, 0x3d4ccccd    # 0.05f

    .line 234
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v13, v0

    .line 236
    .local v13, "minSpaceBetweenHeightContent":I
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v24

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    sub-int v24, v24, v25

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->getSubLabelTextSize()F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x3

    .line 235
    move/from16 v0, v24

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v17

    .restart local v17    # "spaceBetweenHeightContent":I
    goto/16 :goto_0

    .line 241
    .end local v6    # "contentX":I
    .end local v8    # "icon":Landroid/graphics/Bitmap;
    .end local v13    # "minSpaceBetweenHeightContent":I
    .end local v17    # "spaceBetweenHeightContent":I
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v24

    if-eqz v24, :cond_8

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBitmapCache:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;

    move-object/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 250
    .local v9, "labelBitmap":Landroid/graphics/Bitmap;
    if-eqz v9, :cond_7

    .line 251
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v11, v0

    .line 252
    .local v11, "labelWidth":F
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v10, v0

    .line 254
    .local v10, "labelHeight":F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v10

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v17, v0

    .line 255
    .restart local v17    # "spaceBetweenHeightContent":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v25, v11

    const/high16 v26, 0x40000000    # 2.0f

    div-float v25, v25, v26

    add-float v6, v24, v25

    .line 257
    .local v6, "contentX":F
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    add-int v24, v24, v17

    move/from16 v0, v24

    int-to-float v7, v0

    .line 259
    .local v7, "contentY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBitmapPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v9, v6, v7, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 261
    .end local v6    # "contentX":F
    .end local v7    # "contentY":F
    .end local v10    # "labelHeight":F
    .end local v11    # "labelWidth":F
    .end local v17    # "spaceBetweenHeightContent":I
    :cond_7
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->getLabelTextSize()F

    move-result v25

    sub-float v24, v24, v25

    const/high16 v25, 0x40000000    # 2.0f

    div-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mLabelPaint:Landroid/text/TextPaint;

    move-object/from16 v25, v0

    .line 262
    invoke-virtual/range {v25 .. v25}, Landroid/text/TextPaint;->ascent()F

    move-result v25

    sub-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v17, v0

    .restart local v17    # "spaceBetweenHeightContent":I
    goto/16 :goto_1

    .line 269
    .end local v9    # "labelBitmap":Landroid/graphics/Bitmap;
    .end local v17    # "spaceBetweenHeightContent":I
    :cond_8
    new-instance v24, Ljava/lang/AssertionError;

    const-string v25, "Encountered unexpected cell."

    invoke-direct/range {v24 .. v25}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v24
.end method


# virtual methods
.method public cacheCell(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)V
    .locals 6
    .param p1, "cell"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .prologue
    .line 422
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->label()Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 424
    .local v1, "cellLabel":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->iconResourceIdentifier()I

    move-result v3

    if-eqz v3, :cond_1

    .line 425
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBitmapCache:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->iconResourceIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 426
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->iconResourceIdentifier()I

    move-result v4

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mIconScaleFactor:F

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->getScaledBitmap(Landroid/content/Context;IF)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 428
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 429
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBitmapCache:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->iconResourceIdentifier()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->put(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    .line 448
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 432
    :cond_1
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBitmapCache:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 438
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;->getLabelTextSize()F

    move-result v2

    .line 439
    .local v2, "size":F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_2

    .line 440
    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mDefaultTextSize:F

    .line 442
    :cond_2
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mFontScaleFactor:F

    mul-float/2addr v2, v3

    .line 443
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 444
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mLabelPaint:Landroid/text/TextPaint;

    invoke-static {v3, v4}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$ThreadSafeCacheUtil;->createBitmap(Ljava/lang/String;Landroid/graphics/Paint;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 446
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBitmapCache:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;

    invoke-virtual {v3, v1, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->put(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBitmapCache:Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter$BitmapCache;->clearCache()V

    .line 414
    return-void
.end method

.method public getHintLabelPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mHintLabelPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method getLabelTextSize()F
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method getSubLabelTextSize()F
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mSubLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method paintCell(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "cell"    # Lcom/sonyericsson/textinput/uxp/view/grid/Cell;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "cellDimensions"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "cellBackground"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "cellBorderThicknessPx"    # I

    .prologue
    .line 404
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->paintBackground(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;)V

    .line 405
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->paintContent(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 406
    invoke-direct {p0, p2, p3, p5}, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->paintBorder(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 407
    return-void
.end method

.method setLabelTextSize(F)V
    .locals 2
    .param p1, "labelTextSize"    # F

    .prologue
    .line 348
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mDefaultTextSize:F

    .line 349
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 350
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mHintLabelPaint:Landroid/text/TextPaint;

    const v1, 0x3f28f5c3    # 0.66f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 351
    return-void
.end method

.method setPaintColor(IIIII)V
    .locals 1
    .param p1, "labelTextColor"    # I
    .param p2, "subLabelTextColor"    # I
    .param p3, "pressedBackgroundColor"    # I
    .param p4, "borderColor"    # I
    .param p5, "indicatorColor"    # I

    .prologue
    .line 385
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mHintLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mSubLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 388
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    return-void
.end method

.method setSubLabelTextSize(F)V
    .locals 1
    .param p1, "subLabelTextSize"    # F

    .prologue
    .line 370
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/CellPainter;->mSubLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 371
    return-void
.end method
