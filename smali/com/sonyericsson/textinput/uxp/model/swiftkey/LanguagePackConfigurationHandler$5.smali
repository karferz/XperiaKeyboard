.class synthetic Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$5;
.super Ljava/lang/Object;
.source "LanguagePackConfigurationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$touchtype_fluency$util$RefreshListener$RefreshResult:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 573
    invoke-static {}, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->values()[Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$5;->$SwitchMap$com$touchtype_fluency$util$RefreshListener$RefreshResult:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$5;->$SwitchMap$com$touchtype_fluency$util$RefreshListener$RefreshResult:[I

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->FAILED:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$5;->$SwitchMap$com$touchtype_fluency$util$RefreshListener$RefreshResult:[I

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->NO_CHANGE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$5;->$SwitchMap$com$touchtype_fluency$util$RefreshListener$RefreshResult:[I

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->SUCCESS:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$5;->$SwitchMap$com$touchtype_fluency$util$RefreshListener$RefreshResult:[I

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->CONFIG_FILE_INVALID:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/LanguagePackConfigurationHandler$5;->$SwitchMap$com$touchtype_fluency$util$RefreshListener$RefreshResult:[I

    sget-object v1, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->STORAGE_UNAVAILABLE:Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;

    invoke-virtual {v1}, Lcom/touchtype_fluency/util/RefreshListener$RefreshResult;->ordinal()I

    move-result v1

    const/4 v2, 0x5

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
