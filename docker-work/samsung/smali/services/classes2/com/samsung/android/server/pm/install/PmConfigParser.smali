.class public Lcom/samsung/android/server/pm/install/PmConfigParser;
.super Ljava/lang/Object;
.source "PmConfigParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PackageManager"

.field public static final TAG_NAME:Ljava/lang/String; = "name"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_PACKAGES:Ljava/lang/String; = "packages"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parsePackageInternal(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 58
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p0

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    :cond_9
    :goto_9
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_43

    const/4 v2, 0x3

    if-ne v1, v2, :cond_19

    .line 62
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-le v3, p0, :cond_43

    :cond_19
    if-eq v1, v2, :cond_9

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    goto :goto_9

    .line 67
    :cond_1f
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package"

    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    const-string v2, "name"

    .line 70
    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_43
    return-object v0
.end method

.method public parsePackages(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string v1, "PackageManager"

    if-nez p1, :cond_12

    const-string p1, "No xml file exists."

    .line 36
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    :cond_12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 41
    :try_start_1b
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_20} :catch_62
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_20} :catch_4c
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_20} :catch_36

    const/4 v0, 0x0

    .line 42
    :try_start_21
    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/pm/install/PmConfigParser;->parsePackageInternal(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/List;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2c

    .line 44
    :try_start_28
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_2b} :catch_62
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_2b} :catch_4c
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_36

    goto :goto_77

    :catchall_2c
    move-exception p0

    .line 41
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_31

    goto :goto_35

    :catchall_31
    move-exception v0

    :try_start_32
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_35
    throw p0
    :try_end_36
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_32 .. :try_end_36} :catch_62
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_36} :catch_4c
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_36} :catch_36

    :catch_36
    move-exception p0

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse allowlist. IOException "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :catch_4c
    move-exception p0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse allowlist. FileNotFoundException "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :catch_62
    move-exception p0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse allowlist. XmlPullParserException "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_77
    return-object p1
.end method

.method public final serializePackages(Ljava/util/HashSet;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/xmlpull/v1/XmlSerializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    const-string/jumbo v0, "packages"

    .line 110
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 112
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "package"

    .line 113
    invoke-interface {p2, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, "name"

    .line 114
    invoke-interface {p2, p0, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 115
    invoke-interface {p2, p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_b

    .line 118
    :cond_26
    invoke-interface {p2, p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writePackagesToXml(Ljava/util/HashSet;Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_13

    .line 83
    :try_start_b
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p2

    .line 85
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 89
    :cond_13
    :goto_13
    new-instance p2, Landroid/util/AtomicFile;

    invoke-direct {p2, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    .line 92
    :try_start_19
    invoke-virtual {p2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1d} :catch_40

    .line 94
    :try_start_1d
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 95
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v4, 0x1

    .line 96
    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 97
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 99
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/server/pm/install/PmConfigParser;->serializePackages(Ljava/util/HashSet;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 101
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 102
    invoke-virtual {p2, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3e} :catch_3f

    goto :goto_43

    :catch_3f
    move-object v0, v1

    .line 104
    :catch_40
    invoke-virtual {p2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :goto_43
    return-void
.end method
