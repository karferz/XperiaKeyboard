.class public Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;
.super Ljava/lang/Object;
.source "MoreCandidatesPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;
    }
.end annotation


# instance fields
.field private final mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

.field private mCandidateBackgroundColorStateList:Landroid/content/res/ColorStateList;

.field private final mCandidateClickListener:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;

.field private mCandidateHeight:I

.field private mCandidateVisualWidths:[I

.field private final mCandidatesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/TextView;",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mEllipsizePadding:I

.field private mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mMaxNumberOfRows:I

.field private mOffset:Landroid/graphics/Point;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

.field private mSuggestions:[Lcom/sonyericsson/ned/model/CodePointString;

.field private final mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/ned/controller/IBurstHandler;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "burstHandler"    # Lcom/sonyericsson/ned/controller/IBurstHandler;
    .param p3, "maxNumberOfRows"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidatesMap:Ljava/util/Map;

    .line 60
    new-instance v2, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;-><init>(Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$1;)V

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateClickListener:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;

    .line 76
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    .line 78
    iput p3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mMaxNumberOfRows:I

    .line 79
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    .local v0, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0900bf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mEllipsizePadding:I

    .line 86
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/TextStyle;->typefaceFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 88
    .local v1, "typeface":Landroid/graphics/Typeface;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->createTextPaint()Landroid/text/TextPaint;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mTextPaint:Landroid/text/TextPaint;

    .line 89
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 90
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidatesMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;)Lcom/sonyericsson/ned/controller/IBurstHandler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mBurstHandler:Lcom/sonyericsson/ned/controller/IBurstHandler;

    return-object v0
.end method

.method private addCandidateRowsAndCandidates(ILandroid/widget/LinearLayout;)V
    .locals 13
    .param p1, "candidateBarHeight"    # I
    .param p2, "candidateRowContainer"    # Landroid/widget/LinearLayout;

    .prologue
    .line 168
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateVisualWidths:[I

    array-length v6, v7

    .line 169
    .local v6, "rowLength":I
    const/4 v3, 0x0

    .line 170
    .local v3, "currentColumnIndex":I
    const/4 v5, 0x0

    .line 171
    .local v5, "currentRowIndex":I
    const/4 v4, 0x0

    .line 173
    .local v4, "currentRowContainer":Landroid/widget/LinearLayout;
    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mSuggestions:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_0

    aget-object v2, v8, v7

    .line 174
    .local v2, "candidateText":Lcom/sonyericsson/ned/model/CodePointString;
    if-nez v3, :cond_2

    .line 175
    iget v10, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mMaxNumberOfRows:I

    if-lt v5, v10, :cond_1

    .line 220
    .end local v2    # "candidateText":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    :goto_1
    if-lez v3, :cond_4

    if-ge v3, v6, :cond_4

    .line 221
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030039

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    .local v0, "candidate":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateVisualWidths:[I

    rem-int v8, v3, v6

    aget v7, v7, v8

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setWidth(I)V

    .line 224
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHeight(I)V

    .line 225
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    add-int/lit8 v3, v3, 0x1

    .line 227
    goto :goto_1

    .line 178
    .end local v0    # "candidate":Landroid/widget/TextView;
    .restart local v2    # "candidateText":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f03003a

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .end local v4    # "currentRowContainer":Landroid/widget/LinearLayout;
    check-cast v4, Landroid/widget/LinearLayout;

    .line 181
    .restart local v4    # "currentRowContainer":Landroid/widget/LinearLayout;
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    add-int/lit8 v5, v5, 0x1

    .line 186
    :cond_2
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f030039

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 189
    .restart local v0    # "candidate":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHeight(I)V

    .line 190
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateVisualWidths:[I

    aget v10, v10, v3

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setWidth(I)V

    .line 193
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mContext:Landroid/content/Context;

    const v11, 0x7f02001c

    invoke-static {v10, v11}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 195
    .local v1, "candidateItemBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->getTintedDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 199
    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateVisualWidths:[I

    aget v11, v11, v3

    const v12, 0x3f333333    # 0.7f

    invoke-direct {p0, v10, v11, v12}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->getEllipsizedText(Ljava/lang/CharSequence;IF)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v11}, Landroid/text/TextPaint;->getTextSize()F

    move-result v11

    invoke-virtual {v0, v10, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 203
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v11, 0x7f0d0014

    invoke-interface {v10, v11}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v10

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 205
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateClickListener:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateClickListener:Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup$CandidateClickListener;

    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 208
    iget-object v10, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidatesMap:Ljava/util/Map;

    invoke-interface {v10, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    add-int/lit8 v3, v3, 0x1

    .line 214
    if-lt v3, v6, :cond_3

    .line 215
    const/4 v3, 0x0

    .line 173
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 228
    .end local v0    # "candidate":Landroid/widget/TextView;
    .end local v1    # "candidateItemBackground":Landroid/graphics/drawable/Drawable;
    .end local v2    # "candidateText":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_4
    return-void
.end method

.method private calculateAndShowPopup(III)V
    .locals 10
    .param p1, "candidateBarHeight"    # I
    .param p2, "leftPadding"    # I
    .param p3, "rightPadding"    # I

    .prologue
    .line 120
    new-instance v8, Landroid/util/DisplayMetrics;

    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 121
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mRootView:Landroid/widget/FrameLayout;

    iget v1, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v2, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v3, -0x80000000

    .line 125
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 124
    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->measure(II)V

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v9

    .line 128
    .local v9, "width":I
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v4

    .line 130
    .local v4, "height":I
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mContext:Landroid/content/Context;

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    .line 132
    .local v5, "show":Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    .line 134
    .local v6, "hide":Landroid/view/animation/Animation;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mRootView:Landroid/widget/FrameLayout;

    const v1, 0x7f0f00d1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 136
    .local v7, "animationView":Landroid/view/View;
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mOffset:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v2, p1

    add-int v3, p2, p3

    sub-int v3, v9, v3

    invoke-virtual/range {v0 .. v7}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->show(IIIILandroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/view/View;)V

    .line 138
    return-void
.end method

.method private getEllipsizedText(Ljava/lang/CharSequence;IF)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "candidateWidth"    # I
    .param p3, "minTextSizeScale"    # F

    .prologue
    .line 244
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mEllipsizePadding:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mTextPaint:Landroid/text/TextPaint;

    .line 245
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    .line 244
    invoke-static {p1, v0, v1, p3, v2}, Lcom/sonyericsson/ned/util/SemcTextUtil;->getEllipsizedText(Ljava/lang/CharSequence;ILandroid/text/TextPaint;FF)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private initViews(I)V
    .locals 8
    .param p1, "candidateBarHeight"    # I

    .prologue
    .line 141
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030038

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mRootView:Landroid/widget/FrameLayout;

    .line 142
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mRootView:Landroid/widget/FrameLayout;

    const v6, 0x7f0f00d3

    .line 143
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 144
    .local v1, "candidateRowContainer":Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mRootView:Landroid/widget/FrameLayout;

    const v6, 0x7f0f00d2

    .line 145
    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 147
    .local v2, "candidatesWithMarginRowContainer":Landroid/widget/LinearLayout;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mRootView:Landroid/widget/FrameLayout;

    const v6, 0x7f0f00d5

    invoke-virtual {v5, v6}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 149
    .local v4, "divider":Landroid/view/View;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v6, 0x7f0d0115

    .line 150
    invoke-interface {v5, v6}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateBackgroundColorStateList:Landroid/content/res/ColorStateList;

    .line 151
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateBackgroundColorStateList:Landroid/content/res/ColorStateList;

    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    .line 154
    .local v0, "backgroundColor":I
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 155
    .local v3, "candidatesWithMarginRowContainerBackground":Landroid/graphics/drawable/Drawable;
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 157
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    const v6, 0x7f0d00c4

    invoke-interface {v5, v6}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 159
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->setContentView(Landroid/view/View;)V

    .line 161
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateHeight:I

    .line 163
    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->addCandidateRowsAndCandidates(ILandroid/widget/LinearLayout;)V

    .line 164
    return-void
.end method


# virtual methods
.method public getCandidate(I)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 350
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mSuggestions:[Lcom/sonyericsson/ned/model/CodePointString;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getCandidatePosition(I)Landroid/graphics/Point;
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 361
    const/4 v5, 0x2

    new-array v2, v5, [I

    .line 362
    .local v2, "screenCoordinates":[I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 363
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateVisualWidths:[I

    array-length v5, v5

    rem-int v1, p1, v5

    .line 364
    .local v1, "rowPos":I
    const/4 v5, 0x0

    aget v3, v2, v5

    .line 365
    .local v3, "xPos":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 366
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateVisualWidths:[I

    aget v5, v5, v0

    add-int/2addr v3, v5

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 368
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateVisualWidths:[I

    aget v5, v5, v1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    .line 370
    const/4 v5, 0x1

    aget v4, v2, v5

    .line 371
    .local v4, "yPos":I
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateHeight:I

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateVisualWidths:[I

    array-length v6, v6

    div-int v6, p1, v6

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    .line 372
    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 374
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    return-object v5
.end method

.method public getOffset()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mOffset:Landroid/graphics/Point;

    .line 269
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTintedDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v10, 0x2

    const/high16 v9, -0x10000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 313
    new-instance v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 314
    .local v2, "stateListDrawable":Landroid/graphics/drawable/StateListDrawable;
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v10, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v7

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateBackgroundColorStateList:Landroid/content/res/ColorStateList;

    sget-object v6, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->STATE_CANDIDATE_PRESSED:[I

    .line 317
    invoke-virtual {v5, v6, v9}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v4, v3, v8

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 321
    .local v1, "pressedLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v3, v10, [Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v7

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateBackgroundColorStateList:Landroid/content/res/ColorStateList;

    sget-object v6, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->STATE_CANDIDATE_NORMAL:[I

    .line 324
    invoke-virtual {v5, v6, v9}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v4, v3, v8

    invoke-direct {v0, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 328
    .local v0, "normalLayerDrawable":Landroid/graphics/drawable/LayerDrawable;
    new-array v3, v8, [I

    const v4, 0x10100a7

    aput v4, v3, v7

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 329
    new-array v3, v8, [I

    const v4, 0x101009c

    aput v4, v3, v7

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 330
    new-array v3, v8, [I

    const v4, 0x10100a1

    aput v4, v3, v7

    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 331
    new-array v3, v7, [I

    invoke-virtual {v2, v3, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 332
    return-object v2
.end method

.method public getVisibleNumberOfCandidates()I
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mSuggestions:[Lcom/sonyericsson/ned/model/CodePointString;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mSuggestions:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;->hide()V

    .line 304
    :cond_0
    return-void
.end method

.method public initialize(Landroid/view/ViewGroup;Landroid/graphics/Point;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V
    .locals 2
    .param p1, "popupContainer"    # Landroid/view/ViewGroup;
    .param p2, "offset"    # Landroid/graphics/Point;
    .param p3, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .prologue
    .line 249
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .line 250
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mOffset:Landroid/graphics/Point;

    .line 251
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    .line 252
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

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

.method public setOffset(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "offset"    # Landroid/graphics/Point;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mKeyboardPopupWindow:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardPopupWindow;

    if-eqz v0, :cond_0

    .line 284
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mOffset:Landroid/graphics/Point;

    .line 286
    :cond_0
    return-void
.end method

.method public setSuggestions(Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;III)V
    .locals 1
    .param p1, "candidateList"    # Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;
    .param p2, "candidateBarHeight"    # I
    .param p3, "leftPadding"    # I
    .param p4, "rightPadding"    # I

    .prologue
    .line 108
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getHiddenCandidates()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mSuggestions:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 109
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$CandidateList;->getVisualCandidateWidthArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->mCandidateVisualWidths:[I

    .line 111
    invoke-direct {p0, p2}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->initViews(I)V

    .line 113
    invoke-direct {p0, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/view/candidates/MoreCandidatesPopup;->calculateAndShowPopup(III)V

    .line 115
    return-void
.end method
