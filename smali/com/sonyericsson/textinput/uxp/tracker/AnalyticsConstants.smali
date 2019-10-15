.class public final Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants;
.super Ljava/lang/Object;
.source "AnalyticsConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;,
        Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeightOpened;,
        Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsButtonUsed;,
        Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelSettingsOpened;,
        Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;,
        Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelMyWordsOrigin;
    }
.end annotation


# static fields
.field static final ACTION_AUTOMATIC_SPACE:Ljava/lang/String; = "AutomaticSpace"

.field static final ACTION_BACKUP_AND_SYNC:Ljava/lang/String; = "BackupAndSync"

.field static final ACTION_DICTIONARIES_REFRESHED:Ljava/lang/String; = "DictionariesRefreshed"

.field public static final ACTION_DICTIONARIES_REFRESH_REASON_DOWNLOAD_FAILURE1:Ljava/lang/String; = "DownloadFailure1"

.field public static final ACTION_DICTIONARIES_REFRESH_REASON_DOWNLOAD_FAILURE2:Ljava/lang/String; = "DownloadFailure2"

.field public static final ACTION_DICTIONARIES_REFRESH_REASON_DOWNLOAD_FAILURE3:Ljava/lang/String; = "DownloadFailure3"

.field public static final ACTION_DICTIONARIES_REFRESH_REASON_INITIATION1:Ljava/lang/String; = "Initiation1"

.field public static final ACTION_DICTIONARIES_REFRESH_REASON_INITIATION2:Ljava/lang/String; = "Initiation2"

.field public static final ACTION_DICTIONARIES_REFRESH_REASON_PREINSTALLED_DELETED:Ljava/lang/String; = "PreInstalledDeleted"

.field public static final ACTION_DICTIONARIES_REFRESH_REASON_REFRESH_ERROR:Ljava/lang/String; = "RefreshError"

.field public static final ACTION_DICTIONARIES_REFRESH_REASON_REFRESH_FAIL:Ljava/lang/String; = "RefreshFailure"

.field public static final ACTION_DICTIONARIES_REFRESH_REASON_UPDATE:Ljava/lang/String; = "Update"

.field static final ACTION_FLOATING_KEYBOARD:Ljava/lang/String; = "FloatingKeyboard"

.field static final ACTION_GESTURE_INPUT:Ljava/lang/String; = "GestureInput"

.field static final ACTION_KEYBOARD_HEIGHT:Ljava/lang/String; = "KeyboardHeight"

.field static final ACTION_KEY_PRESS_MODEL_CLEARED:Ljava/lang/String; = "KeyPressModelCleared"

.field static final ACTION_KEY_PREVIEW_ON_KEY_PRESS:Ljava/lang/String; = "KeyPreviewOnKeyPress"

.field static final ACTION_LEARN_WRITING_FROM:Ljava/lang/String; = "LearnWritingStyle"

.field static final ACTION_MY_WORDS:Ljava/lang/String; = "MyWords"

.field static final ACTION_NEW_PORTRAIT_KEYBOARD:Ljava/lang/String; = "PortraitKeyboard"

.field static final ACTION_NEW_SKIN:Ljava/lang/String; = "SkinSelected"

.field static final ACTION_NEW_SKIN_AUTO:Ljava/lang/String; = "SkinAutoSelected"

.field static final ACTION_NEW_WORD_SUGGESTION:Ljava/lang/String; = "WordSuggestion"

.field static final ACTION_NUMBER_OF_SYNCED_DEVICES:Ljava/lang/String; = "NumberOfSyncedDevices"

.field static final ACTION_NUMERIC_ROW:Ljava/lang/String; = "NumericRow"

.field static final ACTION_ONE_HANDED_KEYBOARD:Ljava/lang/String; = "OneHandedKeyboard"

.field static final ACTION_PERIOD_AND_COMMA:Ljava/lang/String; = "PeriodAndComma"

.field static final ACTION_QUICK_PERIOD:Ljava/lang/String; = "QuickPeriod"

.field static final ACTION_SETTINGS_BUTTON_USED:Ljava/lang/String; = "SettingsButtonUsed"

.field static final ACTION_SETTINGS_OPENED:Ljava/lang/String; = "SettingsOpened"

.field static final ACTION_SMART_LANGUAGE_DETECTION:Ljava/lang/String; = "SmartLanguageDetection"

.field static final ACTION_SMILEY_KEY:Ljava/lang/String; = "SmileyKey"

.field static final ACTION_SOUND_ON_KEY_PRESS:Ljava/lang/String; = "SoundOnKeyPress"

.field static final ACTION_SYMBOLS_ON_LONG_PRESS:Ljava/lang/String; = "SymbolsOnLongPress"

.field static final ACTION_VIBRATION_ON_KEY_PRESS:Ljava/lang/String; = "VibrationOnKeyPress"

.field static final ACTION_VOICE_INPUT:Ljava/lang/String; = "VoiceInput"

.field static final Action_KEYBOARD_HEIGHT_OPENED:Ljava/lang/String; = "KeyboardHeightOpened"

.field static final CATEGORY_SETTINGS:Ljava/lang/String; = "Settings"

.field static final CATEGORY_SNAPSHOT_SETTINGS:Ljava/lang/String; = "SnapshotSettings"

.field static final CATEGORY_WARNINGS:Ljava/lang/String; = "Warnings"

.field static final EVENT_FULL_SAMPLE_RATE:Ljava/lang/String; = "fullSampleRateEvent"

.field static final EVENT_SNAPSHOT:Ljava/lang/String; = "snapshotEvent"

.field static final KEY_DEFAULT_EVENT:Ljava/lang/String; = "event"

.field static final KEY_DEFAULT_EVENT_ACTION:Ljava/lang/String; = "gagtm-eventAction"

.field static final KEY_DEFAULT_EVENT_CATEGORY:Ljava/lang/String; = "gagtm-eventCategory"

.field static final KEY_DEFAULT_EVENT_LABEL:Ljava/lang/String; = "gagtm-eventLabel"

.field static final KEY_DEFAULT_EVENT_VALUE:Ljava/lang/String; = "gagtm-eventValue"

.field static final KEY_ENABLED_CRASHLYTICS:Ljava/lang/String; = "crashlytics-enabled"

.field static final LABEL_DATA_NOT_SET:Ljava/lang/String; = "Unknown"

.field static final LABEL_EMPTY:Ljava/lang/String; = ""

.field static final VALUE_CRASHLYTICS_ENABLED:J = 0x1L

.field static final VALUE_EMPTY:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
