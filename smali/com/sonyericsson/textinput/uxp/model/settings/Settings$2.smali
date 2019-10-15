.class synthetic Lcom/sonyericsson/textinput/uxp/model/settings/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$textinput$uxp$model$settings$ISettings$AutoDictionaryUpdateMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$textinput$uxp$model$settings$ISettings$OneHandedKeyboardPosition:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1250
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->values()[Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$2;->$SwitchMap$com$sonyericsson$textinput$uxp$model$settings$ISettings$AutoDictionaryUpdateMode:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$2;->$SwitchMap$com$sonyericsson$textinput$uxp$model$settings$ISettings$AutoDictionaryUpdateMode:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->OFF:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$2;->$SwitchMap$com$sonyericsson$textinput$uxp$model$settings$ISettings$AutoDictionaryUpdateMode:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->ANY_TIME:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$2;->$SwitchMap$com$sonyericsson$textinput$uxp$model$settings$ISettings$AutoDictionaryUpdateMode:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->WIFI_ONLY:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$AutoDictionaryUpdateMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 1114
    :goto_2
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->values()[Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$2;->$SwitchMap$com$sonyericsson$textinput$uxp$model$settings$ISettings$OneHandedKeyboardPosition:[I

    :try_start_3
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$2;->$SwitchMap$com$sonyericsson$textinput$uxp$model$settings$ISettings$OneHandedKeyboardPosition:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->LEFT:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/settings/Settings$2;->$SwitchMap$com$sonyericsson$textinput$uxp$model$settings$ISettings$OneHandedKeyboardPosition:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->RIGHT:Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/settings/ISettings$OneHandedKeyboardPosition;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 1250
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
