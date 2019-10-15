.class public Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;
.super Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;
.source "SkinThemed.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$Factory;,
        Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;
    }
.end annotation


# static fields
.field private static final BLURRED_KEYBOARD_BACKGROUND_SAMPLE_SIZE:I = 0x8

.field private static final BLUR_RADIUS:I = 0x1

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public static final SKIN_NAME:Ljava/lang/String; = "skin-themed"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEmojiLayers:Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

.field private mNormalLayers:Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private createBackgroundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;
    .locals 3
    .param p1, "backgroundBack"    # Landroid/graphics/drawable/Drawable;
    .param p2, "backgroundFront"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 317
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method private createDarkenedBackgroundDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundBack"    # Landroid/graphics/drawable/Drawable;
    .param p3, "backgroundFront"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 322
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, 0x7f0d0033

    invoke-static {p1, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 324
    .local v0, "backgroundDarken":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object v0, v2, v3

    invoke-direct {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method

.method private createEmojiLayers(Landroid/content/Context;Landroid/content/res/Resources;I)Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I

    .prologue
    .line 268
    const/high16 v3, 0x7f020000

    invoke-static {p1, v3}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 272
    .local v0, "backgroundBack":Landroid/graphics/drawable/Drawable;
    invoke-static {p2, p3}, Lcom/sonyericsson/textinput/uxp/util/BitmapUtil;->isNinePatch(Landroid/content/res/Resources;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {p0, p3}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 273
    invoke-direct {p0, p1, v0, v3}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->createDarkenedBackgroundDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    move-result-object v2

    .line 287
    .local v2, "resultDrawable":Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;
    :goto_0
    return-object v2

    .line 275
    .end local v2    # "resultDrawable":Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;
    :cond_0
    invoke-static {p2, p3}, Lcom/sonyericsson/textinput/uxp/util/BitmapUtil;->isBitmap(Landroid/content/res/Resources;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v3, 0x1

    const/16 v4, 0x8

    .line 280
    invoke-static {p1, p3, v3, v4}, Lcom/sonyericsson/textinput/uxp/util/BitmapUtil;->createBlurBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, p2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 282
    .local v1, "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v3, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;

    invoke-direct {v3, v1}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p1, v0, v3}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->createDarkenedBackgroundDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    move-result-object v2

    .line 284
    .restart local v2    # "resultDrawable":Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;
    goto :goto_0

    .line 285
    .end local v1    # "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "resultDrawable":Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;
    :cond_1
    invoke-virtual {p0, p3}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->createBackgroundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    move-result-object v2

    .restart local v2    # "resultDrawable":Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;
    goto :goto_0
.end method

.method private createNormalLayers(Landroid/content/Context;Landroid/content/res/Resources;I)Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "resourceId"    # I

    .prologue
    .line 293
    const/high16 v4, 0x7f020000

    invoke-static {p1, v4}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 298
    .local v0, "backgroundBack":Landroid/graphics/drawable/Drawable;
    invoke-static {p2, p3}, Lcom/sonyericsson/textinput/uxp/util/BitmapUtil;->isBitmap(Landroid/content/res/Resources;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p2, p3}, Lcom/sonyericsson/textinput/uxp/util/BitmapUtil;->isNinePatch(Landroid/content/res/Resources;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 301
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 302
    .local v3, "metrics":Landroid/util/DisplayMetrics;
    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 303
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 305
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 306
    invoke-static {p2, v4, p3}, Lcom/sonyericsson/textinput/uxp/util/BitmapUtil;->createScaledBitmap(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, p2, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 307
    .local v2, "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;

    invoke-direct {v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/CenterCropDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 312
    .end local v2    # "bitmapDrawable":Landroid/graphics/drawable/Drawable;
    .end local v3    # "metrics":Landroid/util/DisplayMetrics;
    .local v1, "backgroundFront":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->createBackgroundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    move-result-object v4

    return-object v4

    .line 310
    .end local v1    # "backgroundFront":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1    # "backgroundFront":Landroid/graphics/drawable/Drawable;
    goto :goto_0
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
    .line 81
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
    .line 73
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    .line 74
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 75
    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mContext:Landroid/content/Context;

    .line 77
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mEmojiLayers:Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mEmojiLayers:Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;->dispose()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mNormalLayers:Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mNormalLayers:Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;->dispose()V

    .line 105
    :cond_1
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mEmojiLayers:Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    .line 106
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mNormalLayers:Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    .line 107
    return-void
.end method

.method public getAccentColor(I)I
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 186
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->getAccentColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getAccentColor(Landroid/content/Context;I)I
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
        .annotation build Landroid/support/annotation/IdRes;
        .end annotation
    .end param

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 193
    .local v0, "color":I
    packed-switch p2, :pswitch_data_0

    .line 218
    :pswitch_0
    :try_start_0
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown accent color id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :catch_0
    move-exception v1

    .line 221
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mContext:Landroid/content/Context;

    invoke-super {p0, v2, p2}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinClassic;->getAccentColor(Landroid/content/Context;I)I

    move-result v2

    .line 223
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    return v2

    .line 195
    :pswitch_1
    :try_start_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0048

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_1
    move v2, v0

    .line 223
    goto :goto_0

    .line 198
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00f9

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 200
    goto :goto_1

    .line 202
    :pswitch_3
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00a9

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 203
    goto :goto_1

    .line 205
    :pswitch_4
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0053

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 206
    goto :goto_1

    .line 208
    :pswitch_5
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00f4

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 209
    goto :goto_1

    .line 211
    :pswitch_6
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0012

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .line 212
    goto :goto_1

    .line 214
    :pswitch_7
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0011

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 216
    goto :goto_1

    .line 193
    :pswitch_data_0
    .packed-switch 0x7f0f0000
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public getBackgroundDrawable(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "backgroundType"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const v3, 0x7f0200c6

    .line 250
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 251
    .local v1, "resources":Landroid/content/res/Resources;
    const v0, 0x7f0200c6

    .line 252
    .local v0, "resourceId":I
    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;->EMOJI:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    invoke-virtual {p2, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mEmojiLayers:Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    if-nez v2, :cond_0

    .line 254
    invoke-direct {p0, p1, v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->createEmojiLayers(Landroid/content/Context;Landroid/content/res/Resources;I)Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mEmojiLayers:Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mEmojiLayers:Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    .line 261
    :goto_0
    return-object v2

    .line 258
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mNormalLayers:Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    if-nez v2, :cond_2

    .line 259
    invoke-direct {p0, p1, v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->createNormalLayers(Landroid/content/Context;Landroid/content/res/Resources;I)Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mNormalLayers:Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    .line 261
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mNormalLayers:Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed$OuterObjectsLayerDrawable;

    goto :goto_0
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
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
    .line 112
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

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
    .line 117
    invoke-static {p1, p2}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 118
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    packed-switch p2, :pswitch_data_0

    .line 159
    :goto_0
    :pswitch_0
    return-object v0

    .line 120
    :pswitch_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d008b

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d005b

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 128
    :pswitch_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d006d

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 132
    :pswitch_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d0086

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 136
    :pswitch_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d007b

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 140
    :pswitch_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d0072

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 144
    :pswitch_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d0060

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 148
    :pswitch_8
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d0090

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 152
    :pswitch_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0d00af

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x7f0200cd
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_9
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
    .line 166
    .line 168
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 236
    const-string v0, "skin-themed"

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
    .line 86
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/SkinThemed;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getStyleId(I)I
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 175
    return p1
.end method

.method public init()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method
