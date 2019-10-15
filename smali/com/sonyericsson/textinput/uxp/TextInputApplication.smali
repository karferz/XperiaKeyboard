.class public Lcom/sonyericsson/textinput/uxp/TextInputApplication;
.super Landroid/support/multidex/MultiDexApplication;
.source "TextInputApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final ENABLE_STRICT_MODE:Z = false

.field private static final LOW_PRIO_INITIATION_DELAY_MILLIS:I = 0xfa0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnalyticsTracker:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

.field private mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

.field private mDirectBootConfig:Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;

.field private mIsInitialized:Z

.field private mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

.field private mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private mOldConfiguration:Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/TextInputApplication;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->lowPrioInitiation(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    iget-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mIsInitialized:Z

    if-eqz v4, :cond_0

    .line 117
    sget-object v4, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->TAG:Ljava/lang/String;

    const-string v5, "TextInputApplication initializion aborted as already initialized."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 131
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070151

    .line 132
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 131
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    .line 146
    :goto_1
    :try_start_1
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 160
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;->upgrade(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 161
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-static {v4}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->init(Ljava/util/Set;)V

    .line 168
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    .line 169
    .local v2, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/sonyericsson/textinput/uxp/TextInputApplication$1;

    invoke-direct {v4, p0, p1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication$1;-><init>(Lcom/sonyericsson/textinput/uxp/TextInputApplication;Landroid/content/Context;)V

    const-wide/16 v6, 0xfa0

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    new-instance v4, Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;-><init>(Landroid/content/res/Configuration;)V

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mOldConfiguration:Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;

    .line 177
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mIsInitialized:Z

    goto :goto_0

    .line 133
    .end local v2    # "handler":Landroid/os/Handler;
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0

    .line 147
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v0

    .line 151
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 152
    .local v3, "resources":Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 153
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    .line 152
    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 155
    :try_start_2
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->initConstants(Landroid/content/Context;)V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 156
    :catch_2
    move-exception v1

    .line 157
    .local v1, "e2":Landroid/content/res/Resources$NotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Tried updateConfiguration but no effect"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 138
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v1    # "e2":Landroid/content/res/Resources$NotFoundException;
    .end local v3    # "resources":Landroid/content/res/Resources;
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method private lowPrioInitiation(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 191
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->checkAndPerformThemeUpdateActions(Landroid/content/Context;)V

    .line 192
    return-void
.end method

.method private setupStrictMode()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method


# virtual methods
.method public getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mAnalyticsTracker:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;-><init>(Lcom/sonyericsson/textinput/uxp/TextInputApplication;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mAnalyticsTracker:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mAnalyticsTracker:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    return-object v0
.end method

.method public getCustomization()Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    if-nez v0, :cond_0

    .line 246
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createCustomization(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    return-object v0
.end method

.method public getDirectBootConfig()Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mDirectBootConfig:Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mDirectBootConfig:Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mDirectBootConfig:Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;

    return-object v0
.end method

.method public getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    if-nez v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getCustomization()Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    move-result-object v0

    .line 279
    invoke-static {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createLanguageLayoutConfig(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    return-object v0
.end method

.method public getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    .locals 3

    .prologue
    .line 270
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    if-nez v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    .line 272
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v2

    .line 271
    invoke-static {p0, v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createLanguageSettings(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    return-object v0
.end method

.method public getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-nez v0, :cond_0

    .line 253
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSettings(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method public getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;
    .locals 2

    .prologue
    .line 286
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    if-nez v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSwiftKeyLanguagePackHandler(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/support/multidex/MultiDexApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mOldConfiguration:Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;

    if-nez v1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mOldConfiguration:Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;->config:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v0

    .line 73
    .local v0, "configDelta":I
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/res/Configuration;->needNewResources(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->checkAndPerformThemeUpdateActions(Landroid/content/Context;)V

    .line 86
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mOldConfiguration:Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;

    iget-object v1, v1, Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;->locale:Ljava/util/Locale;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->reinitialize()V

    .line 101
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mOldConfiguration:Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;->setAll(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->setupStrictMode()V

    .line 107
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    .line 108
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->init(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onTerminate()V

    .line 215
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mOldConfiguration:Lcom/sonyericsson/textinput/uxp/TextInputApplication$ConfigurationInfo;

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mDirectBootConfig:Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mDirectBootConfig:Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;->onDestroy()V

    .line 218
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mDirectBootConfig:Lcom/sonyericsson/textinput/uxp/model/settings/DirectBootConfig;

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindLanguageSettings(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)V

    .line 222
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindLanguageLayoutConfig(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V

    .line 226
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageLayoutConfig:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindSettings(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 230
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    if-eqz v0, :cond_4

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindSwiftKeyLanguagePackHandler(Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)V

    .line 234
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mSwiftKeyLanguagePackHandler:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    .line 236
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    if-eqz v0, :cond_5

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindCustomization(Lcom/sonyericsson/textinput/uxp/model/settings/Customization;)V

    .line 238
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mCustomization:Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    .line 240
    :cond_5
    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mAnalyticsTracker:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mIsInitialized:Z

    .line 242
    return-void
.end method

.method public setSettings(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 3
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 259
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 262
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindLanguageSettings(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 266
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageLayoutConfig()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSwiftKeyLanguagePackHandler()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;

    move-result-object v2

    .line 265
    invoke-static {p0, v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createLanguageSettings(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyLanguagePackHandler;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 267
    return-void
.end method
