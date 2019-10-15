.class public Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;
.super Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;
.source "DebugFragment.java"


# static fields
.field public static final AFTER_SWALLOW_HEAP_DEFAULT_VALUE:Ljava/lang/Float;

.field private static final PARAMETER_CATEGORY:Ljava/lang/String; = "continuous-input"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Float;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->AFTER_SWALLOW_HEAP_DEFAULT_VALUE:Ljava/lang/Float;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->triggerSync()V

    return-void
.end method

.method private setupPreference(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 131
    .local v0, "preference":Landroid/preference/Preference;
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    check-cast v3, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 133
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    instance-of v3, p2, Ljava/lang/Float;

    if-eqz v3, :cond_0

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    new-instance v3, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$3;

    invoke-direct {v3, p0, v2}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$3;-><init>(Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    return-void
.end method

.method private setupStressOptions()V
    .locals 4

    .prologue
    .line 50
    const-string v2, "debug_after_swallow_heap_free_mb"

    sget-object v3, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->AFTER_SWALLOW_HEAP_DEFAULT_VALUE:Ljava/lang/Float;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v2}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 53
    .local v0, "context":Landroid/content/Context;
    const-string v2, "debug_swallow_heap"

    .line 54
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 55
    .local v1, "hasSwallowedHeapPreference":Landroid/preference/CheckBoxPreference;
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/StressUtil;->isSwallowedHeap()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 56
    new-instance v2, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$1;-><init>(Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 77
    return-void
.end method

.method private setupSwiftKeyParameterPreference(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getInstance()Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;

    const-string v1, "continuous-input"

    invoke-static {v1, p1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;->getParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "currentValue":Ljava/lang/Object;
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupPreference(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method private setupSyncOptions()V
    .locals 2

    .prologue
    .line 80
    const-string v1, "sync-trigger"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 81
    .local v0, "syncPreference":Landroid/preference/Preference;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment$2;-><init>(Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 88
    return-void
.end method

.method private setupTraceOptions()V
    .locals 1

    .prologue
    .line 102
    const-string v0, "feature-threshold"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 103
    const-string v0, "feature-hysteresis"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 104
    const-string v0, "upcase-probability"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 105
    const-string v0, "downcase-probability"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 106
    const-string v0, "prefix-probability"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 107
    const-string v0, "confidence-factor"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 108
    const-string v0, "multi-term-leniency"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 109
    const-string v0, "min-skip-probability"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 110
    const-string v0, "free-skip-duration"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 111
    const-string v0, "dwell-duration-decay"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 112
    const-string v0, "dwell-duration-factor"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 113
    const-string v0, "free-skip-distance"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 114
    const-string v0, "trace-speed-weight"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 115
    const-string v0, "distance-decay"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 116
    const-string v0, "length-decay"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 117
    const-string v0, "end-decay"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 118
    const-string v0, "prefix-skip-probability"

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSwiftKeyParameterPreference(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method private triggerSync()V
    .locals 4

    .prologue
    .line 91
    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->TAG:Ljava/lang/String;

    const-string v3, "triggerSync()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 93
    .local v0, "app":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v2

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v1

    .line 94
    .local v1, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    const-wide/16 v2, 0x1

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastSyncTime(J)V

    .line 95
    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setLastBackupTimeDynamicModel(J)V

    .line 96
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setCloudSyncTryCount(I)V

    .line 97
    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 98
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/BackupAndSyncTrigger;->triggerBackupAndSync(Lcom/sonyericsson/textinput/uxp/TextInputApplication;)V

    .line 99
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v1, 0x7f050157

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->addPreferencesFromResource(I)V

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 40
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 42
    const-string v1, "version"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 43
    .local v0, "versionPreference":Landroid/preference/Preference;
    const-string v1, "Version: 8.1.A.0.12"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupTraceOptions()V

    .line 45
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupSyncOptions()V

    .line 46
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/configuration/DebugFragment;->setupStressOptions()V

    .line 47
    return-void
.end method
