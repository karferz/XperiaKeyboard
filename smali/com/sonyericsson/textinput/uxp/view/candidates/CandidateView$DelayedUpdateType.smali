.class final enum Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;
.super Ljava/lang/Enum;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DelayedUpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

.field public static final enum NEW:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

.field public static final enum SELECT:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 941
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    const-string v1, "SELECT"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;->SELECT:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    const-string v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;->NEW:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    .line 940
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;->SELECT:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;->NEW:Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

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
    .line 940
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 940
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;
    .locals 1

    .prologue
    .line 940
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/candidates/CandidateView$DelayedUpdateType;

    return-object v0
.end method
