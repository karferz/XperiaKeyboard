.class public Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;
.super Ljava/lang/Object;
.source "SkinXperiaBlue.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue$Factory;
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

.field public static final SKIN_NAME:Ljava/lang/String; = "skin-xperia-blue"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->REQUIRED:[Ljava/lang/Class;

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
    .line 49
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

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
    .line 41
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 42
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 43
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    .line 45
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public getAccentColor(I)I
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->getAccentColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getAccentColor(Landroid/content/Context;I)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 188
    packed-switch p2, :pswitch_data_0

    .line 202
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown accent color id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d000e

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 199
    :goto_0
    return v0

    .line 193
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00f6

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 199
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0002

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x7f0f0000
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getBackgroundDrawable(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundType"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    .prologue
    .line 228
    const v0, 0x7f0200c6

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getColor(I)I
    .locals 2
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation

    .prologue
    .line 145
    sparse-switch p1, :sswitch_data_0

    .line 176
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    return v0

    .line 147
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d004f

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 149
    :sswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00b0

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 151
    :sswitch_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0018

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 153
    :sswitch_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0020

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 156
    :sswitch_4
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00d0

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 159
    :sswitch_5
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00c8

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 162
    :sswitch_6
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0039

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 164
    :sswitch_7
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00e2

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 166
    :sswitch_8
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0041

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 169
    :sswitch_9
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d000a

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 172
    :sswitch_a
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0035

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 174
    :sswitch_b
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0025

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 145
    :sswitch_data_0
    .sparse-switch
        0x7f0d0006 -> :sswitch_9
        0x7f0d0014 -> :sswitch_2
        0x7f0d001c -> :sswitch_3
        0x7f0d0024 -> :sswitch_b
        0x7f0d0034 -> :sswitch_a
        0x7f0d0036 -> :sswitch_6
        0x7f0d003d -> :sswitch_8
        0x7f0d004e -> :sswitch_0
        0x7f0d00af -> :sswitch_1
        0x7f0d00c4 -> :sswitch_5
        0x7f0d00cc -> :sswitch_4
        0x7f0d00de -> :sswitch_7
    .end sparse-switch
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/ColorRes;
    .end annotation

    .prologue
    .line 209
    sparse-switch p1, :sswitch_data_0

    .line 223
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    .line 211
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0109

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 214
    :sswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0111

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 217
    :sswitch_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0101

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 220
    :sswitch_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0119

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 209
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
    .line 72
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

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
    .line 77
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 78
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    packed-switch p2, :pswitch_data_0

    .line 129
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    :pswitch_0
    return-object v0

    .line 80
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    const v1, 0x7f0200c9

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 83
    :pswitch_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d008c

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 87
    :pswitch_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d005c

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 91
    :pswitch_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d006e

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 95
    :pswitch_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d0087

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 99
    :pswitch_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d007c

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 103
    :pswitch_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d0073

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 107
    :pswitch_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d0061

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 111
    :pswitch_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d0091

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 115
    :pswitch_a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d00b0

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 122
    :pswitch_b
    const v1, 0x7f020020

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 124
    :pswitch_c
    const v1, 0x7f020043

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x7f0200c6
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_3
        :pswitch_b
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_0
        :pswitch_b
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_c
    .end packed-switch
.end method

.method public getDrawableId(I)I
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 134
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    const-string v0, "skin-xperia-blue"

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
    .line 54
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaBlue;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getStyleId(I)I
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 139
    return p1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method
