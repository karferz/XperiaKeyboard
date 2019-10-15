.class Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeDetector.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field private mHasDispatchedSwipe:Z

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;)V
    .locals 1

    .prologue
    .line 147
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;->mHasDispatchedSwipe:Z

    .line 149
    return-void
.end method


# virtual methods
.method hasDispatchedSwipe()Z
    .locals 2

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;->mHasDispatchedSwipe:Z

    .line 161
    .local v0, "result":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;->mHasDispatchedSwipe:Z

    .line 162
    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 168
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v2, v5, v6

    .line 169
    .local v2, "horizontalDistance":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v4, v5, v6

    .line 170
    .local v4, "verticalDistance":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 171
    .local v1, "absoluteVerticalDistance":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 172
    .local v0, "absoluteHorizontalDistance":F
    cmpl-float v5, v0, v7

    if-eqz v5, :cond_6

    .line 173
    div-float v3, v1, v0

    .line 175
    .local v3, "percentualDistance":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v5, v3, v5

    if-lez v5, :cond_3

    .line 176
    cmpg-float v5, v4, v7

    if-gez v5, :cond_0

    cmpg-float v5, p4, v7

    if-ltz v5, :cond_1

    :cond_0
    cmpl-float v5, v4, v7

    if-lez v5, :cond_2

    cmpl-float v5, p4, v7

    if-lez v5, :cond_2

    .line 178
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;

    invoke-static {v5, p4}, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;F)V

    .line 190
    .end local v3    # "percentualDistance":F
    :cond_2
    :goto_0
    iput-boolean v8, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;->mHasDispatchedSwipe:Z

    .line 191
    return v8

    .line 181
    .restart local v3    # "percentualDistance":F
    :cond_3
    cmpg-float v5, v2, v7

    if-gez v5, :cond_4

    cmpg-float v5, p3, v7

    if-ltz v5, :cond_5

    :cond_4
    cmpl-float v5, v2, v7

    if-lez v5, :cond_2

    cmpl-float v5, p3, v7

    if-lez v5, :cond_2

    .line 183
    :cond_5
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;

    invoke-static {v5, p3}, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->access$100(Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;F)V

    goto :goto_0

    .line 187
    .end local v3    # "percentualDistance":F
    :cond_6
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector$GestureListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;

    invoke-static {v5, p4}, Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;->access$000(Lcom/sonyericsson/textinput/uxp/view/grid/SwipeDetector;F)V

    goto :goto_0
.end method
