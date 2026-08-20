.class public Lcom/samsung/android/fontutil/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TypefaceParser.java"


# static fields
.field private static final blacklist ATTR_NAME:Ljava/lang/String; = "displayname"

.field private static final blacklist NODE_DROIDNAME:Ljava/lang/String; = "droidname"

.field private static final blacklist NODE_FILE:Ljava/lang/String; = "file"

.field private static final blacklist NODE_FILENAME:Ljava/lang/String; = "filename"

.field private static final blacklist NODE_FONT:Ljava/lang/String; = "font"

.field private static final blacklist NODE_MONOSPACE:Ljava/lang/String; = "monospace"

.field private static final blacklist NODE_SANS:Ljava/lang/String; = "sans"

.field private static final blacklist NODE_SERIF:Ljava/lang/String; = "serif"


# instance fields
.field private blacklist in_droidname:Z

.field private blacklist in_filename:Z

.field private blacklist in_monospace:Z

.field private blacklist in_sans:Z

.field private blacklist in_serif:Z

.field private blacklist mFont:Lcom/samsung/android/fontutil/SemTypeface;

.field private blacklist mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_sans:Z

    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_serif:Z

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_monospace:Z

    .line 45
    iput-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_filename:Z

    .line 46
    iput-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_droidname:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFont:Lcom/samsung/android/fontutil/SemTypeface;

    .line 50
    iput-object v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    return-void
.end method


# virtual methods
.method public whitelist test-api characters([CII)V
    .registers 6
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 130
    iget-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_filename:Z

    if-eqz v0, :cond_f

    .line 131
    iget-object v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/fontutil/TypefaceFile;->setFileName(Ljava/lang/String;)V

    goto :goto_1d

    .line 132
    :cond_f
    iget-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_droidname:Z

    if-eqz v0, :cond_1d

    .line 133
    iget-object v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/fontutil/TypefaceFile;->setDroidName(Ljava/lang/String;)V

    .line 135
    :cond_1d
    :goto_1d
    return-void
.end method

.method public whitelist test-api endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 67
    return-void
.end method

.method public whitelist test-api endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 100
    const-string v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_79

    .line 101
    :cond_a
    const-string/jumbo v0, "sans"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 102
    iput-boolean v1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_sans:Z

    goto :goto_79

    .line 103
    :cond_17
    const-string/jumbo v0, "serif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 104
    iput-boolean v1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_serif:Z

    goto :goto_79

    .line 105
    :cond_23
    const-string v0, "monospace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 106
    iput-boolean v1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_monospace:Z

    goto :goto_79

    .line 107
    :cond_2e
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 108
    iget-object v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    if-eqz v0, :cond_79

    .line 109
    iget-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_sans:Z

    if-eqz v0, :cond_48

    .line 110
    iget-object v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFont:Lcom/samsung/android/fontutil/SemTypeface;

    iget-object v0, v0, Lcom/samsung/android/fontutil/SemTypeface;->mSansFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 111
    :cond_48
    iget-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_serif:Z

    if-eqz v0, :cond_56

    .line 112
    iget-object v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFont:Lcom/samsung/android/fontutil/SemTypeface;

    iget-object v0, v0, Lcom/samsung/android/fontutil/SemTypeface;->mSerifFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 113
    :cond_56
    iget-boolean v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_monospace:Z

    if-eqz v0, :cond_79

    .line 114
    iget-object v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFont:Lcom/samsung/android/fontutil/SemTypeface;

    iget-object v0, v0, Lcom/samsung/android/fontutil/SemTypeface;->mMonospaceFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_79

    .line 117
    :cond_64
    const-string v0, "filename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 118
    iput-boolean v1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_filename:Z

    goto :goto_79

    .line 119
    :cond_6f
    const-string v0, "droidname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 120
    iput-boolean v1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_droidname:Z

    .line 122
    :cond_79
    :goto_79
    return-void
.end method

.method public blacklist getParsedData()Lcom/samsung/android/fontutil/SemTypeface;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFont:Lcom/samsung/android/fontutil/SemTypeface;

    return-object v0
.end method

.method public whitelist test-api startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/samsung/android/fontutil/SemTypeface;

    invoke-direct {v0}, Lcom/samsung/android/fontutil/SemTypeface;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFont:Lcom/samsung/android/fontutil/SemTypeface;

    .line 63
    return-void
.end method

.method public whitelist test-api startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 76
    const-string v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 77
    const-string v0, "displayname"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "attrValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFont:Lcom/samsung/android/fontutil/SemTypeface;

    invoke-virtual {v1, v0}, Lcom/samsung/android/fontutil/SemTypeface;->setName(Ljava/lang/String;)V

    .line 79
    .end local v0    # "attrValue":Ljava/lang/String;
    goto :goto_5d

    :cond_14
    const-string/jumbo v0, "sans"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_21

    .line 80
    iput-boolean v1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_sans:Z

    goto :goto_5d

    .line 81
    :cond_21
    const-string/jumbo v0, "serif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 82
    iput-boolean v1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_serif:Z

    goto :goto_5d

    .line 83
    :cond_2d
    const-string v0, "monospace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 84
    iput-boolean v1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_monospace:Z

    goto :goto_5d

    .line 85
    :cond_38
    const-string v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 86
    new-instance v0, Lcom/samsung/android/fontutil/TypefaceFile;

    invoke-direct {v0}, Lcom/samsung/android/fontutil/TypefaceFile;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fontutil/TypefaceParser;->mFontFile:Lcom/samsung/android/fontutil/TypefaceFile;

    goto :goto_5d

    .line 87
    :cond_48
    const-string v0, "filename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_53

    .line 88
    iput-boolean v1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_filename:Z

    goto :goto_5d

    .line 89
    :cond_53
    const-string v0, "droidname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 90
    iput-boolean v1, p0, Lcom/samsung/android/fontutil/TypefaceParser;->in_droidname:Z

    .line 92
    :cond_5d
    :goto_5d
    return-void
.end method
