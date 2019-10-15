.class public abstract Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;
.super Ljava/lang/Object;
.source "TopDomainUtils.java"


# static fields
.field private static final COUNTRY_TAG:Ljava/lang/String; = "CountryName"

.field private static final DEBUG:Z = false

.field private static final MCC_TAG:Ljava/lang/String; = "Mcc"

.field private static final SUFFIX_TAG:Ljava/lang/String; = "Suffix"

.field private static final TOPDOMAIN_TAG:Ljava/lang/String; = "TopDomain"

.field private static final mDefaultDomains:[Lcom/sonyericsson/ned/model/CodePointString;

.field private static mTopDomainMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mXmlParser:Landroid/content/res/XmlResourceParser;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/ned/model/CodePointString;

    const/4 v1, 0x0

    const-string v2, "com"

    .line 30
    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "net"

    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "org"

    .line 31
    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "edu"

    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "gov"

    .line 32
    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->mDefaultDomains:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->mTopDomainMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addListToArray(Ljava/util/List;[Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 1
    .param p1, "theArray"    # [Lcom/sonyericsson/ned/model/CodePointString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;[",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ")[",
            "Lcom/sonyericsson/ned/model/CodePointString;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "theList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, p1

    .line 79
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sonyericsson/ned/model/CodePointString;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sonyericsson/ned/util/ArrayUtil;->mergeArray([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0
.end method

.method public static getTopDomains(Landroid/content/Context;)[Lcom/sonyericsson/ned/model/CodePointString;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    if-nez p0, :cond_0

    .line 49
    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->mDefaultDomains:[Lcom/sonyericsson/ned/model/CodePointString;

    .line 70
    :goto_0
    return-object v2

    .line 51
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .local v0, "domainList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 53
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->mcc:I

    .line 52
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v1

    .line 55
    .local v1, "mcc":Lcom/sonyericsson/ned/model/CodePointString;
    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->mTopDomainMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 56
    invoke-static {p0}, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->readTopDomainData(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->mTopDomainMap:Ljava/util/Map;

    .line 60
    :cond_1
    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->mTopDomainMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 61
    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->mDefaultDomains:[Lcom/sonyericsson/ned/model/CodePointString;

    goto :goto_0

    .line 65
    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "1"

    invoke-static {v2}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/ned/model/CodePointString;->equals(Lcom/sonyericsson/ned/model/CodePointString;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 67
    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->mTopDomainMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "domainList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    check-cast v0, Ljava/util/List;

    .line 70
    .restart local v0    # "domainList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    :cond_3
    sget-object v2, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->mDefaultDomains:[Lcom/sonyericsson/ned/model/CodePointString;

    invoke-static {v0, v2}, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->addListToArray(Ljava/util/List;[Lcom/sonyericsson/ned/model/CodePointString;)[Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v2

    goto :goto_0
.end method

.method private static readTopDomainData(Landroid/content/Context;)Ljava/util/Map;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/ned/model/CodePointString;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f050171

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    sput-object v10, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->mXmlParser:Landroid/content/res/XmlResourceParser;

    .line 85
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v6, "returnMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/sonyericsson/ned/model/CodePointString;Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;>;"
    const/4 v3, -0x1

    .line 88
    .local v3, "eventType":I
    const-string v8, ""

    .line 89
    .local v8, "tag":Ljava/lang/String;
    sget-object v5, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 90
    .local v5, "mcc":Lcom/sonyericsson/ned/model/CodePointString;
    sget-object v7, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 91
    .local v7, "suffix":Lcom/sonyericsson/ned/model/CodePointString;
    const-string v9, ""

    .line 92
    .local v9, "value":Ljava/lang/String;
    const/4 v1, 0x0

    .line 95
    .local v1, "currentValue":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    :goto_0
    if-eq v3, v11, :cond_6

    .line 96
    if-ne v3, v12, :cond_1

    .line 97
    :try_start_0
    sget-object v10, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 98
    const-string v10, "TopDomain"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 99
    sget-object v5, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 100
    sget-object v7, Lcom/sonyericsson/ned/util/StringUtil;->EMPTY_CODE_POINT_STRING:Lcom/sonyericsson/ned/model/CodePointString;

    .line 133
    :cond_0
    :goto_1
    sget-object v10, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto :goto_0

    .line 102
    :cond_1
    const/4 v10, 0x4

    if-ne v3, v10, :cond_3

    .line 103
    sget-object v10, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v9

    .line 104
    const/4 v10, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    :cond_2
    :goto_2
    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 106
    :pswitch_0
    invoke-static {v9}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v5

    .line 107
    goto :goto_1

    .line 104
    :sswitch_0
    const-string v13, "Mcc"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v10, 0x0

    goto :goto_2

    :sswitch_1
    const-string v13, "Suffix"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v10, v11

    goto :goto_2

    :sswitch_2
    const-string v13, "CountryName"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move v10, v12

    goto :goto_2

    .line 109
    :pswitch_1
    invoke-static {v9}, Lcom/sonyericsson/ned/model/CodePointString;->create(Ljava/lang/String;)Lcom/sonyericsson/ned/model/CodePointString;

    move-result-object v7

    .line 110
    goto :goto_1

    .line 115
    :cond_3
    const/4 v10, 0x3

    if-ne v3, v10, :cond_0

    .line 116
    sget-object v10, Lcom/sonyericsson/textinput/uxp/util/TopDomainUtils;->mXmlParser:Landroid/content/res/XmlResourceParser;

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 117
    const-string v10, "TopDomain"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 119
    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 120
    if-nez v1, :cond_4

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .end local v1    # "currentValue":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    .local v2, "currentValue":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    move-object v1, v2

    .line 124
    .end local v2    # "currentValue":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    .restart local v1    # "currentValue":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/ned/model/CodePointString;>;"
    :cond_4
    invoke-virtual {v7}, Lcom/sonyericsson/ned/model/CodePointString;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 125
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    .line 129
    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 135
    :catch_0
    move-exception v4

    .line 140
    .local v4, "ex":Ljava/lang/Exception;
    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 143
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_6
    return-object v6

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        -0x6bbd1c8f -> :sswitch_1
        0x12d6d -> :sswitch_0
        0xb643321 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
