.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;
.super Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;
.source "KeyboardViewDebug.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator$ITraceBoundaryChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;
    }
.end annotation


# static fields
.field private static HEATMAP_COLORS:[I

.field private static HEATMAP_SAMPLE_SIZE:I

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeatmapPainter:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;

.field private mIsHeapMemDrawn:Z

.field private mIsKeyHeatMapShown:Z

.field private mIsKeyTouchAreaShown:Z

.field private mIsKeyVisibleAreaShown:Z

.field private mIsPredictiveKeyShown:Z

.field private mIsTraceBoundaryShown:Z

.field private mIsUserTapper:Z

.field private final mPaint:Landroid/graphics/Paint;

.field protected mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

.field private mTraceBoundary:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->REQUIRED:[Ljava/lang/Class;

    .line 39
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->HEATMAP_COLORS:[I

    .line 43
    const/4 v0, 0x3

    sput v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->HEATMAP_SAMPLE_SIZE:I

    return-void

    .line 39
    nop

    :array_0
    .array-data 4
        -0x10000
        -0x100
        -0xff0100
        -0xff0001
        -0xffff01
        -0xff01
        -0x1000000
        -0xbbbbbc
        -0x777778
        -0x333334
        -0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    .line 68
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 33
    sget v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->HEATMAP_SAMPLE_SIZE:I

    return v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->HEATMAP_COLORS:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 79
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    if-ne p2, v0, :cond_0

    .line 80
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    .line 82
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->dispose()V

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mTraceBoundaryEvaluator:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->setTraceBoundaryChangedListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator$ITraceBoundaryChangedListener;)V

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mHeatmapPainter:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mHeatmapPainter:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->clean()V

    .line 120
    :cond_0
    return-void
.end method

.method protected drawOnCanvas(Landroid/graphics/Canvas;Ljava/lang/Object;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "dirtyObject"    # Ljava/lang/Object;

    .prologue
    .line 123
    invoke-super/range {p0 .. p2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->drawOnCanvas(Landroid/graphics/Canvas;Ljava/lang/Object;)V

    .line 125
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsPredictiveKeyShown:Z

    if-eqz v11, :cond_0

    .line 126
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 127
    .local v8, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    invoke-virtual {v11}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getPredictiveKeyProvider()Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProvider;

    move-result-object v11

    .line 128
    invoke-interface {v11}, Lcom/sonyericsson/textinput/uxp/model/keyboard/IPredictiveKeyProvider;->getPredictiveKeys()[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;

    move-result-object v6

    .line 129
    .local v6, "keys":[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    array-length v12, v6

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v12, :cond_0

    aget-object v5, v6, v11

    .line 130
    .local v5, "key":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getLeftBound()I

    move-result v13

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getTopBound()I

    move-result v14

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getRightBound()I

    move-result v15

    .line 131
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;->getBottomBound()I

    move-result v16

    .line 130
    move/from16 v0, v16

    invoke-virtual {v8, v13, v14, v15, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 132
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    const/high16 v14, 0x10ff0000

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    sget-object v14, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    const v14, -0xff01

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v13}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 129
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 142
    .end local v5    # "key":Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .end local v6    # "keys":[Lcom/sonyericsson/textinput/uxp/model/prediction/PredictiveKey;
    .end local v8    # "rect":Landroid/graphics/Rect;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsHeapMemDrawn:Z

    if-eqz v11, :cond_1

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f09001c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 145
    .local v4, "heapMemTextYOffset":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    const/high16 v12, -0x10000

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f090034

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 148
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 149
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Heapmem: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->getAvailableHeapMemory()J

    move-result-wide v12

    const-wide/32 v14, 0x100000

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "MB"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    int-to-float v13, v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 153
    .end local v4    # "heapMemTextYOffset":I
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsKeyVisibleAreaShown:Z

    if-eqz v11, :cond_2

    .line 154
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 155
    .restart local v8    # "rect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->getAllKeys()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 156
    .local v5, "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualXPx()I

    move-result v12

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualYPx()I

    move-result v13

    .line 157
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualXPx()I

    move-result v14

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualWidthPx()I

    move-result v15

    add-int/2addr v14, v15

    .line 158
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualYPx()I

    move-result v15

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getVisualHeightPx()I

    move-result v16

    add-int v15, v15, v16

    .line 156
    invoke-virtual {v8, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 159
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 160
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    const v13, 0x100000ff

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 163
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 164
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    const v13, -0xffff01

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 169
    .end local v5    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v8    # "rect":Landroid/graphics/Rect;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsKeyTouchAreaShown:Z

    if-eqz v11, :cond_4

    .line 170
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 171
    .restart local v8    # "rect":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->getAllKeys()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    .line 172
    .restart local v5    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getTouchXPx()I

    move-result v7

    .line 173
    .local v7, "left":I
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getTouchXPx()I

    move-result v12

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getTouchWidthPx()I

    move-result v13

    add-int v9, v12, v13

    .line 174
    .local v9, "right":I
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getTouchYPx()I

    move-result v10

    .line 175
    .local v10, "top":I
    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getTouchYPx()I

    move-result v12

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;->getTouchHeightPx()I

    move-result v13

    add-int v2, v12, v13

    .line 176
    .local v2, "bottom":I
    invoke-virtual {v8, v7, v10, v9, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 177
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x10ff0000

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 182
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    const/high16 v13, -0x10000

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 185
    .end local v2    # "bottom":I
    .end local v5    # "key":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v7    # "left":I
    .end local v9    # "right":I
    .end local v10    # "top":I
    :cond_3
    const/4 v11, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->getWidth()I

    move-result v12

    shr-int/lit8 v12, v12, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->getHeight()I

    move-result v13

    shr-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12, v13}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->findKey(III)Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;

    move-result-object v3

    .line 186
    .local v3, "centerKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    if-eqz v3, :cond_4

    .line 187
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    const/16 v12, -0x100

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->getExpandedKeyRect(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;Landroid/graphics/Rect;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v11}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 195
    .end local v3    # "centerKey":Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .end local v8    # "rect":Landroid/graphics/Rect;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsTraceBoundaryShown:Z

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mTraceBoundary:Landroid/graphics/Rect;

    if-eqz v11, :cond_5

    .line 196
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsUserTapper:Z

    if-eqz v11, :cond_7

    const v11, 0x4400ff00    # 515.9844f

    :goto_3
    invoke-virtual {v12, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mTraceBoundary:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11, v12}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 201
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsKeyHeatMapShown:Z

    if-eqz v11, :cond_6

    .line 202
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mHeatmapPainter:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;->drawOnCanvas(Landroid/graphics/Canvas;)V

    .line 204
    :cond_6
    return-void

    .line 197
    :cond_7
    const v11, 0x440000ff

    goto :goto_3
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->getNeeds()[Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->REQUIRED:[Ljava/lang/Class;

    invoke-static {v0, v1}, Lcom/sonyericsson/ned/util/ArrayUtil;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView;->init()V

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41100000    # 9.0f

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 89
    invoke-static {v4, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->reloadPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "debug_draw_prediction_keys"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsPredictiveKeyShown:Z

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "debug_draw_heap_mem"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsHeapMemDrawn:Z

    .line 96
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "debug_draw_key_touch_area"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsKeyTouchAreaShown:Z

    .line 97
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "debug_draw_key_visible_area"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsKeyVisibleAreaShown:Z

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "debug_draw_trace_boundary"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsTraceBoundaryShown:Z

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "debug_draw_key_heatmap"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsKeyHeatMapShown:Z

    .line 103
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsTraceBoundaryShown:Z

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mTraceBoundaryEvaluator:Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator;->setTraceBoundaryChangedListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/TraceBoundaryEvaluator$ITraceBoundaryChangedListener;)V

    .line 107
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsKeyHeatMapShown:Z

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mSwiftKeyEngine:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mHeatmapPainter:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapPainter;

    .line 111
    :cond_1
    return-void
.end method

.method public onTraceBoundaryChanged(Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;ZLandroid/graphics/Rect;)V
    .locals 0
    .param p1, "key"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Key;
    .param p2, "isTapper"    # Z
    .param p3, "traceBoundary"    # Landroid/graphics/Rect;

    .prologue
    .line 208
    iput-boolean p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mIsUserTapper:Z

    .line 209
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->mTraceBoundary:Landroid/graphics/Rect;

    .line 210
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;->invalidateAllKeys()V

    .line 211
    return-void
.end method
