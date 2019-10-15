.class public final enum Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;
.super Ljava/lang/Enum;
.source "ISizeAndScaleProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

.field public static final enum ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

.field public static final enum PADDING:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

.field public static final enum SECONDARY_PRINT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

.field public static final enum SMILEY:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

.field public static final enum TEXT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 150
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    const-string v1, "ICON"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->TEXT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    const-string v1, "SECONDARY_PRINT"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->SECONDARY_PRINT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    const-string v1, "PADDING"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->PADDING:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    const-string v1, "SMILEY"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->SMILEY:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    .line 149
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->ICON:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->TEXT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->SECONDARY_PRINT:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->PADDING:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->SMILEY:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

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
    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 149
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;
    .locals 1

    .prologue
    .line 149
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$ScaleType;

    return-object v0
.end method
