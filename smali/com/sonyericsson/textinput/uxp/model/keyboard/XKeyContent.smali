.class public Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;
.super Ljava/lang/Object;
.source "XKeyContent.java"


# instance fields
.field private mEnabled:Z

.field private mInListHighlighted:Landroid/graphics/drawable/Drawable;

.field private mInListNormal:Landroid/graphics/drawable/Drawable;

.field private mKeyPrimary:Landroid/graphics/drawable/Drawable;

.field private mKeyPrimaryPreview:Landroid/graphics/drawable/Drawable;

.field private mKeySecondary:Landroid/graphics/drawable/Drawable;

.field private mOnKeySecondaryPreview:Landroid/graphics/drawable/Drawable;

.field private final mPriority:I

.field private final mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

.field private final mType:I


# direct methods
.method public constructor <init>(IILcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "priority"    # I
    .param p3, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mType:I

    .line 35
    iput p2, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mPriority:I

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mEnabled:Z

    .line 37
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    .line 38
    return-void
.end method


# virtual methods
.method public enable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mEnabled:Z

    .line 247
    return-void
.end method

.method public getKeyPrimaryIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mKeyPrimary:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeyPrimaryPreview()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mKeyPrimaryPreview:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeySecondaryIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mKeySecondary:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getKeySecondaryPreview()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mOnKeySecondaryPreview:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getListHighlightedIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mInListHighlighted:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getListNormalIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mInListNormal:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mPriority:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mType:I

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mEnabled:Z

    return v0
.end method

.method public setKeyPrimaryIcon(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mKeyPrimary:Landroid/graphics/drawable/Drawable;

    .line 78
    return-void
.end method

.method public setKeyPrimaryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mKeyPrimary:Landroid/graphics/drawable/Drawable;

    .line 88
    return-void
.end method

.method public setKeyPrimaryPreview(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 156
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mKeyPrimaryPreview:Landroid/graphics/drawable/Drawable;

    .line 157
    return-void
.end method

.method public setKeyPrimaryPreview(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mKeyPrimaryPreview:Landroid/graphics/drawable/Drawable;

    .line 147
    return-void
.end method

.method public setKeySecondaryIcon(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mKeySecondary:Landroid/graphics/drawable/Drawable;

    .line 127
    return-void
.end method

.method public setKeySecondaryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mKeySecondary:Landroid/graphics/drawable/Drawable;

    .line 117
    return-void
.end method

.method public setKeySecondaryPreview(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mOnKeySecondaryPreview:Landroid/graphics/drawable/Drawable;

    .line 178
    return-void
.end method

.method public setListHighlightedIcon(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mInListHighlighted:Landroid/graphics/drawable/Drawable;

    .line 238
    return-void
.end method

.method public setListHighlightedIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mInListHighlighted:Landroid/graphics/drawable/Drawable;

    .line 228
    return-void
.end method

.method public setListNormalIcon(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mSkin:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mInListNormal:Landroid/graphics/drawable/Drawable;

    .line 208
    return-void
.end method

.method public setListNormalIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/keyboard/XKeyContent;->mInListNormal:Landroid/graphics/drawable/Drawable;

    .line 198
    return-void
.end method
