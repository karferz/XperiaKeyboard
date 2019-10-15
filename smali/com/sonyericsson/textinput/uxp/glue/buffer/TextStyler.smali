.class public Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;
.super Ljava/lang/Object;
.source "TextStyler.java"

# interfaces
.implements Lcom/sonyericsson/textinput/uxp/glue/buffer/ITextStyler;
.implements Lcom/sonyericsson/collaboration/ManagedBindable;
.implements Lcom/sonyericsson/ned/controller/IWordSuggesterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler$Factory;
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
.field private mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mForeground:Landroid/text/style/ForegroundColorSpan;

.field private final mIsForegroundColoringActive:Z

.field private final mUnderline:Landroid/text/style/UnderlineSpan;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->REQUIRED:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "currentInputMethod"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mCurrentIndex:I

    .line 33
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mUnderline:Landroid/text/style/UnderlineSpan;

    .line 40
    const-string v0, "singletap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mIsForegroundColoringActive:Z

    .line 41
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->REQUIRED:[Ljava/lang/Class;

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
    .line 85
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    return-object v0
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
    .line 78
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/content/Context;

    if-ne p2, v0, :cond_0

    .line 79
    check-cast p1, Landroid/content/Context;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mContext:Landroid/content/Context;

    .line 81
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 74
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
    .line 90
    sget-object v0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public init()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mContext:Landroid/content/Context;

    const v2, 0x7f0d00da

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mForeground:Landroid/text/style/ForegroundColorSpan;

    .line 66
    return-void
.end method

.method public initOptional()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public onCandidateSelection(Ljava/lang/Object;ILcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "reason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$SelectionReason;

    .prologue
    .line 54
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mCurrentIndex:I

    .line 55
    return-void
.end method

.method public onCandidatesCanceled(Ljava/lang/Object;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mCurrentIndex:I

    .line 60
    return-void
.end method

.method public onCandidatesChanged(Ljava/lang/Object;III[Lcom/sonyericsson/ned/model/CodePointString;IILcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "stemCharsLength"    # I
    .param p3, "activeCandidateIndex"    # I
    .param p4, "highlightedIndex"    # I
    .param p5, "candidates"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .param p6, "cursorPos"    # I
    .param p7, "nbrCorrectionCandidates"    # I
    .param p8, "changeReason"    # Lcom/sonyericsson/ned/controller/IWordSuggesterListener$ChangeReason;

    .prologue
    .line 48
    iput p4, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mCurrentIndex:I

    .line 49
    iput-object p5, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 50
    return-void
.end method

.method public styleComposingText(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 7
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x121

    const/4 v5, 0x0

    .line 95
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 97
    .local v0, "string":Landroid/text/SpannableString;
    iget-boolean v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mIsForegroundColoringActive:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mCurrentIndex:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    array-length v1, v1

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mCurrentIndex:I

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mCandidates:[Lcom/sonyericsson/ned/model/CodePointString;

    iget v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mCurrentIndex:I

    aget-object v1, v1, v2

    .line 98
    invoke-virtual {v1}, Lcom/sonyericsson/ned/model/CodePointString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 102
    new-instance v1, Landroid/text/style/SuggestionSpan;

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mContext:Landroid/content/Context;

    new-array v3, v5, [Ljava/lang/String;

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 103
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    .line 102
    invoke-virtual {v0, v1, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 109
    :goto_0
    return-object v0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/glue/buffer/TextStyler;->mUnderline:Landroid/text/style/UnderlineSpan;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v2

    invoke-virtual {v0, v1, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method
