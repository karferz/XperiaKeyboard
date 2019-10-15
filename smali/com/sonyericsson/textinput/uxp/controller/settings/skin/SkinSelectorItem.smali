.class public Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;
.super Ljava/lang/Object;
.source "SkinSelectorItem.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDisplayName:Ljava/lang/String;

.field private mEnabled:Z

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "displayName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "displayName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "enabled"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p3}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->setSkinBitmap(Landroid/graphics/Bitmap;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->setName(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0, p2}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->setDisplayName(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0, p4}, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->setEnabled(Z)V

    .line 48
    return-void
.end method


# virtual methods
.method public getDisplayName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mDisplayName:Ljava/lang/String;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mName:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSkinBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mEnabled:Z

    return v0
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 138
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 139
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mName:Ljava/lang/String;

    .line 140
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mDisplayName:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 111
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mDisplayName:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mEnabled:Z

    .line 130
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mName:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setSkinBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/skin/SkinSelectorItem;->mBitmap:Landroid/graphics/Bitmap;

    .line 66
    return-void
.end method
