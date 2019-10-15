.class public final enum Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;
.super Ljava/lang/Enum;
.source "Requirement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/configuration/Requirement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EnterKeyAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

.field public static final enum DONE:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

.field public static final enum ENTER:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

.field public static final enum GO:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

.field public static final enum NEXT:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

.field public static final enum PREVIOUS:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

.field public static final enum SEARCH:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

.field public static final enum SEND:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    const-string v1, "ENTER"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->ENTER:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->SEARCH:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    const-string v1, "GO"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->GO:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    const-string v1, "DONE"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->DONE:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    const-string v1, "NEXT"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->NEXT:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    const-string v1, "PREVIOUS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->PREVIOUS:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    const-string v1, "SEND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->SEND:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    .line 23
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->ENTER:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->SEARCH:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->GO:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->DONE:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->NEXT:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->PREVIOUS:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->SEND:Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->$VALUES:[Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->$VALUES:[Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/configuration/Requirement$EnterKeyAction;

    return-object v0
.end method
