.class public Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;
.super Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;
.source "SkinLight.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight$Factory;
    }
.end annotation


# static fields
.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final SKIN_NAME:Ljava/lang/String; = "skin-light"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;->bindMany(ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 40
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 41
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    .line 43
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 44
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 68
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;->dispose()V

    .line 69
    return-void
.end method

.method public getAccentColor(I)I
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->getAccentColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getAccentColor(Landroid/content/Context;I)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 147
    packed-switch p2, :pswitch_data_0

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    invoke-super {p0, v0, p2}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;->getAccentColor(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    return v0

    .line 155
    :pswitch_1
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLollipopOrNewer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getDarkAccentColor(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 147
    :pswitch_data_0
    .packed-switch 0x7f0f0000
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getBackgroundDrawable(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundType"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    .prologue
    .line 191
    const v0, 0x7f0200c6

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getColor(I)I
    .locals 2
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 117
    sparse-switch p1, :sswitch_data_0

    .line 136
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    .line 119
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0017

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 121
    :sswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    const v1, 0x7f0d001f

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 123
    :sswitch_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00cf

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 125
    :sswitch_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00c7

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 128
    :sswitch_4
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00ae

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 130
    :sswitch_5
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00e1

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 132
    :sswitch_6
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0040

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 134
    :sswitch_7
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0009

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x7f0d0006 -> :sswitch_7
        0x7f0d0014 -> :sswitch_0
        0x7f0d001c -> :sswitch_1
        0x7f0d003d -> :sswitch_6
        0x7f0d00af -> :sswitch_4
        0x7f0d00c4 -> :sswitch_3
        0x7f0d00cc -> :sswitch_2
        0x7f0d00de -> :sswitch_5
    .end sparse-switch
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 167
    sparse-switch p1, :sswitch_data_0

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    .line 169
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0108

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 172
    :sswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0110

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 175
    :sswitch_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0100

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 177
    :sswitch_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0118

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 167
    :sswitch_data_0
    .sparse-switch
        0x7f0d00fd -> :sswitch_2
        0x7f0d0105 -> :sswitch_0
        0x7f0d010d -> :sswitch_1
        0x7f0d0115 -> :sswitch_3
    .end sparse-switch
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 80
    packed-switch p2, :pswitch_data_0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    return-object v0

    .line 82
    :pswitch_0
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 83
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d0069

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 87
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d006c

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x7f0200d1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDrawableId(I)I
    .locals 0
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/IdRes;
    .end annotation

    .prologue
    .line 99
    .line 101
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    const-string v0, "skin-light"

    return-object v0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 53
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinLight;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getStyleId(I)I
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 111
    .end local p1    # "id":I
    :goto_0
    return p1

    .line 109
    .restart local p1    # "id":I
    :pswitch_0
    const p1, 0x7f0b0036

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x7f0b0034
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;->init()V

    .line 59
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;->initOptional()V

    .line 64
    return-void
.end method
