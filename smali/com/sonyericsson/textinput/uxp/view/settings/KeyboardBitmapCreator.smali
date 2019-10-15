.class public Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;
.super Ljava/lang/Object;
.source "KeyboardBitmapCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;,
        Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$CustomKeyboardTemplateInflater;
    }
.end annotation


# static fields
.field private static final DO_DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;

.field private static final TEXT_PERCENTAGE:F = 1.0f


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

.field private final mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mContext:Landroid/content/Context;

    .line 59
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 63
    .local v1, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v4, v7, Landroid/content/res/Configuration;->orientation:I

    .line 64
    .local v4, "orientation":I
    if-ne v4, v10, :cond_0

    .line 66
    iget v6, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 72
    .local v6, "width":I
    :goto_0
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    if-ne v4, v10, :cond_1

    .line 74
    const-string v3, "FALSE"

    .line 80
    .local v3, "numericKeysEnabled":Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$Factory;

    invoke-direct {v2}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider$Factory;-><init>()V

    .line 81
    .local v2, "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    const-string v7, "floating-keyboard-type"

    sget-object v10, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    invoke-virtual {v2, v7, v10}, Lcom/sonyericsson/collaboration/ObjectFactory;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v7, "enable-numeric-keys"

    invoke-virtual {v2, v7, v3}, Lcom/sonyericsson/collaboration/ObjectFactory;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createCustomization(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    move-result-object v0

    .line 87
    .local v0, "customization":Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    invoke-virtual {v2}, Lcom/sonyericsson/collaboration/ObjectFactory;->createInstance()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

    iput-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

    .line 88
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSettings(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v5

    .line 89
    .local v5, "persistentSettings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

    const-class v10, Landroid/content/Context;

    invoke-virtual {v7, p1, v10}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 90
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

    const-class v10, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-virtual {v7, v5, v10}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 91
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

    const-class v10, Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;

    invoke-virtual {v7, v0, v10}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 92
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;->init()V

    .line 94
    new-instance v10, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    const-string v7, "TRUE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    sget-object v12, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_FLOATING_KEYBOARD_TYPE_DOCKED:Ljava/lang/String;

    if-ne v4, v8, :cond_3

    move v7, v8

    :goto_2
    invoke-direct {v10, v11, v9, v12, v7}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;-><init>(ZZLjava/lang/String;Z)V

    iput-object v10, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    .line 97
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    const-class v8, Landroid/content/Context;

    invoke-virtual {v7, p1, v8}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 98
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

    const-class v9, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    invoke-virtual {v7, v8, v9}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 99
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    const-class v8, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-virtual {v7, v5, v8}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 100
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    invoke-virtual {v7}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->init()V

    .line 101
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    invoke-virtual {v7, v6}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->setModifiedKeyboardWidthPx(I)V

    .line 102
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    iget-object v8, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    .line 103
    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getDefaultKeyboardHeightPx()I

    move-result v8

    .line 102
    invoke-virtual {v7, v8}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->setModifiedKeyboardHeightPx(I)V

    .line 104
    iget-object v7, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->modifyTextSizeScaleFactor(F)V

    .line 106
    return-void

    .line 68
    .end local v0    # "customization":Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    .end local v2    # "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    .end local v3    # "numericKeysEnabled":Ljava/lang/String;
    .end local v5    # "persistentSettings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .end local v6    # "width":I
    :cond_0
    iget v6, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .restart local v6    # "width":I
    goto/16 :goto_0

    .line 76
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSettings(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v7

    invoke-interface {v7}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isNumericKeysEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v3, "TRUE"

    .restart local v3    # "numericKeysEnabled":Ljava/lang/String;
    :goto_3
    goto/16 :goto_1

    .end local v3    # "numericKeysEnabled":Ljava/lang/String;
    :cond_2
    const-string v3, "FALSE"

    goto :goto_3

    .restart local v0    # "customization":Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    .restart local v2    # "factory":Lcom/sonyericsson/collaboration/ObjectFactory;
    .restart local v3    # "numericKeysEnabled":Ljava/lang/String;
    .restart local v5    # "persistentSettings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    :cond_3
    move v7, v9

    .line 94
    goto :goto_2
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;)Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mSizeAndScaleProvider:Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;)Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mResourceLookupProvider:Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getKeyboardBitmap(Ljava/lang/String;IILcom/sonyericsson/textinput/uxp/controller/skin/ISkin;ZZLcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;I)Landroid/graphics/Bitmap;
    .locals 10
    .param p1, "language"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "keyboardXMLId"    # I
    .param p3, "keyboardXMLTemplateId"    # I
    .param p4, "skin"    # Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "phonepad"    # Z
    .param p6, "secondaryPrint"    # Z
    .param p7, "settings"    # Lcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8, "sampleSize"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 128
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;-><init>(Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator;Ljava/lang/String;IILcom/sonyericsson/textinput/uxp/controller/skin/ISkin;ZZLcom/sonyericsson/textinput/uxp/model/keyboard/BottomRowSettings;I)V

    .line 129
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/view/settings/KeyboardBitmapCreator$KeyboardData;->getKeyboardBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
