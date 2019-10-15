.class final enum Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;
.super Ljava/lang/Enum;
.source "InputMethodServiceGlue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "InitiationState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

.field public static final enum FULLSCREEN_INITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

.field public static final enum PARTSCREEN_INITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

.field public static final enum UNINITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1027
    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    const-string v1, "UNINITIATED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->UNINITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    const-string v1, "FULLSCREEN_INITIATED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->FULLSCREEN_INITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    const-string v1, "PARTSCREEN_INITIATED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->PARTSCREEN_INITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    .line 1026
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->UNINITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->FULLSCREEN_INITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->PARTSCREEN_INITIATED:Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->$VALUES:[Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

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
    .line 1026
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1026
    const-class v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;
    .locals 1

    .prologue
    .line 1026
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->$VALUES:[Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/glue/InputMethodServiceGlue$InitiationState;

    return-object v0
.end method
