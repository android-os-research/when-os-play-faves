.class public Lcom/android/server/enterprise/general/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TypefaceParser.java"


# static fields
.field public static final ATTR_NAME:Ljava/lang/String; = "displayname"

.field public static final NODE_DROIDNAME:Ljava/lang/String; = "droidname"

.field public static final NODE_FILE:Ljava/lang/String; = "file"

.field public static final NODE_FILENAME:Ljava/lang/String; = "filename"

.field public static final NODE_FONT:Ljava/lang/String; = "font"

.field public static final NODE_MONOSPACE:Ljava/lang/String; = "monospace"

.field public static final NODE_SANS:Ljava/lang/String; = "sans"

.field public static final NODE_SERIF:Ljava/lang/String; = "serif"


# instance fields
.field public in_droidname:Z

.field public in_file:Z

.field public in_filename:Z

.field public in_font:Z

.field public in_monospace:Z

.field public in_sans:Z

.field public in_serif:Z

.field public mFont:Lcom/android/server/enterprise/general/Typeface;

.field public mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_font:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    .line 86
    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_file:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    .line 102
    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5

    .line 312
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    if-eqz v0, :cond_f

    .line 314
    iget-object p0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/TypefaceFile;->setFileName(Ljava/lang/String;)V

    goto :goto_1d

    .line 318
    :cond_f
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    if-eqz v0, :cond_1d

    .line 320
    iget-object p0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/general/TypefaceFile;->setDroidName(Ljava/lang/String;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "font"

    .line 230
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_d

    .line 232
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_font:Z

    goto/16 :goto_78

    :cond_d
    const-string/jumbo p1, "sans"

    .line 236
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 238
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    goto :goto_78

    :cond_19
    const-string/jumbo p1, "serif"

    .line 242
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 244
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    goto :goto_78

    :cond_25
    const-string/jumbo p1, "monospace"

    .line 248
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    .line 250
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    goto :goto_78

    :cond_31
    const-string p1, "file"

    .line 254
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_63

    .line 256
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_file:Z

    .line 258
    iget-object p1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    if-eqz p1, :cond_78

    .line 260
    iget-boolean p2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    if-eqz p2, :cond_4b

    .line 262
    iget-object p0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    iget-object p0, p0, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 266
    :cond_4b
    iget-boolean p2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    if-eqz p2, :cond_57

    .line 268
    iget-object p0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    iget-object p0, p0, Lcom/android/server/enterprise/general/Typeface;->mSerifFonts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    .line 272
    :cond_57
    iget-boolean p2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    if-eqz p2, :cond_78

    .line 274
    iget-object p0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    iget-object p0, p0, Lcom/android/server/enterprise/general/Typeface;->mMonospaceFonts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_78

    :cond_63
    const-string p1, "filename"

    .line 282
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6e

    .line 284
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    goto :goto_78

    :cond_6e
    const-string p1, "droidname"

    .line 288
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_78

    .line 290
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    :cond_78
    :goto_78
    return-void
.end method

.method public getParsedData()Lcom/android/server/enterprise/general/Typeface;
    .registers 1

    .line 118
    iget-object p0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    return-object p0
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 128
    new-instance v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-direct {v0}, Lcom/android/server/enterprise/general/Typeface;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "font"

    .line 160
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p3, 0x1

    if-eqz p1, :cond_17

    .line 162
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_font:Z

    const-string p1, "displayname"

    .line 164
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 166
    iget-object p0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/general/Typeface;->setName(Ljava/lang/String;)V

    goto :goto_62

    :cond_17
    const-string/jumbo p1, "sans"

    .line 170
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 172
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    goto :goto_62

    :cond_23
    const-string/jumbo p1, "serif"

    .line 176
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 178
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    goto :goto_62

    :cond_2f
    const-string/jumbo p1, "monospace"

    .line 182
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 184
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    goto :goto_62

    :cond_3b
    const-string p1, "file"

    .line 188
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4d

    .line 190
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_file:Z

    .line 192
    new-instance p1, Lcom/android/server/enterprise/general/TypefaceFile;

    invoke-direct {p1}, Lcom/android/server/enterprise/general/TypefaceFile;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    goto :goto_62

    :cond_4d
    const-string p1, "filename"

    .line 196
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_58

    .line 198
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    goto :goto_62

    :cond_58
    const-string p1, "droidname"

    .line 202
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_62

    .line 204
    iput-boolean p3, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    :cond_62
    :goto_62
    return-void
.end method
