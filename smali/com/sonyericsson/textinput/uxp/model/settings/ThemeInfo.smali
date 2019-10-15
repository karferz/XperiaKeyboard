.class public Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
.super Ljava/lang/Object;
.source "ThemeInfo.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final NO_VERSION_CODE:I = -0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mIsAffectingKeyboard:Z

.field private final mIsReadSuccessful:Z

.field private final mName:Ljava/lang/String;

.field private final mPackageName:Ljava/lang/String;

.field private final mVersionCode:I

.field private final mVersionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "versionCode"    # I
    .param p4, "versionName"    # Ljava/lang/String;
    .param p5, "isAffectingKeyboard"    # Z
    .param p6, "isReadSuccessful"    # Z

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mPackageName:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mName:Ljava/lang/String;

    .line 64
    iput p3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mVersionCode:I

    .line 65
    iput-object p4, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mVersionName:Ljava/lang/String;

    .line 66
    iput-boolean p5, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mIsAffectingKeyboard:Z

    .line 67
    iput-boolean p6, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mIsReadSuccessful:Z

    .line 68
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->readCurrentThemeInfo(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
    .param p1, "x1"    # Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
    .param p2, "x2"    # Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;
    .param p3, "x3"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p4, "x4"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    .prologue
    .line 39
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->handleSkinAutoSwitch(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;)V

    return-void
.end method

.method public static checkAndPerformThemeUpdateActions(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 77
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    if-nez v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 83
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    .line 85
    .local v1, "settings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getAnalyticsTracker()Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v1, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->checkAndStoreThemeInfo(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Z)V

    goto :goto_0
.end method

.method public static checkAndStoreThemeInfo(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "analyticsTracker"    # Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .param p3, "performSkinAutoSwitch"    # Z

    .prologue
    .line 101
    new-instance v1, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;-><init>(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;ZLcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    .line 123
    invoke-virtual {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 124
    return-void
.end method

.method private static getThemeDebugString(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "oldThemeInfo"    # Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "newThemeInfo"    # Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "currentSkinName"    # Ljava/lang/String;
    .param p3, "autoSwitchSkinName"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New theme detected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | is affecting keyboard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 165
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->isAffectingKeyboard()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | is read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sucessful "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 166
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->isReadSuccessful()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    if-eqz p0, :cond_0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (Previous theme was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | is affecting keyboard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->isAffectingKeyboard()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nAuto toggle keyboard skin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p3, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    if-eqz p3, :cond_2

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " from skin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to skin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 173
    :cond_0
    const-string v1, " (Previous theme was: null)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 177
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 181
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " staying at skin: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private static getThemeName(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "skinPackageInfo"    # Landroid/content/pm/PackageInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 243
    const/4 v1, 0x0

    .line 244
    .local v1, "name":Ljava/lang/String;
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 247
    new-instance v2, Ljava/util/Locale;

    const-string v3, "en-US"

    invoke-direct {v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p0, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->setLocale(Ljava/util/Locale;Landroid/content/Context;Ljava/lang/String;)V

    .line 248
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 250
    .local v0, "label":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    .line 251
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 254
    .end local v0    # "label":Ljava/lang/CharSequence;
    :cond_0
    return-object v1
.end method

.method private static declared-synchronized handleSkinAutoSwitch(Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;)V
    .locals 5
    .param p0, "oldThemeInfo"    # Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "newThemeInfo"    # Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "analyticsTracker"    # Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "editor"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 132
    const-class v3, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    monitor-enter v3

    :try_start_0
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getKeyboardSkin()Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "currentSkinName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 134
    .local v0, "autoSwitchSkinName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->isAffectingKeyboard()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "skin-themed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->isAffectingKeyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 137
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->isReadSuccessful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    :cond_0
    const-string v0, "skin-themed"

    .line 145
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 146
    invoke-interface {p4, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setKeyboardSkin(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->isReadSuccessful()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 148
    invoke-interface {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getKeyboardSkin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, p1}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;->pushSkinAutoSelectedOnThemeChange(Ljava/lang/String;Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_2
    monitor-exit v3

    return-void

    .line 140
    :cond_3
    :try_start_1
    invoke-virtual {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->isAffectingKeyboard()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "skin-themed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p0, :cond_4

    .line 141
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->isAffectingKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 143
    :cond_4
    const-string v0, "skin-classic"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    .end local v0    # "autoSwitchSkinName":Ljava/lang/String;
    .end local v1    # "currentSkinName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static readCurrentThemeInfo(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .line 199
    const/16 v17, 0x0

    .line 201
    .local v17, "skinPackageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    new-instance v2, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;

    invoke-direct {v2}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningHelper;->getCurrentSkin(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v17

    .line 202
    if-nez v17, :cond_0

    .line 206
    const/4 v8, 0x0

    .line 221
    .local v8, "isReadSuccessful":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 223
    .local v7, "isAffectingKeyboard":Z
    if-eqz v8, :cond_2

    if-eqz v17, :cond_2

    .line 224
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->getThemeName(Landroid/content/Context;Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "name":Ljava/lang/String;
    new-instance v2, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move-object/from16 v0, v17

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct/range {v2 .. v8}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V

    .line 234
    .end local v4    # "name":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 207
    .end local v7    # "isAffectingKeyboard":Z
    .end local v8    # "isReadSuccessful":Z
    :cond_0
    :try_start_1
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v2, :cond_1

    .line 212
    const/4 v8, 0x0

    .restart local v8    # "isReadSuccessful":Z
    goto :goto_0

    .line 214
    .end local v8    # "isReadSuccessful":Z
    :cond_1
    const/4 v8, 0x1

    .restart local v8    # "isReadSuccessful":Z
    goto :goto_0

    .line 216
    .end local v8    # "isReadSuccessful":Z
    :catch_0
    move-exception v16

    .line 217
    .local v16, "e":Ljava/lang/Exception;
    :goto_2
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->TAG:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v8, 0x0

    .restart local v8    # "isReadSuccessful":Z
    goto :goto_0

    .line 234
    .end local v16    # "e":Ljava/lang/Exception;
    .restart local v7    # "isAffectingKeyboard":Z
    :cond_2
    new-instance v9, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    const-string v10, ""

    const-string v11, ""

    const/4 v12, -0x1

    const-string v13, ""

    move v14, v7

    move v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V

    move-object v2, v9

    goto :goto_1

    .line 216
    .end local v7    # "isAffectingKeyboard":Z
    .end local v8    # "isReadSuccessful":Z
    :catch_1
    move-exception v16

    goto :goto_2
.end method

.method private static setLocale(Ljava/util/Locale;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "locale"    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "packageName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 260
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 262
    .local v1, "appContext":Landroid/content/Context;
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 263
    .local v0, "appConfig":Landroid/content/res/Configuration;
    iput-object p0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 264
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 265
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 264
    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    .end local v0    # "appConfig":Landroid/content/res/Configuration;
    .end local v1    # "appContext":Landroid/content/Context;
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 346
    if-nez p1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v2

    .line 349
    :cond_1
    if-ne p1, p0, :cond_2

    move v2, v1

    .line 350
    goto :goto_0

    .line 352
    :cond_2
    instance-of v3, p1, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 355
    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;

    .line 356
    .local v0, "otherThemeInfo":Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mPackageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mName:Ljava/lang/String;

    .line 357
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mVersionCode:I

    iget v4, v0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mVersionCode:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mVersionName:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mVersionName:Ljava/lang/String;

    .line 359
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mIsAffectingKeyboard:Z

    iget-boolean v4, v0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mIsAffectingKeyboard:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mIsReadSuccessful:Z

    iget-boolean v4, v0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mIsReadSuccessful:Z

    if-ne v3, v4, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mVersionCode:I

    return v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public hasContent()Z
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mName:Ljava/lang/String;

    .line 340
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mVersionCode:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mVersionName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mVersionName:Ljava/lang/String;

    .line 341
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 370
    const/16 v0, 0x2a

    return v0
.end method

.method public isAffectingKeyboard()Z
    .locals 1

    .prologue
    .line 319
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mIsAffectingKeyboard:Z

    return v0
.end method

.method public isReadSuccessful()Z
    .locals 1

    .prologue
    .line 330
    iget-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->mIsReadSuccessful:Z

    return v0
.end method
