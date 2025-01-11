.class final Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;
.super Ljava/lang/Object;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Constants"
.end annotation


# static fields
.field static final AfterHeadBody:[Ljava/lang/String;

.field static final BeforeHtmlToHead:[Ljava/lang/String;

.field static final DdDt:[Ljava/lang/String;

.field static final Headings:[Ljava/lang/String;

.field static final InBodyEndAdoptionFormatters:[Ljava/lang/String;

.field static final InBodyEndClosers:[Ljava/lang/String;

.field static final InBodyEndOtherErrors:[Ljava/lang/String;

.field static final InBodyEndTableFosters:[Ljava/lang/String;

.field static final InBodyStartApplets:[Ljava/lang/String;

.field static final InBodyStartDrop:[Ljava/lang/String;

.field static final InBodyStartInputAttribs:[Ljava/lang/String;

.field static final InBodyStartLiBreakers:[Ljava/lang/String;

.field static final InBodyStartMedia:[Ljava/lang/String;

.field static final InBodyStartPClosers:[Ljava/lang/String;

.field static final InBodyStartToHead:[Ljava/lang/String;

.field static final InCaptionIgnore:[Ljava/lang/String;

.field static final InCellBody:[Ljava/lang/String;

.field static final InCellCol:[Ljava/lang/String;

.field static final InCellNames:[Ljava/lang/String;

.field static final InCellTable:[Ljava/lang/String;

.field static final InForeignToHtml:[Ljava/lang/String;

.field static final InHeadEmpty:[Ljava/lang/String;

.field static final InHeadEnd:[Ljava/lang/String;

.field static final InHeadNoScriptHead:[Ljava/lang/String;

.field static final InHeadNoscriptIgnore:[Ljava/lang/String;

.field static final InHeadRaw:[Ljava/lang/String;

.field static final InRowIgnore:[Ljava/lang/String;

.field static final InRowMissing:[Ljava/lang/String;

.field static final InSelectEnd:[Ljava/lang/String;

.field static final InSelectTableEnd:[Ljava/lang/String;

.field static final InTableAddBody:[Ljava/lang/String;

.field static final InTableBodyEndIgnore:[Ljava/lang/String;

.field static final InTableBodyExit:[Ljava/lang/String;

.field static final InTableEndErr:[Ljava/lang/String;

.field static final InTableEndIgnore:[Ljava/lang/String;

.field static final InTableFoster:[Ljava/lang/String;

.field static final InTableToBody:[Ljava/lang/String;

.field static final InTableToHead:[Ljava/lang/String;

.field static final InTemplateToHead:[Ljava/lang/String;

.field static final InTemplateToTable:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1871
    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "base"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "basefont"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "bgsound"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "command"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "link"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadEmpty:[Ljava/lang/String;

    .line 1872
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "noframes"

    aput-object v2, v1, v3

    const-string v2, "style"

    aput-object v2, v1, v4

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadRaw:[Ljava/lang/String;

    .line 1873
    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "body"

    aput-object v2, v1, v3

    const-string v8, "br"

    aput-object v8, v1, v4

    const-string v8, "html"

    aput-object v8, v1, v5

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadEnd:[Ljava/lang/String;

    .line 1874
    new-array v1, v6, [Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v9, "br"

    aput-object v9, v1, v4

    aput-object v8, v1, v5

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->AfterHeadBody:[Ljava/lang/String;

    .line 1875
    new-array v1, v7, [Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v9, "br"

    aput-object v9, v1, v4

    const-string v9, "head"

    aput-object v9, v1, v5

    aput-object v8, v1, v6

    sput-object v1, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->BeforeHtmlToHead:[Ljava/lang/String;

    .line 1876
    const/4 v1, 0x6

    new-array v9, v1, [Ljava/lang/String;

    const-string v10, "basefont"

    aput-object v10, v9, v3

    const-string v10, "bgsound"

    aput-object v10, v9, v4

    const-string v10, "link"

    aput-object v10, v9, v5

    const-string v10, "meta"

    aput-object v10, v9, v6

    const-string v10, "noframes"

    aput-object v10, v9, v7

    const-string v10, "style"

    aput-object v10, v9, v0

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoScriptHead:[Ljava/lang/String;

    .line 1877
    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "base"

    aput-object v10, v9, v3

    const-string v10, "basefont"

    aput-object v10, v9, v4

    const-string v10, "bgsound"

    aput-object v10, v9, v5

    const-string v10, "command"

    aput-object v10, v9, v6

    const-string v10, "link"

    aput-object v10, v9, v7

    const-string v10, "meta"

    aput-object v10, v9, v0

    const-string v10, "noframes"

    aput-object v10, v9, v1

    const-string v10, "script"

    const/4 v11, 0x7

    aput-object v10, v9, v11

    const-string v10, "style"

    const/16 v12, 0x8

    aput-object v10, v9, v12

    const-string v10, "template"

    const/16 v13, 0x9

    aput-object v10, v9, v13

    const-string v10, "title"

    const/16 v14, 0xa

    aput-object v10, v9, v14

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    .line 1878
    const/16 v9, 0x16

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "address"

    aput-object v10, v9, v3

    const-string v10, "article"

    aput-object v10, v9, v4

    const-string v10, "aside"

    aput-object v10, v9, v5

    const-string v10, "blockquote"

    aput-object v10, v9, v6

    const-string v10, "center"

    aput-object v10, v9, v7

    const-string v10, "details"

    aput-object v10, v9, v0

    const-string v10, "dir"

    aput-object v10, v9, v1

    const-string v10, "div"

    aput-object v10, v9, v11

    const-string v10, "dl"

    aput-object v10, v9, v12

    const-string v10, "fieldset"

    aput-object v10, v9, v13

    const-string v10, "figcaption"

    aput-object v10, v9, v14

    const/16 v10, 0xb

    const-string v15, "figure"

    aput-object v15, v9, v10

    const/16 v10, 0xc

    const-string v15, "footer"

    aput-object v15, v9, v10

    const/16 v10, 0xd

    const-string v15, "header"

    aput-object v15, v9, v10

    const/16 v10, 0xe

    const-string v15, "hgroup"

    aput-object v15, v9, v10

    const/16 v10, 0xf

    const-string v15, "menu"

    aput-object v15, v9, v10

    const/16 v10, 0x10

    const-string v15, "nav"

    aput-object v15, v9, v10

    const/16 v10, 0x11

    const-string v15, "ol"

    aput-object v15, v9, v10

    const/16 v10, 0x12

    const-string v15, "p"

    aput-object v15, v9, v10

    const/16 v10, 0x13

    const-string v15, "section"

    aput-object v15, v9, v10

    const/16 v10, 0x14

    const-string v15, "summary"

    aput-object v15, v9, v10

    const/16 v10, 0x15

    const-string v15, "ul"

    aput-object v15, v9, v10

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    .line 1881
    new-array v9, v1, [Ljava/lang/String;

    const-string v10, "h1"

    aput-object v10, v9, v3

    const-string v10, "h2"

    aput-object v10, v9, v4

    const-string v10, "h3"

    aput-object v10, v9, v5

    const-string v10, "h4"

    aput-object v10, v9, v6

    const-string v10, "h5"

    aput-object v10, v9, v7

    const-string v10, "h6"

    aput-object v10, v9, v0

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    .line 1882
    new-array v9, v6, [Ljava/lang/String;

    const-string v10, "address"

    aput-object v10, v9, v3

    const-string v10, "div"

    aput-object v10, v9, v4

    const-string v10, "p"

    aput-object v10, v9, v5

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    .line 1883
    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "dd"

    aput-object v10, v9, v3

    const-string v10, "dt"

    aput-object v10, v9, v4

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    .line 1884
    new-array v9, v6, [Ljava/lang/String;

    const-string v10, "applet"

    aput-object v10, v9, v3

    const-string v10, "marquee"

    aput-object v10, v9, v4

    const-string v10, "object"

    aput-object v10, v9, v5

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    .line 1885
    new-array v9, v6, [Ljava/lang/String;

    const-string v10, "param"

    aput-object v10, v9, v3

    const-string v10, "source"

    aput-object v10, v9, v4

    const-string v10, "track"

    aput-object v10, v9, v5

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    .line 1886
    new-array v9, v6, [Ljava/lang/String;

    const-string v10, "action"

    aput-object v10, v9, v3

    const-string v10, "name"

    aput-object v10, v9, v4

    const-string v10, "prompt"

    aput-object v10, v9, v5

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartInputAttribs:[Ljava/lang/String;

    .line 1887
    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/String;

    const-string v10, "caption"

    aput-object v10, v9, v3

    const-string v15, "col"

    aput-object v15, v9, v4

    const-string v16, "colgroup"

    aput-object v16, v9, v5

    const-string v17, "frame"

    aput-object v17, v9, v6

    const-string v17, "head"

    aput-object v17, v9, v7

    const-string v17, "tbody"

    aput-object v17, v9, v0

    const-string v18, "td"

    aput-object v18, v9, v1

    const-string v19, "tfoot"

    aput-object v19, v9, v11

    const-string v20, "th"

    aput-object v20, v9, v12

    const-string v21, "thead"

    aput-object v21, v9, v13

    const-string v22, "tr"

    aput-object v22, v9, v14

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    .line 1888
    const/16 v9, 0x18

    new-array v9, v9, [Ljava/lang/String;

    const-string v23, "address"

    aput-object v23, v9, v3

    const-string v23, "article"

    aput-object v23, v9, v4

    const-string v23, "aside"

    aput-object v23, v9, v5

    const-string v23, "blockquote"

    aput-object v23, v9, v6

    const-string v23, "button"

    aput-object v23, v9, v7

    const-string v23, "center"

    aput-object v23, v9, v0

    const-string v23, "details"

    aput-object v23, v9, v1

    const-string v23, "dir"

    aput-object v23, v9, v11

    const-string v23, "div"

    aput-object v23, v9, v12

    const-string v23, "dl"

    aput-object v23, v9, v13

    const-string v23, "fieldset"

    aput-object v23, v9, v14

    const/16 v23, 0xb

    const-string v24, "figcaption"

    aput-object v24, v9, v23

    const/16 v23, 0xc

    const-string v24, "figure"

    aput-object v24, v9, v23

    const/16 v23, 0xd

    const-string v24, "footer"

    aput-object v24, v9, v23

    const/16 v23, 0xe

    const-string v24, "header"

    aput-object v24, v9, v23

    const/16 v23, 0xf

    const-string v24, "hgroup"

    aput-object v24, v9, v23

    const/16 v23, 0x10

    const-string v24, "listing"

    aput-object v24, v9, v23

    const/16 v23, 0x11

    const-string v24, "menu"

    aput-object v24, v9, v23

    const/16 v23, 0x12

    const-string v24, "nav"

    aput-object v24, v9, v23

    const/16 v23, 0x13

    const-string v24, "ol"

    aput-object v24, v9, v23

    const/16 v23, 0x14

    const-string v24, "pre"

    aput-object v24, v9, v23

    const/16 v23, 0x15

    const-string v24, "section"

    aput-object v24, v9, v23

    const/16 v23, 0x16

    const-string v24, "summary"

    aput-object v24, v9, v23

    const/16 v23, 0x17

    const-string v24, "ul"

    aput-object v24, v9, v23

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    .line 1891
    const/16 v9, 0x12

    new-array v9, v9, [Ljava/lang/String;

    aput-object v2, v9, v3

    const-string v23, "dd"

    aput-object v23, v9, v4

    const-string v23, "dt"

    aput-object v23, v9, v5

    aput-object v8, v9, v6

    const-string v23, "li"

    aput-object v23, v9, v7

    const-string v23, "optgroup"

    aput-object v23, v9, v0

    const-string v23, "option"

    aput-object v23, v9, v1

    const-string v23, "p"

    aput-object v23, v9, v11

    const-string v23, "rb"

    aput-object v23, v9, v12

    const-string v23, "rp"

    aput-object v23, v9, v13

    const-string v23, "rt"

    aput-object v23, v9, v14

    const/16 v23, 0xb

    const-string v24, "rtc"

    aput-object v24, v9, v23

    const/16 v23, 0xc

    aput-object v17, v9, v23

    const/16 v23, 0xd

    aput-object v18, v9, v23

    const/16 v23, 0xe

    aput-object v19, v9, v23

    const/16 v23, 0xf

    aput-object v20, v9, v23

    const/16 v23, 0x10

    aput-object v21, v9, v23

    const/16 v23, 0x11

    aput-object v22, v9, v23

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndOtherErrors:[Ljava/lang/String;

    .line 1892
    const/16 v9, 0xe

    new-array v9, v9, [Ljava/lang/String;

    const-string v23, "a"

    aput-object v23, v9, v3

    const-string v23, "b"

    aput-object v23, v9, v4

    const-string v23, "big"

    aput-object v23, v9, v5

    const-string v23, "code"

    aput-object v23, v9, v6

    const-string v23, "em"

    aput-object v23, v9, v7

    const-string v23, "font"

    aput-object v23, v9, v0

    const-string v23, "i"

    aput-object v23, v9, v1

    const-string v23, "nobr"

    aput-object v23, v9, v11

    const-string v23, "s"

    aput-object v23, v9, v12

    const-string v23, "small"

    aput-object v23, v9, v13

    const-string v23, "strike"

    aput-object v23, v9, v14

    const/16 v23, 0xb

    const-string v24, "strong"

    aput-object v24, v9, v23

    const/16 v23, 0xc

    const-string v24, "tt"

    aput-object v24, v9, v23

    const/16 v23, 0xd

    const-string v24, "u"

    aput-object v24, v9, v23

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    .line 1893
    new-array v9, v0, [Ljava/lang/String;

    const-string v23, "table"

    aput-object v23, v9, v3

    aput-object v17, v9, v4

    aput-object v19, v9, v5

    aput-object v21, v9, v6

    aput-object v22, v9, v7

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndTableFosters:[Ljava/lang/String;

    .line 1894
    new-array v9, v6, [Ljava/lang/String;

    aput-object v17, v9, v3

    aput-object v19, v9, v4

    aput-object v21, v9, v5

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToBody:[Ljava/lang/String;

    .line 1895
    new-array v9, v6, [Ljava/lang/String;

    aput-object v18, v9, v3

    aput-object v20, v9, v4

    aput-object v22, v9, v5

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableAddBody:[Ljava/lang/String;

    .line 1896
    new-array v9, v6, [Ljava/lang/String;

    const-string v23, "script"

    aput-object v23, v9, v3

    const-string v23, "style"

    aput-object v23, v9, v4

    const-string v23, "template"

    aput-object v23, v9, v5

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableToHead:[Ljava/lang/String;

    .line 1897
    new-array v9, v5, [Ljava/lang/String;

    aput-object v18, v9, v3

    aput-object v20, v9, v4

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellNames:[Ljava/lang/String;

    .line 1898
    new-array v9, v0, [Ljava/lang/String;

    aput-object v2, v9, v3

    aput-object v10, v9, v4

    aput-object v15, v9, v5

    aput-object v16, v9, v6

    aput-object v8, v9, v7

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellBody:[Ljava/lang/String;

    .line 1899
    new-array v9, v0, [Ljava/lang/String;

    const-string v23, "table"

    aput-object v23, v9, v3

    aput-object v17, v9, v4

    aput-object v19, v9, v5

    aput-object v21, v9, v6

    aput-object v22, v9, v7

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellTable:[Ljava/lang/String;

    .line 1900
    new-array v9, v13, [Ljava/lang/String;

    aput-object v10, v9, v3

    aput-object v15, v9, v4

    aput-object v16, v9, v5

    aput-object v17, v9, v6

    aput-object v18, v9, v7

    aput-object v19, v9, v0

    aput-object v20, v9, v1

    aput-object v21, v9, v11

    aput-object v22, v9, v12

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellCol:[Ljava/lang/String;

    .line 1901
    const/16 v9, 0xb

    new-array v9, v9, [Ljava/lang/String;

    aput-object v2, v9, v3

    aput-object v10, v9, v4

    aput-object v15, v9, v5

    aput-object v16, v9, v6

    aput-object v8, v9, v7

    aput-object v17, v9, v0

    aput-object v18, v9, v1

    aput-object v19, v9, v11

    aput-object v20, v9, v12

    aput-object v21, v9, v13

    aput-object v22, v9, v14

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndErr:[Ljava/lang/String;

    .line 1902
    new-array v9, v0, [Ljava/lang/String;

    const-string v23, "table"

    aput-object v23, v9, v3

    aput-object v17, v9, v4

    aput-object v19, v9, v5

    aput-object v21, v9, v6

    aput-object v22, v9, v7

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableFoster:[Ljava/lang/String;

    .line 1903
    new-array v9, v1, [Ljava/lang/String;

    aput-object v10, v9, v3

    aput-object v15, v9, v4

    aput-object v16, v9, v5

    aput-object v17, v9, v6

    aput-object v19, v9, v7

    aput-object v21, v9, v0

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyExit:[Ljava/lang/String;

    .line 1904
    new-array v9, v12, [Ljava/lang/String;

    aput-object v2, v9, v3

    aput-object v10, v9, v4

    aput-object v15, v9, v5

    aput-object v16, v9, v6

    aput-object v8, v9, v7

    aput-object v18, v9, v0

    aput-object v20, v9, v1

    aput-object v22, v9, v11

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableBodyEndIgnore:[Ljava/lang/String;

    .line 1905
    new-array v9, v11, [Ljava/lang/String;

    aput-object v10, v9, v3

    aput-object v15, v9, v4

    aput-object v16, v9, v5

    aput-object v17, v9, v6

    aput-object v19, v9, v7

    aput-object v21, v9, v0

    aput-object v22, v9, v1

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowMissing:[Ljava/lang/String;

    .line 1906
    new-array v9, v11, [Ljava/lang/String;

    aput-object v2, v9, v3

    aput-object v10, v9, v4

    aput-object v15, v9, v5

    aput-object v16, v9, v6

    aput-object v8, v9, v7

    aput-object v18, v9, v0

    aput-object v20, v9, v1

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InRowIgnore:[Ljava/lang/String;

    .line 1907
    new-array v9, v6, [Ljava/lang/String;

    const-string v23, "input"

    aput-object v23, v9, v3

    const-string v23, "keygen"

    aput-object v23, v9, v4

    const-string v23, "textarea"

    aput-object v23, v9, v5

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectEnd:[Ljava/lang/String;

    .line 1908
    new-array v9, v12, [Ljava/lang/String;

    aput-object v10, v9, v3

    const-string v23, "table"

    aput-object v23, v9, v4

    aput-object v17, v9, v5

    aput-object v18, v9, v6

    aput-object v19, v9, v7

    aput-object v20, v9, v0

    aput-object v21, v9, v1

    aput-object v22, v9, v11

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InSelectTableEnd:[Ljava/lang/String;

    .line 1909
    new-array v9, v6, [Ljava/lang/String;

    aput-object v17, v9, v3

    aput-object v19, v9, v4

    aput-object v21, v9, v5

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTableEndIgnore:[Ljava/lang/String;

    .line 1910
    new-array v9, v5, [Ljava/lang/String;

    const-string v23, "head"

    aput-object v23, v9, v3

    const-string v23, "noscript"

    aput-object v23, v9, v4

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InHeadNoscriptIgnore:[Ljava/lang/String;

    .line 1911
    new-array v9, v14, [Ljava/lang/String;

    aput-object v2, v9, v3

    aput-object v15, v9, v4

    aput-object v16, v9, v5

    aput-object v8, v9, v6

    aput-object v17, v9, v7

    aput-object v18, v9, v0

    aput-object v19, v9, v1

    aput-object v20, v9, v11

    aput-object v21, v9, v12

    aput-object v22, v9, v13

    sput-object v9, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCaptionIgnore:[Ljava/lang/String;

    .line 1912
    new-array v8, v14, [Ljava/lang/String;

    const-string v9, "base"

    aput-object v9, v8, v3

    const-string v9, "basefont"

    aput-object v9, v8, v4

    const-string v9, "bgsound"

    aput-object v9, v8, v5

    const-string v9, "link"

    aput-object v9, v8, v6

    const-string v9, "meta"

    aput-object v9, v8, v7

    const-string v9, "noframes"

    aput-object v9, v8, v0

    const-string v9, "script"

    aput-object v9, v8, v1

    const-string v9, "style"

    aput-object v9, v8, v11

    const-string v9, "template"

    aput-object v9, v8, v12

    const-string v9, "title"

    aput-object v9, v8, v13

    sput-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTemplateToHead:[Ljava/lang/String;

    .line 1913
    new-array v8, v0, [Ljava/lang/String;

    aput-object v10, v8, v3

    aput-object v16, v8, v4

    aput-object v17, v8, v5

    aput-object v19, v8, v6

    aput-object v21, v8, v7

    sput-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InTemplateToTable:[Ljava/lang/String;

    .line 1914
    const/16 v8, 0x2c

    new-array v8, v8, [Ljava/lang/String;

    const-string v9, "b"

    aput-object v9, v8, v3

    const-string v3, "big"

    aput-object v3, v8, v4

    const-string v3, "blockquote"

    aput-object v3, v8, v5

    aput-object v2, v8, v6

    const-string v2, "br"

    aput-object v2, v8, v7

    const-string v2, "center"

    aput-object v2, v8, v0

    const-string v0, "code"

    aput-object v0, v8, v1

    const-string v0, "dd"

    aput-object v0, v8, v11

    const-string v0, "div"

    aput-object v0, v8, v12

    const-string v0, "dl"

    aput-object v0, v8, v13

    const-string v0, "dt"

    aput-object v0, v8, v14

    const/16 v0, 0xb

    const-string v1, "em"

    aput-object v1, v8, v0

    const/16 v0, 0xc

    const-string v1, "embed"

    aput-object v1, v8, v0

    const/16 v0, 0xd

    const-string v1, "h1"

    aput-object v1, v8, v0

    const/16 v0, 0xe

    const-string v1, "h2"

    aput-object v1, v8, v0

    const/16 v0, 0xf

    const-string v1, "h3"

    aput-object v1, v8, v0

    const/16 v0, 0x10

    const-string v1, "h4"

    aput-object v1, v8, v0

    const/16 v0, 0x11

    const-string v1, "h5"

    aput-object v1, v8, v0

    const/16 v0, 0x12

    const-string v1, "h6"

    aput-object v1, v8, v0

    const/16 v0, 0x13

    const-string v1, "head"

    aput-object v1, v8, v0

    const/16 v0, 0x14

    const-string v1, "hr"

    aput-object v1, v8, v0

    const/16 v0, 0x15

    const-string v1, "i"

    aput-object v1, v8, v0

    const/16 v0, 0x16

    const-string v1, "img"

    aput-object v1, v8, v0

    const/16 v0, 0x17

    const-string v1, "li"

    aput-object v1, v8, v0

    const/16 v0, 0x18

    const-string v1, "listing"

    aput-object v1, v8, v0

    const/16 v0, 0x19

    const-string v1, "menu"

    aput-object v1, v8, v0

    const/16 v0, 0x1a

    const-string v1, "meta"

    aput-object v1, v8, v0

    const/16 v0, 0x1b

    const-string v1, "nobr"

    aput-object v1, v8, v0

    const/16 v0, 0x1c

    const-string v1, "ol"

    aput-object v1, v8, v0

    const/16 v0, 0x1d

    const-string v1, "p"

    aput-object v1, v8, v0

    const/16 v0, 0x1e

    const-string v1, "pre"

    aput-object v1, v8, v0

    const/16 v0, 0x1f

    const-string v1, "ruby"

    aput-object v1, v8, v0

    const/16 v0, 0x20

    const-string v1, "s"

    aput-object v1, v8, v0

    const/16 v0, 0x21

    const-string v1, "small"

    aput-object v1, v8, v0

    const/16 v0, 0x22

    const-string v1, "span"

    aput-object v1, v8, v0

    const/16 v0, 0x23

    const-string v1, "strike"

    aput-object v1, v8, v0

    const/16 v0, 0x24

    const-string v1, "strong"

    aput-object v1, v8, v0

    const/16 v0, 0x25

    const-string v1, "sub"

    aput-object v1, v8, v0

    const/16 v0, 0x26

    const-string v1, "sup"

    aput-object v1, v8, v0

    const/16 v0, 0x27

    const-string v1, "table"

    aput-object v1, v8, v0

    const/16 v0, 0x28

    const-string v1, "tt"

    aput-object v1, v8, v0

    const/16 v0, 0x29

    const-string v1, "u"

    aput-object v1, v8, v0

    const/16 v0, 0x2a

    const-string v1, "ul"

    aput-object v1, v8, v0

    const/16 v0, 0x2b

    const-string v1, "var"

    aput-object v1, v8, v0

    sput-object v8, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InForeignToHtml:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
