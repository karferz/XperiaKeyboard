.class public final Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;
.super Ljava/lang/Object;
.source "EnvironmentUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils$AccentColorResourceIdentifier;
    }
.end annotation


# static fields
.field private static final ACCENT_BRIGHTNESS_THRESHOLD:F = 0.6f

.field private static final CTA_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.cta"

.field private static final DEBUG:Z = false

.field private static final GMAIL_READER_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.gmailreaderservice"

.field public static final GOOGLE_VOICE_INPUT_ID:Ljava/lang/String; = "com.google.android.googlequicksearchbox/com.google.android.voicesearch.ime.VoiceInputMethodService"

.field public static final HANDWRITING_INPUT_ID:Ljava/lang/String; = "com.sonymobile.android.handwriting/.HandwritingInputMethodService"

.field public static final ONE_MEGA_BYTE:I = 0x100000

.field public static final ORIENTATION_LANDSCAPE:Ljava/lang/String; = "landscape"

.field public static final ORIENTATION_PORTRAIT:Ljava/lang/String; = "portrait"

.field public static final ORIENTATION_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final SMALLEST_LARGE_PHONE_WIDTH_DENSITY:I = 0x168

.field private static final SMALLEST_LARGE_TABLET_WIDTH_DENSITY:I = 0x2d0

.field private static final SMALLEST_PHONE_TABLET_WIDTH_DENSITY:I = 0x1e0

.field private static final SMALLEST_TABLET_WIDTH_DENSITY:I = 0x258

.field private static final TAG:Ljava/lang/String;

.field private static sIsFlagEmojiSupported:Ljava/lang/Boolean;

.field private static sIsUnicode8EmojiSupported:Ljava/lang/Boolean;

.field private static sIsUnicode9EmojiSupported:Ljava/lang/Boolean;

.field private static sIsZwjSequencesSupported:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->TAG:Ljava/lang/String;

    .line 69
    sput-object v2, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode8EmojiSupported:Ljava/lang/Boolean;

    .line 70
    sput-object v2, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsZwjSequencesSupported:Ljava/lang/Boolean;

    .line 71
    sput-object v2, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode9EmojiSupported:Ljava/lang/Boolean;

    .line 72
    sput-object v2, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsFlagEmojiSupported:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public static allowedToConnectToNetwork(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 491
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isChineseMarketDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static allowedToLearnWritingStyle(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 338
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isChineseMarketDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasGmailReaderService(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isRestrictedProfile(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getAccentColor(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resourceName"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v0, -0x1

    .line 79
    .local v0, "accentColor":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 80
    .local v2, "res":Landroid/content/res/Resources;
    const-string v4, "color"

    const-string v5, "com.sonyericsson.uxp"

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 82
    .local v1, "colorResId":I
    if-eqz v1, :cond_0

    .line 84
    :try_start_0
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 92
    :cond_0
    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    const/high16 v4, -0x1000000

    if-ne v0, v4, :cond_3

    :cond_1
    const/4 v3, 0x1

    .line 93
    .local v3, "useDefaultColor":Z
    :goto_1
    if-eqz v3, :cond_2

    const v4, 0x7f0d0001

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    .end local v0    # "accentColor":I
    :cond_2
    return v0

    .line 92
    .end local v3    # "useDefaultColor":Z
    .restart local v0    # "accentColor":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 85
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static getAvailableRamMegs(Landroid/content/Context;)J
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 544
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 545
    .local v1, "mi":Landroid/app/ActivityManager$MemoryInfo;
    const-string v2, "activity"

    .line 546
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 547
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 549
    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    return-wide v2
.end method

.method private static getBrightnessSafeAccentColor(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeAccentColor"    # I

    .prologue
    .line 587
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 588
    .local v0, "hsv":[F
    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 589
    const/4 v1, 0x2

    aget v1, v0, v1

    const v2, 0x3f19999a    # 0.6f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 591
    const/high16 v1, 0x7f0d0000

    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    .line 593
    .end local p1    # "themeAccentColor":I
    :cond_0
    return p1
.end method

.method public static getColorAccent(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 582
    const v1, 0x1010435

    invoke-static {p0, v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getMaterialDesignColor(Landroid/content/Context;I)I

    move-result v0

    .line 583
    .local v0, "color":I
    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getBrightnessSafeAccentColor(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public static getColorPrimary(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 560
    const v0, 0x1010433

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getMaterialDesignColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getColorPrimaryDark(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 571
    const v0, 0x1010434

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getMaterialDesignColor(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public static getCurrentVersion(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 505
    const/4 v0, 0x0

    .line 507
    .local v0, "currentVersion":I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 508
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v0, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    :goto_0
    return v0

    .line 509
    :catch_0
    move-exception v1

    .line 510
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDarkAccentColor(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    const-string v1, "somc_theme_accent_color_light"

    invoke-static {p0, v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getAccentColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 291
    .local v0, "color":I
    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getBrightnessSafeAccentColor(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method public static getLightAccentColor(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 284
    const-string v1, "somc_theme_accent_color_dark"

    invoke-static {p0, v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getAccentColor(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 286
    .local v0, "color":I
    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getBrightnessSafeAccentColor(Landroid/content/Context;I)I

    move-result v1

    return v1
.end method

.method private static getMaterialDesignColor(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attributeColor"    # I

    .prologue
    const/4 v2, 0x0

    .line 604
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    aput p1, v4, v2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 608
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 609
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 611
    if-nez v0, :cond_0

    .line 614
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v2

    goto :goto_0
.end method

.method public static getOrientation(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 358
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    .line 368
    const-string v0, "unknown"

    .line 372
    .local v0, "orientation":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 360
    .end local v0    # "orientation":Ljava/lang/String;
    :pswitch_0
    const-string v0, "landscape"

    .line 361
    .restart local v0    # "orientation":Ljava/lang/String;
    goto :goto_0

    .line 364
    .end local v0    # "orientation":Ljava/lang/String;
    :pswitch_1
    const-string v0, "portrait"

    .line 365
    .restart local v0    # "orientation":Ljava/lang/String;
    goto :goto_0

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getSmallestScreenWidthDp(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 431
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    return v0
.end method

.method private static hasEnabledInputMethod(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputMethodId"    # Ljava/lang/String;

    .prologue
    .line 242
    const-string v2, "input_method"

    .line 243
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 244
    .local v1, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 245
    .local v0, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    const/4 v2, 0x1

    .line 249
    .end local v0    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static hasGmailReaderService(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    const-string v0, "com.sonymobile.gmailreaderservice"

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPackageInstalledOnDevice(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasGoogleVoiceInputInstalled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 272
    const-string v0, "com.google.android.googlequicksearchbox/com.google.android.voicesearch.ime.VoiceInputMethodService"

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasInstalledInputMethod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasHandwritingInput(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 276
    const-string v0, "com.sonymobile.android.handwriting/.HandwritingInputMethodService"

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasEnabledInputMethod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static hasInstalledInputMethod(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inputMethodId"    # Ljava/lang/String;

    .prologue
    .line 261
    const-string v2, "input_method"

    .line 262
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 263
    .local v1, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 264
    .local v0, "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    const/4 v2, 0x1

    .line 268
    .end local v0    # "inputMethodInfo":Landroid/view/inputmethod/InputMethodInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasNetworkConnection(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 465
    const-string v2, "connectivity"

    .line 466
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 467
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 468
    .local v1, "network":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasSENAccount(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 522
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.sony.snei.np.android.account"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSmsCapabilities(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 495
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasVibrator(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 533
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 534
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    return v1
.end method

.method public static hasVoiceInputEnable(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 280
    const-string v0, "com.google.android.googlequicksearchbox/com.google.android.voicesearch.ime.VoiceInputMethodService"

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasEnabledInputMethod(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasWifiConnection(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 478
    const-string v3, "connectivity"

    .line 479
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 480
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 481
    .local v1, "wifi":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isAppTargetPriorJellybean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 618
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 619
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 621
    .local v2, "targetSdkVersion":I
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_0
    const/16 v4, 0x10

    if-ge v2, v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 623
    :catch_0
    move-exception v0

    .line 624
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isChineseMarketDevice(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    const-string v0, "com.sonymobile.cta"

    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPackageInstalledOnDevice(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDeviceSupporting12Key(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPhoneTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceSupportingFloatingKeyboard(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupportingFloatingMiniKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupportingFloatingSplitKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDeviceSupportingFloatingMiniKeyboard(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 403
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isDeviceSupportingFloatingSplitKeyboard(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 455
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isDeviceSupportingOneHandedKeyboard(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getSmallestScreenWidthDp(Landroid/content/Context;)I

    move-result v0

    .line 419
    .local v0, "smallestWidthDp":I
    const/16 v1, 0x168

    if-lt v0, v1, :cond_0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDirectBootEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 207
    .local v0, "mDPM":Landroid/app/admin/DevicePolicyManager;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDirectBootLocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 218
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 219
    .local v0, "manager":Landroid/os/UserManager;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDirectBootUnlocked(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 229
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 230
    .local v0, "manager":Landroid/os/UserManager;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isFlagEmojiSupported()Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 683
    sget-object v4, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsFlagEmojiSupported:Ljava/lang/Boolean;

    if-nez v4, :cond_0

    .line 684
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 685
    .local v0, "paint":Landroid/graphics/Paint;
    const-string v1, "\ud83c\udde8"

    .line 686
    .local v1, "regionalIndicatorSymbolC":Ljava/lang/String;
    const-string v2, "\ud83c\udded"

    .line 687
    .local v2, "regionalIndicatorSymbolH":Ljava/lang/String;
    const-string v3, "\ud83c\udde8\ud83c\udded"

    .line 688
    .local v3, "switzerlandFlag":Ljava/lang/String;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isMarshmallowOrNewer()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 689
    const-string v4, "\ud83c\udde8\ud83c\udded"

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsFlagEmojiSupported:Ljava/lang/Boolean;

    .line 695
    :cond_0
    :goto_0
    sget-object v4, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsFlagEmojiSupported:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    .line 691
    :cond_1
    const-string v4, "\ud83c\udde8\ud83c\udded"

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x3fa00000    # 1.25f

    const-string v6, "\ud83c\udde8"

    .line 692
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    mul-float/2addr v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    const/4 v4, 0x1

    .line 691
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    sput-object v4, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsFlagEmojiSupported:Ljava/lang/Boolean;

    goto :goto_0

    .line 692
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isLandscape(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 376
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "landscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isLargeTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 128
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getSmallestScreenWidthDp(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLayoutDirectionRtl(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLollipopOrNewer()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 161
    const-class v2, Landroid/os/Build$VERSION_CODES;

    const-string v3, "LOLLIPOP"

    invoke-static {v2, v3}, Lcom/sonyericsson/textinput/uxp/util/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 162
    .local v1, "versionField":Ljava/lang/reflect/Field;
    invoke-static {v4, v4, v1}, Lcom/sonyericsson/textinput/uxp/util/ReflectionUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 163
    .local v0, "version":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isMarshmallowOrNewer()Z
    .locals 2

    .prologue
    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNougatOrNewer()Z
    .locals 2

    .prologue
    .line 183
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOOrNewer()Z
    .locals 2

    .prologue
    .line 193
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPackageInstalledOnDevice(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 312
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 313
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    .line 315
    const/4 v1, 0x1

    .line 322
    .end local v0    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v1

    .line 319
    :catch_0
    move-exception v2

    goto :goto_0

    .line 317
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 151
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPhoneTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhoneTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getSmallestScreenWidthDp(Landroid/content/Context;)I

    move-result v0

    .line 140
    .local v0, "smallestScreenWidthDp":I
    const/16 v1, 0x1e0

    if-lt v0, v1, :cond_0

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPortrait(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 380
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "portrait"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isRestrictedProfile(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 326
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x12

    if-lt v3, v4, :cond_0

    .line 327
    const-string v3, "user"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 328
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v0

    .line 329
    .local v0, "restrictions":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 334
    .end local v0    # "restrictions":Landroid/os/Bundle;
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_0
    :goto_0
    return v2

    .line 332
    .restart local v0    # "restrictions":Landroid/os/Bundle;
    .restart local v1    # "um":Landroid/os/UserManager;
    :cond_1
    const-string v3, "no_modify_accounts"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0
.end method

.method public static isSmallTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getSmallestScreenWidthDp(Landroid/content/Context;)I

    move-result v0

    .line 117
    .local v0, "smallestWidthDp":I
    const/16 v1, 0x258

    if-gt v1, v0, :cond_0

    const/16 v1, 0x2d0

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getSmallestScreenWidthDp(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnicode8EmojiSupported()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 636
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode8EmojiSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 638
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isMarshmallowOrNewer()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const-string v1, "\ud83e\uddc0"

    .line 639
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 638
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode8EmojiSupported:Ljava/lang/Boolean;

    .line 641
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode8EmojiSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 639
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUnicode9EmojiSupported()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 651
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode9EmojiSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 654
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const-string v1, "\ud83e\udd23"

    .line 655
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 654
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode9EmojiSupported:Ljava/lang/Boolean;

    .line 657
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsUnicode9EmojiSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 655
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZwjSequencesSupported()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 667
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsZwjSequencesSupported:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 670
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isMarshmallowOrNewer()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const-string v1, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc69"

    .line 671
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->hasGlyph(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 670
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsZwjSequencesSupported:Ljava/lang/Boolean;

    .line 673
    :cond_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->sIsZwjSequencesSupported:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 671
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
