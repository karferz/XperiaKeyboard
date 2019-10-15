.class public final Lcom/sonyericsson/textinput/uxp/util/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field private static final NINE_PATCH_SUFFIX:Ljava/lang/String; = ".9.png"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static calculateDestinationRect(IIII)Landroid/graphics/Rect;
    .locals 5
    .param p0, "srcWidth"    # I
    .param p1, "srcHeight"    # I
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I

    .prologue
    const/4 v4, 0x0

    .line 148
    int-to-float v2, p0

    int-to-float v3, p1

    div-float v1, v2, v3

    .line 149
    .local v1, "srcAspect":F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float v0, v2, v3

    .line 151
    .local v0, "dstAspect":F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 152
    new-instance v2, Landroid/graphics/Rect;

    int-to-float v3, p2

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-direct {v2, v4, v4, p2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 154
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    int-to-float v3, p3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-direct {v2, v4, v4, v3, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0
.end method

.method public static calculateSampleSize(IIII)I
    .locals 4
    .param p0, "srcWidth"    # I
    .param p1, "srcHeight"    # I
    .param p2, "dstWidth"    # I
    .param p3, "dstHeight"    # I

    .prologue
    .line 171
    int-to-float v2, p0

    int-to-float v3, p1

    div-float v1, v2, v3

    .line 172
    .local v1, "srcAspect":F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float v0, v2, v3

    .line 174
    .local v0, "dstAspect":F
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    .line 175
    div-int v2, p1, p3

    .line 177
    :goto_0
    return v2

    :cond_0
    div-int v2, p0, p2

    goto :goto_0
.end method

.method public static createBlurBitmap(Landroid/content/Context;III)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "resourceId"    # I
    .param p2, "blurRadius"    # I
    .param p3, "inSampleSize"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 93
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 94
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    iput p3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 97
    .local v3, "originalBitmap":Landroid/graphics/Bitmap;
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v4

    .line 98
    .local v4, "renderScript":Landroid/renderscript/RenderScript;
    if-nez v4, :cond_0

    .line 99
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Failed to create RenderScript"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 101
    :cond_0
    invoke-static {v4, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 104
    .local v2, "originalAllocation":Landroid/renderscript/Allocation;
    invoke-static {v4}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    .line 103
    invoke-static {v4, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    .line 105
    .local v0, "blurScript":Landroid/renderscript/ScriptIntrinsicBlur;
    int-to-float v6, p2

    invoke-virtual {v0, v6}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 106
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 108
    invoke-static {v4, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v5

    .line 110
    .local v5, "resultAlloc":Landroid/renderscript/Allocation;
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 111
    invoke-virtual {v5, v3}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 112
    invoke-virtual {v4}, Landroid/renderscript/RenderScript;->destroy()V

    .line 113
    return-object v3
.end method

.method public static createScaledBitmap(Landroid/content/res/Resources;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "dstWidth"    # I
    .param p2, "resourceId"    # I

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 191
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 192
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v6, 0x1

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 193
    invoke-static {p0, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 196
    int-to-float v6, p1

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 198
    .local v5, "widthRatio":F
    cmpg-float v6, v5, v8

    if-gez v6, :cond_0

    move v1, p1

    .line 199
    .local v1, "imageWidth":I
    :goto_0
    cmpg-float v6, v5, v8

    if-gez v6, :cond_1

    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, v5

    float-to-int v0, v6

    .line 202
    .local v0, "imageHeight":I
    :goto_1
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v6, v7, v1, v0}, Lcom/sonyericsson/textinput/uxp/util/BitmapUtil;->calculateSampleSize(IIII)I

    move-result v6

    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 207
    const/4 v6, 0x0

    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 208
    invoke-static {p0, p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 212
    .local v4, "unscaledSampleSizedBitmap":Landroid/graphics/Bitmap;
    invoke-static {v4, v1, v0}, Lcom/sonyericsson/textinput/uxp/util/BitmapUtil;->createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 214
    .local v3, "scaledBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 215
    return-object v3

    .line 198
    .end local v0    # "imageHeight":I
    .end local v1    # "imageWidth":I
    .end local v3    # "scaledBitmap":Landroid/graphics/Bitmap;
    .end local v4    # "unscaledSampleSizedBitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_0

    .line 199
    .restart local v1    # "imageWidth":I
    :cond_1
    iget v0, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    goto :goto_1
.end method

.method public static createScaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "unscaledBitmap"    # Landroid/graphics/Bitmap;
    .param p1, "dstWidth"    # I
    .param p2, "dstHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 125
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 126
    .local v3, "srcRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 127
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 126
    invoke-static {v4, v5, p1, p2}, Lcom/sonyericsson/textinput/uxp/util/BitmapUtil;->calculateDestinationRect(IIII)Landroid/graphics/Rect;

    move-result-object v1

    .line 128
    .local v1, "dstRect":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 130
    .local v2, "scaledBitmap":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 131
    .local v0, "canvas":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v0, p0, v3, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 133
    return-object v2
.end method

.method public static getImageSize(Landroid/content/res/Resources;I)Landroid/util/Pair;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .prologue
    .line 227
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 228
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 229
    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 230
    new-instance v1, Landroid/util/Pair;

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static isBitmap(Landroid/content/res/Resources;I)Z
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .prologue
    .line 241
    invoke-static {p0, p1}, Lcom/sonyericsson/textinput/uxp/util/BitmapUtil;->getImageSize(Landroid/content/res/Resources;I)Landroid/util/Pair;

    move-result-object v2

    .line 242
    .local v2, "size":Landroid/util/Pair;
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 243
    .local v1, "imageWidth":I
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 244
    .local v0, "imageHeight":I
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isNinePatch(Landroid/content/res/Resources;I)Z
    .locals 3
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .prologue
    .line 76
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 77
    .local v0, "value":Landroid/util/TypedValue;
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 78
    iget-object v1, v0, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".9.png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static splitBitmap(Landroid/graphics/Bitmap;)[Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v0, v1, 0x2

    .line 43
    .local v0, "width":I
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v0}, Lcom/sonyericsson/textinput/uxp/util/BitmapUtil;->splitBitmap(Landroid/graphics/Bitmap;III)[Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public static splitBitmap(Landroid/graphics/Bitmap;III)[Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "leftStart"    # I
    .param p2, "rightStart"    # I
    .param p3, "splitWidth"    # I

    .prologue
    const/4 v3, 0x0

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 58
    invoke-static {p0, p1, v3, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 61
    .local v0, "leftBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 60
    invoke-static {p0, p2, v3, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 62
    .local v1, "rightBitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/Bitmap;

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2
.end method
