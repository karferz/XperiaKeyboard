.class public Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;
.super Ljava/lang/Object;
.source "SwapPunctuationsController.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/model/IPrimaryLanguageChangedListener;
.implements Lcom/sonyericsson/ned/model/ITextBufferListener;
.implements Lcom/sonyericsson/textinput/uxp/model/ISwapPunctuationsProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController$Factory;
    }
.end annotation


# static fields
.field private static final REQUIRED:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

.field private mISwapPunctuationListener:[Lcom/sonyericsson/ned/model/ISwapPunctuationListener;

.field private mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

.field private mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

.field private mSwapPunctuations:[Lcom/sonyericsson/ned/model/CodePointString;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lcom/sonyericsson/ned/model/ITextBuffer;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/sonyericsson/ned/model/ILanguageController;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/sonyericsson/ned/model/ISwapPunctuationListener;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/sonyericsson/ned/model/IWaitForTextModifications;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING_ARRAY:[Lcom/sonyericsson/ned/model/CodePointString;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->mSwapPunctuations:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 39
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private fireOnSwap()V
    .locals 4

    .prologue
    .line 86
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->mISwapPunctuationListener:[Lcom/sonyericsson/ned/model/ISwapPunctuationListener;

    if-eqz v1, :cond_0

    .line 87
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->mISwapPunctuationListener:[Lcom/sonyericsson/ned/model/ISwapPunctuationListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 88
    .local v0, "listener":Lcom/sonyericsson/ned/model/ISwapPunctuationListener;
    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ISwapPunctuationListener;->onSwap()V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v0    # "listener":Lcom/sonyericsson/ned/model/ISwapPunctuationListener;
    :cond_0
    return-void
.end method

.method private isSwapQuotation(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 5
    .param p1, "insertion"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v3, 0x0

    .line 114
    sget-object v4, Lcom/sonyericsson/ned/util/StringUtil;->QUOTATION:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p1, v4}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 128
    :cond_0
    :goto_0
    return v3

    .line 119
    :cond_1
    invoke-virtual {p2, p1}, Lcom/sonyericsson/ned/model/CodePointString;->lastIndexOf(Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 118
    invoke-virtual {p2, v3, v4}, Lcom/sonyericsson/ned/model/CodePointString;->substring(II)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 123
    .local v2, "textInsertionExcl":Lcom/sonyericsson/ned/model/CodePointString;
    sget-object v4, Lcom/sonyericsson/ned/util/StringUtil;->QUOTATION:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v2, v4}, Lcom/sonyericsson/ned/model/CodePointString;->lastIndexOf(Lcom/sonyericsson/ned/model/CodePointString;)I

    move-result v1

    .line 124
    .local v1, "index":I
    if-ltz v1, :cond_0

    invoke-virtual {v2}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_0

    .line 125
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4}, Lcom/sonyericsson/ned/model/CodePointString;->codePointAt(I)I

    move-result v0

    .line 126
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method private setupPunctuations(Ljava/lang/String;)V
    .locals 1
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    invoke-interface {v0, p1}, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;->getLanguageSwapPunctuations(Ljava/lang/String;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->mSwapPunctuations:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 58
    :cond_0
    return-void
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
    .line 73
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/model/ISwapPunctuationListener;

    if-ne p2, v0, :cond_0

    .line 74
    new-array v0, p1, [Lcom/sonyericsson/ned/model/ISwapPunctuationListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->mISwapPunctuationListener:[Lcom/sonyericsson/ned/model/ISwapPunctuationListener;

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->mISwapPunctuationListener:[Lcom/sonyericsson/ned/model/ISwapPunctuationListener;

    .line 77
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bindOne(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
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
    .line 62
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/model/ITextBuffer;

    if-ne p2, v0, :cond_1

    .line 63
    check-cast p1, Lcom/sonyericsson/ned/model/ITextBuffer;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->mBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_1
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    if-ne p2, v0, :cond_2

    .line 65
    check-cast p1, Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->mLanguageLayoutProvider:Lcom/sonyericsson/textinput/uxp/model/ILanguageLayoutProviderV2;

    goto :goto_0

    .line 66
    .restart local p1    # "instance":Ljava/lang/Object;
    :cond_2
    const-class v0, Lcom/sonyericsson/ned/model/ILanguageController;

    if-ne p2, v0, :cond_0

    .line 67
    check-cast p1, Lcom/sonyericsson/ned/model/ILanguageController;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 52
    return-void
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
    .line 82
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->mLanguageController:Lcom/sonyericsson/ned/model/ILanguageController;

    invoke-interface {v0}, Lcom/sonyericsson/ned/model/ILanguageController;->getPrimaryLanguageIso3()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->setupPunctuations(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public isSwapPunctuation(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 6
    .param p1, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->mSwapPunctuations:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 95
    .local v0, "p":Lcom/sonyericsson/ned/model/CodePointString;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 96
    const/4 v1, 0x1

    .line 99
    .end local v0    # "p":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_0
    return v1

    .line 94
    .restart local v0    # "p":Lcom/sonyericsson/ned/model/CodePointString;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public onDeletion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;II)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "cursorIndex"    # I
    .param p5, "nbrDeleted"    # I

    .prologue
    .line 163
    return-void
.end method

.method public onFinishComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "committedText"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 158
    return-void
.end method

.method public onInsertion(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "insertion"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 141
    sget-object v0, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {v0, p4}, Lcom/sonyericsson/ned/model/CodePointString;->append(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/ned/model/CodePointString;->endsWith(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0, p4}, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->isSwapPunctuation(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p4, p2}, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->isSwapQuotation(Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->mBuffer:Lcom/sonyericsson/ned/model/ITextBuffer;

    invoke-virtual {p4}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/sonyericsson/ned/util/StringUtil;->SPACE:Lcom/sonyericsson/ned/model/CodePointString;

    invoke-virtual {p4, v2}, Lcom/sonyericsson/ned/model/CodePointString;->append(Lcom/sonyericsson/ned/model/CodePointString;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/ned/model/ITextBuffer;->replace(ILcom/sonyericsson/ned/model/CodePointString;)Z

    .line 144
    invoke-direct {p0}, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->fireOnSwap()V

    .line 146
    :cond_1
    return-void
.end method

.method public onNewComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "composing"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 152
    return-void
.end method

.method public onPreComposingText(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "text"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 173
    return-void
.end method

.method public onPrimaryLanguageChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "primaryLanguageIso3"    # Ljava/lang/String;
    .param p2, "primaryLanguageLayout"    # Ljava/lang/String;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/sonyericsson/textinput/uxp/controller/SwapPunctuationsController;->setupPunctuations(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public onReplacement(Ljava/lang/Object;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;I)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "textBeforeCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p3, "textAfterCursor"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p4, "inserted"    # Lcom/sonyericsson/ned/model/CodePointString;
    .param p5, "cursorIndex"    # I

    .prologue
    .line 169
    return-void
.end method
