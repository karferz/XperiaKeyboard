.class public final enum Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;
.super Ljava/lang/Enum;
.source "AnalyticsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelActiveState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

.field public static final enum ACTIVE:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

.field public static final enum DEACTIVATED:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;


# instance fields
.field private final mStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 134
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    const-string v1, "ACTIVE"

    const-string v2, "Active"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->ACTIVE:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    const-string v1, "DEACTIVATED"

    const-string v2, "Deactivated"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->DEACTIVATED:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    .line 133
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->ACTIVE:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->DEACTIVATED:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->$VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->mStatus:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 133
    const-class v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->$VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;

    return-object v0
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelActiveState;->mStatus:Ljava/lang/String;

    return-object v0
.end method
