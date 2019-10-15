.class public Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;
.super Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;
.source "SymbolsAndSmileysOptionsFragment.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->TAG:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;)Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    return-object v0
.end method

.method private setupAutoSpace(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V
    .locals 7
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 102
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 103
    invoke-virtual {v6}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v6

    .line 102
    invoke-static {v1, v6}, Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;->upgrade(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 106
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 107
    .local v5, "sharedPreferences":Landroid/content/SharedPreferences;
    const v6, 0x7f07017e

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "keySoftwareKeyboardPrediction":Ljava/lang/String;
    const v6, 0x7f0701f3

    .line 109
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-interface {v5, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    .local v4, "predictiveSetting":Ljava/lang/String;
    const v6, 0x7f0701f4

    .line 111
    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 110
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v2, 0x1

    .line 113
    .local v2, "isPredictionEnabled":Z
    :goto_0
    const v6, 0x7f070163

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 115
    .local v0, "automaticSpaceSwitch":Landroid/preference/Preference;
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 116
    new-instance v6, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment$3;

    invoke-direct {v6, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment$3;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;)V

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    return-void

    .line 110
    .end local v0    # "automaticSpaceSwitch":Landroid/preference/Preference;
    .end local v2    # "isPredictionEnabled":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setupPeriodAndCommaKeys(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 54
    const v1, 0x7f070183

    .line 55
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 56
    .local v0, "showPeriodAndCommaPreference":Landroid/preference/Preference;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 74
    :cond_0
    return-void
.end method

.method private setupSecondaryPrints(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "languageSettings"    # Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .prologue
    .line 78
    const v1, 0x7f070184

    .line 79
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 80
    .local v0, "showSecondaryPrints":Landroid/preference/Preference;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment$2;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 94
    invoke-virtual {p3}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->hasAnyActiveForcedSecondaryPrintsLanguages()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const v1, 0x7f070105

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 98
    :cond_0
    return-void
.end method

.method private setupSmileyKey(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 133
    const v1, 0x7f070185

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 135
    .local v0, "smileyPreference":Landroid/preference/Preference;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment$4;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v4, 0x7f05015b

    invoke-virtual {p0, v4}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->addPreferencesFromResource(I)V

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 41
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 42
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 43
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v4}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v1

    .line 45
    .local v1, "languageSettings":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 46
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 47
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->setupPeriodAndCommaKeys(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V

    .line 48
    invoke-direct {p0, v3, v2, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->setupSecondaryPrints(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;)V

    .line 49
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->setupAutoSpace(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V

    .line 50
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/SymbolsAndSmileysOptionsFragment;->setupSmileyKey(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V

    .line 51
    return-void
.end method
