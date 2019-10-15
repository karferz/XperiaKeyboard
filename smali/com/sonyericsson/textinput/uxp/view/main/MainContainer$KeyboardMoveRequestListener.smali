.class final Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;
.super Ljava/lang/Object;
.source "MainContainer.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardView$OnKeyboardMoveRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyboardMoveRequestListener"
.end annotation


# instance fields
.field private mCurrentDeltaX:I

.field private mCurrentDeltaY:I

.field private mOffsetX:F

.field private mOffsetY:F

.field private mStartTranslationX:F

.field private mStartTranslationY:F

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 957
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 958
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mStartTranslationX:F

    .line 959
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mStartTranslationY:F

    .line 960
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mOffsetX:F

    .line 961
    iput v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mOffsetY:F

    .line 962
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mCurrentDeltaX:I

    .line 963
    iput v1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mCurrentDeltaY:I

    .line 964
    return-void
.end method

.method private moveKeyboard()V
    .locals 3

    .prologue
    .line 973
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-eq v0, v1, :cond_0

    .line 974
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mStartTranslationY:F

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mCurrentDeltaY:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mOffsetY:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 976
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_0

    .line 977
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mStartTranslationX:F

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mCurrentDeltaX:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mOffsetX:F

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 981
    :cond_0
    return-void
.end method


# virtual methods
.method public onEndKeyboardMoveRequest()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1032
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-eq v4, v5, :cond_1

    .line 1033
    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mStartTranslationX:F

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mCurrentDeltaX:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mStartTranslationY:F

    iget v6, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mCurrentDeltaY:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 1035
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 1036
    invoke-static {v7}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v7

    .line 1034
    invoke-static {v4, v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/view/main/RelativePositionUtil;->getRelativePositionFromScreenPosition(FFLandroid/graphics/Rect;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)Landroid/graphics/PointF;

    move-result-object v2

    .line 1038
    .local v2, "relativeEndPosition":Landroid/graphics/PointF;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 1039
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v4

    .line 1038
    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/view/main/RelativePositionUtil;->isRelativePositionWithinBounds(Landroid/graphics/PointF;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1040
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4, v2}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$2300(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;Landroid/graphics/PointF;)V

    .line 1052
    :goto_0
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$500(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 1054
    .local v0, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v4, v5, :cond_0

    .line 1055
    iget v4, v2, Landroid/graphics/PointF;->x:F

    invoke-interface {v0, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setFloatingRelativePositionX(F)V

    .line 1057
    :cond_0
    iget v4, v2, Landroid/graphics/PointF;->y:F

    invoke-interface {v0, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setFloatingRelativePositionY(F)V

    .line 1058
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 1060
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->setIsMoving(Z)V

    .line 1061
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->setAlpha(F)V

    .line 1063
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->updateLayoutContraints()V

    .line 1065
    iput v8, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mOffsetX:F

    .line 1066
    iput v8, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mOffsetY:F

    .line 1068
    .end local v0    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    .end local v2    # "relativeEndPosition":Landroid/graphics/PointF;
    :cond_1
    return-void

    .line 1042
    .restart local v2    # "relativeEndPosition":Landroid/graphics/PointF;
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 1043
    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v4

    .line 1042
    invoke-static {v2, v4}, Lcom/sonyericsson/textinput/uxp/view/main/RelativePositionUtil;->capRelativePosition(Landroid/graphics/PointF;Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;)V

    .line 1044
    iget v4, v2, Landroid/graphics/PointF;->x:F

    iget v5, v2, Landroid/graphics/PointF;->y:F

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    .line 1046
    invoke-static {v6}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/graphics/Rect;

    move-result-object v6

    .line 1045
    invoke-static {v4, v5, v6}, Lcom/sonyericsson/textinput/uxp/view/main/RelativePositionUtil;->getScreenPositionFromRelativePosition(FFLandroid/graphics/Rect;)Landroid/graphics/PointF;

    move-result-object v3

    .line 1048
    .local v3, "screenEndPosition":Landroid/graphics/PointF;
    new-instance v1, Landroid/util/Pair;

    iget v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mOffsetX:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mOffsetY:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1049
    .local v1, "offset":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Float;Ljava/lang/Float;>;"
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$2100(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/sonyericsson/textinput/uxp/view/main/BounceBackAnimator;->animateKeyboardToPosition(Landroid/graphics/PointF;Landroid/util/Pair;)V

    goto :goto_0
.end method

.method public onKeyboardMoveRequest(II)V
    .locals 2
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-eq v0, v1, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v0, v1, :cond_1

    .end local p1    # "deltaX":I
    :goto_0
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mCurrentDeltaX:I

    .line 1024
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mCurrentDeltaY:I

    .line 1026
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->moveKeyboard()V

    .line 1028
    :cond_0
    return-void

    .line 1021
    .restart local p1    # "deltaX":I
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public onStartKeyboardMoveRequest()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 985
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->DOCKED:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-eq v5, v6, :cond_0

    .line 986
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v5

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mStartTranslationX:F

    .line 987
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$700(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v5

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mStartTranslationY:F

    .line 989
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getPaddingLeft()I

    move-result v0

    .line 990
    .local v0, "leftPaddingBeforeMove":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getPaddingTop()I

    move-result v3

    .line 992
    .local v3, "topPaddingBeforeMove":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->setIsMoving(Z)V

    .line 994
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getPaddingLeft()I

    move-result v5

    sub-int v1, v5, v0

    .line 996
    .local v1, "leftPaddingDifference":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->getPaddingTop()I

    move-result v5

    sub-int v4, v5, v3

    .line 999
    .local v4, "topPaddingDifference":I
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardSlider;->updateLayoutContraints()V

    .line 1001
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1002
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1600(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;->FLOATING_MINI:Lcom/sonyericsson/textinput/uxp/view/main/FloatingKeyboardMode;

    if-ne v5, v6, :cond_1

    const v5, 0x7f0900fb

    .line 1003
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v5, v1

    int-to-float v5, v5

    :goto_0
    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mOffsetX:F

    .line 1005
    const v5, 0x7f0900cb

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    sub-int/2addr v5, v4

    int-to-float v5, v5

    iput v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mOffsetY:F

    .line 1008
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;

    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;->access$1200(Lcom/sonyericsson/textinput/uxp/view/main/MainContainer;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;

    move-result-object v5

    const v6, 0x7f0c0015

    .line 1009
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    div-float/2addr v6, v7

    .line 1008
    invoke-virtual {v5, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;->setAlpha(F)V

    .line 1011
    iput v8, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mCurrentDeltaX:I

    .line 1012
    iput v8, p0, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->mCurrentDeltaY:I

    .line 1014
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/main/MainContainer$KeyboardMoveRequestListener;->moveKeyboard()V

    .line 1016
    .end local v0    # "leftPaddingBeforeMove":I
    .end local v1    # "leftPaddingDifference":I
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "topPaddingBeforeMove":I
    .end local v4    # "topPaddingDifference":I
    :cond_0
    return-void

    .line 1003
    .restart local v0    # "leftPaddingBeforeMove":I
    .restart local v1    # "leftPaddingDifference":I
    .restart local v2    # "resources":Landroid/content/res/Resources;
    .restart local v3    # "topPaddingBeforeMove":I
    .restart local v4    # "topPaddingDifference":I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method
