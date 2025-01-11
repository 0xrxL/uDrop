.class public Lorg/jsoup/parser/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final Tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jsoup/parser/Tag;",
            ">;"
        }
    .end annotation
.end field

.field private static final blockTags:[Ljava/lang/String;

.field private static final emptyTags:[Ljava/lang/String;

.field private static final formListedTags:[Ljava/lang/String;

.field private static final formSubmitTags:[Ljava/lang/String;

.field private static final formatAsInlineTags:[Ljava/lang/String;

.field private static final inlineTags:[Ljava/lang/String;

.field private static final namespaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final preserveWhitespaceTags:[Ljava/lang/String;


# instance fields
.field private empty:Z

.field private formList:Z

.field private formSubmit:Z

.field private formatAsBlock:Z

.field private isBlock:Z

.field private namespace:Ljava/lang/String;

.field private final normalName:Ljava/lang/String;

.field private preserveWhitespace:Z

.field private selfClosing:Z

.field private tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/Map;

    .line 262
    const/16 v0, 0x45

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "html"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "head"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "body"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "frameset"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "script"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "noscript"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "style"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    const-string v1, "meta"

    const/4 v9, 0x7

    aput-object v1, v0, v9

    const-string v1, "link"

    const/16 v10, 0x8

    aput-object v1, v0, v10

    const-string v1, "title"

    const/16 v11, 0x9

    aput-object v1, v0, v11

    const-string v1, "frame"

    const/16 v12, 0xa

    aput-object v1, v0, v12

    const-string v1, "noframes"

    const/16 v13, 0xb

    aput-object v1, v0, v13

    const-string v1, "section"

    const/16 v14, 0xc

    aput-object v1, v0, v14

    const-string v1, "nav"

    const/16 v15, 0xd

    aput-object v1, v0, v15

    const-string v1, "aside"

    const/16 v16, 0xe

    aput-object v1, v0, v16

    const-string v1, "hgroup"

    const/16 v17, 0xf

    aput-object v1, v0, v17

    const-string v1, "header"

    const/16 v18, 0x10

    aput-object v1, v0, v18

    const-string v1, "footer"

    const/16 v19, 0x11

    aput-object v1, v0, v19

    const-string v1, "p"

    const/16 v20, 0x12

    aput-object v1, v0, v20

    const-string v1, "h1"

    const/16 v15, 0x13

    aput-object v1, v0, v15

    const/16 v1, 0x14

    const-string v22, "h2"

    aput-object v22, v0, v1

    const/16 v1, 0x15

    const-string v22, "h3"

    aput-object v22, v0, v1

    const/16 v1, 0x16

    const-string v22, "h4"

    aput-object v22, v0, v1

    const/16 v1, 0x17

    const-string v22, "h5"

    aput-object v22, v0, v1

    const/16 v1, 0x18

    const-string v22, "h6"

    aput-object v22, v0, v1

    const/16 v1, 0x19

    const-string v22, "ul"

    aput-object v22, v0, v1

    const/16 v1, 0x1a

    const-string v22, "ol"

    aput-object v22, v0, v1

    const/16 v1, 0x1b

    const-string v22, "pre"

    aput-object v22, v0, v1

    const/16 v1, 0x1c

    const-string v22, "div"

    aput-object v22, v0, v1

    const/16 v1, 0x1d

    const-string v22, "blockquote"

    aput-object v22, v0, v1

    const/16 v1, 0x1e

    const-string v22, "hr"

    aput-object v22, v0, v1

    const/16 v1, 0x1f

    const-string v22, "address"

    aput-object v22, v0, v1

    const/16 v1, 0x20

    const-string v22, "figure"

    aput-object v22, v0, v1

    const/16 v1, 0x21

    const-string v22, "figcaption"

    aput-object v22, v0, v1

    const/16 v1, 0x22

    const-string v22, "form"

    aput-object v22, v0, v1

    const/16 v1, 0x23

    const-string v22, "fieldset"

    aput-object v22, v0, v1

    const/16 v1, 0x24

    const-string v22, "ins"

    aput-object v22, v0, v1

    const/16 v1, 0x25

    const-string v22, "del"

    aput-object v22, v0, v1

    const/16 v1, 0x26

    const-string v22, "dl"

    aput-object v22, v0, v1

    const/16 v1, 0x27

    const-string v22, "dt"

    aput-object v22, v0, v1

    const/16 v1, 0x28

    const-string v22, "dd"

    aput-object v22, v0, v1

    const/16 v1, 0x29

    const-string v22, "li"

    aput-object v22, v0, v1

    const/16 v1, 0x2a

    const-string v22, "table"

    aput-object v22, v0, v1

    const/16 v1, 0x2b

    const-string v22, "caption"

    aput-object v22, v0, v1

    const/16 v1, 0x2c

    const-string v22, "thead"

    aput-object v22, v0, v1

    const/16 v1, 0x2d

    const-string v22, "tfoot"

    aput-object v22, v0, v1

    const/16 v1, 0x2e

    const-string v22, "tbody"

    aput-object v22, v0, v1

    const/16 v1, 0x2f

    const-string v22, "colgroup"

    aput-object v22, v0, v1

    const/16 v1, 0x30

    const-string v22, "col"

    aput-object v22, v0, v1

    const/16 v1, 0x31

    const-string v22, "tr"

    aput-object v22, v0, v1

    const/16 v1, 0x32

    const-string v22, "th"

    aput-object v22, v0, v1

    const/16 v1, 0x33

    const-string v22, "td"

    aput-object v22, v0, v1

    const/16 v1, 0x34

    const-string v22, "video"

    aput-object v22, v0, v1

    const/16 v1, 0x35

    const-string v22, "audio"

    aput-object v22, v0, v1

    const/16 v1, 0x36

    const-string v22, "canvas"

    aput-object v22, v0, v1

    const/16 v1, 0x37

    const-string v22, "details"

    aput-object v22, v0, v1

    const/16 v1, 0x38

    const-string v22, "menu"

    aput-object v22, v0, v1

    const/16 v1, 0x39

    const-string v22, "plaintext"

    aput-object v22, v0, v1

    const/16 v1, 0x3a

    const-string v22, "template"

    aput-object v22, v0, v1

    const/16 v1, 0x3b

    const-string v22, "article"

    aput-object v22, v0, v1

    const/16 v1, 0x3c

    const-string v22, "main"

    aput-object v22, v0, v1

    const/16 v1, 0x3d

    const-string v22, "svg"

    aput-object v22, v0, v1

    const/16 v1, 0x3e

    const-string v22, "math"

    aput-object v22, v0, v1

    const/16 v1, 0x3f

    const-string v22, "center"

    aput-object v22, v0, v1

    const/16 v1, 0x40

    const-string v22, "template"

    aput-object v22, v0, v1

    const/16 v1, 0x41

    const-string v22, "dir"

    aput-object v22, v0, v1

    const/16 v1, 0x42

    const-string v22, "applet"

    aput-object v22, v0, v1

    const/16 v1, 0x43

    const-string v22, "marquee"

    aput-object v22, v0, v1

    const/16 v1, 0x44

    const-string v22, "listing"

    aput-object v22, v0, v1

    sput-object v0, Lorg/jsoup/parser/Tag;->blockTags:[Ljava/lang/String;

    .line 271
    const/16 v0, 0x4c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "object"

    aput-object v1, v0, v2

    const-string v1, "base"

    aput-object v1, v0, v3

    const-string v1, "font"

    aput-object v1, v0, v4

    const-string v1, "tt"

    aput-object v1, v0, v5

    const-string v1, "i"

    aput-object v1, v0, v6

    const-string v1, "b"

    aput-object v1, v0, v7

    const-string v1, "u"

    aput-object v1, v0, v8

    const-string v1, "big"

    aput-object v1, v0, v9

    const-string v1, "small"

    aput-object v1, v0, v10

    const-string v1, "em"

    aput-object v1, v0, v11

    const-string v1, "strong"

    aput-object v1, v0, v12

    const-string v1, "dfn"

    aput-object v1, v0, v13

    const-string v1, "code"

    aput-object v1, v0, v14

    const-string v1, "samp"

    const/16 v21, 0xd

    aput-object v1, v0, v21

    const-string v1, "kbd"

    aput-object v1, v0, v16

    const-string v1, "var"

    aput-object v1, v0, v17

    const-string v1, "cite"

    aput-object v1, v0, v18

    const-string v1, "abbr"

    aput-object v1, v0, v19

    const-string v1, "time"

    aput-object v1, v0, v20

    const-string v1, "acronym"

    aput-object v1, v0, v15

    const/16 v1, 0x14

    const-string v22, "mark"

    aput-object v22, v0, v1

    const/16 v1, 0x15

    const-string v22, "ruby"

    aput-object v22, v0, v1

    const/16 v1, 0x16

    const-string v22, "rt"

    aput-object v22, v0, v1

    const/16 v1, 0x17

    const-string v22, "rp"

    aput-object v22, v0, v1

    const/16 v1, 0x18

    const-string v22, "rtc"

    aput-object v22, v0, v1

    const/16 v1, 0x19

    const-string v22, "a"

    aput-object v22, v0, v1

    const/16 v1, 0x1a

    const-string v22, "img"

    aput-object v22, v0, v1

    const/16 v1, 0x1b

    const-string v22, "br"

    aput-object v22, v0, v1

    const/16 v1, 0x1c

    const-string v22, "wbr"

    aput-object v22, v0, v1

    const/16 v1, 0x1d

    const-string v22, "map"

    aput-object v22, v0, v1

    const/16 v1, 0x1e

    const-string v22, "q"

    aput-object v22, v0, v1

    const/16 v1, 0x1f

    const-string v22, "sub"

    aput-object v22, v0, v1

    const/16 v1, 0x20

    const-string v22, "sup"

    aput-object v22, v0, v1

    const/16 v1, 0x21

    const-string v22, "bdo"

    aput-object v22, v0, v1

    const/16 v1, 0x22

    const-string v22, "iframe"

    aput-object v22, v0, v1

    const/16 v1, 0x23

    const-string v22, "embed"

    aput-object v22, v0, v1

    const/16 v1, 0x24

    const-string v22, "span"

    aput-object v22, v0, v1

    const/16 v1, 0x25

    const-string v22, "input"

    aput-object v22, v0, v1

    const/16 v1, 0x26

    const-string v23, "select"

    aput-object v23, v0, v1

    const/16 v1, 0x27

    const-string v23, "textarea"

    aput-object v23, v0, v1

    const/16 v1, 0x28

    const-string v24, "label"

    aput-object v24, v0, v1

    const/16 v1, 0x29

    const-string v24, "button"

    aput-object v24, v0, v1

    const/16 v1, 0x2a

    const-string v24, "optgroup"

    aput-object v24, v0, v1

    const/16 v1, 0x2b

    const-string v24, "option"

    aput-object v24, v0, v1

    const/16 v1, 0x2c

    const-string v24, "legend"

    aput-object v24, v0, v1

    const/16 v1, 0x2d

    const-string v24, "datalist"

    aput-object v24, v0, v1

    const/16 v1, 0x2e

    const-string v24, "keygen"

    aput-object v24, v0, v1

    const/16 v1, 0x2f

    const-string v24, "output"

    aput-object v24, v0, v1

    const/16 v1, 0x30

    const-string v24, "progress"

    aput-object v24, v0, v1

    const/16 v1, 0x31

    const-string v24, "meter"

    aput-object v24, v0, v1

    const/16 v1, 0x32

    const-string v24, "area"

    aput-object v24, v0, v1

    const/16 v1, 0x33

    const-string v24, "param"

    aput-object v24, v0, v1

    const/16 v1, 0x34

    const-string v24, "source"

    aput-object v24, v0, v1

    const/16 v1, 0x35

    const-string v24, "track"

    aput-object v24, v0, v1

    const/16 v1, 0x36

    const-string v24, "summary"

    aput-object v24, v0, v1

    const/16 v1, 0x37

    const-string v24, "command"

    aput-object v24, v0, v1

    const/16 v1, 0x38

    const-string v24, "device"

    aput-object v24, v0, v1

    const/16 v1, 0x39

    const-string v24, "area"

    aput-object v24, v0, v1

    const/16 v1, 0x3a

    const-string v24, "basefont"

    aput-object v24, v0, v1

    const/16 v1, 0x3b

    const-string v24, "bgsound"

    aput-object v24, v0, v1

    const/16 v1, 0x3c

    const-string v24, "menuitem"

    aput-object v24, v0, v1

    const/16 v1, 0x3d

    const-string v24, "param"

    aput-object v24, v0, v1

    const/16 v1, 0x3e

    const-string v24, "source"

    aput-object v24, v0, v1

    const/16 v1, 0x3f

    const-string v24, "track"

    aput-object v24, v0, v1

    const/16 v1, 0x40

    const-string v24, "data"

    aput-object v24, v0, v1

    const/16 v1, 0x41

    const-string v24, "bdi"

    aput-object v24, v0, v1

    const/16 v1, 0x42

    const-string v24, "s"

    aput-object v24, v0, v1

    const/16 v1, 0x43

    const-string v24, "strike"

    aput-object v24, v0, v1

    const/16 v1, 0x44

    const-string v24, "nobr"

    aput-object v24, v0, v1

    const/16 v1, 0x45

    const-string v24, "rb"

    aput-object v24, v0, v1

    const/16 v1, 0x46

    const-string v24, "text"

    aput-object v24, v0, v1

    const/16 v1, 0x47

    const-string v24, "mi"

    aput-object v24, v0, v1

    const/16 v1, 0x48

    const-string v24, "mo"

    aput-object v24, v0, v1

    const/16 v1, 0x49

    const-string v24, "msup"

    aput-object v24, v0, v1

    const/16 v1, 0x4a

    const-string v24, "mn"

    aput-object v24, v0, v1

    const/16 v1, 0x4b

    const-string v24, "mtext"

    aput-object v24, v0, v1

    sput-object v0, Lorg/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    .line 282
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "meta"

    aput-object v1, v0, v2

    const-string v1, "link"

    aput-object v1, v0, v3

    const-string v1, "base"

    aput-object v1, v0, v4

    const-string v1, "frame"

    aput-object v1, v0, v5

    const-string v1, "img"

    aput-object v1, v0, v6

    const-string v1, "br"

    aput-object v1, v0, v7

    const-string v1, "wbr"

    aput-object v1, v0, v8

    const-string v1, "embed"

    aput-object v1, v0, v9

    const-string v1, "hr"

    aput-object v1, v0, v10

    aput-object v22, v0, v11

    const-string v1, "keygen"

    aput-object v1, v0, v12

    const-string v1, "col"

    aput-object v1, v0, v13

    const-string v1, "command"

    aput-object v1, v0, v14

    const-string v1, "device"

    const/16 v21, 0xd

    aput-object v1, v0, v21

    const-string v1, "area"

    aput-object v1, v0, v16

    const-string v1, "basefont"

    aput-object v1, v0, v17

    const-string v1, "bgsound"

    aput-object v1, v0, v18

    const-string v1, "menuitem"

    aput-object v1, v0, v19

    const-string v1, "param"

    aput-object v1, v0, v20

    const-string v1, "source"

    aput-object v1, v0, v15

    const/16 v1, 0x14

    const-string v24, "track"

    aput-object v24, v0, v1

    sput-object v0, Lorg/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    .line 287
    new-array v0, v15, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v2

    const-string v1, "a"

    aput-object v1, v0, v3

    const-string v1, "p"

    aput-object v1, v0, v4

    const-string v1, "h1"

    aput-object v1, v0, v5

    const-string v1, "h2"

    aput-object v1, v0, v6

    const-string v1, "h3"

    aput-object v1, v0, v7

    const-string v1, "h4"

    aput-object v1, v0, v8

    const-string v1, "h5"

    aput-object v1, v0, v9

    const-string v1, "h6"

    aput-object v1, v0, v10

    const-string v1, "pre"

    aput-object v1, v0, v11

    const-string v1, "address"

    aput-object v1, v0, v12

    const-string v1, "li"

    aput-object v1, v0, v13

    const-string v1, "th"

    aput-object v1, v0, v14

    const-string v1, "td"

    const/16 v11, 0xd

    aput-object v1, v0, v11

    const-string v1, "script"

    aput-object v1, v0, v16

    const-string v1, "style"

    aput-object v1, v0, v17

    const-string v1, "ins"

    aput-object v1, v0, v18

    const-string v1, "del"

    aput-object v1, v0, v19

    const-string v1, "s"

    aput-object v1, v0, v20

    sput-object v0, Lorg/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    .line 291
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "pre"

    aput-object v1, v0, v2

    const-string v1, "plaintext"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    aput-object v23, v0, v5

    sput-object v0, Lorg/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    .line 296
    new-array v0, v10, [Ljava/lang/String;

    const-string v1, "button"

    aput-object v1, v0, v2

    const-string v1, "fieldset"

    aput-object v1, v0, v3

    aput-object v22, v0, v4

    const-string v1, "keygen"

    aput-object v1, v0, v5

    const-string v1, "object"

    aput-object v1, v0, v6

    const-string v1, "output"

    aput-object v1, v0, v7

    const-string v1, "select"

    aput-object v1, v0, v8

    aput-object v23, v0, v9

    sput-object v0, Lorg/jsoup/parser/Tag;->formListedTags:[Ljava/lang/String;

    .line 299
    new-array v0, v7, [Ljava/lang/String;

    aput-object v22, v0, v2

    const-string v1, "keygen"

    aput-object v1, v0, v3

    const-string v1, "object"

    aput-object v1, v0, v4

    const-string v1, "select"

    aput-object v1, v0, v5

    aput-object v23, v0, v6

    sput-object v0, Lorg/jsoup/parser/Tag;->formSubmitTags:[Ljava/lang/String;

    .line 303
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/jsoup/parser/Tag;->namespaces:Ljava/util/Map;

    .line 305
    sget-object v0, Lorg/jsoup/parser/Tag;->namespaces:Ljava/util/Map;

    new-array v1, v8, [Ljava/lang/String;

    const-string v8, "math"

    aput-object v8, v1, v2

    const-string v8, "mi"

    aput-object v8, v1, v3

    const-string v8, "mo"

    aput-object v8, v1, v4

    const-string v8, "msup"

    aput-object v8, v1, v5

    const-string v5, "mn"

    aput-object v5, v1, v6

    const-string v5, "mtext"

    aput-object v5, v1, v7

    const-string v5, "http://www.w3.org/1998/Math/MathML"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lorg/jsoup/parser/Tag;->namespaces:Ljava/util/Map;

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "svg"

    aput-object v4, v1, v2

    const-string v2, "text"

    aput-object v2, v1, v3

    const-string v2, "http://www.w3.org/2000/svg"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lorg/jsoup/parser/Tag;->blockTags:[Ljava/lang/String;

    new-instance v1, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, v1}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 327
    sget-object v0, Lorg/jsoup/parser/Tag;->inlineTags:[Ljava/lang/String;

    new-instance v1, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v1}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 332
    sget-object v0, Lorg/jsoup/parser/Tag;->emptyTags:[Ljava/lang/String;

    new-instance v1, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0, v1}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 333
    sget-object v0, Lorg/jsoup/parser/Tag;->formatAsInlineTags:[Ljava/lang/String;

    new-instance v1, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v1}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 334
    sget-object v0, Lorg/jsoup/parser/Tag;->preserveWhitespaceTags:[Ljava/lang/String;

    new-instance v1, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0, v1}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 335
    sget-object v0, Lorg/jsoup/parser/Tag;->formListedTags:[Ljava/lang/String;

    new-instance v1, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0, v1}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 336
    sget-object v0, Lorg/jsoup/parser/Tag;->formSubmitTags:[Ljava/lang/String;

    new-instance v1, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0, v1}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 337
    sget-object v0, Lorg/jsoup/parser/Tag;->namespaces:Ljava/util/Map;

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

    .line 338
    .local v1, "ns":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v3, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda7;

    invoke-direct {v3, v1}, Lorg/jsoup/parser/Tag$$ExternalSyntheticLambda7;-><init>(Ljava/util/Map$Entry;)V

    invoke-static {v2, v3}, Lorg/jsoup/parser/Tag;->setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V

    .line 339
    .end local v1    # "ns":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Ljava/lang/String;>;"
    goto :goto_0

    .line 340
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "namespace"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 22
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    .line 24
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 25
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    .line 26
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    .line 27
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    .line 30
    iput-object p1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static isKnownTag(Ljava/lang/String;)Z
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;

    .line 183
    sget-object v0, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0(Lorg/jsoup/parser/Tag;)V
    .locals 1
    .param p0, "tag"    # Lorg/jsoup/parser/Tag;

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 324
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 325
    return-void
.end method

.method static synthetic lambda$static$1(Lorg/jsoup/parser/Tag;)V
    .locals 1
    .param p0, "tag"    # Lorg/jsoup/parser/Tag;

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 329
    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    .line 330
    return-void
.end method

.method static synthetic lambda$static$2(Lorg/jsoup/parser/Tag;)V
    .locals 1
    .param p0, "tag"    # Lorg/jsoup/parser/Tag;

    .line 332
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    return-void
.end method

.method static synthetic lambda$static$3(Lorg/jsoup/parser/Tag;)V
    .locals 1
    .param p0, "tag"    # Lorg/jsoup/parser/Tag;

    .line 333
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    return-void
.end method

.method static synthetic lambda$static$4(Lorg/jsoup/parser/Tag;)V
    .locals 1
    .param p0, "tag"    # Lorg/jsoup/parser/Tag;

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    return-void
.end method

.method static synthetic lambda$static$5(Lorg/jsoup/parser/Tag;)V
    .locals 1
    .param p0, "tag"    # Lorg/jsoup/parser/Tag;

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    return-void
.end method

.method static synthetic lambda$static$6(Lorg/jsoup/parser/Tag;)V
    .locals 1
    .param p0, "tag"    # Lorg/jsoup/parser/Tag;

    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    return-void
.end method

.method static synthetic lambda$static$7(Ljava/util/Map$Entry;Lorg/jsoup/parser/Tag;)V
    .locals 1
    .param p0, "ns"    # Ljava/util/Map$Entry;
    .param p1, "tag"    # Lorg/jsoup/parser/Tag;

    .line 338
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p1, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    return-void
.end method

.method private static setupTags([Ljava/lang/String;Ljava/util/function/Consumer;)V
    .locals 6
    .param p0, "tagNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Lorg/jsoup/parser/Tag;",
            ">;)V"
        }
    .end annotation

    .line 311
    .local p1, "tagModifier":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lorg/jsoup/parser/Tag;>;"
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 312
    .local v2, "tagName":Ljava/lang/String;
    sget-object v3, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jsoup/parser/Tag;

    .line 313
    .local v3, "tag":Lorg/jsoup/parser/Tag;
    if-nez v3, :cond_0

    .line 314
    new-instance v4, Lorg/jsoup/parser/Tag;

    const-string v5, "http://www.w3.org/1999/xhtml"

    invoke-direct {v4, v2, v5}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 315
    sget-object v4, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/Map;

    iget-object v5, v3, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 311
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "tag":Lorg/jsoup/parser/Tag;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_1
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/parser/Tag;
    .locals 2
    .param p0, "tagName"    # Ljava/lang/String;

    .line 104
    const-string v0, "http://www.w3.org/1999/xhtml"

    sget-object v1, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-static {p0, v0, v1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 3
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "settings"    # Lorg/jsoup/parser/ParseSettings;

    .line 68
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 69
    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 70
    sget-object v0, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Tag;

    .line 71
    .local v0, "tag":Lorg/jsoup/parser/Tag;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    return-object v0

    .line 74
    :cond_0
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 76
    invoke-static {p0}, Lorg/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "normalName":Ljava/lang/String;
    sget-object v2, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/jsoup/parser/Tag;

    .line 78
    if-eqz v0, :cond_2

    iget-object v2, v0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 79
    invoke-virtual {p2}, Lorg/jsoup/parser/ParseSettings;->preserveTagCase()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->clone()Lorg/jsoup/parser/Tag;

    move-result-object v0

    .line 81
    iput-object p0, v0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    .line 83
    :cond_1
    return-object v0

    .line 87
    :cond_2
    new-instance v2, Lorg/jsoup/parser/Tag;

    invoke-direct {v2, p0, p1}, Lorg/jsoup/parser/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 88
    const/4 v2, 0x0

    iput-boolean v2, v0, Lorg/jsoup/parser/Tag;->isBlock:Z

    .line 90
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;
    .locals 1
    .param p0, "tagName"    # Ljava/lang/String;
    .param p1, "settings"    # Lorg/jsoup/parser/ParseSettings;

    .line 119
    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-static {p0, v0, p1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0}, Lorg/jsoup/parser/Tag;->clone()Lorg/jsoup/parser/Tag;

    move-result-object v0

    return-object v0
.end method

.method protected clone()Lorg/jsoup/parser/Tag;
    .locals 2

    .line 254
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/parser/Tag;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 218
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 219
    :cond_0
    instance-of v1, p1, Lorg/jsoup/parser/Tag;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 221
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/jsoup/parser/Tag;

    .line 223
    .local v1, "tag":Lorg/jsoup/parser/Tag;
    iget-object v3, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    iget-object v4, v1, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    .line 224
    :cond_2
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->empty:Z

    iget-boolean v4, v1, Lorg/jsoup/parser/Tag;->empty:Z

    if-eq v3, v4, :cond_3

    return v2

    .line 225
    :cond_3
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    iget-boolean v4, v1, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    if-eq v3, v4, :cond_4

    return v2

    .line 226
    :cond_4
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    iget-boolean v4, v1, Lorg/jsoup/parser/Tag;->isBlock:Z

    if-eq v3, v4, :cond_5

    return v2

    .line 227
    :cond_5
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    iget-boolean v4, v1, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    if-eq v3, v4, :cond_6

    return v2

    .line 228
    :cond_6
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    iget-boolean v4, v1, Lorg/jsoup/parser/Tag;->selfClosing:Z

    if-eq v3, v4, :cond_7

    return v2

    .line 229
    :cond_7
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->formList:Z

    iget-boolean v4, v1, Lorg/jsoup/parser/Tag;->formList:Z

    if-eq v3, v4, :cond_8

    return v2

    .line 230
    :cond_8
    iget-boolean v3, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    iget-boolean v4, v1, Lorg/jsoup/parser/Tag;->formSubmit:Z

    if-ne v3, v4, :cond_9

    goto :goto_0

    :cond_9
    move v0, v2

    :goto_0
    return v0
.end method

.method public formatAsBlock()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 235
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 236
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    add-int/2addr v1, v2

    .line 237
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->formatAsBlock:Z

    add-int/2addr v0, v2

    .line 238
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->empty:Z

    add-int/2addr v1, v2

    .line 239
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    add-int/2addr v0, v2

    .line 240
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    add-int/2addr v1, v2

    .line 241
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->formList:Z

    add-int/2addr v0, v2

    .line 242
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    add-int/2addr v1, v2

    .line 243
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isBlock()Z
    .locals 1

    .line 128
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    return v0
.end method

.method public isFormListed()Z
    .locals 1

    .line 200
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formList:Z

    return v0
.end method

.method public isFormSubmittable()Z
    .locals 1

    .line 208
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->formSubmit:Z

    return v0
.end method

.method public isInline()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->isBlock:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isKnownTag()Z
    .locals 2

    .line 173
    sget-object v0, Lorg/jsoup/parser/Tag;->Tags:Ljava/util/Map;

    iget-object v1, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSelfClosing()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->empty:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public namespace()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public normalName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->normalName:Ljava/lang/String;

    return-object v0
.end method

.method public preserveWhitespace()Z
    .locals 1

    .line 192
    iget-boolean v0, p0, Lorg/jsoup/parser/Tag;->preserveWhitespace:Z

    return v0
.end method

.method setSelfClosing()Lorg/jsoup/parser/Tag;
    .locals 1

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jsoup/parser/Tag;->selfClosing:Z

    .line 213
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/jsoup/parser/Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method
