.class public Lcom/sonyericsson/textinput/uxp/view/KeyCandidateImageViewItem;
.super Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;
.source "KeyCandidateImageViewItem.java"


# instance fields
.field private final mCandidateHighlightHeightOffset:I

.field private final mHighlightIcon:Landroid/graphics/drawable/Drawable;

.field private final mImageView:Landroid/widget/ImageView;

.field private final mNormalIcon:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "highlightIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "normalIcon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "candidateHighlightHeightOffset"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateItem;-><init>(Landroid/view/View;)V

    .line 23
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateImageViewItem;->mImageView:Landroid/widget/ImageView;

    .line 24
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateImageViewItem;->mHighlightIcon:Landroid/graphics/drawable/Drawable;

    .line 25
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateImageViewItem;->mNormalIcon:Landroid/graphics/drawable/Drawable;

    .line 26
    iput p4, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateImageViewItem;->mCandidateHighlightHeightOffset:I

    .line 27
    return-void
.end method


# virtual methods
.method highlight()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateImageViewItem;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateImageViewItem;->mHighlightIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateImageViewItem;->mImageView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateImageViewItem;->mCandidateHighlightHeightOffset:I

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 39
    return-void
.end method

.method unHighlight()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 31
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateImageViewItem;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateImageViewItem;->mNormalIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 32
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/KeyCandidateImageViewItem;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 33
    return-void
.end method
