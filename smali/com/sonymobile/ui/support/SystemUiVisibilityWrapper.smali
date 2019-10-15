.class public Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
.super Ljava/lang/Object;
.source "SystemUiVisibilityWrapper.java"


# static fields
.field private static final SOMC_EXTENSION_MASK:I

.field private static final SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS:I

.field private static final SYSTEM_UI_FLAG_LIGHT:I

.field private static final SYSTEM_UI_FLAG_ROUNDED_CORNERS:I

.field private static final SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION:I

.field private static final SYSTEM_UI_FLAG_TRANSPARENT:I


# instance fields
.field private mChangedMask:I

.field private mSystemUiVisibility:I

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION"

    invoke-static {v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION:I

    .line 108
    const-string v0, "SYSTEM_UI_FLAG_TRANSPARENT"

    invoke-static {v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_TRANSPARENT:I

    .line 109
    const-string v0, "SYSTEM_UI_FLAG_ROUNDED_CORNERS"

    invoke-static {v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_ROUNDED_CORNERS:I

    .line 111
    const-string v0, "SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS"

    invoke-static {v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS:I

    .line 113
    const-string v0, "SYSTEM_UI_FLAG_LIGHT"

    invoke-static {v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_LIGHT:I

    .line 115
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION:I

    sget v1, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_TRANSPARENT:I

    or-int/2addr v0, v1

    sget v1, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_ROUNDED_CORNERS:I

    or-int/2addr v0, v1

    sget v1, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS:I

    or-int/2addr v0, v1

    sget v1, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_LIGHT:I

    or-int/2addr v0, v1

    sput v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SOMC_EXTENSION_MASK:I

    .line 120
    return-void
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mChangedMask:I

    .line 144
    iput-object p1, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mView:Landroid/view/View;

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    iput v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mSystemUiVisibility:I

    .line 146
    return-void
.end method

.method private getFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getValue(Ljava/lang/String;)I
    .locals 2
    .param p0, "field"    # Ljava/lang/String;

    .prologue
    .line 130
    :try_start_0
    const-class v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 135
    :goto_0
    return v0

    .line 133
    :catch_0
    move-exception v0

    .line 135
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    goto :goto_1

    .line 131
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public static newInstance(Landroid/view/View;)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 164
    new-instance v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;

    invoke-direct {v0, p0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method private setFlag(IZ)V
    .locals 2
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .prologue
    .line 189
    if-eqz p2, :cond_0

    .line 190
    iget v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mSystemUiVisibility:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mSystemUiVisibility:I

    .line 196
    :goto_0
    iget v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mChangedMask:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mChangedMask:I

    .line 197
    return-void

    .line 192
    :cond_0
    iget v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mSystemUiVisibility:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mSystemUiVisibility:I

    goto :goto_0
.end method


# virtual methods
.method public apply()V
    .locals 4

    .prologue
    .line 172
    iget-object v2, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 173
    .local v1, "oldVisibility":I
    iget v2, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mSystemUiVisibility:I

    iget v3, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mChangedMask:I

    and-int/2addr v2, v3

    iget v3, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mChangedMask:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v1

    or-int v0, v2, v3

    .line 176
    .local v0, "newVisibility":I
    iget-object v2, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 179
    const/4 v2, 0x0

    iput v2, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mChangedMask:I

    .line 180
    return-void
.end method

.method public getLightBackground()Z
    .locals 1

    .prologue
    .line 392
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_LIGHT:I

    invoke-direct {p0, v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public getRoundedCorners()Z
    .locals 1

    .prologue
    .line 415
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_ROUNDED_CORNERS:I

    invoke-direct {p0, v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS:I

    invoke-direct {p0, v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getFlag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuppressNavigationBar()Z
    .locals 1

    .prologue
    .line 366
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION:I

    invoke-direct {p0, v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public getSystemUiVisibility()I
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    sget v1, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SOMC_EXTENSION_MASK:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method

.method public getTranslucentBackground()Z
    .locals 1

    .prologue
    .line 379
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_TRANSPARENT:I

    invoke-direct {p0, v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public getVisibilityFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 353
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SOMC_EXTENSION_MASK:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    invoke-direct {p0, v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->getFlag(I)Z

    move-result v0

    return v0
.end method

.method public setLightBackground(Z)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 293
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_LIGHT:I

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setFlag(IZ)V

    .line 294
    return-object p0
.end method

.method public setRoundedCorners(Z)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 317
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_ROUNDED_CORNERS:I

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setFlag(IZ)V

    .line 318
    sget v1, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_DISABLE_ROUNDED_CORNERS:I

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setFlag(IZ)V

    .line 319
    return-object p0

    .line 318
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSuppressNavigationBar(Z)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 260
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION:I

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setFlag(IZ)V

    .line 261
    return-object p0
.end method

.method public setSystemUiVisibility(I)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    .line 224
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SOMC_EXTENSION_MASK:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    iget v1, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mSystemUiVisibility:I

    sget v2, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SOMC_EXTENSION_MASK:I

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mSystemUiVisibility:I

    .line 228
    iget v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mChangedMask:I

    sget v1, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SOMC_EXTENSION_MASK:I

    xor-int/lit8 v1, v1, -0x1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->mChangedMask:I

    .line 230
    return-object p0
.end method

.method public setTranslucentBackground(Z)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 276
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_TRANSPARENT:I

    invoke-direct {p0, v0, p1}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setFlag(IZ)V

    .line 277
    return-object p0
.end method

.method public setVisibilityFlag(IZ)Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;
    .locals 1
    .param p1, "flag"    # I
    .param p2, "value"    # Z

    .prologue
    .line 246
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SOMC_EXTENSION_MASK:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p1

    invoke-direct {p0, v0, p2}, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->setFlag(IZ)V

    .line 247
    return-object p0
.end method

.method public supportsLightBackground()Z
    .locals 1

    .prologue
    .line 446
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_LIGHT:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsRoundedCorners()Z
    .locals 1

    .prologue
    .line 456
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_ROUNDED_CORNERS:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsSuppressNavigationBar()Z
    .locals 1

    .prologue
    .line 426
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_SUPPRESS_NAVIGATION:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsTranslucentBackground()Z
    .locals 1

    .prologue
    .line 436
    sget v0, Lcom/sonymobile/ui/support/SystemUiVisibilityWrapper;->SYSTEM_UI_FLAG_TRANSPARENT:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
