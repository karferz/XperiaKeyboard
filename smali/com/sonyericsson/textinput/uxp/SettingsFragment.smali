.class public Lcom/sonyericsson/textinput/uxp/SettingsFragment;
.super Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;
.source "SettingsFragment.java"


# static fields
.field private static final DEBUG_BUILD:Z

.field private static final DO_DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sIsDebugEnabled:Z


# instance fields
.field private mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

.field private mAutoUpdatePreference:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

.field private mDebugCount:I

.field private mDebugPreference:Landroid/preference/Preference;

.field private mGoogleVoiceInputSwitchPreference:Landroid/preference/SwitchPreference;

.field private mKeyboardHeightPickerPreference:Landroid/preference/Preference;

.field private mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

.field private mNumericKeyPreference:Landroid/preference/Preference;

.field private mOneHandedCheckBoxPreference:Landroid/preference/Preference;

.field private mPortraitKeyboardListPreference:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

.field private mQwertySymbolsAndSmileyPreference:Landroid/preference/Preference;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mSmartLanguageDetectionSwitch:Landroid/preference/SwitchPreference;

.field private mTraceSwitchPreference:Landroid/preference/SwitchPreference;

.field private mWordSuggestionPreference:Landroid/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mDebugCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/SettingsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/SettingsFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/SettingsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->refreshPortraitKeyboardState(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/SettingsFragment;Landroid/content/Context;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/SettingsFragment;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->isPredictionEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/SettingsFragment;Landroid/preference/PreferenceScreen;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/SettingsFragment;
    .param p1, "x1"    # Landroid/preference/PreferenceScreen;
    .param p2, "x2"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->updateSmartLanguageDetectionSwitch(Landroid/preference/PreferenceScreen;Z)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 145
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 146
    invoke-direct {p0, p2, v2}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->setupNumericKeys(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V

    .line 147
    invoke-direct {p0, p2, v2}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->setupQuickPeriod(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V

    .line 149
    const v3, 0x7f07017d

    .line 150
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 149
    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mPortraitKeyboardListPreference:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    .line 152
    const v3, 0x7f0700d0

    .line 153
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 152
    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mQwertySymbolsAndSmileyPreference:Landroid/preference/Preference;

    .line 155
    const v3, 0x7f0700c9

    .line 156
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mKeyboardHeightPickerPreference:Landroid/preference/Preference;

    .line 158
    const v3, 0x7f070175

    .line 159
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mOneHandedCheckBoxPreference:Landroid/preference/Preference;

    .line 160
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mOneHandedCheckBoxPreference:Landroid/preference/Preference;

    new-instance v4, Lcom/sonyericsson/textinput/uxp/SettingsFragment$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment$1;-><init>(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 176
    const v3, 0x7f07018e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mDebugPreference:Landroid/preference/Preference;

    .line 178
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mPortraitKeyboardListPreference:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    new-instance v4, Lcom/sonyericsson/textinput/uxp/SettingsFragment$2;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment$2;-><init>(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)V

    invoke-virtual {v3, v4}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const v4, 0x7f070186

    .line 204
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mGoogleVoiceInputSwitchPreference:Landroid/preference/SwitchPreference;

    .line 205
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mGoogleVoiceInputSwitchPreference:Landroid/preference/SwitchPreference;

    .line 206
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasVoiceInputEnable(Landroid/content/Context;)Z

    move-result v4

    .line 205
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 207
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mGoogleVoiceInputSwitchPreference:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/sonyericsson/textinput/uxp/SettingsFragment$3;

    invoke-direct {v4, p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment$3;-><init>(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 225
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/controller/settings/VoiceLanguageProvider;->init(Landroid/content/Context;)V

    .line 227
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSoftwareKeyboardPrediction()Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "predictiveSetting":Ljava/lang/String;
    const v3, 0x7f0701f4

    .line 229
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 228
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    .line 231
    .local v0, "isPredictionEnabled":Z
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const v4, 0x7f07019f

    .line 232
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 231
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mTraceSwitchPreference:Landroid/preference/SwitchPreference;

    .line 233
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mTraceSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 234
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mTraceSwitchPreference:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/sonyericsson/textinput/uxp/SettingsFragment$4;

    invoke-direct {v4, p0, p1, p2}, Lcom/sonyericsson/textinput/uxp/SettingsFragment$4;-><init>(Lcom/sonyericsson/textinput/uxp/SettingsFragment;Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 269
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const v4, 0x7f07017e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mWordSuggestionPreference:Landroid/preference/Preference;

    .line 272
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mWordSuggestionPreference:Landroid/preference/Preference;

    new-instance v4, Lcom/sonyericsson/textinput/uxp/SettingsFragment$5;

    invoke-direct {v4, p0, p1}, Lcom/sonyericsson/textinput/uxp/SettingsFragment$5;-><init>(Lcom/sonyericsson/textinput/uxp/SettingsFragment;Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 283
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSoftwareKeyboardPrediction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->updateWordSuggestionState(Landroid/content/Context;Ljava/lang/String;)V

    .line 285
    const v3, 0x7f070187

    .line 286
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 285
    invoke-virtual {p2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mSmartLanguageDetectionSwitch:Landroid/preference/SwitchPreference;

    .line 287
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mSmartLanguageDetectionSwitch:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/sonyericsson/textinput/uxp/SettingsFragment$6;

    invoke-direct {v4, p0, p2, p1}, Lcom/sonyericsson/textinput/uxp/SettingsFragment$6;-><init>(Lcom/sonyericsson/textinput/uxp/SettingsFragment;Landroid/preference/PreferenceScreen;Landroid/content/Context;)V

    .line 288
    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 306
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const v4, 0x7f07015b

    .line 307
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 306
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    iput-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mAutoUpdatePreference:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    .line 308
    return-void

    .line 228
    .end local v0    # "isPredictionEnabled":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDebugEnabled()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->sIsDebugEnabled:Z

    return v0
.end method

.method private isPredictionEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 446
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createSettings(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v0

    .line 447
    .local v0, "settings":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSoftwareKeyboardPrediction()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "softwareKeyboardprediction":Ljava/lang/String;
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindSettings(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701f4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 450
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private refreshPortraitKeyboardState(Z)V
    .locals 5
    .param p1, "isPhonepad"    # Z

    .prologue
    const v4, 0x7f0700e5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 376
    if-eqz p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mQwertySymbolsAndSmileyPreference:Landroid/preference/Preference;

    const v3, 0x7f0700d1

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 379
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mOneHandedCheckBoxPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 381
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mNumericKeyPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 388
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mOneHandedCheckBoxPreference:Landroid/preference/Preference;

    if-nez p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 389
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mNumericKeyPreference:Landroid/preference/Preference;

    if-nez p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 390
    return-void

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mQwertySymbolsAndSmileyPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mOneHandedCheckBoxPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mNumericKeyPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 388
    goto :goto_1

    :cond_2
    move v1, v2

    .line 389
    goto :goto_2
.end method

.method private removeGoogleVoiceInputCheckbox()V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mGoogleVoiceInputSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->removePreference(Landroid/preference/Preference;)V

    .line 487
    return-void
.end method

.method private removeKeyboardHeightPicker()V
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mKeyboardHeightPickerPreference:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->removePreference(Landroid/preference/Preference;)V

    .line 491
    return-void
.end method

.method private removeMyWritingStyleSummary()V
    .locals 3

    .prologue
    .line 405
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f07016f

    .line 406
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 407
    .local v0, "myWritingStylePreference":Landroid/preference/Preference;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 408
    return-void
.end method

.method private removeOneHandedKeyboardSetting()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mOneHandedCheckBoxPreference:Landroid/preference/Preference;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->removePreference(Landroid/preference/Preference;)V

    .line 475
    return-void
.end method

.method private removePortraitKeyboardSetting()V
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mPortraitKeyboardListPreference:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->removePreference(Landroid/preference/Preference;)V

    .line 479
    return-void
.end method

.method private removePreference(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 467
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 468
    .local v0, "screen":Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 469
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 471
    :cond_0
    return-void
.end method

.method private removeSmartLanguageDetectionSetting()V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mSmartLanguageDetectionSwitch:Landroid/preference/SwitchPreference;

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->removePreference(Landroid/preference/Preference;)V

    .line 483
    return-void
.end method

.method private setGuideActivity(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const v2, 0x7f070177

    .line 130
    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 132
    .local v0, "personalizationGuide":Landroid/preference/Preference;
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isLargeTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/large/GuideActivityLarge;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 141
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isSmallTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 135
    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/semilarge/GuideActivitySemiLarge;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPhoneTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 137
    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/medium/GuideActivityMedium;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {v0}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-class v2, Lcom/sonyericsson/textinput/uxp/controller/settings/personalizationguide/small/GuideActivitySmall;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private setupNumericKeys(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 320
    const v0, 0x7f070182

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mNumericKeyPreference:Landroid/preference/Preference;

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mNumericKeyPreference:Landroid/preference/Preference;

    new-instance v1, Lcom/sonyericsson/textinput/uxp/SettingsFragment$7;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment$7;-><init>(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 337
    return-void
.end method

.method private setupQuickPeriod(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 340
    const v1, 0x7f07017f

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 342
    .local v0, "quickPeriodPreference":Landroid/preference/Preference;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/SettingsFragment$8;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment$8;-><init>(Lcom/sonyericsson/textinput/uxp/SettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 358
    return-void
.end method

.method private setupSoundOnlyFeedbackPreference()V
    .locals 3

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 412
    .local v1, "screen":Landroid/preference/PreferenceScreen;
    const v2, 0x7f070168

    invoke-virtual {p0, v2}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 414
    .local v0, "feedbackScreen":Landroid/preference/Preference;
    const v2, 0x7f0700c8

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 415
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 416
    return-void
.end method

.method private updateCheckBoxPreference()V
    .locals 6

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 456
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v4, 0x7f070186

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080003

    .line 457
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 456
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 458
    .local v1, "checkedVoiceInput":Z
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mGoogleVoiceInputSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 460
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const v4, 0x7f07019f

    .line 461
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f080013

    .line 462
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    .line 461
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 463
    .local v0, "checkedTrace":Z
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mTraceSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 464
    return-void
.end method

.method private updateEnableState()V
    .locals 6

    .prologue
    const v5, 0x7f0701f4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSoftwareKeyboardPrediction()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "settingsValue":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mTraceSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 438
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 439
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 438
    :goto_1
    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->updateSmartLanguageDetectionSwitch(Landroid/preference/PreferenceScreen;Z)V

    .line 443
    return-void

    .line 436
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mTraceSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 439
    goto :goto_1
.end method

.method private updatePortraitKeyboard()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 362
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPortraitKeyboardMode()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 365
    .local v1, "showSecondaryPrints":Z
    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mPortraitKeyboardListPreference:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    if-eqz v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mPortraitKeyboardListPreference:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->setSelectedValue(I)V

    .line 369
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isPortraitKeybordPhonepad()Z

    move-result v0

    .line 371
    .local v0, "isPhonepadKeyboard":Z
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->refreshPortraitKeyboardState(Z)V

    .line 372
    return-void

    .end local v0    # "isPhonepadKeyboard":Z
    .end local v1    # "showSecondaryPrints":Z
    :cond_1
    move v1, v2

    .line 362
    goto :goto_0
.end method

.method private updateSmartLanguageDetectionSwitch(Landroid/preference/PreferenceScreen;Z)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "predictionEnabled"    # Z

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mSmartLanguageDetectionSwitch:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 395
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;->getActiveLatinLanguageLayouts()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    if-nez p2, :cond_2

    .line 397
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->removeSmartLanguageDetectionSetting()V

    .line 402
    :cond_1
    :goto_0
    return-void

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mSmartLanguageDetectionSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method private updateWordSuggestionState(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "wordSuggestionPreferenceEntries":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, "wordSuggestionPreferenceValues":[Ljava/lang/String;
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mWordSuggestionPreference:Landroid/preference/Preference;

    .line 316
    invoke-static {v1, p2}, Lcom/sonyericsson/ned/util/ArrayUtil;->search([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    aget-object v3, v0, v3

    .line 315
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 317
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 71
    invoke-virtual {v4}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 73
    .local v3, "textInputApplication":Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 74
    invoke-virtual {v3}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getLanguageSettings()Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mLanguageSettings:Lcom/sonyericsson/textinput/uxp/model/settings/LanguageSettings;

    .line 76
    const v4, 0x7f050159

    invoke-virtual {p0, v4}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->addPreferencesFromResource(I)V

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 80
    .local v2, "screen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v0, v2}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->updatePortraitKeyboard()V

    .line 82
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->isPredictionEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-direct {p0, v2, v4}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->updateSmartLanguageDetectionSwitch(Landroid/preference/PreferenceScreen;Z)V

    .line 84
    sget-boolean v4, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->sIsDebugEnabled:Z

    if-nez v4, :cond_0

    .line 85
    iget-object v4, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mDebugPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 88
    :cond_0
    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->setGuideActivity(Landroid/content/Context;)V

    .line 90
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->setupSoundOnlyFeedbackPreference()V

    .line 94
    :cond_1
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupportingOneHandedKeyboard(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 95
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->removeOneHandedKeyboardSetting()V

    .line 98
    :cond_2
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupporting12Key(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 99
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->removePortraitKeyboardSetting()V

    .line 102
    :cond_3
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->allowedToLearnWritingStyle(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 103
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->removeMyWritingStyleSummary()V

    .line 106
    :cond_4
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasGoogleVoiceInputInstalled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->removeGoogleVoiceInputCheckbox()V

    .line 110
    :cond_5
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 111
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->removeKeyboardHeightPicker()V

    .line 114
    :cond_6
    const v4, 0x7f07019c

    .line 115
    invoke-virtual {p0, v4}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;

    .line 116
    .local v1, "feedbackPreference":Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;
    if-eqz v1, :cond_7

    .line 117
    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/textinput/uxp/util/FeedbackPreference;->init(Landroid/content/Context;Landroid/preference/PreferenceScreen;)Z

    .line 119
    :cond_7
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 420
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onResume()V

    .line 421
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->updateEnableState()V

    .line 422
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->updateCheckBoxPreference()V

    .line 424
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 425
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSoftwareKeyboardPrediction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->updateWordSuggestionState(Landroid/content/Context;Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->updatePortraitKeyboard()V

    .line 427
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->isPredictionEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->updateSmartLanguageDetectionSwitch(Landroid/preference/PreferenceScreen;Z)V

    .line 429
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onStart()V

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/SettingsFragment;->mAutoUpdatePreference:Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/settings/SimpleMenuPreference;->refresh()V

    .line 126
    return-void
.end method
