.class public Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;
.super Ljava/lang/Object;
.source "FloatingKeyboardTypeSelectorPopup.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/keyboard/PopupContainerManager$PopupContainerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;,
        Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$IOnSelectionChangeListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

.field private mKeyboardViewConstraint:Landroid/graphics/Point;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mOffset:Landroid/graphics/Point;

.field private mOnSelectionChangeListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$IOnSelectionChangeListener;

.field private mParentContainer:Landroid/view/ViewGroup;

.field private mRootView:Landroid/view/View;

.field private final mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mContext:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .line 101
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;)Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$IOnSelectionChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mOnSelectionChangeListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$IOnSelectionChangeListener;

    return-object v0
.end method

.method private initViews(Ljava/lang/String;Ljava/lang/String;)V
    .locals 31
    .param p1, "currentLayoutId"    # Ljava/lang/String;
    .param p2, "highPriorityId"    # Ljava/lang/String;

    .prologue
    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v28, v0

    const v29, 0x7f03000a

    const/16 v30, 0x0

    invoke-virtual/range {v28 .. v30}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mRootView:Landroid/view/View;

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mRootView:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x7f0f0071

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 147
    .local v6, "floatingKeyboardView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    move-object/from16 v28, v0

    const v29, 0x7f0d010d

    invoke-interface/range {v28 .. v29}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    .line 149
    .local v15, "itemBackgroundColorStateList":Landroid/content/res/ColorStateList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f02001c

    invoke-static/range {v28 .. v29}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 151
    .local v5, "floatingKeyboardBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v28

    sget-object v29, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 153
    invoke-virtual {v6, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mRootView:Landroid/view/View;

    move-object/from16 v28, v0

    const v29, 0x7f0f0072

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 158
    .local v19, "listView":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    .line 160
    .local v23, "resources":Landroid/content/res/Resources;
    const v28, 0x7f0e0017

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 161
    .local v12, "images":Landroid/content/res/TypedArray;
    const/16 v27, 0x0

    .line 163
    .local v27, "widestItem":I
    const v28, 0x7f0e0019

    :try_start_0
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v26

    .line 164
    .local v26, "texts":[Ljava/lang/String;
    const v28, 0x7f0e0018

    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 167
    .local v8, "ids":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v8}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->sortAndRemoveCurrentIdIndexes(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[I

    move-result-object v24

    .line 170
    .local v24, "sortedIdIndexes":[I
    const v28, 0x7f0900cc

    .line 171
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v16

    .line 172
    .local v16, "itemHeight":I
    const v28, 0x7f0900ce

    .line 173
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v22

    .line 174
    .local v22, "minItemWidth":I
    const v28, 0x7f0900cd

    .line 175
    move-object/from16 v0, v23

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v20

    .line 176
    .local v20, "maxItemWidth":I
    move/from16 v27, v22

    .line 178
    new-instance v21, Landroid/util/DisplayMetrics;

    invoke-direct/range {v21 .. v21}, Landroid/util/DisplayMetrics;-><init>()V

    .line 179
    .local v21, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const-string v29, "window"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/WindowManager;

    invoke-interface/range {v28 .. v28}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v28

    .line 180
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 182
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v7, v0, :cond_2

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v28, v0

    const v29, 0x7f03000b

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 185
    aget v28, v24, v7

    aget-object v3, v8, v28

    .line 186
    .local v3, "currentId":Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 189
    .local v13, "item":Landroid/view/View;
    const v28, 0x7f0f0074

    .line 190
    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 191
    .local v11, "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    move-object/from16 v28, v0

    aget v29, v24, v7

    const/16 v30, -0x1

    move/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v12, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v29

    invoke-interface/range {v28 .. v29}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawableId(I)I

    move-result v10

    .line 193
    .local v10, "imageId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-static {v0, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 194
    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 195
    .local v9, "image":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    move-object/from16 v28, v0

    const v29, 0x7f0d0014

    invoke-interface/range {v28 .. v29}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v28

    sget-object v29, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v9, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 196
    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    const v28, 0x7f0f0075

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 201
    .local v25, "textView":Landroid/widget/TextView;
    aget v28, v24, v7

    aget-object v28, v26, v28

    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    move-object/from16 v28, v0

    const v29, 0x7f0d0014

    invoke-interface/range {v28 .. v29}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v28

    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    const v29, 0x7f02001c

    invoke-static/range {v28 .. v29}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 207
    .local v14, "itemBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v15}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v28

    sget-object v29, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 209
    invoke-virtual {v13, v14}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 211
    new-instance v28, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v14, v15, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Ljava/lang/String;)V

    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 213
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v13, v0}, Landroid/view/View;->setClickable(Z)V

    .line 216
    if-nez v7, :cond_0

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v28, v0

    const v29, 0x7f030009

    move-object/from16 v0, v28

    move/from16 v1, v29

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 218
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 219
    .local v4, "divider":Landroid/view/View;
    const v28, 0x1080014

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 223
    .end local v4    # "divider":Landroid/view/View;
    :cond_0
    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    const/high16 v29, -0x80000000

    invoke-static/range {v28 .. v29}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    const/high16 v29, 0x40000000    # 2.0f

    .line 224
    move/from16 v0, v16

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .line 223
    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Landroid/view/View;->measure(II)V

    .line 225
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 226
    .local v17, "itemWidth":I
    move/from16 v0, v17

    move/from16 v1, v27

    if-le v0, v1, :cond_1

    .line 227
    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v27

    .line 182
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 231
    .end local v3    # "currentId":Ljava/lang/String;
    .end local v9    # "image":Landroid/graphics/drawable/Drawable;
    .end local v10    # "imageId":I
    .end local v11    # "imageView":Landroid/widget/ImageView;
    .end local v13    # "item":Landroid/view/View;
    .end local v14    # "itemBackground":Landroid/graphics/drawable/Drawable;
    .end local v17    # "itemWidth":I
    .end local v25    # "textView":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 235
    const/4 v7, 0x0

    :goto_1
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v28

    move/from16 v0, v28

    if-ge v7, v0, :cond_3

    .line 236
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 237
    .restart local v13    # "item":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout$LayoutParams;

    .line 238
    .local v18, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    move/from16 v0, v27

    move-object/from16 v1, v18

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 239
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 231
    .end local v7    # "i":I
    .end local v8    # "ids":[Ljava/lang/String;
    .end local v13    # "item":Landroid/view/View;
    .end local v16    # "itemHeight":I
    .end local v18    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v20    # "maxItemWidth":I
    .end local v21    # "metrics":Landroid/util/DisplayMetrics;
    .end local v22    # "minItemWidth":I
    .end local v24    # "sortedIdIndexes":[I
    .end local v26    # "texts":[Ljava/lang/String;
    :catchall_0
    move-exception v28

    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    throw v28

    .line 242
    .restart local v7    # "i":I
    .restart local v8    # "ids":[Ljava/lang/String;
    .restart local v16    # "itemHeight":I
    .restart local v20    # "maxItemWidth":I
    .restart local v21    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v22    # "minItemWidth":I
    .restart local v24    # "sortedIdIndexes":[I
    .restart local v26    # "texts":[Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mRootView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->setContentView(Landroid/view/View;)V

    .line 243
    return-void
.end method

.method private isInitialized()Z
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mParentContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sortAndRemoveCurrentIdIndexes(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[I
    .locals 11
    .param p1, "currentLayoutId"    # Ljava/lang/String;
    .param p2, "highPriorityId"    # Ljava/lang/String;
    .param p3, "ids"    # [Ljava/lang/String;

    .prologue
    .line 257
    array-length v8, p3

    new-array v6, v8, [I

    .line 258
    .local v6, "sortedIdIndexes":[I
    const/4 v0, -0x1

    .line 259
    .local v0, "currentLayoutIdIndex":I
    const/4 v1, -0x1

    .line 260
    .local v1, "highPriorityIdIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, p3

    if-ge v2, v8, :cond_2

    .line 261
    aget-object v8, p3, v2

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 262
    move v0, v2

    .line 260
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_1
    aget-object v8, p3, v2

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 264
    move v1, v2

    goto :goto_1

    .line 269
    :cond_2
    const/4 v2, 0x0

    :goto_2
    array-length v8, v6

    if-ge v2, v8, :cond_7

    .line 270
    if-nez v2, :cond_4

    if-ltz v0, :cond_4

    .line 271
    aput v0, v6, v2

    .line 269
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 272
    :cond_4
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    if-ne v2, v8, :cond_5

    if-ltz v1, :cond_5

    .line 273
    aput v1, v6, v2

    goto :goto_3

    .line 275
    :cond_5
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_4
    array-length v8, p3

    if-ge v4, v8, :cond_3

    .line 276
    if-eq v4, v0, :cond_6

    if-eq v4, v1, :cond_6

    .line 277
    aput v4, v6, v2

    goto :goto_3

    .line 275
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 285
    .end local v4    # "k":I
    :cond_7
    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    new-array v7, v8, [I

    .line 286
    .local v7, "sortedIdsWithoutCurrentLayout":[I
    const/4 v3, 0x0

    .line 287
    .local v3, "index":I
    array-length v9, v6

    const/4 v8, 0x0

    :goto_5
    if-ge v8, v9, :cond_9

    aget v5, v6, v8

    .line 288
    .local v5, "sortedIdIndex":I
    aget-object v10, p3, v5

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 289
    aput v5, v7, v3

    .line 290
    add-int/lit8 v3, v3, 0x1

    .line 287
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 294
    .end local v5    # "sortedIdIndex":I
    :cond_9
    return-object v7
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->dispose()V

    .line 356
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mParentContainer:Landroid/view/ViewGroup;

    .line 357
    return-void
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->hide()V

    .line 350
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPopupContainerInitiation(Landroid/view/ViewGroup;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "popupContainer"    # Landroid/view/ViewGroup;
    .param p2, "offset"    # Landroid/graphics/Point;
    .param p3, "constraint"    # Landroid/graphics/Point;

    .prologue
    .line 121
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mParentContainer:Landroid/view/ViewGroup;

    .line 122
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mOffset:Landroid/graphics/Point;

    .line 123
    invoke-static {p3}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mKeyboardViewConstraint:Landroid/graphics/Point;

    .line 124
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mParentContainer:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    .line 125
    return-void
.end method

.method public onPopupContainerOffsetChanged(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "offset"    # Landroid/graphics/Point;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This object must have been initialized first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mOffset:Landroid/graphics/Point;

    .line 137
    return-void
.end method

.method public setOnSelectionChangeListener(Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$IOnSelectionChangeListener;)V
    .locals 0
    .param p1, "onSelectionChangeListener"    # Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$IOnSelectionChangeListener;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mOnSelectionChangeListener:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$IOnSelectionChangeListener;

    .line 367
    return-void
.end method

.method public show(Landroid/graphics/Point;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "floatingKeyboardSwitchKeyCenterPoint"    # Landroid/graphics/Point;
    .param p2, "currentLayoutId"    # Ljava/lang/String;
    .param p3, "highPriorityId"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/high16 v11, -0x80000000

    .line 309
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->isInitialized()Z

    move-result v7

    if-nez v7, :cond_0

    move v7, v8

    .line 339
    :goto_0
    return v7

    .line 313
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->initViews(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 316
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v7, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 317
    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 318
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mRootView:Landroid/view/View;

    iget v9, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v10, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 319
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 318
    invoke-virtual {v7, v9, v10}, Landroid/view/View;->measure(II)V

    .line 320
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 321
    .local v3, "popupWidth":I
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mRootView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 323
    .local v2, "popupHeight":I
    const/4 v0, 0x0

    .line 324
    .local v0, "leftAlignedPopupX":I
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mKeyboardViewConstraint:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    sub-int v6, v7, v3

    .line 333
    .local v6, "rightAlignedPopupX":I
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v9, p1, Landroid/graphics/Point;->x:I

    .line 335
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 334
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int v4, v7, v8

    .line 336
    .local v4, "popupX":I
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mOffset:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget v8, p1, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    sub-int v5, v7, v2

    .line 338
    .local v5, "popupY":I
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-virtual {v7, v4, v5, v3, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->show(IIII)V

    .line 339
    const/4 v7, 0x1

    goto :goto_0
.end method
