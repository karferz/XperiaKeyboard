.class public final enum Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;
.super Ljava/lang/Enum;
.source "SwapPunctuationHintVisualisation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

.field public static final enum NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

.field public static final enum PUNCTUATION_INSERTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

.field public static final enum PUNCTUATION_SWAP_AVOIDANCE_STARTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

.field public static final enum SPACE_DELETED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

.field public static final enum SPACE_INSERTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    const-string v1, "SPACE_INSERTED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->SPACE_INSERTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    const-string v1, "SPACE_DELETED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->SPACE_DELETED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    const-string v1, "PUNCTUATION_INSERTED"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->PUNCTUATION_INSERTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    .line 180
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    const-string v1, "PUNCTUATION_SWAP_AVOIDANCE_STARTED"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->PUNCTUATION_SWAP_AVOIDANCE_STARTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    .line 178
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->NONE:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->SPACE_INSERTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->SPACE_DELETED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->PUNCTUATION_INSERTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->PUNCTUATION_SWAP_AVOIDANCE_STARTED:Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

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
    .line 178
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/settings/SwapPunctuationHintVisualisation$State;

    return-object v0
.end method
