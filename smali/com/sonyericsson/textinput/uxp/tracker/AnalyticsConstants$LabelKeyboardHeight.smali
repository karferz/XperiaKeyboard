.class public final enum Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;
.super Ljava/lang/Enum;
.source "AnalyticsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LabelKeyboardHeight"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

.field public static final enum DEFAULT:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

.field public static final enum LARGER:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

.field public static final enum MAX:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

.field public static final enum MIN:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

.field public static final enum SMALLER:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;


# instance fields
.field private final mLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 220
    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    const-string v1, "MAX"

    const-string v2, "MaxHeight"

    invoke-direct {v0, v1, v3, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->MAX:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    const-string v1, "DEFAULT"

    const-string v2, "Default"

    invoke-direct {v0, v1, v4, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->DEFAULT:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    const-string v1, "MIN"

    const-string v2, "Min"

    invoke-direct {v0, v1, v5, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->MIN:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    const-string v1, "LARGER"

    const-string v2, "Larger"

    invoke-direct {v0, v1, v6, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->LARGER:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    const-string v1, "SMALLER"

    const-string v2, "Smaller"

    invoke-direct {v0, v1, v7, v2}, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->SMALLER:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    .line 219
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->MAX:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->DEFAULT:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->MIN:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->LARGER:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->SMALLER:Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    aput-object v1, v0, v7

    sput-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->$VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 225
    iput-object p3, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->mLabel:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 219
    const-class v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;
    .locals 1

    .prologue
    .line 219
    sget-object v0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->$VALUES:[Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/tracker/AnalyticsConstants$LabelKeyboardHeight;->mLabel:Ljava/lang/String;

    return-object v0
.end method
