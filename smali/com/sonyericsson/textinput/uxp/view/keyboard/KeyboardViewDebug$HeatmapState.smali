.class public final enum Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;
.super Ljava/lang/Enum;
.source "KeyboardViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeatmapState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

.field public static final enum DISPOSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

.field public static final enum IDLE:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

.field public static final enum PENDING_PROCESSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

.field public static final enum PRENDING_DRAW:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

.field public static final enum PROCESSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 215
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->IDLE:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    const-string v1, "PENDING_PROCESSING"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PENDING_PROCESSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    const-string v1, "PROCESSING"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PROCESSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    const-string v1, "PRENDING_DRAW"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PRENDING_DRAW:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    const-string v1, "DISPOSING"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->DISPOSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    .line 214
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->IDLE:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PENDING_PROCESSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PROCESSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->PRENDING_DRAW:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->DISPOSING:Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

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
    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 214
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;
    .locals 1

    .prologue
    .line 214
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/keyboard/KeyboardViewDebug$HeatmapState;

    return-object v0
.end method
