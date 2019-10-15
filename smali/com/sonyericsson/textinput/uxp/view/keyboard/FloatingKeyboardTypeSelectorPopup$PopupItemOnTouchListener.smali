.class Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;
.super Ljava/lang/Object;
.source "FloatingKeyboardTypeSelectorPopup.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupItemOnTouchListener"
.end annotation


# instance fields
.field private mIsPressed:Z

.field private final mItemBackground:Landroid/graphics/drawable/Drawable;

.field private final mItemBackgroundColorStateList:Landroid/content/res/ColorStateList;

.field private final mSelectionId:Ljava/lang/String;

.field private mViewBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;


# direct methods
.method constructor <init>(Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Ljava/lang/String;)V
    .locals 0
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "backgroundColorStateList"    # Landroid/content/res/ColorStateList;
    .param p4, "selectionId"    # Ljava/lang/String;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 397
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->mItemBackground:Landroid/graphics/drawable/Drawable;

    .line 398
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->mItemBackgroundColorStateList:Landroid/content/res/ColorStateList;

    .line 399
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->mSelectionId:Ljava/lang/String;

    .line 400
    return-void
.end method

.method private updateBackground()V
    .locals 4

    .prologue
    .line 441
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->mItemBackgroundColorStateList:Landroid/content/res/ColorStateList;

    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->mIsPressed:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->STATE_CANDIDATE_PRESSED:[I

    :goto_0
    const/high16 v3, -0x10000

    invoke-virtual {v2, v1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 445
    .local v0, "color":I
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->mItemBackground:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 446
    return-void

    .line 441
    .end local v0    # "color":I
    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;->STATE_CANDIDATE_NORMAL:[I

    goto :goto_0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 404
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 405
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 437
    :cond_0
    :goto_0
    return v6

    .line 407
    :pswitch_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->mViewBounds:Landroid/graphics/Rect;

    .line 408
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->mIsPressed:Z

    .line 409
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->updateBackground()V

    goto :goto_0

    .line 413
    :pswitch_1
    iput-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->mIsPressed:Z

    .line 414
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->updateBackground()V

    .line 415
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->access$000(Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;)Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$IOnSelectionChangeListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 416
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->this$0:Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;->access$000(Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup;)Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$IOnSelectionChangeListener;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->mSelectionId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$IOnSelectionChangeListener;->onSelectionChange(Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :pswitch_2
    iput-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->mIsPressed:Z

    .line 422
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->updateBackground()V

    goto :goto_0

    .line 426
    :pswitch_3
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->mIsPressed:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->mViewBounds:Landroid/graphics/Rect;

    .line 427
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    .line 428
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    .line 427
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    iput-boolean v6, p0, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->mIsPressed:Z

    .line 430
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/FloatingKeyboardTypeSelectorPopup$PopupItemOnTouchListener;->updateBackground()V

    goto :goto_0

    .line 405
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
