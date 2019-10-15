.class public Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;
.super Ljava/lang/Object;
.source "ApplicationCompletion.java"

# interfaces
.implements Lcom/sonyericsson/collaboration/Bindable;
.implements Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionListener;
.implements Lcom/sonyericsson/ned/controller/IEventHandlerV3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion$Factory;
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

.field private static final WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;


# instance fields
.field private mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mIApplicationCompletionHandler:Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionHandler;

.field private mWordSuggesterListeners:[Lcom/sonyericsson/ned/controller/IExternalSuggestionsListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionHandler;

    aput-object v1, v0, v3

    const-class v1, Lcom/sonyericsson/ned/controller/IExternalSuggestionsListener;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->REQUIRED:[Ljava/lang/Class;

    .line 31
    new-array v0, v2, [Lcom/sonyericsson/ned/controller/EventObject;

    new-instance v1, Lcom/sonyericsson/ned/controller/Command;

    const-string v2, "select-candidate"

    invoke-direct {v1, v2}, Lcom/sonyericsson/ned/controller/Command;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method private fireOnNewSuggestions([Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 4
    .param p1, "completions"    # [Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 80
    iget-object v1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->mWordSuggesterListeners:[Lcom/sonyericsson/ned/controller/IExternalSuggestionsListener;

    if-eqz v1, :cond_0

    .line 81
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->mWordSuggesterListeners:[Lcom/sonyericsson/ned/controller/IExternalSuggestionsListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 82
    .local v0, "listener":Lcom/sonyericsson/ned/controller/IExternalSuggestionsListener;
    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/ned/controller/IExternalSuggestionsListener;->onNewExternalSuggestions(Ljava/lang/Object;[Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "listener":Lcom/sonyericsson/ned/controller/IExternalSuggestionsListener;
    :cond_0
    return-void
.end method

.method private static getStringFromCompletion(Landroid/view/inputmethod/CompletionInfo;)Lcom/sonyericsson/ned/model/CodePointString;
    .locals 2
    .param p0, "completion"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/view/inputmethod/CompletionInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 44
    .local v0, "result":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 45
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 51
    :goto_0
    return-object v1

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 49
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    goto :goto_0

    .line 51
    :cond_1
    sget-object v1, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method private static getStringsFromCompletions([Landroid/view/inputmethod/CompletionInfo;)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p0, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 55
    const/4 v1, 0x0

    .line 57
    .local v1, "result":[Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz p0, :cond_0

    .line 58
    array-length v2, p0

    new-array v1, v2, [Lcom/sonyericsson/ned/model/CodePointString;

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 60
    aget-object v2, p0, v0

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->getStringFromCompletion(Landroid/view/inputmethod/CompletionInfo;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    aput-object v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    .end local v0    # "i":I
    :cond_0
    return-object v1
.end method

.method private static validateCompletions([Landroid/view/inputmethod/CompletionInfo;)[Landroid/view/inputmethod/CompletionInfo;
    .locals 5
    .param p0, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 68
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/CompletionInfo;>;"
    array-length v4, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, p0, v3

    .line 70
    .local v0, "info":Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "info":Landroid/view/inputmethod/CompletionInfo;
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v2, v3, [Landroid/view/inputmethod/CompletionInfo;

    .line 75
    .local v2, "newCompletions":[Landroid/view/inputmethod/CompletionInfo;
    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 76
    return-object v2
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
    .line 89
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/ned/controller/IExternalSuggestionsListener;

    if-ne p2, v0, :cond_0

    .line 90
    new-array v0, p1, [Lcom/sonyericsson/ned/controller/IExternalSuggestionsListener;

    iput-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->mWordSuggesterListeners:[Lcom/sonyericsson/ned/controller/IExternalSuggestionsListener;

    .line 91
    iget-object v0, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->mWordSuggesterListeners:[Lcom/sonyericsson/ned/controller/IExternalSuggestionsListener;

    .line 93
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
    .line 98
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionHandler;

    if-ne p2, v0, :cond_0

    .line 99
    check-cast p1, Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionHandler;

    .end local p1    # "instance":Ljava/lang/Object;
    iput-object p1, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->mIApplicationCompletionHandler:Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionHandler;

    .line 101
    :cond_0
    return-void
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 118
    const/16 v0, 0xa

    return v0
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
    .line 106
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->REQUIRED:[Ljava/lang/Class;

    return-object v0
.end method

.method public getWantedEvents()[Lcom/sonyericsson/ned/controller/EventObject;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->WANTED_EVENTS:[Lcom/sonyericsson/ned/controller/EventObject;

    return-object v0
.end method

.method public onEvent(Lcom/sonyericsson/ned/controller/EventObject;)Z
    .locals 4
    .param p1, "event"    # Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "selected":I
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v2, :cond_1

    .line 130
    check-cast p1, Lcom/sonyericsson/ned/controller/Command;

    .end local p1    # "event":Lcom/sonyericsson/ned/controller/EventObject;
    invoke-virtual {p1}, Lcom/sonyericsson/ned/controller/Command;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/model/CodePointString;

    .line 131
    .local v0, "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    if-eqz v0, :cond_0

    .line 132
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->getStringsFromCompletions([Landroid/view/inputmethod/CompletionInfo;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/sonyericsson/ned/util/ArrayUtil;->search([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 135
    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->mIApplicationCompletionHandler:Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionHandler;

    iget-object v3, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lcom/sonyericsson/textinput/uxp/controller/IApplicationCompletionHandler;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 137
    const/4 v2, 0x1

    .line 140
    .end local v0    # "candidate":Lcom/sonyericsson/ned/model/CodePointString;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onMissedEvents([Lcom/sonyericsson/ned/controller/EventObject;)V
    .locals 0
    .param p1, "event"    # [Lcom/sonyericsson/ned/controller/EventObject;

    .prologue
    .line 146
    return-void
.end method

.method public onNewCompletions(Ljava/lang/Object;[Landroid/view/inputmethod/CompletionInfo;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "completions"    # [Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 111
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->validateCompletions([Landroid/view/inputmethod/CompletionInfo;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object p2

    .line 112
    iput-object p2, p0, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 113
    invoke-static {p2}, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->getStringsFromCompletions([Landroid/view/inputmethod/CompletionInfo;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/textinput/uxp/controller/completion/ApplicationCompletion;->fireOnNewSuggestions([Lcom/sonyericsson/ned/model/CodePointString;)V

    .line 114
    return-void
.end method
