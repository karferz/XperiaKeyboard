.class final Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;
.super Ljava/lang/Object;
.source "GridXmlParser.java"


# static fields
.field private static final ATTRIBUTE_EXCLUDE_FROM_DYNAMIC:Ljava/lang/String; = "excludeFromDynamic"

.field private static final ATTRIBUTE_NAME_ICON_IDENTIFIER:Ljava/lang/String; = "iconId"

.field private static final ATTRIBUTE_NAME_IDENTIFIER:Ljava/lang/String; = "identifier"

.field private static final ATTRIBUTE_NAME_LABEL:Ljava/lang/String; = "label"

.field private static final ATTRIBUTE_NAME_SUB_LABEL:Ljava/lang/String; = "subLabel"

.field private static final ATTRIBUTE_VISUAL_LABEL:Ljava/lang/String; = "visualLabel"

.field private static final ELEMENT_NAME_CELL:Ljava/lang/String; = "Cell"

.field private static final ELEMENT_NAME_DYNAMIC_CONTENT:Ljava/lang/String; = "DynamicContent"

.field private static final ELEMENT_NAME_GRID:Ljava/lang/String; = "Grid"

.field private static final ELEMENT_NAME_INCLUDE:Ljava/lang/String; = "Include"

.field private static final ELEMENT_NAME_PAGE:Ljava/lang/String; = "Page"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TI_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private static assignPageReferences(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Page;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/view/grid/Page;>;"
    const/4 v5, 0x0

    .line 95
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 96
    if-nez v1, :cond_0

    move-object v3, v5

    .line 97
    .local v3, "previousPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :goto_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    .line 98
    .local v0, "currentPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    move-object v2, v5

    .line 100
    .local v2, "nextPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :goto_2
    invoke-virtual {v0, v3}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->assignPreviousPage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    .line 101
    invoke-virtual {v0, v2}, Lcom/sonyericsson/textinput/uxp/view/grid/Page;->assignNextPage(Lcom/sonyericsson/textinput/uxp/view/grid/Page;)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 96
    .end local v0    # "currentPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .end local v2    # "nextPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .end local v3    # "previousPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_0
    add-int/lit8 v4, v1, -0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-object v3, v4

    goto :goto_1

    .line 98
    .restart local v0    # "currentPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .restart local v3    # "previousPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_1
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-object v2, v4

    goto :goto_2

    .line 103
    .end local v0    # "currentPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    .end local v3    # "previousPage":Lcom/sonyericsson/textinput/uxp/view/grid/Page;
    :cond_2
    return-void
.end method

.method private static debugPictogramFilters(Landroid/content/res/XmlResourceParser;Lcom/sonyericsson/ned/model/CodePointString;)V
    .locals 3
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "label"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 286
    if-eqz p1, :cond_2

    .line 287
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->firstCodePoint()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isPictogram(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TI_ Not pictogram "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->firstCodePoint()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 289
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->firstCodePoint()I

    move-result v0

    invoke-static {v0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isBlacklistedPictogram(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TI_ Blacklisted pictogram "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 293
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->firstCodePoint()I

    move-result v2

    .line 292
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 293
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 292
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    invoke-static {p1}, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->isNonSupportedNougatPictogram(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TI_ Not nougat supported pictogram "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 297
    invoke-virtual {p1}, Lcom/sonyericsson/ned/model/CodePointString;->firstCodePoint()I

    move-result v2

    .line 296
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 297
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_2
    return-void
.end method

.method private static isNonSupportedNougatPictogram(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 1
    .param p0, "label"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 303
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isUnicode9EmojiSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isNougatSupportedPictogram(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNonSupportedZwjSequence(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 1
    .param p0, "label"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    .line 308
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isZwjSequencesSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isZwjSequence(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedSkinToneBase(Lcom/sonyericsson/ned/model/CodePointString;)Z
    .locals 2
    .param p0, "label"    # Lcom/sonyericsson/ned/model/CodePointString;

    .prologue
    const/4 v0, 0x1

    .line 323
    invoke-static {}, Lcom/sonyericsson/textinput/uxp/util/EnvironmentUtils;->isNougatOrNewer()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/ned/model/CodePointString;->length()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 324
    invoke-static {p0}, Lcom/sonyericsson/ned/util/SemcTextUtil;->isSkinToneBase(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static parse(Landroid/content/Context;ILcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gridXmlResourceIdentifier"    # I
    .param p2, "resourceLookupProvider"    # Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Page;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->parse(Landroid/content/Context;ILcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected static parse(Landroid/content/Context;ILcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;Z)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "gridXmlResourceIdentifier"    # I
    .param p2, "resourceLookupProvider"    # Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;
    .param p3, "ignorePageReference"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Page;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 347
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;-><init>(Landroid/content/Context;)V

    .line 348
    .local v0, "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 349
    .local v5, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/view/grid/Page;>;"
    const/4 v4, 0x0

    .line 351
    .local v4, "includedPages":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/view/grid/Page;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    .local v6, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v8, 0x0

    .line 352
    :try_start_0
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    .local v3, "eventType":I
    move-object v1, v0

    .line 354
    .end local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .local v1, "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    :goto_0
    const/4 v7, 0x1

    if-eq v3, v7, :cond_6

    .line 355
    const/4 v7, 0x2

    if-ne v3, v7, :cond_3

    .line 356
    :try_start_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Include"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 357
    invoke-static {p0, v6, p2}, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->parseIncludeElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    move-object v0, v1

    .line 381
    .end local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    :goto_1
    :try_start_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v3

    move-object v1, v0

    .line 384
    .end local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    goto :goto_0

    .line 359
    :cond_0
    :try_start_3
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Page"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 360
    invoke-static {p0, v6, v1, p2}, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->parsePageElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;)V

    move-object v0, v1

    .end local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    goto :goto_1

    .line 362
    .end local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    :cond_1
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "DynamicContent"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 363
    invoke-static {p0, v6, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->parseDynamicContentElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;)V

    move-object v0, v1

    .end local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    goto :goto_1

    .line 364
    .end local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    :cond_2
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Cell"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 365
    invoke-static {v6, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->parseCellElement(Landroid/content/res/XmlResourceParser;Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;)V

    move-object v0, v1

    .end local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    goto :goto_1

    .line 367
    .end local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    :cond_3
    const/4 v7, 0x3

    if-ne v3, v7, :cond_b

    .line 368
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Page"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 369
    invoke-virtual {v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->build()Lcom/sonyericsson/textinput/uxp/view/grid/Page;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;-><init>(Landroid/content/Context;)V

    .end local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    goto :goto_1

    .line 371
    .end local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    :cond_4
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Include"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 372
    if-eqz v4, :cond_b

    .line 373
    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 374
    const/4 v4, 0x0

    .line 375
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    goto :goto_1

    .line 382
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot read XML file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 351
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "eventType":I
    :catch_1
    move-exception v7

    :goto_2
    :try_start_5
    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 386
    :catchall_0
    move-exception v8

    move-object v11, v8

    move-object v8, v7

    move-object v7, v11

    :goto_3
    if-eqz v6, :cond_5

    if-eqz v8, :cond_a

    :try_start_6
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    :goto_4
    throw v7

    .end local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v3    # "eventType":I
    :cond_6
    if-eqz v6, :cond_7

    if-eqz v8, :cond_9

    :try_start_7
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    .line 388
    :cond_7
    :goto_5
    if-nez p3, :cond_8

    .line 389
    invoke-static {v5}, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->assignPageReferences(Ljava/util/List;)V

    .line 392
    :cond_8
    return-object v5

    .line 386
    :catch_2
    move-exception v7

    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_5

    .end local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .end local v3    # "eventType":I
    .restart local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    :catch_3
    move-exception v9

    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_4

    :catchall_1
    move-exception v7

    goto :goto_3

    .end local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v3    # "eventType":I
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    goto :goto_3

    .line 351
    .end local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    :catch_4
    move-exception v7

    move-object v0, v1

    .end local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    goto :goto_2

    .end local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    :cond_b
    move-object v0, v1

    .end local v1    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .restart local v0    # "currentPageBuilder":Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    goto/16 :goto_1
.end method

.method private static parseCellElement(Landroid/content/res/XmlResourceParser;Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;)V
    .locals 11
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p1, "pageBuilder"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;

    .prologue
    const/4 v6, 0x0

    .line 241
    const/4 v1, 0x0

    .line 242
    .local v1, "iconResourceIdentifier":I
    const/4 v2, 0x0

    .line 243
    .local v2, "label":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v3, 0x0

    .line 244
    .local v3, "subLabel":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v5, 0x0

    .line 245
    .local v5, "excludeFromDynamic":Z
    const/4 v4, 0x0

    .line 247
    .local v4, "visualLabel":Lcom/sonyericsson/ned/model/CodePointString;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {p0}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v0

    if-ge v8, v0, :cond_1

    .line 248
    invoke-interface {p0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 250
    .local v7, "attributeName":Ljava/lang/String;
    const/4 v0, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_0
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 270
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 250
    :sswitch_0
    const-string v9, "iconId"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_1
    const-string v9, "label"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v9, "subLabel"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v9, "excludeFromDynamic"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_4
    const-string v9, "visualLabel"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    .line 252
    :pswitch_0
    invoke-interface {p0, v8, v6}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(II)I

    move-result v1

    .line 253
    goto :goto_2

    .line 256
    :pswitch_1
    invoke-interface {p0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/EscapedStringDecoder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    .line 257
    goto :goto_2

    .line 260
    :pswitch_2
    invoke-interface {p0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 259
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/EscapedStringDecoder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v3

    .line 261
    goto :goto_2

    .line 263
    :pswitch_3
    invoke-interface {p0, v8, v6}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(IZ)Z

    move-result v5

    .line 264
    goto :goto_2

    .line 267
    :pswitch_4
    invoke-interface {p0, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 266
    invoke-static {v0}, Lcom/sonyericsson/textinput/uxp/view/grid/EscapedStringDecoder;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v4

    .line 268
    goto :goto_2

    .line 279
    .end local v7    # "attributeName":Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->isNonSupportedNougatPictogram(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->isNonSupportedZwjSequence(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;

    .line 281
    invoke-static {v2}, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->isSupportedSkinToneBase(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/textinput/uxp/view/grid/Cell;-><init>(ILcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;Lcom/sonyericsson/ned/model/CodePointString;ZZ)V

    .line 280
    invoke-virtual {p1, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->addCell(Lcom/sonyericsson/textinput/uxp/view/grid/Cell;)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;

    .line 283
    :cond_2
    return-void

    .line 250
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d08476c -> :sswitch_2
        -0x4fea706c -> :sswitch_4
        -0x472bf48c -> :sswitch_0
        -0x2a8eb505 -> :sswitch_3
        0x61f7ef4 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private static parseDynamicContentElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pageBuilder"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;

    .prologue
    .line 208
    const/4 v1, 0x0

    .line 209
    .local v1, "identifier":Ljava/lang/String;
    const/4 v0, 0x0

    .line 211
    .local v0, "emptyHint":Ljava/lang/String;
    sget-object v3, Lcom/sonyericsson/textinput/uxp/R$styleable;->PagedGridView_XML:[I

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 214
    .local v2, "styledAttributes":Landroid/content/res/TypedArray;
    const/16 v3, 0x9

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 218
    :cond_0
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 222
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 225
    if-eqz v1, :cond_2

    .line 226
    invoke-virtual {p2, v1, v0}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->dynamicContent(Ljava/lang/String;Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;

    .line 228
    :cond_2
    return-void

    .line 222
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method private static parseIncludeElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "resourceLookupProvider"    # Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/res/XmlResourceParser;",
            "Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/textinput/uxp/view/grid/Page;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 119
    sget-object v3, Lcom/sonyericsson/textinput/uxp/R$styleable;->PagedGridView_XML:[I

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 121
    .local v2, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v0, 0x0

    .line 123
    .local v0, "pages":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/textinput/uxp/view/grid/Page;>;"
    const/16 v3, 0xc

    :try_start_0
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 127
    .local v1, "resourceName":I
    const/4 v3, 0x1

    invoke-static {p0, v1, p2, v3}, Lcom/sonyericsson/textinput/uxp/view/grid/GridXmlParser;->parse(Landroid/content/Context;ILcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;Z)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 132
    .end local v1    # "resourceName":I
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 134
    return-object v0

    .line 132
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method private static parsePageElement(Landroid/content/Context;Landroid/content/res/XmlResourceParser;Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "pageBuilder"    # Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    .param p3, "resourceLookupProvider"    # Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;

    .prologue
    .line 150
    sget-object v1, Lcom/sonyericsson/textinput/uxp/R$styleable;->PagedGridView_XML:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 154
    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    const/4 v1, 0x3

    .line 157
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-interface {p3, v1}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v1

    .line 155
    invoke-virtual {p2, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->columnMinWidth(I)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;

    .line 160
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    const/4 v1, 0x4

    .line 163
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    invoke-interface {p3, v1}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v1

    .line 161
    invoke-virtual {p2, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->rowPreferredHeight(I)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;

    .line 166
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 167
    const/4 v1, 0x5

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 168
    invoke-interface {p3, v1}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getDimensionPixelOffset(Ljava/lang/String;)I

    move-result v1

    .line 167
    invoke-virtual {p2, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->rowMinHeight(I)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;

    .line 172
    :cond_2
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 173
    const/4 v1, 0x6

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-interface {p3, v1}, Lcom/sonyericsson/textinput/uxp/controller/IResourceLookupProvider;->getFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->minVisibleRows(F)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;

    .line 177
    :cond_3
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->setCellBackgroundResourceId(I)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;

    .line 182
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 183
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->setCellBorderThicknessResourceId(I)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;

    .line 187
    :cond_5
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 188
    const/16 v1, 0xb

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;->setPageSpecificLabelTextSize(I)Lcom/sonyericsson/textinput/uxp/view/grid/Page$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 194
    return-void

    .line 192
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method
