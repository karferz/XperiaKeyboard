.class public Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SkinSelectorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder$onViewHolderClickListener;
    }
.end annotation


# instance fields
.field private final mChecker:Landroid/widget/ImageView;

.field private final mEnableView:Landroid/view/View;

.field private final mKeyboardImage:Landroid/widget/ImageView;

.field private final mListener:Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder$onViewHolderClickListener;

.field private final mNameView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder$onViewHolderClickListener;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "listener"    # Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder$onViewHolderClickListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 214
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 215
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->mListener:Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder$onViewHolderClickListener;

    .line 217
    const v0, 0x7f0f00cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->mKeyboardImage:Landroid/widget/ImageView;

    .line 218
    const v0, 0x7f0f00cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->mNameView:Landroid/widget/TextView;

    .line 219
    const v0, 0x7f0f00cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->mEnableView:Landroid/view/View;

    .line 220
    const v0, 0x7f0f00ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->mChecker:Landroid/widget/ImageView;

    .line 221
    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->mKeyboardImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->mNameView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->mEnableView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->mChecker:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->mListener:Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder$onViewHolderClickListener;

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorAdapter$ViewHolder$onViewHolderClickListener;->onViewHolderClick(I)V

    .line 226
    return-void
.end method
