.class public Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;
.super Landroid/widget/LinearLayout;
.source "EmojiTabView.java"


# instance fields
.field private mCurrentTab:I

.field private mHasOverriddenItemWeights:Z

.field private mIndicator:Landroid/graphics/Rect;

.field private mIndicatorHeight:I

.field private mIndicatorPaint:Landroid/graphics/Paint;

.field private mInitialized:Z

.field private mIsSplit:Z

.field private mLeftTabCount:I

.field private mOverriddenItemWeight:F

.field private mTouchLockManager:Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mOverriddenItemWeight:F

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIsSplit:Z

    .line 65
    return-void
.end method

.method private getBackgroundConstantState(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 184
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    .line 185
    .local v0, "backgroundConstantState":Landroid/graphics/drawable/Drawable$ConstantState;
    if-nez v0, :cond_0

    .line 186
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Background without state"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 188
    :cond_0
    return-object v0
.end method

.method private getCorrectTabValue(I)I
    .locals 1
    .param p1, "tab"    # I

    .prologue
    .line 310
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mLeftTabCount:I

    if-lt p1, v0, :cond_0

    .line 311
    add-int/lit8 p1, p1, 0x1

    .line 313
    .end local p1    # "tab":I
    :cond_0
    return p1
.end method

.method private getTabAlpha(F)I
    .locals 2
    .param p1, "percentageAlpha"    # F

    .prologue
    .line 301
    const/high16 v0, 0x42cc0000    # 102.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x43190000    # 153.0f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private restoreAnyOverridenWeightWidths(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "emojiTabItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;>;"
    const/4 v4, 0x0

    .line 207
    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mHasOverriddenItemWeights:Z

    if-eqz v3, :cond_1

    .line 209
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 210
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    .line 212
    .local v0, "emojiTabItem":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 213
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 214
    iget v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mOverriddenItemWeight:F

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 215
    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "emojiTabItem":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    .end local v2    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mOverriddenItemWeight:F

    .line 218
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mHasOverriddenItemWeights:Z

    .line 220
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private scaleTabItemWidth(Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;)V
    .locals 3
    .param p1, "scaler"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;
    .param p2, "emojiTabItem"    # Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    .prologue
    const/4 v2, 0x1

    .line 192
    .line 193
    invoke-virtual {p2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 194
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->allocate(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 195
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mHasOverriddenItemWeights:Z

    if-nez v1, :cond_0

    .line 199
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mOverriddenItemWeight:F

    .line 200
    iput-boolean v2, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mHasOverriddenItemWeights:Z

    .line 202
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 203
    invoke-virtual {p2, v0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 247
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 248
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIsSplit:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicator:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicator:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 251
    :cond_0
    return-void
.end method

.method public initViews(Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;)V
    .locals 7
    .param p1, "listener"    # Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;
    .param p2, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    .param p3, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;

    .prologue
    const/4 v6, 0x1

    .line 69
    sget-object v3, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->PADDING:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    .line 70
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900ca

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    .line 69
    invoke-interface {p3, v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;->scale(Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;F)I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicatorHeight:I

    .line 71
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicator:Landroid/graphics/Rect;

    .line 72
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicatorPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 74
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicatorPaint:Landroid/graphics/Paint;

    const v4, 0x7f0d0036

    invoke-interface {p2, v4}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;->getLatestTabPositionChange()Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;->ordinal()I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mCurrentTab:I

    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 77
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 78
    .local v0, "child":Landroid/view/View;
    instance-of v3, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 79
    check-cast v2, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    .line 80
    .local v2, "tabItem":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    invoke-virtual {v2, p1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setTabPositionChangeListener(Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener;)V

    .line 81
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mTouchLockManager:Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

    invoke-virtual {v2, v3}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setTouchLockManager(Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;)V

    .line 76
    .end local v2    # "tabItem":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iput-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mInitialized:Z

    .line 85
    return-void
.end method

.method public initializeTabs(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;IZ)V
    .locals 19
    .param p1, "itemBackground"    # Landroid/graphics/drawable/Drawable;
    .param p2, "itemBackgroundColor"    # Landroid/content/res/ColorStateList;
    .param p3, "sizeAndScaleProvider"    # Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
    .param p4, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    .param p5, "splitHalfWidth"    # I
    .param p6, "isOneHanded"    # Z

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mInitialized:Z

    if-nez v4, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 114
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static/range {p3 .. p3}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    invoke-static/range {p4 .. p4}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/4 v15, 0x0

    .line 120
    .local v15, "splitEmojiTabGapView":Landroid/view/View;
    const/16 v16, 0x0

    .line 122
    .local v16, "splitLeftTabCount":I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v12, "emojiTabItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getChildCount()I

    move-result v11

    .line 124
    .local v11, "childCount":I
    const/16 v18, 0x0

    .line 125
    .local v18, "tabNbr":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    if-ge v13, v11, :cond_4

    .line 126
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 127
    .local v10, "child":Landroid/view/View;
    instance-of v4, v10, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    if-eqz v4, :cond_3

    move-object v4, v10

    .line 128
    check-cast v4, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    check-cast v10, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    .end local v10    # "child":Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;->fromXmlValue(I)Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

    move-result-object v4

    invoke-virtual {v10, v4}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setTabPosition(Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;)V

    .line 130
    add-int/lit8 v18, v18, 0x1

    .line 125
    :cond_2
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 131
    .restart local v10    # "child":Landroid/view/View;
    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0f0070

    if-ne v4, v5, :cond_2

    .line 132
    move-object v15, v10

    .line 133
    move/from16 v16, v13

    .line 134
    move-object/from16 v0, p0

    iput v13, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mLeftTabCount:I

    goto :goto_2

    .line 138
    .end local v10    # "child":Landroid/view/View;
    :cond_4
    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_6

    .line 139
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    .line 140
    .local v2, "emojiTabItem":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getBackgroundConstantState(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v4

    .line 141
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 144
    .local v3, "tabItemBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v13, v4}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->pageIndexToHorizontalPlacement(II)Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    move-result-object v8

    if-eqz p5, :cond_5

    const/4 v9, 0x1

    :goto_4
    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p6

    .line 142
    invoke-virtual/range {v2 .. v9}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->initialize(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;ZLcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;Z)V

    .line 138
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 144
    :cond_5
    const/4 v9, 0x0

    goto :goto_4

    .line 149
    .end local v2    # "emojiTabItem":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    .end local v3    # "tabItemBackground":Landroid/graphics/drawable/Drawable;
    :cond_6
    if-eqz v15, :cond_0

    .line 150
    if-nez p5, :cond_7

    .line 151
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIsSplit:Z

    .line 152
    const/16 v4, 0x8

    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    .line 153
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->restoreAnyOverridenWeightWidths(Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 155
    :cond_7
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIsSplit:Z

    .line 156
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Landroid/view/View;->setVisibility(I)V

    .line 163
    new-instance v14, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;

    invoke-direct {v14}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;-><init>()V

    .line 166
    .local v14, "scaler":Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;
    move/from16 v0, v16

    move/from16 v1, p5

    invoke-virtual {v14, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->setup(II)V

    .line 167
    const/4 v13, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v13, v0, :cond_8

    .line 168
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    .line 169
    .restart local v2    # "emojiTabItem":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->scaleTabItemWidth(Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;)V

    .line 167
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 173
    .end local v2    # "emojiTabItem":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    :cond_8
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int v17, v4, v16

    .line 174
    .local v17, "splitRightTabCount":I
    move/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v14, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;->setup(II)V

    .line 175
    move/from16 v13, v16

    :goto_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_0

    .line 176
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    .line 177
    .restart local v2    # "emojiTabItem":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->scaleTabItemWidth(Lcom/sonyericsson/textinput/uxp/model/keyboard/Scaler;Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;)V

    .line 175
    add-int/lit8 v13, v13, 0x1

    goto :goto_6
.end method

.method public onChangeTabPosition(Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;)V
    .locals 5
    .param p1, "tabPosition"    # Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;

    .prologue
    .line 228
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mInitialized:Z

    if-nez v4, :cond_1

    .line 239
    :cond_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getChildCount()I

    move-result v1

    .line 232
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 233
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 235
    check-cast v3, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    .line 236
    .local v3, "tabItem":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    invoke-virtual {v3, p1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->onTabPostionChanged(Lcom/sonyericsson/textinput/uxp/view/emoji/OnEmojiTabPositionListener$TabPosition;)V

    .line 232
    .end local v3    # "tabItem":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 89
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 90
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicator:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 91
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mCurrentTab:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->updateIndicator(IF)V

    .line 93
    :cond_0
    return-void
.end method

.method public scrollToPosition(IF)V
    .locals 0
    .param p1, "leftmostVisiblePageIndex"    # I
    .param p2, "pageScrolledPercentage"    # F

    .prologue
    .line 296
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->updateIndicator(IF)V

    .line 297
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->postInvalidate()V

    .line 298
    return-void
.end method

.method public setTouchLockManager(Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;)V
    .locals 0
    .param p1, "touchLockManager"    # Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mTouchLockManager:Lcom/sonyericsson/textinput/uxp/view/TouchLockManager;

    .line 243
    return-void
.end method

.method public updateIndicator(IF)V
    .locals 9
    .param p1, "leftmostVisiblePageIndex"    # I
    .param p2, "pageScrolledPercentage"    # F

    .prologue
    const/16 v6, 0x99

    const/4 v8, 0x0

    .line 254
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mCurrentTab:I

    if-eq p1, v5, :cond_0

    .line 256
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mCurrentTab:I

    .line 257
    invoke-direct {p0, v5}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getCorrectTabValue(I)I

    move-result v5

    .line 256
    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    .line 258
    .local v2, "previousLeftMostIndicatorTab":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mCurrentTab:I

    add-int/lit8 v5, v5, 0x1

    .line 259
    invoke-direct {p0, v5}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getCorrectTabValue(I)I

    move-result v5

    .line 258
    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    .line 260
    .local v3, "previousRightmostIndicatorTab":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    invoke-virtual {v2, v6}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setIconAlpha(I)V

    .line 261
    if-eqz v3, :cond_0

    .line 262
    invoke-virtual {v3, v6}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setIconAlpha(I)V

    .line 265
    .end local v2    # "previousLeftMostIndicatorTab":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    .end local v3    # "previousRightmostIndicatorTab":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    :cond_0
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mCurrentTab:I

    .line 267
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getCorrectTabValue(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    .line 269
    .local v1, "leftMostIndicatorTab":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getCorrectTabValue(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;

    .line 272
    .local v4, "rightmostIndicatorTab":Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
    iget-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIsSplit:Z

    if-nez v5, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getHeight()I

    move-result v0

    .line 274
    .local v0, "height":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicator:Landroid/graphics/Rect;

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicatorHeight:I

    sub-int v6, v0, v6

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 275
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicator:Landroid/graphics/Rect;

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    .line 277
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicator:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getX()F

    move-result v6

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p2

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 279
    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, p2

    invoke-direct {p0, v5}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getTabAlpha(F)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setIconAlpha(I)V

    .line 280
    invoke-virtual {v1, v8}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setSelectedState(Z)V

    .line 282
    if-eqz v4, :cond_2

    .line 283
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicator:Landroid/graphics/Rect;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getX()F

    move-result v6

    .line 284
    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, p2

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 285
    invoke-virtual {v4, v8}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setSelectedState(Z)V

    .line 286
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->getTabAlpha(F)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->setIconAlpha(I)V

    .line 293
    .end local v0    # "height":I
    :cond_1
    :goto_0
    return-void

    .line 289
    .restart local v0    # "height":I
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabView;->mIndicator:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getX()F

    move-result v6

    .line 290
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v5, Landroid/graphics/Rect;->right:I

    goto :goto_0
.end method
