.class public final enum Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;
.super Ljava/lang/Enum;
.source "MyWordsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

.field public static final enum DELETE:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

.field public static final enum EDIT_WORD:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

.field public static final enum NONE:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

.field public static final enum WORD:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 504
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    const-string v1, "WORD"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->WORD:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    const-string v1, "EDIT_WORD"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->EDIT_WORD:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->DELETE:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->NONE:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    .line 503
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->WORD:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->EDIT_WORD:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->DELETE:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->NONE:Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

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
    .line 503
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 503
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;
    .locals 1

    .prologue
    .line 503
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/controller/settings/MyWordsActivity$DialogType;

    return-object v0
.end method
