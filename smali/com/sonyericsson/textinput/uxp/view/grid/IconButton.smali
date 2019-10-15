.class public Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;
.super Landroid/widget/ImageButton;
.source "IconButton.java"


# instance fields
.field private final mDrawingBounds:Landroid/graphics/Rect;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->mDrawingBounds:Landroid/graphics/Rect;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->mDrawingBounds:Landroid/graphics/Rect;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->mDrawingBounds:Landroid/graphics/Rect;

    .line 39
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 50
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 52
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->mDrawingBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 53
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->mDrawingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 54
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 55
    .local v0, "centerX":I
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->mIconBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 56
    .local v1, "centerY":I
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 57
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 60
    .end local v0    # "centerX":I
    .end local v1    # "centerY":I
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/grid/IconButton;->mIconBounds:Landroid/graphics/Rect;

    .line 45
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 46
    return-void
.end method
