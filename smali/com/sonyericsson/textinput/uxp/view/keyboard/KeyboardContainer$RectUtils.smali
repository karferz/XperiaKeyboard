.class Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer$RectUtils;
.super Ljava/lang/Object;
.source "KeyboardContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RectUtils"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Rect;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 384
    invoke-static {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer$RectUtils;->setRectValues(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$100(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 384
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardContainer$RectUtils;->getPaddingAsRect(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static getPaddingAsRect(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 393
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 394
    .local v0, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 395
    return-object v0
.end method

.method private static setRectValues(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1
    .param p0, "toRect"    # Landroid/graphics/Rect;
    .param p1, "fromRect"    # Landroid/graphics/Rect;

    .prologue
    .line 386
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 387
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 388
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 389
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 390
    return-void
.end method
