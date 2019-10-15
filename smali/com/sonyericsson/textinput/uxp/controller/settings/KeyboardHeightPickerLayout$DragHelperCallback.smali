.class Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "KeyboardHeightPickerLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragHelperCallback"
.end annotation


# instance fields
.field private mIsStickyToDefault:Z

.field private mStartCaptureTop:I

.field private mStickyStartTime:J

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;
    .param p2, "x1"    # Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$1;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 221
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 228
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)I

    move-result v3

    .line 229
    .local v3, "topBound":I
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)I

    move-result v0

    .line 230
    .local v0, "bottomBound":I
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 233
    .local v2, "newTop":I
    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    .line 234
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$400(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)I

    move-result v6

    sub-int v6, v2, v6

    .line 233
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    .line 234
    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$500(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)I

    move-result v7

    if-ge v6, v7, :cond_2

    move v1, v4

    .line 235
    .local v1, "isWithinHeightStickyTreshold":Z
    :goto_0
    iget-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->mIsStickyToDefault:Z

    if-nez v6, :cond_3

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    .line 236
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$500(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)I

    move-result v6

    if-ge p3, v6, :cond_3

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->mStickyStartTime:J

    .line 238
    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->mIsStickyToDefault:Z

    .line 242
    :cond_0
    :goto_1
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->mIsStickyToDefault:Z

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->mStickyStartTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x190

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 244
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$400(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)I

    move-result v2

    .line 247
    .end local v2    # "newTop":I
    :cond_1
    return v2

    .end local v1    # "isWithinHeightStickyTreshold":Z
    .restart local v2    # "newTop":I
    :cond_2
    move v1, v5

    .line 234
    goto :goto_0

    .line 239
    .restart local v1    # "isWithinHeightStickyTreshold":Z
    :cond_3
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->mIsStickyToDefault:Z

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    .line 240
    iput-boolean v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->mIsStickyToDefault:Z

    goto :goto_1
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 254
    const/4 v0, 0x0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$600(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)I

    move-result v0

    return v0
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 2
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    .prologue
    .line 264
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewCaptured(Landroid/view/View;I)V

    .line 265
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$800(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$700()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->mStartCaptureTop:I

    .line 267
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->mStartCaptureTop:I

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$400(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    .line 268
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$500(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->mIsStickyToDefault:Z

    .line 270
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 280
    invoke-super/range {p0 .. p5}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewPositionChanged(Landroid/view/View;IIII)V

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    invoke-static {v0, p3}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$1000(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;I)V

    .line 282
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 2
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .line 274
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$800(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$900()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 276
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 215
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout$DragHelperCallback;->this$0:Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;->access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/KeyboardHeightPickerLayout;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
