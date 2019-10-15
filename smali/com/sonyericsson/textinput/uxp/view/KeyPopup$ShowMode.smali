.class final enum Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;
.super Ljava/lang/Enum;
.source "KeyPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/KeyPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ShowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

.field public static final enum HIDDEN:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

.field public static final enum SHOWING_CANDIDATES:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

.field public static final enum SHOWING_PREVIEW:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1134
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->HIDDEN:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    const-string v1, "SHOWING_PREVIEW"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->SHOWING_PREVIEW:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    const-string v1, "SHOWING_CANDIDATES"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->SHOWING_CANDIDATES:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    .line 1133
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->HIDDEN:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->SHOWING_PREVIEW:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->SHOWING_CANDIDATES:Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

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
    .line 1133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1133
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;
    .locals 1

    .prologue
    .line 1133
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/KeyPopup$ShowMode;

    return-object v0
.end method
