.class public Lorg/jsoup/safety/Safelist;
.super Ljava/lang/Object;
.source "Safelist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jsoup/safety/Safelist$TagName;,
        Lorg/jsoup/safety/Safelist$AttributeKey;,
        Lorg/jsoup/safety/Safelist$AttributeValue;,
        Lorg/jsoup/safety/Safelist$Protocol;,
        Lorg/jsoup/safety/Safelist$TypedValue;
    }
.end annotation


# static fields
.field private static final All:Ljava/lang/String; = ":all"


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Safelist$TagName;",
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/Safelist$AttributeKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private final enforcedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Safelist$TagName;",
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Safelist$AttributeKey;",
            "Lorg/jsoup/safety/Safelist$AttributeValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private preserveRelativeLinks:Z

.field private final protocols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Safelist$TagName;",
            "Ljava/util/Map<",
            "Lorg/jsoup/safety/Safelist$AttributeKey;",
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/Safelist$Protocol;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final tagNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/Safelist$TagName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    .line 212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    .line 214
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    .line 215
    return-void
.end method

.method public constructor <init>(Lorg/jsoup/safety/Safelist;)V
    .locals 8
    .param p1, "copy"    # Lorg/jsoup/safety/Safelist;

    .line 222
    invoke-direct {p0}, Lorg/jsoup/safety/Safelist;-><init>()V

    .line 223
    iget-object v0, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    iget-object v1, p1, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 224
    iget-object v0, p1, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 225
    .local v1, "copyTagAttributes":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$TagName;Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;>;"
    iget-object v2, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/safety/Safelist$TagName;

    new-instance v4, Ljava/util/HashSet;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    .end local v1    # "copyTagAttributes":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$TagName;Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;>;"
    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p1, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 228
    .local v1, "enforcedEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$TagName;Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;>;"
    iget-object v2, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/safety/Safelist$TagName;

    new-instance v4, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .end local v1    # "enforcedEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$TagName;Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;>;"
    goto :goto_1

    .line 230
    :cond_1
    iget-object v0, p1, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 231
    .local v1, "protocolsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$TagName;Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 232
    .local v2, "attributeProtocolsCopy":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 233
    .local v4, "attributeProtocols":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/safety/Safelist$AttributeKey;

    new-instance v6, Ljava/util/HashSet;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Collection;

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .end local v4    # "attributeProtocols":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    goto :goto_3

    .line 235
    :cond_2
    iget-object v3, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jsoup/safety/Safelist$TagName;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v1    # "protocolsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$TagName;Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;>;"
    .end local v2    # "attributeProtocolsCopy":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    goto :goto_2

    .line 237
    :cond_3
    iget-boolean v0, p1, Lorg/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    iput-boolean v0, p0, Lorg/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    .line 238
    return-void
.end method

.method public static basic()Lorg/jsoup/safety/Safelist;
    .locals 13

    .line 127
    new-instance v0, Lorg/jsoup/safety/Safelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Safelist;-><init>()V

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "a"

    aput-object v3, v1, v2

    const-string v4, "b"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    const-string v6, "blockquote"

    aput-object v6, v1, v4

    const-string v7, "br"

    const/4 v8, 0x3

    aput-object v7, v1, v8

    const/4 v7, 0x4

    const-string v9, "cite"

    aput-object v9, v1, v7

    const/4 v10, 0x5

    const-string v11, "code"

    aput-object v11, v1, v10

    const/4 v10, 0x6

    const-string v11, "dd"

    aput-object v11, v1, v10

    const/4 v10, 0x7

    const-string v11, "dl"

    aput-object v11, v1, v10

    const/16 v10, 0x8

    const-string v11, "dt"

    aput-object v11, v1, v10

    const/16 v10, 0x9

    const-string v11, "em"

    aput-object v11, v1, v10

    const/16 v10, 0xa

    const-string v11, "i"

    aput-object v11, v1, v10

    const/16 v10, 0xb

    const-string v11, "li"

    aput-object v11, v1, v10

    const/16 v10, 0xc

    const-string v11, "ol"

    aput-object v11, v1, v10

    const/16 v10, 0xd

    const-string v11, "p"

    aput-object v11, v1, v10

    const/16 v10, 0xe

    const-string v11, "pre"

    aput-object v11, v1, v10

    const/16 v10, 0xf

    const-string v11, "q"

    aput-object v11, v1, v10

    const/16 v10, 0x10

    const-string v12, "small"

    aput-object v12, v1, v10

    const/16 v10, 0x11

    const-string v12, "span"

    aput-object v12, v1, v10

    const/16 v10, 0x12

    const-string v12, "strike"

    aput-object v12, v1, v10

    const/16 v10, 0x13

    const-string v12, "strong"

    aput-object v12, v1, v10

    const/16 v10, 0x14

    const-string v12, "sub"

    aput-object v12, v1, v10

    const/16 v10, 0x15

    const-string v12, "sup"

    aput-object v12, v1, v10

    const/16 v10, 0x16

    const-string v12, "u"

    aput-object v12, v1, v10

    const/16 v10, 0x17

    const-string v12, "ul"

    aput-object v12, v1, v10

    .line 128
    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v10, "href"

    aput-object v10, v1, v2

    .line 133
    invoke-virtual {v0, v3, v1}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object v9, v1, v2

    .line 134
    invoke-virtual {v0, v6, v1}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object v9, v1, v2

    .line 135
    invoke-virtual {v0, v11, v1}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    const-string v7, "ftp"

    aput-object v7, v1, v2

    const-string v7, "http"

    aput-object v7, v1, v5

    const-string v11, "https"

    aput-object v11, v1, v4

    const-string v12, "mailto"

    aput-object v12, v1, v8

    .line 137
    invoke-virtual {v0, v3, v10, v1}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v7, v1, v2

    aput-object v11, v1, v5

    .line 138
    invoke-virtual {v0, v6, v9, v1}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v7, v1, v2

    aput-object v11, v1, v5

    .line 139
    invoke-virtual {v0, v9, v9, v1}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    .line 141
    const-string v1, "rel"

    const-string v2, "nofollow"

    invoke-virtual {v0, v3, v1, v2}, Lorg/jsoup/safety/Safelist;->addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    .line 127
    return-object v0
.end method

.method public static basicWithImages()Lorg/jsoup/safety/Safelist;
    .locals 9

    .line 153
    invoke-static {}, Lorg/jsoup/safety/Safelist;->basic()Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "img"

    aput-object v4, v2, v3

    .line 154
    invoke-virtual {v0, v2}, Lorg/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "align"

    aput-object v5, v2, v3

    const-string v5, "alt"

    aput-object v5, v2, v1

    const-string v5, "height"

    const/4 v6, 0x2

    aput-object v5, v2, v6

    const/4 v5, 0x3

    const-string v7, "src"

    aput-object v7, v2, v5

    const/4 v5, 0x4

    const-string v8, "title"

    aput-object v8, v2, v5

    const/4 v5, 0x5

    const-string v8, "width"

    aput-object v8, v2, v5

    .line 155
    invoke-virtual {v0, v4, v2}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    const-string v5, "http"

    aput-object v5, v2, v3

    const-string v3, "https"

    aput-object v3, v2, v1

    .line 156
    invoke-virtual {v0, v4, v7, v2}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    .line 153
    return-object v0
.end method

.method private isValidAnchor(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 597
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".*\\s.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static none()Lorg/jsoup/safety/Safelist;
    .locals 1

    .line 96
    new-instance v0, Lorg/jsoup/safety/Safelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Safelist;-><init>()V

    return-object v0
.end method

.method public static relaxed()Lorg/jsoup/safety/Safelist;
    .locals 24

    .line 171
    new-instance v0, Lorg/jsoup/safety/Safelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Safelist;-><init>()V

    const/16 v1, 0x2a

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "a"

    aput-object v3, v1, v2

    const-string v4, "b"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    const-string v6, "blockquote"

    aput-object v6, v1, v4

    const-string v7, "br"

    const/4 v8, 0x3

    aput-object v7, v1, v8

    const-string v7, "caption"

    const/4 v9, 0x4

    aput-object v7, v1, v9

    const/4 v7, 0x5

    const-string v10, "cite"

    aput-object v10, v1, v7

    const-string v11, "code"

    const/4 v12, 0x6

    aput-object v11, v1, v12

    const/4 v11, 0x7

    const-string v13, "col"

    aput-object v13, v1, v11

    const/16 v11, 0x8

    const-string v14, "colgroup"

    aput-object v14, v1, v11

    const/16 v11, 0x9

    const-string v15, "dd"

    aput-object v15, v1, v11

    const/16 v11, 0xa

    const-string v15, "div"

    aput-object v15, v1, v11

    const/16 v11, 0xb

    const-string v15, "dl"

    aput-object v15, v1, v11

    const/16 v11, 0xc

    const-string v15, "dt"

    aput-object v15, v1, v11

    const/16 v11, 0xd

    const-string v15, "em"

    aput-object v15, v1, v11

    const/16 v11, 0xe

    const-string v15, "h1"

    aput-object v15, v1, v11

    const/16 v11, 0xf

    const-string v15, "h2"

    aput-object v15, v1, v11

    const/16 v11, 0x10

    const-string v15, "h3"

    aput-object v15, v1, v11

    const/16 v11, 0x11

    const-string v15, "h4"

    aput-object v15, v1, v11

    const/16 v11, 0x12

    const-string v15, "h5"

    aput-object v15, v1, v11

    const/16 v11, 0x13

    const-string v15, "h6"

    aput-object v15, v1, v11

    const/16 v11, 0x14

    const-string v15, "i"

    aput-object v15, v1, v11

    const/16 v11, 0x15

    const-string v15, "img"

    aput-object v15, v1, v11

    const/16 v11, 0x16

    const-string v16, "li"

    aput-object v16, v1, v11

    const/16 v11, 0x17

    const-string v7, "ol"

    aput-object v7, v1, v11

    const/16 v11, 0x18

    const-string v17, "p"

    aput-object v17, v1, v11

    const/16 v11, 0x19

    const-string v17, "pre"

    aput-object v17, v1, v11

    const/16 v11, 0x1a

    const-string v9, "q"

    aput-object v9, v1, v11

    const/16 v11, 0x1b

    const-string v18, "small"

    aput-object v18, v1, v11

    const/16 v11, 0x1c

    const-string v18, "span"

    aput-object v18, v1, v11

    const/16 v11, 0x1d

    const-string v19, "strike"

    aput-object v19, v1, v11

    const/16 v11, 0x1e

    const-string v19, "strong"

    aput-object v19, v1, v11

    const/16 v11, 0x1f

    const-string v19, "sub"

    aput-object v19, v1, v11

    const/16 v11, 0x20

    const-string v19, "sup"

    aput-object v19, v1, v11

    const/16 v11, 0x21

    const-string v8, "table"

    aput-object v8, v1, v11

    const/16 v11, 0x22

    const-string v20, "tbody"

    aput-object v20, v1, v11

    const/16 v11, 0x23

    const-string v12, "td"

    aput-object v12, v1, v11

    const/16 v11, 0x24

    const-string v21, "tfoot"

    aput-object v21, v1, v11

    const/16 v11, 0x25

    const-string v5, "th"

    aput-object v5, v1, v11

    const/16 v11, 0x26

    const-string v22, "thead"

    aput-object v22, v1, v11

    const/16 v11, 0x27

    const-string v22, "tr"

    aput-object v22, v1, v11

    const/16 v11, 0x28

    const-string v22, "u"

    aput-object v22, v1, v11

    const/16 v11, 0x29

    const-string v22, "ul"

    aput-object v22, v1, v11

    .line 172
    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v11, "href"

    aput-object v11, v1, v2

    const-string v11, "title"

    const/4 v4, 0x1

    aput-object v11, v1, v4

    .line 179
    invoke-virtual {v0, v3, v1}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v10, v1, v2

    .line 180
    invoke-virtual {v0, v6, v1}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const/4 v1, 0x2

    new-array v11, v1, [Ljava/lang/String;

    aput-object v18, v11, v2

    const-string v23, "width"

    aput-object v23, v11, v4

    .line 181
    invoke-virtual {v0, v13, v11}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v11, v1, [Ljava/lang/String;

    aput-object v18, v11, v2

    aput-object v23, v11, v4

    .line 182
    invoke-virtual {v0, v14, v11}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const/4 v11, 0x6

    new-array v13, v11, [Ljava/lang/String;

    const-string v11, "align"

    aput-object v11, v13, v2

    const-string v11, "alt"

    aput-object v11, v13, v4

    const-string v4, "height"

    aput-object v4, v13, v1

    const-string v4, "src"

    const/4 v11, 0x3

    aput-object v4, v13, v11

    const-string v4, "title"

    const/4 v11, 0x4

    aput-object v4, v13, v11

    const/4 v4, 0x5

    aput-object v23, v13, v4

    .line 183
    invoke-virtual {v0, v15, v13}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/String;

    const-string v11, "start"

    aput-object v11, v4, v2

    const-string v11, "type"

    const/4 v13, 0x1

    aput-object v11, v4, v13

    .line 184
    invoke-virtual {v0, v7, v4}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v4, v13, [Ljava/lang/String;

    aput-object v10, v4, v2

    .line 185
    invoke-virtual {v0, v9, v4}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "summary"

    aput-object v1, v4, v2

    aput-object v23, v4, v13

    .line 186
    invoke-virtual {v0, v8, v4}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const/4 v1, 0x5

    new-array v4, v1, [Ljava/lang/String;

    const-string v1, "abbr"

    aput-object v1, v4, v2

    const-string v1, "axis"

    aput-object v1, v4, v13

    const-string v1, "colspan"

    const/4 v7, 0x2

    aput-object v1, v4, v7

    const-string v1, "rowspan"

    const/4 v7, 0x3

    aput-object v1, v4, v7

    const/4 v1, 0x4

    aput-object v23, v4, v1

    .line 187
    invoke-virtual {v0, v12, v4}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "abbr"

    aput-object v4, v1, v2

    const-string v4, "axis"

    const/4 v7, 0x1

    aput-object v4, v1, v7

    const-string v4, "colspan"

    const/4 v8, 0x2

    aput-object v4, v1, v8

    const-string v4, "rowspan"

    const/4 v8, 0x3

    aput-object v4, v1, v8

    const-string v4, "scope"

    const/4 v8, 0x4

    aput-object v4, v1, v8

    const/4 v4, 0x5

    aput-object v23, v1, v4

    .line 188
    invoke-virtual {v0, v5, v1}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    const-string v4, "type"

    aput-object v4, v1, v2

    .line 191
    const-string v4, "ul"

    invoke-virtual {v0, v4, v1}, Lorg/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    const-string v4, "ftp"

    aput-object v4, v1, v2

    const-string v4, "http"

    aput-object v4, v1, v7

    const-string v5, "https"

    const/4 v8, 0x2

    aput-object v5, v1, v8

    const-string v11, "mailto"

    const/4 v12, 0x3

    aput-object v11, v1, v12

    .line 193
    const-string v11, "href"

    invoke-virtual {v0, v3, v11, v1}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    aput-object v4, v1, v2

    aput-object v5, v1, v7

    .line 194
    invoke-virtual {v0, v6, v10, v1}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    aput-object v4, v1, v2

    aput-object v5, v1, v7

    .line 195
    invoke-virtual {v0, v10, v10, v1}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    aput-object v4, v1, v2

    aput-object v5, v1, v7

    .line 196
    const-string v3, "src"

    invoke-virtual {v0, v15, v3, v1}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/String;

    aput-object v4, v1, v2

    aput-object v5, v1, v7

    .line 197
    invoke-virtual {v0, v9, v10, v1}, Lorg/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    .line 171
    return-object v0
.end method

.method public static simpleText()Lorg/jsoup/safety/Safelist;
    .locals 4

    .line 106
    new-instance v0, Lorg/jsoup/safety/Safelist;

    invoke-direct {v0}, Lorg/jsoup/safety/Safelist;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "b"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "em"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "i"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "strong"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "u"

    aput-object v3, v1, v2

    .line 107
    invoke-virtual {v0, v1}, Lorg/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    move-result-object v0

    .line 106
    return-object v0
.end method

.method private testValidProtocol(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;Ljava/util/Set;)Z
    .locals 7
    .param p1, "el"    # Lorg/jsoup/nodes/Element;
    .param p2, "attr"    # Lorg/jsoup/nodes/Attribute;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Element;",
            "Lorg/jsoup/nodes/Attribute;",
            "Ljava/util/Set<",
            "Lorg/jsoup/safety/Safelist$Protocol;",
            ">;)Z"
        }
    .end annotation

    .line 570
    .local p3, "protocols":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;"
    invoke-virtual {p2}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Element;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 572
    invoke-virtual {p2}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 573
    :cond_0
    iget-boolean v1, p0, Lorg/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    if-nez v1, :cond_1

    .line 574
    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Attribute;->setValue(Ljava/lang/String;)Ljava/lang/String;

    .line 576
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/safety/Safelist$Protocol;

    .line 577
    .local v2, "protocol":Lorg/jsoup/safety/Safelist$Protocol;
    invoke-virtual {v2}, Lorg/jsoup/safety/Safelist$Protocol;->toString()Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, "prot":Ljava/lang/String;
    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 580
    invoke-direct {p0, v0}, Lorg/jsoup/safety/Safelist;->isValidAnchor(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 581
    return v5

    .line 587
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 589
    invoke-static {v0}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 590
    return v5

    .line 592
    .end local v2    # "protocol":Lorg/jsoup/safety/Safelist$Protocol;
    .end local v3    # "prot":Ljava/lang/String;
    :cond_4
    goto :goto_0

    .line 593
    :cond_5
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public varargs addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attributes"    # [Ljava/lang/String;

    .line 296
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 297
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 298
    array-length v0, p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "No attribute names supplied."

    invoke-static {v0, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 300
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    invoke-virtual {p0, v0}, Lorg/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;

    .line 301
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v0

    .line 302
    .local v0, "tagName":Lorg/jsoup/safety/Safelist$TagName;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 303
    .local v1, "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    array-length v3, p2

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, p2, v2

    .line 304
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 305
    invoke-static {v4}, Lorg/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 303
    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 307
    :cond_1
    iget-object v2, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 308
    iget-object v2, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 309
    .local v2, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    invoke-interface {v2, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 310
    .end local v2    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    goto :goto_2

    .line 311
    :cond_2
    iget-object v2, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :goto_2
    return-object p0
.end method

.method public addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 5
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 376
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 377
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 378
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 380
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v0

    .line 381
    .local v0, "tagName":Lorg/jsoup/safety/Safelist$TagName;
    iget-object v1, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 382
    invoke-static {p2}, Lorg/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;

    move-result-object v1

    .line 383
    .local v1, "attrKey":Lorg/jsoup/safety/Safelist$AttributeKey;
    invoke-static {p3}, Lorg/jsoup/safety/Safelist$AttributeValue;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeValue;

    move-result-object v2

    .line 385
    .local v2, "attrVal":Lorg/jsoup/safety/Safelist$AttributeValue;
    iget-object v3, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 386
    iget-object v3, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 388
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v3, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .end local v3    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    :goto_0
    return-object p0
.end method

.method public varargs addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "protocols"    # [Ljava/lang/String;

    .line 455
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 456
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 457
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 459
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v0

    .line 460
    .local v0, "tagName":Lorg/jsoup/safety/Safelist$TagName;
    invoke-static {p2}, Lorg/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;

    move-result-object v1

    .line 464
    .local v1, "attrKey":Lorg/jsoup/safety/Safelist$AttributeKey;
    iget-object v2, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 465
    iget-object v2, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .local v2, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    goto :goto_0

    .line 467
    .end local v2    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 468
    .restart local v2    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    iget-object v3, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    :goto_0
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 471
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .local v3, "protSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;"
    goto :goto_1

    .line 473
    .end local v3    # "protSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;"
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 474
    .restart local v3    # "protSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;"
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    :goto_1
    array-length v4, p3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, p3, v5

    .line 477
    .local v6, "protocol":Ljava/lang/String;
    invoke-static {v6}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 478
    invoke-static {v6}, Lorg/jsoup/safety/Safelist$Protocol;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$Protocol;

    move-result-object v7

    .line 479
    .local v7, "prot":Lorg/jsoup/safety/Safelist$Protocol;
    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 476
    .end local v6    # "protocol":Ljava/lang/String;
    .end local v7    # "prot":Lorg/jsoup/safety/Safelist$Protocol;
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 481
    :cond_2
    return-object p0
.end method

.method public varargs addTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 5
    .param p1, "tags"    # [Ljava/lang/String;

    .line 247
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 249
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 250
    .local v2, "tagName":Ljava/lang/String;
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 251
    const-string v3, "noscript"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "noscript is unsupported in Safelists, due to incompatibilities between parsers with and without script-mode enabled"

    invoke-static {v3, v4}, Lorg/jsoup/helper/Validate;->isFalse(ZLjava/lang/String;)V

    .line 253
    iget-object v3, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-static {v2}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    .end local v2    # "tagName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :cond_0
    return-object p0
.end method

.method public getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;
    .locals 7
    .param p1, "tagName"    # Ljava/lang/String;

    .line 606
    new-instance v0, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lorg/jsoup/nodes/Attributes;-><init>()V

    .line 607
    .local v0, "attrs":Lorg/jsoup/nodes/Attributes;
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v1

    .line 608
    .local v1, "tag":Lorg/jsoup/safety/Safelist$TagName;
    iget-object v2, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    iget-object v2, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 610
    .local v2, "keyVals":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 611
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jsoup/safety/Safelist$AttributeKey;

    invoke-virtual {v5}, Lorg/jsoup/safety/Safelist$AttributeKey;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/safety/Safelist$AttributeValue;

    invoke-virtual {v6}, Lorg/jsoup/safety/Safelist$AttributeValue;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    .line 612
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    goto :goto_0

    .line 614
    .end local v2    # "keyVals":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    :cond_0
    return-object v0
.end method

.method public isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z
    .locals 9
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "el"    # Lorg/jsoup/nodes/Element;
    .param p3, "attr"    # Lorg/jsoup/nodes/Attribute;

    .line 541
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v0

    .line 542
    .local v0, "tag":Lorg/jsoup/safety/Safelist$TagName;
    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;

    move-result-object v1

    .line 544
    .local v1, "key":Lorg/jsoup/safety/Safelist$AttributeKey;
    iget-object v2, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 545
    .local v2, "okSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 546
    iget-object v5, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 547
    iget-object v5, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 549
    .local v5, "attrProts":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    invoke-interface {v5, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-direct {p0, p2, p3, v6}, Lorg/jsoup/safety/Safelist;->testValidProtocol(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    return v3

    .line 551
    .end local v5    # "attrProts":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    :cond_2
    return v4

    .line 555
    :cond_3
    iget-object v5, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 556
    .local v5, "enforcedSet":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    if-eqz v5, :cond_4

    .line 557
    invoke-virtual {p0, p1}, Lorg/jsoup/safety/Safelist;->getEnforcedAttributes(Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    move-result-object v6

    .line 558
    .local v6, "expect":Lorg/jsoup/nodes/Attributes;
    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v7

    .line 559
    .local v7, "attrKey":Ljava/lang/String;
    invoke-virtual {v6, v7}, Lorg/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 560
    invoke-virtual {v6, v7}, Lorg/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 564
    .end local v6    # "expect":Lorg/jsoup/nodes/Attributes;
    .end local v7    # "attrKey":Ljava/lang/String;
    :cond_4
    const-string v6, ":all"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0, v6, p2, p3}, Lorg/jsoup/safety/Safelist;->isSafeAttribute(Ljava/lang/String;Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Attribute;)Z

    move-result v6

    if-eqz v6, :cond_5

    move v3, v4

    :cond_5
    return v3
.end method

.method public isSafeTag(Ljava/lang/String;)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 530
    iget-object v0, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public preserveRelativeLinks(Z)Lorg/jsoup/safety/Safelist;
    .locals 0
    .param p1, "preserve"    # Z

    .line 434
    iput-boolean p1, p0, Lorg/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    .line 435
    return-object p0
.end method

.method public varargs removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attributes"    # [Ljava/lang/String;

    .line 332
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 333
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 334
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "No attribute names supplied."

    invoke-static {v0, v2}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 336
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v0

    .line 337
    .local v0, "tagName":Lorg/jsoup/safety/Safelist$TagName;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 338
    .local v2, "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    array-length v3, p2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, p2, v1

    .line 339
    .local v4, "key":Ljava/lang/String;
    invoke-static {v4}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 340
    invoke-static {v4}, Lorg/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 342
    :cond_1
    iget-object v1, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 343
    iget-object v1, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 344
    .local v1, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 346
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    iget-object v3, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .end local v1    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    :cond_2
    const-string v1, ":all"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 350
    iget-object v1, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 351
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$TagName;Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;>;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 352
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 353
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$TagName;Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    .line 354
    .local v4, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    invoke-interface {v4, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 355
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 356
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 357
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$TagName;Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;>;"
    .end local v4    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;"
    :cond_3
    goto :goto_2

    .line 359
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/jsoup/safety/Safelist$TagName;Ljava/util/Set<Lorg/jsoup/safety/Safelist$AttributeKey;>;>;>;"
    :cond_4
    return-object p0
.end method

.method public removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;

    .line 403
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 404
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 406
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v0

    .line 407
    .local v0, "tagName":Lorg/jsoup/safety/Safelist$TagName;
    iget-object v1, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    invoke-static {p2}, Lorg/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;

    move-result-object v1

    .line 409
    .local v1, "attrKey":Lorg/jsoup/safety/Safelist$AttributeKey;
    iget-object v2, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 410
    .local v2, "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    iget-object v3, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .end local v1    # "attrKey":Lorg/jsoup/safety/Safelist$AttributeKey;
    .end local v2    # "attrMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Lorg/jsoup/safety/Safelist$AttributeValue;>;"
    :cond_0
    return-object p0
.end method

.method public varargs removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "removeProtocols"    # [Ljava/lang/String;

    .line 497
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 498
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 499
    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 501
    invoke-static {p1}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v0

    .line 502
    .local v0, "tagName":Lorg/jsoup/safety/Safelist$TagName;
    invoke-static {p2}, Lorg/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$AttributeKey;

    move-result-object v1

    .line 506
    .local v1, "attr":Lorg/jsoup/safety/Safelist$AttributeKey;
    iget-object v2, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Cannot remove a protocol that is not set."

    invoke-static {v2, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 507
    iget-object v2, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 508
    .local v2, "tagProtocols":Ljava/util/Map;, "Ljava/util/Map<Lorg/jsoup/safety/Safelist$AttributeKey;Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;>;"
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    invoke-static {v4, v3}, Lorg/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 510
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 511
    .local v3, "attrProtocols":Ljava/util/Set;, "Ljava/util/Set<Lorg/jsoup/safety/Safelist$Protocol;>;"
    array-length v4, p3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, p3, v5

    .line 512
    .local v6, "protocol":Ljava/lang/String;
    invoke-static {v6}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 513
    invoke-static {v6}, Lorg/jsoup/safety/Safelist$Protocol;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$Protocol;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 511
    .end local v6    # "protocol":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 516
    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 517
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 519
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_1
    return-object p0
.end method

.method public varargs removeTags([Ljava/lang/String;)Lorg/jsoup/safety/Safelist;
    .locals 5
    .param p1, "tags"    # [Ljava/lang/String;

    .line 265
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 267
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 268
    .local v2, "tag":Ljava/lang/String;
    invoke-static {v2}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 269
    invoke-static {v2}, Lorg/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lorg/jsoup/safety/Safelist$TagName;

    move-result-object v3

    .line 271
    .local v3, "tagName":Lorg/jsoup/safety/Safelist$TagName;
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v4, p0, Lorg/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .end local v2    # "tag":Ljava/lang/String;
    .end local v3    # "tagName":Lorg/jsoup/safety/Safelist$TagName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 277
    :cond_1
    return-object p0
.end method
