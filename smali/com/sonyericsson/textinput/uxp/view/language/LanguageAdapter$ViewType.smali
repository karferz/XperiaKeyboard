.class public final enum Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;
.super Ljava/lang/Enum;
.source "LanguageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

.field public static final enum ITEM:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

.field public static final enum SECTION:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 195
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    const-string v1, "ITEM"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->ITEM:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    const-string v1, "SECTION"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->SECTION:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    .line 194
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->ITEM:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->SECTION:Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

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
    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/language/LanguageAdapter$ViewType;

    return-object v0
.end method
