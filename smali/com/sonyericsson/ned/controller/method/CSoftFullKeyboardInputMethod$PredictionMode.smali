.class final enum Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;
.super Ljava/lang/Enum;
.source "CSoftFullKeyboardInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PredictionMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

.field public static final enum AUTOMATIC_DISAMBIGUATION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

.field public static final enum AUTOMATIC_SELECTION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

.field public static final enum MANUAL_SELECTION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1060
    new-instance v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    const-string v1, "AUTOMATIC_SELECTION"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->AUTOMATIC_SELECTION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    new-instance v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    const-string v1, "AUTOMATIC_DISAMBIGUATION"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->AUTOMATIC_DISAMBIGUATION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    new-instance v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    const-string v1, "MANUAL_SELECTION"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->MANUAL_SELECTION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    .line 1059
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->AUTOMATIC_SELECTION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->AUTOMATIC_DISAMBIGUATION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->MANUAL_SELECTION:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->$VALUES:[Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

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
    .line 1059
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1059
    const-class v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;
    .locals 1

    .prologue
    .line 1059
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->$VALUES:[Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$PredictionMode;

    return-object v0
.end method
