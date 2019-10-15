.class final enum Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;
.super Ljava/lang/Enum;
.source "KeyboardTemplateInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CaseEvaluation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

.field public static final enum FAILED:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

.field public static final enum PASSED:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

.field public static final enum PROCESSED:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 600
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    const-string v1, "PASSED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;->PASSED:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    const-string v1, "PROCESSED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;->PROCESSED:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;->FAILED:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    .line 599
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;->PASSED:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;->PROCESSED:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;->FAILED:Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;->$VALUES:[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

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
    .line 599
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 599
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;
    .locals 1

    .prologue
    .line 599
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;->$VALUES:[Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/model/keyboard/KeyboardTemplateInflater$CaseEvaluation;

    return-object v0
.end method
