.class public final enum Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;
.super Ljava/lang/Enum;
.source "ScrollEdgeEffectManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Edge"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

.field public static final enum BOTTOM:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

.field public static final enum LEFT:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

.field public static final enum RIGHT:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

.field public static final enum TOP:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 330
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->TOP:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    .line 335
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->BOTTOM:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    .line 340
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->LEFT:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    .line 345
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->RIGHT:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    .line 326
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->TOP:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->BOTTOM:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->LEFT:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->RIGHT:Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

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
    .line 326
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 326
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;
    .locals 1

    .prologue
    .line 326
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/grid/ScrollEdgeEffectManager$Edge;

    return-object v0
.end method
