.class public final Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;
.super Ljava/lang/Object;
.source "Upgrade.java"


# static fields
.field protected static final LEGACY_KEY_ACTIVE_LATIN_LANGUAGE_LAYOUT_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "activated_lang_layout_diplay_name_"

.field protected static final LEGACY_KEY_CLOUD_ID_TOKEN_DATA:Ljava/lang/String; = "cloud_id_token_data"

.field public static final LEGACY_KEY_DOWNLOAD_ONLY_VIA_WIFI:Ljava/lang/String; = "download_only_via_wifi"

.field public static final LEGACY_KEY_DOWNLOAD_TRY_COUNT:Ljava/lang/String; = "key_download_try_count"

.field protected static final LEGACY_KEY_LANGUAGE_PREFIX:Ljava/lang/String; = "lang_"

.field public static final LEGACY_KEY_NO_DICTIONARIES_OR_WIFI_SHOWN_POPUP:Ljava/lang/String; = "key_no_dictionaries_or_wifi_shown_popup"

.field protected static final LEGACY_KEY_NPAM_TICKET_DATA:Ljava/lang/String; = "textinput_npam_ticket_data"

.field protected static final LEGACY_KEY_PERSISTENT_LAYOUT_PREFIX:Ljava/lang/String; = "persisten_layout_"

.field protected static final LEGACY_KEY_PRIMARY_LANGUAGE_LAYOUT:Ljava/lang/String; = "primary-language-layout"

.field protected static final LEGACY_KEY_SELECTED_LATIN_LAYOUT:Ljava/lang/String; = "selected-latin-layout"

.field protected static final LEGACY_VALUE_PERSONALIZER_KEY_GMAIL:Ljava/lang/String; = "_gmail"

.field protected static final LEGACY_VALUE_PERSONALIZER_KEY_PREVIOUS_STATE:Ljava/lang/String; = "previous_state"

.field protected static final LEGACY_VALUE_PERSONALIZER_KEY_SMS:Ljava/lang/String; = "_sms"

.field protected static final LEGACY_VALUE_PERSONALIZER_KEY_STATE:Ljava/lang/String; = "state"

.field protected static final LEGACY_VALUE_PERSONALIZER_PREFS:Ljava/lang/String; = "personalizer_service"

.field protected static final LEGACY_VALUE_PREDICTION_DISCRETE_AUTOMATIC_DISAMBIGUATION:Ljava/lang/String; = "5"

.field protected static final LEGACY_VALUE_PREDICTION_OFF:Ljava/lang/String; = "0"

.field protected static final LEGACY_VALUE_PREDICTION_SLOPPY_AUTOMATIC:Ljava/lang/String; = "2"

.field protected static final LEGACY_VALUE_PREDICTION_SLOPPY_MANUALLY:Ljava/lang/String; = "1"

.field protected static final VERSION_DISABLED_LOW_DENSITY_ONE_HANDED:I = 0xca0003

.field protected static final VERSION_GOOGLE_LOGIN:I = 0xe00015

.field protected static final VERSION_LANGUAGE_SETTINGS_REFACTOR:I = 0xd00001

.field protected static final VERSION_LAYOUT_TOGGLE_FOR_LATIN:I = 0xc80439

.field protected static final VERSION_MISSING_SWIFTKEY_SSL_SECURITY_FIX_6_7_BRANCH:I = 0xce0000

.field protected static final VERSION_MOVE_UNZIPPED_DICTIONARIES:I = 0xc60401

.field protected static final VERSION_NPAM_DEPRICATED:I = 0x1000029

.field protected static final VERSION_PHONEPAD_ACTIVATED_FOR_SUPPORTED_PHONES:I = 0xc60401

.field protected static final VERSION_PRE_NORWEGIAN_BOOK_LANGUAGE:I = 0xac0012

.field protected static final VERSION_PRE_OVERLAY_PREDICTION_UPDATE:I = 0xaa0001

.field protected static final VERSION_SWIFTKEY:I = 0xc00000

.field protected static final VERSION_SWIFTKEY_SSL_SECURITY_FIX_6_6_BRANCH:I = 0xcc0032

.field protected static final VERSION_SWIFTKEY_SSL_SECURITY_FIX_6_7_BRANCH:I = 0xce0050

.field protected static final VERSION_THEMED_SKIN:I = 0xe20015

.field protected static final VERSION_UNIFIED_SETTINGS:I = 0xc60401

.field protected static final VERSION_VIBRATION_OFF_AS_DEFAULT:I = 0xc80436

.field private static mTestLegacySharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static deleteOldDictionaries(Ljava/io/File;)V
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 454
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 455
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 456
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_0

    .line 457
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 458
    .local v0, "f":Ljava/io/File;
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;->deleteOldDictionaries(Ljava/io/File;)V

    .line 457
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "files":[Ljava/io/File;
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 463
    return-void
.end method

.method public static upgrade(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 116
    const/4 v0, 0x0

    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->getCurrentVersion(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;->upgrade(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/SharedPreferences;I)V

    .line 117
    return-void
.end method

.method static upgrade(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "toVersion"    # I

    .prologue
    .line 121
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;->upgrade(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/SharedPreferences;I)V

    .line 122
    return-void
.end method

.method static upgrade(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/SharedPreferences;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "testLegacySharedPreferences"    # Landroid/content/SharedPreferences;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "toVersion"    # I

    .prologue
    .line 126
    sput-object p2, Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;->mTestLegacySharedPreferences:Landroid/content/SharedPreferences;

    .line 128
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getVersionCode()I

    move-result v1

    .line 129
    .local v1, "fromVersion":I
    if-gtz v1, :cond_6

    const/4 v2, 0x1

    .line 132
    .local v2, "isFirstVersion":Z
    :goto_0
    if-le p3, v1, :cond_3

    if-nez v2, :cond_3

    .line 133
    const v3, 0xc60401

    if-ge v1, v3, :cond_0

    .line 134
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/xperia_keyboard_dictionaries"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;->deleteOldDictionaries(Ljava/io/File;)V

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1, p0, v1, p3}, Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;->upgradeSettings(Landroid/content/res/Resources;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;II)V

    .line 140
    const v3, 0xce0050

    if-ge v1, v3, :cond_1

    const/high16 v3, 0xce0000

    if-ge v1, v3, :cond_2

    :cond_1
    const v3, 0xcc0032

    if-ge v1, v3, :cond_3

    .line 143
    :cond_2
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/DictionaryUtils;->secureLanguagePackConfiguration(Landroid/content/Context;)V

    .line 151
    :cond_3
    if-eqz v2, :cond_4

    .line 152
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;->upgradePortraitKeyboard(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 155
    :cond_4
    if-eq p3, v1, :cond_5

    .line 157
    invoke-interface {p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 158
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v0, p3}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setVersionCode(I)V

    .line 159
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 161
    .end local v0    # "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_5
    return-void

    .line 129
    .end local v2    # "isFirstVersion":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static upgradePortraitKeyboard(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V
    .locals 3
    .param p0, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 445
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getPortraitKeyboard()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "mode":Ljava/lang/String;
    invoke-interface {p0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v0

    .line 447
    .local v0, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    sget-object v2, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_LAYOUT_FULL_KEYBOARD_WITH_SECONDARY_PRINTS:Ljava/lang/String;

    .line 448
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 447
    invoke-interface {v0, v2}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setShowSecondaryPrints(Z)V

    .line 449
    invoke-interface {v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 450
    return-void
.end method

.method private static upgradeSettings(Landroid/content/res/Resources;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Landroid/content/Context;II)V
    .locals 33
    .param p0, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "settings"    # Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "fromVersion"    # I
    .param p4, "toVersion"    # I

    .prologue
    .line 165
    move-object/from16 v30, p1

    check-cast v30, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;

    invoke-virtual/range {v30 .. v30}, Lcom/sonyericsson/textinput/uxp/model/settings/Settings;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v26

    .line 167
    .local v26, "sharedPreferences":Landroid/content/SharedPreferences;
    const v30, 0xaa0001

    move/from16 v0, p3

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    .line 170
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getSoftwareKeyboardPrediction()Ljava/lang/String;

    move-result-object v21

    .line 173
    .local v21, "legacyPredictionSetting":Ljava/lang/String;
    const/16 v30, -0x1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->hashCode()I

    move-result v31

    packed-switch v31, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    packed-switch v30, :pswitch_data_1

    .line 190
    const v30, 0x7f0701f3

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 194
    .local v9, "convertedPredictionSetting":Ljava/lang/String;
    :goto_1
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v13

    .line 195
    .local v13, "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-interface {v13, v9}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setPredictionMode(Ljava/lang/String;)V

    .line 196
    invoke-interface {v13}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 199
    .end local v9    # "convertedPredictionSetting":Ljava/lang/String;
    .end local v13    # "editor":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    .end local v21    # "legacyPredictionSetting":Ljava/lang/String;
    :cond_1
    const v30, 0xac0012

    move/from16 v0, p3

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    .line 204
    const-string v30, "lang_nor"

    const/16 v31, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 208
    .local v23, "norwegianWritingLanguageLayout":Ljava/lang/String;
    const-string v30, "primary-language"

    const/16 v31, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 211
    .local v22, "norwegianPrimaryLanguage":Ljava/lang/String;
    if-eqz v23, :cond_3

    .line 212
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 213
    .local v12, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v30, "lang_nob"

    move-object/from16 v0, v30

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 216
    const-string v30, "lang_nor"

    move-object/from16 v0, v30

    invoke-interface {v12, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 219
    const-string v30, "nor"

    .line 220
    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 221
    const-string v30, "primary-language"

    const-string v31, "nob"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 225
    :cond_2
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 229
    .end local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v22    # "norwegianPrimaryLanguage":Ljava/lang/String;
    .end local v23    # "norwegianWritingLanguageLayout":Ljava/lang/String;
    :cond_3
    const/high16 v30, 0xc00000

    move/from16 v0, p3

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    .line 236
    const-string v30, "lang_"

    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->deleteLegacyKeys(Ljava/lang/String;)V

    .line 239
    :cond_4
    const v30, 0xc60401

    move/from16 v0, p3

    move/from16 v1, v30

    if-ge v0, v1, :cond_5

    .line 246
    sget-object v30, Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;->mTestLegacySharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v30, :cond_7

    .line 247
    sget-object v25, Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;->mTestLegacySharedPreferences:Landroid/content/SharedPreferences;

    .line 255
    .local v25, "personalizerSharedPreferences":Landroid/content/SharedPreferences;
    :goto_2
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 256
    .restart local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v15, "state_sms"

    .line 257
    .local v15, "key":Ljava/lang/String;
    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-interface {v0, v15, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    invoke-interface {v12, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 259
    const-string v15, "state_gmail"

    .line 260
    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-interface {v0, v15, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    invoke-interface {v12, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 263
    const-string v15, "previous_state_sms"

    .line 264
    const/16 v30, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-interface {v0, v15, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    move/from16 v0, v30

    invoke-interface {v12, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 266
    const-string v15, "previous_state_gmail"

    .line 268
    const/16 v30, 0x0

    .line 269
    move-object/from16 v0, v25

    move/from16 v1, v30

    invoke-interface {v0, v15, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 268
    move/from16 v0, v30

    invoke-interface {v12, v15, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 272
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 275
    .end local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "key":Ljava/lang/String;
    .end local v25    # "personalizerSharedPreferences":Landroid/content/SharedPreferences;
    :cond_5
    const v30, 0xc80439

    move/from16 v0, p3

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    .line 276
    const-string v30, "selected-latin-layout"

    const/16 v31, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 282
    .local v6, "activeLatinLayout":Ljava/lang/String;
    if-eqz v6, :cond_9

    .line 283
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 284
    .restart local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createCustomization(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    move-result-object v11

    .line 286
    .local v11, "customization":Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createLanguageLayoutConfig(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v19

    .line 287
    .local v19, "layoutConfigList":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_6
    :goto_3
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_8

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 288
    .restart local v15    # "key":Ljava/lang/String;
    if-eqz v15, :cond_6

    .line 289
    const-string v31, "selected-latin-layout"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 290
    const-string v31, "selected-latin-layout"

    .line 291
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v32

    .line 290
    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 292
    .local v18, "latinLanguage":Ljava/lang/String;
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lcom/sonyericsson/textinput/uxp/util/LanguageUtils;->isLatinLanguage(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 294
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "lang_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-interface {v12, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    .line 173
    .end local v6    # "activeLatinLayout":Ljava/lang/String;
    .end local v11    # "customization":Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    .end local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v15    # "key":Ljava/lang/String;
    .end local v18    # "latinLanguage":Ljava/lang/String;
    .end local v19    # "layoutConfigList":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .restart local v21    # "legacyPredictionSetting":Ljava/lang/String;
    :pswitch_1
    const-string v31, "0"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    const/16 v30, 0x0

    goto/16 :goto_0

    :pswitch_2
    const-string v31, "1"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    const/16 v30, 0x1

    goto/16 :goto_0

    :pswitch_3
    const-string v31, "2"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    const/16 v30, 0x2

    goto/16 :goto_0

    :pswitch_4
    const-string v31, "5"

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    const/16 v30, 0x3

    goto/16 :goto_0

    .line 175
    :pswitch_5
    const v30, 0x7f0701f4

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 176
    .restart local v9    # "convertedPredictionSetting":Ljava/lang/String;
    goto/16 :goto_1

    .line 178
    .end local v9    # "convertedPredictionSetting":Ljava/lang/String;
    :pswitch_6
    const v30, 0x7f0701f7

    .line 179
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 180
    .restart local v9    # "convertedPredictionSetting":Ljava/lang/String;
    goto/16 :goto_1

    .line 182
    .end local v9    # "convertedPredictionSetting":Ljava/lang/String;
    :pswitch_7
    const v30, 0x7f0701f6

    .line 183
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 184
    .restart local v9    # "convertedPredictionSetting":Ljava/lang/String;
    goto/16 :goto_1

    .line 186
    .end local v9    # "convertedPredictionSetting":Ljava/lang/String;
    :pswitch_8
    const v30, 0x7f0701f2

    .line 187
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 188
    .restart local v9    # "convertedPredictionSetting":Ljava/lang/String;
    goto/16 :goto_1

    .line 249
    .end local v9    # "convertedPredictionSetting":Ljava/lang/String;
    .end local v21    # "legacyPredictionSetting":Ljava/lang/String;
    :cond_7
    const-string v30, "personalizer_service"

    const/16 v31, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v25

    .restart local v25    # "personalizerSharedPreferences":Landroid/content/SharedPreferences;
    goto/16 :goto_2

    .line 301
    .end local v25    # "personalizerSharedPreferences":Landroid/content/SharedPreferences;
    .restart local v6    # "activeLatinLayout":Ljava/lang/String;
    .restart local v11    # "customization":Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    .restart local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    .restart local v19    # "layoutConfigList":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    :cond_8
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 302
    invoke-static {v11}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindCustomization(Lcom/sonyericsson/textinput/uxp/model/settings/Customization;)V

    .line 303
    invoke-static/range {v19 .. v19}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindLanguageLayoutConfig(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V

    .line 307
    .end local v6    # "activeLatinLayout":Ljava/lang/String;
    .end local v11    # "customization":Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    .end local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v19    # "layoutConfigList":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    :cond_9
    const v30, 0xca0003

    move/from16 v0, p3

    move/from16 v1, v30

    if-ge v0, v1, :cond_a

    .line 308
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isDeviceSupportingOneHandedKeyboard(Landroid/content/Context;)Z

    move-result v30

    if-nez v30, :cond_a

    sget-object v30, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_ONE_HANDED_KEYBOARD:Ljava/lang/String;

    sget-boolean v31, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->VALUE_DEFAULT_ONE_HANDED_KEYBOARD:Z

    .line 309
    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v30

    if-eqz v30, :cond_a

    .line 315
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 316
    .restart local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    sget-object v30, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_ONE_HANDED_KEYBOARD:Ljava/lang/String;

    const/16 v31, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 320
    .end local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_a
    const v30, 0xd00001

    move/from16 v0, p3

    move/from16 v1, v30

    if-ge v0, v1, :cond_11

    const v30, 0xd00001

    move/from16 v0, p4

    move/from16 v1, v30

    if-lt v0, v1, :cond_11

    .line 322
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createCustomization(Landroid/content/Context;)Lcom/sonyericsson/textinput/uxp/model/settings/Customization;

    move-result-object v11

    .line 324
    .restart local v11    # "customization":Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->createLanguageLayoutConfig(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/model/settings/ICustomization;)Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;

    move-result-object v17

    .line 325
    .local v17, "languageLayoutConfig":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 326
    .local v4, "activeLanguageLayouts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 327
    .restart local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    .line 328
    .local v28, "usedLatinLanguageLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_b
    :goto_4
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_10

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 329
    .restart local v15    # "key":Ljava/lang/String;
    if-eqz v15, :cond_b

    .line 330
    const-string v31, "lang_"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 331
    const-string v31, "lang_"

    .line 332
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v32

    .line 331
    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 333
    .local v16, "languageIso3":Ljava/lang/String;
    const-string v31, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-interface {v0, v15, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 335
    .local v20, "layoutId":Ljava/lang/String;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->isSupportedLanguageIso3(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 336
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_c

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->isSupportedLayoutId(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 337
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_c
    invoke-interface {v12, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 340
    .end local v16    # "languageIso3":Ljava/lang/String;
    .end local v20    # "layoutId":Ljava/lang/String;
    :cond_d
    const-string v31, "activated_lang_layout_diplay_name_"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 342
    invoke-interface {v12, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_4

    .line 343
    :cond_e
    const-string v31, "persisten_layout_"

    move-object/from16 v0, v31

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 344
    const-string v31, "persisten_layout_"

    .line 345
    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v32

    .line 344
    move/from16 v0, v31

    move/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 346
    .restart local v20    # "layoutId":Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_f

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;->isSupportedLayoutId(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 348
    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_f
    invoke-interface {v12, v15}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto/16 :goto_4

    .line 356
    .end local v15    # "key":Ljava/lang/String;
    .end local v20    # "layoutId":Ljava/lang/String;
    :cond_10
    new-instance v14, Lcom/google/gson/Gson;

    invoke-direct {v14}, Lcom/google/gson/Gson;-><init>()V

    .line 357
    .local v14, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v14, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 358
    .local v5, "activeLanguageLayoutsJson":Ljava/lang/String;
    const-string v30, "active_language_layouts"

    move-object/from16 v0, v30

    invoke-interface {v12, v0, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 360
    const-string v30, "used_active_language_layouts"

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 362
    const-string v30, "primary-language-layout"

    move-object/from16 v0, v30

    invoke-interface {v12, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 363
    const-string v30, "download_only_via_wifi"

    move-object/from16 v0, v30

    invoke-interface {v12, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 364
    const-string v30, "key_download_try_count"

    move-object/from16 v0, v30

    invoke-interface {v12, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 365
    const-string v30, "key_no_dictionaries_or_wifi_shown_popup"

    move-object/from16 v0, v30

    invoke-interface {v12, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 366
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 367
    invoke-static {v11}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindCustomization(Lcom/sonyericsson/textinput/uxp/model/settings/Customization;)V

    .line 368
    invoke-static/range {v17 .. v17}, Lcom/sonyericsson/textinput/uxp/configuration/StandAloneFactory;->unbindLanguageLayoutConfig(Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;)V

    .line 371
    .end local v4    # "activeLanguageLayouts":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "activeLanguageLayoutsJson":Ljava/lang/String;
    .end local v11    # "customization":Lcom/sonyericsson/textinput/uxp/model/settings/Customization;
    .end local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "gson":Lcom/google/gson/Gson;
    .end local v17    # "languageLayoutConfig":Lcom/sonyericsson/textinput/uxp/model/settings/LanguageLayoutConfig;
    .end local v28    # "usedLatinLanguageLayouts":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_11
    const v30, 0xc80436

    move/from16 v0, p3

    move/from16 v1, v30

    if-ge v0, v1, :cond_14

    .line 372
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isPhone(Landroid/content/Context;)Z

    move-result v30

    if-eqz v30, :cond_14

    .line 379
    const/16 v29, 0x0

    .line 380
    .local v29, "usingPreviousDefaultSetting":Z
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_12
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_13

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 381
    .restart local v15    # "key":Ljava/lang/String;
    sget-object v31, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_TACTILE_FEEDBACK:Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12

    .line 382
    const/16 v29, 0x1

    .line 386
    .end local v15    # "key":Ljava/lang/String;
    :cond_13
    if-nez v29, :cond_14

    .line 387
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 388
    .restart local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    sget-object v30, Lcom/sonyericsson/textinput/uxp/model/ResourceConstants;->KEY_TACTILE_FEEDBACK:Ljava/lang/String;

    const/16 v31, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v31

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 389
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 394
    .end local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v29    # "usingPreviousDefaultSetting":Z
    :cond_14
    const v30, 0xc60401

    move/from16 v0, p3

    move/from16 v1, v30

    if-ge v0, v1, :cond_15

    .line 395
    invoke-static/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/settings/upgrade/Upgrade;->upgradePortraitKeyboard(Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;)V

    .line 398
    :cond_15
    const v30, 0xe00015

    move/from16 v0, p3

    move/from16 v1, v30

    if-ge v0, v1, :cond_16

    .line 399
    const-string v30, "cloud_id_token_data"

    const/16 v31, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 402
    .local v24, "npamIdToken":Ljava/lang/String;
    if-eqz v24, :cond_1a

    .line 403
    sget-object v8, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Npam3:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .line 409
    .local v8, "cloudLoginType":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    :goto_5
    if-eqz v24, :cond_16

    .line 410
    new-instance v7, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    move-object/from16 v0, v24

    invoke-direct {v7, v8, v0}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;-><init>(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;Ljava/lang/String;)V

    .line 412
    .local v7, "cloudLoginIdToken":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    new-instance v14, Lcom/google/gson/Gson;

    invoke-direct {v14}, Lcom/google/gson/Gson;-><init>()V

    .line 413
    .restart local v14    # "gson":Lcom/google/gson/Gson;
    invoke-interface/range {v26 .. v26}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 414
    .restart local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    const-string v30, "cloud_id_token"

    .line 415
    invoke-virtual {v14, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    .line 414
    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    const-string v30, "cloud_id_token_data"

    move-object/from16 v0, v30

    invoke-interface {v12, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 417
    const-string v30, "textinput_npam_ticket_data"

    move-object/from16 v0, v30

    invoke-interface {v12, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 418
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 422
    .end local v7    # "cloudLoginIdToken":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    .end local v8    # "cloudLoginType":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    .end local v12    # "edit":Landroid/content/SharedPreferences$Editor;
    .end local v14    # "gson":Lcom/google/gson/Gson;
    .end local v24    # "npamIdToken":Ljava/lang/String;
    :cond_16
    const v30, 0xe20015

    move/from16 v0, p3

    move/from16 v1, v30

    if-ge v0, v1, :cond_18

    .line 423
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getKeyboardSkin()Ljava/lang/String;

    move-result-object v10

    .line 424
    .local v10, "currentSkin":Ljava/lang/String;
    const-string v30, "skin-default"

    move-object/from16 v0, v30

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_17

    .line 425
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v12

    .line 426
    .local v12, "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    invoke-static/range {p2 .. p2}, Lcom/sonyericsson/textinput/uxp/util/SkinUtils;->getDefaultSkinName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v12, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setKeyboardSkin(Ljava/lang/String;)V

    .line 427
    invoke-interface {v12}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 429
    .end local v12    # "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    :cond_17
    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    move/from16 v3, v31

    invoke-static {v0, v1, v2, v3}, Lcom/sonyericsson/textinput/uxp/model/settings/ThemeInfo;->checkAndStoreThemeInfo(Landroid/content/Context;Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsTracker;Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;Z)V

    .line 432
    .end local v10    # "currentSkin":Ljava/lang/String;
    :cond_18
    const v30, 0x1000029

    move/from16 v0, p3

    move/from16 v1, v30

    if-ge v0, v1, :cond_19

    .line 433
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->getCloudLoginIdToken()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;

    move-result-object v27

    .line 434
    .local v27, "token":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    if-eqz v27, :cond_19

    invoke-virtual/range {v27 .. v27}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;->getCloudLoginType()Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->isTypeDepricated(Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;)Z

    move-result v30

    if-eqz v30, :cond_19

    .line 435
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->isBackupAndSyncEnabled()Z

    move-result v30

    if-eqz v30, :cond_19

    .line 436
    invoke-interface/range {p1 .. p1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings;->edit()Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;

    move-result-object v12

    .line 437
    .restart local v12    # "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-interface {v12, v0}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->setBackupAndSync(Z)V

    .line 438
    invoke-interface {v12}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;->commit()V

    .line 439
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudUserUtil;->cancelCancelableTasks()V

    .line 442
    .end local v12    # "edit":Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$Editor;
    .end local v27    # "token":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginIdToken;
    :cond_19
    return-void

    .line 405
    .restart local v24    # "npamIdToken":Ljava/lang/String;
    :cond_1a
    const-string v30, "textinput_npam_ticket_data"

    const/16 v31, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 406
    sget-object v8, Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;->Npam2:Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;

    .restart local v8    # "cloudLoginType":Lcom/sonyericsson/textinput/uxp/controller/cloud/CloudLoginType;
    goto/16 :goto_5

    .line 173
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
