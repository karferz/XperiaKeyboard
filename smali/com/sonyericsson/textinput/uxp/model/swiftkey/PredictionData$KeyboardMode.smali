.class public final enum Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;
.super Ljava/lang/Enum;
.source "PredictionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyboardMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

.field public static final enum FULL_KEYBOARD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

.field public static final enum NONE:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

.field public static final enum PHONEPAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 684
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->NONE:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    const-string v1, "FULL_KEYBOARD"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->FULL_KEYBOARD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    const-string v1, "PHONEPAD"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->PHONEPAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    .line 683
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->NONE:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->FULL_KEYBOARD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->PHONEPAD:Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->$VALUES:[Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 683
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 683
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;
    .locals 1

    .prologue
    .line 683
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->$VALUES:[Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/model/swiftkey/PredictionData$KeyboardMode;

    return-object v0
.end method
