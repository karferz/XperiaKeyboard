.class final enum Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;
.super Ljava/lang/Enum;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActiveStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

.field public static final enum BOLD:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

.field public static final enum NORMAL:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 937
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    const-string v1, "BOLD"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;->BOLD:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    .line 936
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;->NORMAL:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;->BOLD:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

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
    .line 936
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 936
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;
    .locals 1

    .prologue
    .line 936
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$ActiveStyle;

    return-object v0
.end method
