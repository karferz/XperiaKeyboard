.class public final enum Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;
.super Ljava/lang/Enum;
.source "LanguageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClickAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

.field public static final enum ACTIVATION_TOGGLE:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

.field public static final enum CANCEL_DOWNLOAD:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

.field public static final enum DOWNLOAD:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

.field public static final enum PICK_LAYOUT:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

.field public static final enum UPDATE:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 191
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    const-string v1, "ACTIVATION_TOGGLE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->ACTIVATION_TOGGLE:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->DOWNLOAD:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->UPDATE:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    const-string v1, "CANCEL_DOWNLOAD"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->CANCEL_DOWNLOAD:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    const-string v1, "PICK_LAYOUT"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->PICK_LAYOUT:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    .line 190
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->ACTIVATION_TOGGLE:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->DOWNLOAD:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->UPDATE:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->CANCEL_DOWNLOAD:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->PICK_LAYOUT:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

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
    .line 190
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 190
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ClickAction;

    return-object v0
.end method
