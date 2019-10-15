.class public Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;
.super Ljava/lang/Object;
.source "SkinXperiaPurple.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple$Factory;
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

.field public static final SKIN_NAME:Ljava/lang/String; = "skin-xperia-purple"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->REQUIRED:[Ljava/lang/Class;

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
    .line 50
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
    .line 42
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 43
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 44
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    .line 46
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 68
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
    .line 185
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->getAccentColor(Landroid/content/Context;I)I

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
    .line 190
    packed-switch p2, :pswitch_data_0

    .line 204
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

    .line 196
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0005

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 201
    :goto_0
    return v0

    .line 198
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0010

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 201
    :pswitch_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00f8

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x7f0f0000
        :pswitch_2
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
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public getBackgroundDrawable(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundType"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    .prologue
    .line 235
    const v0, 0x7f0200c6

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

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
    .line 147
    sparse-switch p1, :sswitch_data_0

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    return v0

    .line 149
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0052

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 151
    :sswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00b3

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 153
    :sswitch_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d001b

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 155
    :sswitch_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0023

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 158
    :sswitch_4
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00d3

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 161
    :sswitch_5
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00cb

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 164
    :sswitch_6
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d003c

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 166
    :sswitch_7
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d00e5

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 168
    :sswitch_8
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0044

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 171
    :sswitch_9
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d000d

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 174
    :sswitch_a
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0035

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 176
    :sswitch_b
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0025

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0

    .line 147
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
    .line 211
    sparse-switch p1, :sswitch_data_0

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    return-object v0

    .line 213
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0094

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 216
    :sswitch_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0114

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 219
    :sswitch_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0104

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 222
    :sswitch_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    const v1, 0x7f0d011c

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    .line 211
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
    .line 73
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

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
    .line 78
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 79
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    packed-switch p2, :pswitch_data_0

    .line 131
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :goto_0
    :pswitch_0
    return-object v0

    .line 81
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    const v1, 0x7f0200cc

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 84
    :pswitch_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d0064

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 88
    :pswitch_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d005f

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 92
    :pswitch_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d0076

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 96
    :pswitch_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d0071

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 100
    :pswitch_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d008f

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 104
    :pswitch_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d008a

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 108
    :pswitch_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d0094

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 112
    :pswitch_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d007f

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 116
    :pswitch_a
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d00b3

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 123
    :pswitch_b
    const v1, 0x7f020020

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 125
    :pswitch_c
    const v1, 0x7f020043

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 79
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
        :pswitch_8
        :pswitch_2
        :pswitch_3
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_b
        :pswitch_0
        :pswitch_b
        :pswitch_9
        :pswitch_6
        :pswitch_7
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
    .line 136
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string v0, "skin-xperia-purple"

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
    .line 55
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinXperiaPurple;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getStyleId(I)I
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 141
    return p1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
