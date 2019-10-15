.class synthetic Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$8;
.super Ljava/lang/Object;
.source "SwiftKeyEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sonyericsson$textinput$uxp$model$swiftkey$PredictionData$KeyboardMode:[I

.field static final synthetic $SwitchMap$com$sonyericsson$textinput$uxp$model$swiftkey$SwiftKeyEngine$EngineFlow:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1945
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->values()[Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$8;->$SwitchMap$com$sonyericsson$textinput$uxp$model$swiftkey$PredictionData$KeyboardMode:[I

    :try_start_0
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$8;->$SwitchMap$com$sonyericsson$textinput$uxp$model$swiftkey$PredictionData$KeyboardMode:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->FULL_KEYBOARD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$8;->$SwitchMap$com$sonyericsson$textinput$uxp$model$swiftkey$PredictionData$KeyboardMode:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->PHONEPAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    .line 1923
    :goto_1
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->values()[Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$8;->$SwitchMap$com$sonyericsson$textinput$uxp$model$swiftkey$SwiftKeyEngine$EngineFlow:[I

    :try_start_2
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$8;->$SwitchMap$com$sonyericsson$textinput$uxp$model$swiftkey$SwiftKeyEngine$EngineFlow:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->SERVICE_CREATION:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$8;->$SwitchMap$com$sonyericsson$textinput$uxp$model$swiftkey$SwiftKeyEngine$EngineFlow:[I

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->FIELD_INITIATION:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    .line 1945
    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_0
.end method
