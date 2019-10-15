.class public Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;
.super Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;
.source "AnalyticsTracker.java"


# static fields
.field private static final DELIMITER_STRING:Ljava/lang/String; = ":"


# direct methods
.method public constructor <init>(Lcom/sonyericsson/textinput/uxp/TextInputApplication;)V
    .locals 0
    .param p1, "application"    # Lcom/sonyericsson/textinput/uxp/TextInputApplication;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AbstractAnalyticsTracker;-><init>(Lcom/sonyericsson/textinput/uxp/TextInputApplication;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSettingsSnapshot(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    return-void
.end method

.method private getCurrentLoginTypeText()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 531
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v2

    .line 532
    .local v2, "settings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudLoginIdToken()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    move-result-object v0

    .line 534
    .local v0, "loginIdToken":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    if-eqz v0, :cond_0

    .line 535
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->getCloudLoginType()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-result-object v1

    .line 539
    .local v1, "loginType":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    :goto_0
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->getUriString(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 537
    .end local v1    # "loginType":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Unknown:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .restart local v1    # "loginType":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    goto :goto_0
.end method

.method private static getIsThemeAffectingKeyboard(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "themeInfo"    # Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 53
    if-nez p0, :cond_0

    .line 54
    const-string v0, "Unknown"

    .line 56
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->isAffectingKeyboard()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getLabelValueFromBoolean(Z)Ljava/lang/String;
    .locals 1
    .param p0, "bool"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 37
    if-eqz p0, :cond_0

    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->ACTIVE:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 38
    :goto_0
    return-object v0

    .line 37
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->DEACTIVATED:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    .line 38
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->getStatus()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSkinBackgroundType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "skinName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 544
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSkin(Ljava/lang/String;Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;

    move-result-object v1

    .line 545
    .local v1, "skin":Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
    const v2, 0x7f0200c6

    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 546
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindSkin(Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;)V

    .line 547
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getThemeId(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "themeInfo"    # Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    :cond_0
    const-string v0, "Unknown"

    .line 48
    :goto_0
    return-object v0

    .line 46
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->getVersionCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 48
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private pushAutomaticSpaceEnabledEvent(ZLjava/lang/String;)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 352
    const-string v0, "AutomaticSpace"

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getLabelValueFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method private pushBackupAndSyncEnabledEvent(ZLjava/lang/String;)V
    .locals 3
    .param p1, "active"    # Z
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    if-eqz p1, :cond_0

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->ACTIVE:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    .line 109
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "label":Ljava/lang/String;
    :goto_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->LOGIN_TYPE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getCurrentLoginTypeText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushCustomDimension(Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;Ljava/lang/String;)V

    .line 112
    const-string v1, "BackupAndSync"

    invoke-virtual {p0, p2, v1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void

    .line 109
    .end local v0    # "label":Ljava/lang/String;
    :cond_0
    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->DEACTIVATED:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    .line 110
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->getStatus()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private pushFloatingKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "floatingKeyboardType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 70
    const-string v0, "FloatingKeyboard"

    invoke-virtual {p0, p2, v0, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private pushGestureInputEnabledEvent(ZLjava/lang/String;)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 238
    const-string v0, "GestureInput"

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getLabelValueFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method private pushGoogleVoiceEnabledEvent(ZLjava/lang/String;)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 252
    const-string v0, "VoiceInput"

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getLabelValueFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void
.end method

.method private pushKeyPreviewEnabledEvent(ZLjava/lang/String;)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 394
    const-string v0, "KeyPreviewOnKeyPress"

    .line 395
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getLabelValueFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    .line 394
    invoke-virtual {p0, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method private pushKeyboardHeightEvent(ILjava/lang/String;)V
    .locals 12
    .param p1, "height"    # I
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 399
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900e9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 401
    .local v4, "maxChangePx":I
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v9}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v7

    .line 403
    .local v7, "settings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-static {v9}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createCustomization(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    move-result-object v0

    .line 404
    .local v0, "customization":Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 405
    invoke-static {v9, v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createDefaultResourceLookupProvider(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;)Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;

    move-result-object v3

    .line 406
    .local v3, "lookupProvider":Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;
    iget-object v9, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 407
    invoke-interface {v7}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getInputMethod()Ljava/lang/String;

    move-result-object v10

    .line 408
    invoke-interface {v7}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isNumericKeysEnabled()Z

    move-result v11

    .line 407
    invoke-static {v9, v3, v10, v11}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSizeAndScaleProvider(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;Ljava/lang/String;Z)Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;

    move-result-object v8

    .line 409
    .local v8, "sizeAndScaleProvider":Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;
    invoke-virtual {v8}, Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;->getDefaultKeyboardHeightPx()I

    move-result v1

    .line 410
    .local v1, "defaultHeightPx":I
    add-int v5, v1, v4

    .line 411
    .local v5, "maxHeightPx":I
    sub-int v6, v1, v4

    .line 413
    .local v6, "minHeightPx":I
    if-ne p1, v5, :cond_0

    .line 414
    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->MAX:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    .line 424
    .local v2, "label":Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;
    :goto_0
    const-string v9, "KeyboardHeight"

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->getLabel()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p2, v9, v10}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-static {v8}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindSizeAndScaleProvider(Lcom/sonyericsson/textinput/uxp/controller/SizeAndScaleProvider;)V

    .line 428
    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindResourceLookupProvider(Lcom/sonyericsson/textinput/uxp/controller/ResourceLookupProvider;)V

    .line 429
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindCustomization(Lcom/sonyericsson/textinput/uxp/model/settings/Customization;)V

    .line 430
    return-void

    .line 415
    .end local v2    # "label":Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;
    :cond_0
    if-le p1, v1, :cond_1

    .line 416
    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->LARGER:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    .restart local v2    # "label":Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;
    goto :goto_0

    .line 417
    .end local v2    # "label":Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;
    :cond_1
    if-ne p1, v1, :cond_2

    .line 418
    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->DEFAULT:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    .restart local v2    # "label":Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;
    goto :goto_0

    .line 419
    .end local v2    # "label":Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;
    :cond_2
    if-le p1, v6, :cond_3

    .line 420
    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->SMALLER:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    .restart local v2    # "label":Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;
    goto :goto_0

    .line 422
    .end local v2    # "label":Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;
    :cond_3
    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->MIN:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    .restart local v2    # "label":Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;
    goto :goto_0
.end method

.method private pushNbrOfActiveBackupDevicesEvent(ILjava/lang/String;)V
    .locals 2
    .param p1, "nbr"    # I
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 190
    if-lez p1, :cond_0

    .line 191
    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->LOGIN_TYPE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getCurrentLoginTypeText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushCustomDimension(Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;Ljava/lang/String;)V

    .line 192
    const-string v0, "NumberOfSyncedDevices"

    .line 193
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 192
    invoke-virtual {p0, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_0
    return-void
.end method

.method private pushNumericRowEnabledEvent(ZLjava/lang/String;)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 295
    const-string v0, "NumericRow"

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getLabelValueFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method private pushOneHandedEnabledEvent(ZLjava/lang/String;)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 266
    const-string v0, "OneHandedKeyboard"

    .line 267
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getLabelValueFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {p0, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method private pushPeriodAndCommaEnabledEvent(ZLjava/lang/String;)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 323
    const-string v0, "PeriodAndComma"

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getLabelValueFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method private pushPortraitKeyboardLayoutEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    const-string v0, "PortraitKeyboard"

    invoke-virtual {p0, p2, v0, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method private pushQuickPeriodEnabledEvent(ZLjava/lang/String;)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 337
    const-string v0, "QuickPeriod"

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getLabelValueFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method private pushSecondaryPrintsEnabledEvent(ZLjava/lang/String;)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 281
    const-string v0, "SymbolsOnLongPress"

    .line 282
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getLabelValueFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {p0, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method private pushSettingsSnapshot(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 3
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 504
    const-string v0, "SnapshotSettings"

    .line 505
    .local v0, "category":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getFloatingKeyboardType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushFloatingKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    :cond_0
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPortraitKeyboard()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushPortraitKeyboardLayoutEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushBackupAndSyncEnabledEvent(ZLjava/lang/String;)V

    .line 510
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSoftwareKeyboardPrediction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushWordSuggestionEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getKeyboardSkin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSkinManualSelectedEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSmartLanguageDetection()Z

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSmartLanguageDetectionEnabledEvent(ZLjava/lang/String;)V

    .line 513
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isTraceEnabled()Z

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushGestureInputEnabledEvent(ZLjava/lang/String;)V

    .line 514
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isVoiceInputEnabled()Z

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushGoogleVoiceEnabledEvent(ZLjava/lang/String;)V

    .line 515
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isOneHandedKeyboard()Z

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushOneHandedEnabledEvent(ZLjava/lang/String;)V

    .line 516
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSecondaryPrintsEnabled()Z

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSecondaryPrintsEnabledEvent(ZLjava/lang/String;)V

    .line 517
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isNumericKeysEnabled()Z

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushNumericRowEnabledEvent(ZLjava/lang/String;)V

    .line 518
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSmileyKeyEnabled()Z

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSmileyKeyEnabledEvent(ZLjava/lang/String;)V

    .line 519
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isPeriodAndCommaKeysEnabled()Z

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushPeriodAndCommaEnabledEvent(ZLjava/lang/String;)V

    .line 520
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isPredictionAutoReplaceEnabled()Z

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushQuickPeriodEnabledEvent(ZLjava/lang/String;)V

    .line 521
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isCandidateSelectionAutoSpaceEnabled()Z

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushAutomaticSpaceEnabledEvent(ZLjava/lang/String;)V

    .line 522
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isTactileFeedbackEnabled()Z

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushVibrationEnabledEvent(ZLjava/lang/String;)V

    .line 523
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSoundFeedbackEnabled()Z

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSoundEnabledEvent(ZLjava/lang/String;)V

    .line 524
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isKeyPreviewEnabled()Z

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushKeyPreviewEnabledEvent(ZLjava/lang/String;)V

    .line 525
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getKeyboardResizeHeightPxCurrent()I

    move-result v1

    const-string v2, "SnapshotSettings"

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushKeyboardHeightEvent(ILjava/lang/String;)V

    .line 526
    return-void
.end method

.method private pushSkinManualSelectedEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    .line 143
    .local v0, "settings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCurrentThemeInfo()Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    move-result-object v1

    .line 144
    .local v1, "themeInfo":Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->THEME_ID:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getThemeId(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushCustomDimension(Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;Ljava/lang/String;)V

    .line 145
    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->IS_THEME_AFFECTING_KEYBOARD:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    .line 146
    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getIsThemeAffectingKeyboard(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;)Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushCustomDimension(Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;Ljava/lang/String;)V

    .line 147
    sget-object v2, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->THEME_BACKGROUND_TYPE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    .line 148
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getSkinBackgroundType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushCustomDimension(Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;Ljava/lang/String;)V

    .line 149
    const-string v2, "SkinSelected"

    invoke-virtual {p0, p2, v2, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method private pushSmartLanguageDetectionEnabledEvent(ZLjava/lang/String;)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 223
    const-string v0, "SmartLanguageDetection"

    .line 224
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getLabelValueFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {p0, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
.end method

.method private pushSmileyKeyEnabledEvent(ZLjava/lang/String;)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 309
    const-string v0, "SmileyKey"

    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getLabelValueFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    return-void
.end method

.method private pushSoundEnabledEvent(ZLjava/lang/String;)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 380
    const-string v0, "SoundOnKeyPress"

    .line 381
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getLabelValueFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-virtual {p0, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private pushVibrationEnabledEvent(ZLjava/lang/String;)V
    .locals 2
    .param p1, "active"    # Z
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 366
    const-string v0, "VibrationOnKeyPress"

    .line 367
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getLabelValueFromBoolean(Z)Ljava/lang/String;

    move-result-object v1

    .line 366
    invoke-virtual {p0, p2, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method private pushWordSuggestionEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "category"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 127
    const-string v0, "WordSuggestion"

    invoke-virtual {p0, p2, v0, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    return-void
.end method


# virtual methods
.method public pushAutomaticSpaceEnabledEvent(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 347
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushAutomaticSpaceEnabledEvent(ZLjava/lang/String;)V

    .line 348
    return-void
.end method

.method public pushBackupAndSyncEnabledEvent(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 103
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushBackupAndSyncEnabledEvent(ZLjava/lang/String;)V

    .line 104
    return-void
.end method

.method public pushDictionaryJsonRefreashed(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 449
    const-string v0, "Warnings"

    const-string v1, "DictionariesRefreshed"

    invoke-virtual {p0, v0, v1, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-void
.end method

.method public pushFloatingKeyboardEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "floatingKeyboardType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 65
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushFloatingKeyboardEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public pushGestureInputEnabledEvent(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 233
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushGestureInputEnabledEvent(ZLjava/lang/String;)V

    .line 234
    return-void
.end method

.method public pushGoogleVoiceEnabledEvent(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 248
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushGoogleVoiceEnabledEvent(ZLjava/lang/String;)V

    .line 249
    return-void
.end method

.method public pushKeyPressModelCleared(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 439
    const-string v0, "Warnings"

    const-string v1, "KeyPressModelCleared"

    invoke-virtual {p0, v0, v1, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public pushKeyPreviewEnabledEvent(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 390
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushKeyPreviewEnabledEvent(ZLjava/lang/String;)V

    .line 391
    return-void
.end method

.method public pushKeyboardHeightPickerLaunchedEvent(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;)V
    .locals 3
    .param p1, "label"    # Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 476
    const-string v0, "Settings"

    const-string v1, "KeyboardHeightOpened"

    .line 477
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 476
    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method public pushLearnedWordsFromSourceEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "sourceLabel"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 175
    const-string v1, "Settings"

    const-string v2, "LearnWritingStyle"

    const-wide/16 v4, 0x1

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 177
    return-void
.end method

.method public pushMyWordsOpenedEvent(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelMyWordsOrigin;)V
    .locals 3
    .param p1, "label"    # Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelMyWordsOrigin;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    const-string v0, "Settings"

    const-string v1, "MyWords"

    .line 80
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelMyWordsOrigin;->getOrigin()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public pushNbrOfActiveBackupDevicesEvent(I)V
    .locals 1
    .param p1, "nbr"    # I

    .prologue
    .line 185
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushNbrOfActiveBackupDevicesEvent(ILjava/lang/String;)V

    .line 186
    return-void
.end method

.method public pushNumericRowEnabledEvent(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 291
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushNumericRowEnabledEvent(ZLjava/lang/String;)V

    .line 292
    return-void
.end method

.method public pushOneHandedEnabledEvent(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 262
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushOneHandedEnabledEvent(ZLjava/lang/String;)V

    .line 263
    return-void
.end method

.method public pushPeriodAndCommaEnabledEvent(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 318
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushPeriodAndCommaEnabledEvent(ZLjava/lang/String;)V

    .line 319
    return-void
.end method

.method public pushPortraitKeyboardLayoutEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 89
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushPortraitKeyboardLayoutEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public pushQuickPeriodEnabledEvent(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 333
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushQuickPeriodEnabledEvent(ZLjava/lang/String;)V

    .line 334
    return-void
.end method

.method public pushSecondaryPrintsEnabledEvent(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 276
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSecondaryPrintsEnabledEvent(ZLjava/lang/String;)V

    .line 277
    return-void
.end method

.method public pushSettingsButtonUsed(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;)V
    .locals 3
    .param p1, "buttonUsed"    # Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 461
    const-string v0, "Settings"

    const-string v1, "SettingsButtonUsed"

    .line 462
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public pushSettingsOpenedEvent(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsOpened;)V
    .locals 3
    .param p1, "label"    # Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsOpened;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 208
    const-string v0, "Settings"

    const-string v1, "SettingsOpened"

    .line 209
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsOpened;->getLabel()Ljava/lang/String;

    move-result-object v2

    .line 208
    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public pushSettingsSnapshot()V
    .locals 1

    .prologue
    .line 486
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker$1;-><init>(Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;)V

    invoke-virtual {p0, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getNumberOfDaysBetweenSnapshot(Lcom/sonyericsson/textinput/uxp/tracker/OnContainerDataListener;)V

    .line 501
    return-void
.end method

.method public pushSkinAutoSelectedOnThemeChange(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;)V
    .locals 2
    .param p1, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "newThemeInfo"    # Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->THEME_ID:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getThemeId(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushCustomDimension(Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;Ljava/lang/String;)V

    .line 161
    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->IS_THEME_AFFECTING_KEYBOARD:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    .line 162
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getIsThemeAffectingKeyboard(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;)Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushCustomDimension(Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;Ljava/lang/String;)V

    .line 163
    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;->THEME_BACKGROUND_TYPE:Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;

    .line 164
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->getSkinBackgroundType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushCustomDimension(Lcom/sonyericsson/textinput/uxp/tracker/CustomDimensionEnum;Ljava/lang/String;)V

    .line 165
    const-string v0, "Settings"

    const-string v1, "SkinAutoSelected"

    invoke-virtual {p0, v0, v1, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public pushSkinManualSelectedEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 137
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSkinManualSelectedEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public pushSmartLanguageDetectionEnabledEvent(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 218
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSmartLanguageDetectionEnabledEvent(ZLjava/lang/String;)V

    .line 219
    return-void
.end method

.method public pushSmileyKeyEnabledEvent(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 305
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSmileyKeyEnabledEvent(ZLjava/lang/String;)V

    .line 306
    return-void
.end method

.method public pushSoundEnabledEvent(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 376
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSoundEnabledEvent(ZLjava/lang/String;)V

    .line 377
    return-void
.end method

.method public pushVibrationEnabledEvent(Z)V
    .locals 1
    .param p1, "active"    # Z

    .prologue
    .line 362
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushVibrationEnabledEvent(ZLjava/lang/String;)V

    .line 363
    return-void
.end method

.method public pushWordSuggestionEvent(Ljava/lang/String;)V
    .locals 1
    .param p1, "label"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 122
    const-string v0, "Settings"

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushWordSuggestionEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method
