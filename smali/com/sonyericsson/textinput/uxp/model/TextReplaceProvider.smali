.class public Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider;
.super Ljava/lang/Object;
.source "TextReplaceProvider.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Bindable;
.implements Lcom/sonyericsson/ned/model/ITextReplaceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$Factory;,
        Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$LanguageReplacements;
    }
.end annotation


# static fields
.field private static final COLON_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

.field public static final DELIMITER_STRING:Ljava/lang/String; = ":"

.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final SPACE_COLON_SPACE:Lcom/sonyericsson/ned/model/CodePointString;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, ": "

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider;->COLON_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 18
    const-string v0, " : "

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider;->SPACE_COLON_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$400()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider;->SPACE_COLON_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method static synthetic access$500()Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider;->COLON_SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public bindMany(ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-void
.end method

.method public getLanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$LanguageReplacements;->access$000()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeeds()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 33
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getNewStrings()[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$LanguageReplacements;->access$200()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalStrings()[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$LanguageReplacements;->access$100()[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    return-object v0
.end method

.method public getSeparators()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/model/TextReplaceProvider$LanguageReplacements;->access$300()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
