.class public final enum Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;
.super Ljava/lang/Enum;
.source "ISkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackgroundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

.field public static final enum EMOJI:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

.field public static final enum NORMAL:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;->NORMAL:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    const-string v1, "EMOJI"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;->EMOJI:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    .line 109
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;->NORMAL:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;->EMOJI:Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

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
    .line 109
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/controller/skin/ISkin$BackgroundType;

    return-object v0
.end method
