.class public Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;
.super Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;
.source "FeedbackOptionsFragment.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

.field private final mChangeListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

.field private mFeedback:Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;

.field private mKeyPreviewEnabled:Ljava/lang/String;

.field private mKeySoundEnabled:Ljava/lang/String;

.field private mKeyVibrationDuration:Ljava/lang/String;

.field private mKeyVibrationEnabled:Ljava/lang/String;

.field private mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

.field private mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

.field private mSoundSeekPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;

.field private final mVibrationSeekBarPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;

.field private mVibrationSeekPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;

.field private final mVolumeSeekBarPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;-><init>()V

    .line 40
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$1;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mVibrationSeekBarPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;

    .line 49
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$2;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mVolumeSeekBarPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;

    .line 60
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$3;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mChangeListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mFeedback:Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mKeyVibrationEnabled:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mVibrationSeekPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mKeySoundEnabled:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mSoundSeekPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)Lcom/sonyericsson/textinput/uxp/TextInputApplication;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    return-object v0
.end method

.method private setupKeyPreview(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 156
    const v1, 0x7f07016c

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 159
    .local v0, "enableKeyPreviewPreference":Landroid/preference/Preference;
    new-instance v1, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$6;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 174
    return-void
.end method

.method private setupSwitchPreferences(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 118
    const v2, 0x7f07018a

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 120
    .local v1, "enableVibrationPreference":Landroid/preference/Preference;
    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$4;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$4;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)V

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 136
    const v2, 0x7f070188

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 138
    .local v0, "enableSoundPreference":Landroid/preference/Preference;
    new-instance v2, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment$5;-><init>(Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;)V

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 153
    return-void
.end method

.method private setupTabletSettings(Landroid/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 178
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    const v1, 0x7f0700c8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 180
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mKeyVibrationDuration:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mKeyVibrationEnabled:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    :cond_0
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mKeyPreviewEnabled:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v5, 0x7f050158

    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->addPreferencesFromResource(I)V

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 79
    .local v2, "resources":Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 80
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    .line 81
    invoke-virtual {p0}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 82
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->setupSwitchPreferences(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V

    .line 83
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->setupKeyPreview(Landroid/preference/PreferenceScreen;Landroid/content/res/Resources;)V

    .line 85
    const v5, 0x7f0701a4

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mKeyVibrationDuration:Ljava/lang/String;

    .line 86
    const v5, 0x7f070189

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "keySoundFeedbackVolume":Ljava/lang/String;
    const v5, 0x7f07018a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mKeyVibrationEnabled:Ljava/lang/String;

    .line 89
    const v5, 0x7f070188

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mKeySoundEnabled:Ljava/lang/String;

    .line 90
    const v5, 0x7f07017b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mKeyPreviewEnabled:Ljava/lang/String;

    .line 93
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mKeyVibrationDuration:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mVibrationSeekPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;

    .line 94
    invoke-virtual {p0, v1}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mSoundSeekPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;

    .line 96
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mVibrationSeekPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mVibrationSeekBarPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->setOnSeekParPreferenceListener(Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;)V

    .line 97
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mSoundSeekPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mVolumeSeekBarPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->setOnSeekParPreferenceListener(Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference$OnSeekParPreferenceListener;)V

    .line 99
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mApp:Lcom/sonyericsson/textinput/uxp/TextInputApplication;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/TextInputApplication;->getSettings()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    .line 100
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mChangeListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    invoke-interface {v5, v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->registerListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V

    .line 102
    new-instance v5, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    invoke-direct {v5, v0}, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    .line 104
    new-instance v4, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$Factory;

    invoke-direct {v4}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback$Factory;-><init>()V

    .line 105
    .local v4, "soundFeedbackFactory":Lcom/sonyericsson/collaboration/ObjectFactory;
    invoke-virtual {v4}, Lcom/sonyericsson/collaboration/ObjectFactory;->createInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;

    iput-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mFeedback:Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;

    .line 106
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mFeedback:Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;

    const-class v6, Landroid/content/Context;

    invoke-virtual {v5, v0, v6}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 107
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mFeedback:Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    const-class v7, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    invoke-virtual {v5, v6, v7}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->bindOne(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 108
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mFeedback:Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->init()V

    .line 109
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mFeedback:Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;

    invoke-virtual {v5}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->initOptional()V

    .line 111
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mSoundSeekPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isSoundFeedbackEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->setEnabled(Z)V

    .line 112
    iget-object v5, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mVibrationSeekPreference:Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;

    iget-object v6, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    invoke-interface {v6}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isTactileFeedbackEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/textinput/uxp/view/settings/SeekBarDialogPreference;->setEnabled(Z)V

    .line 114
    invoke-direct {p0, v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->setupTabletSettings(Landroid/preference/PreferenceScreen;)V

    .line 115
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mSettings:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mChangeListener:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->unregisterListener(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$SettingsListener;)V

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mFeedback:Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/keyboard/HapticFeedback;->dispose()V

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/settings/FeedbackOptionsFragment;->mSoundFeedback:Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;

    invoke-virtual {v0}, Lcom/sonyericsson/textinput/uxp/controller/SoundFeedback;->dispose()V

    .line 194
    invoke-super {p0}, Lcom/sonyericsson/textinput/uxp/ThemedPreferenceFragment;->onDestroy()V

    .line 195
    return-void
.end method
