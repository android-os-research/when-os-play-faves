.class public Lcom/android/server/compat/overrides/Overrides;
.super Ljava/lang/Object;
.source "Overrides.java"


# instance fields
.field public changeOverrides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/compat/overrides/ChangeOverrides;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/Overrides;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 14
    new-instance v0, Lcom/android/server/compat/overrides/Overrides;

    invoke-direct {v0}, Lcom/android/server/compat/overrides/Overrides;-><init>()V

    .line 16
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 18
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_36

    if-eq v1, v3, :cond_36

    .line 20
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 21
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "change-overrides"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 23
    invoke-static {p0}, Lcom/android/server/compat/overrides/ChangeOverrides;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/ChangeOverrides;

    move-result-object v1

    .line 24
    invoke-virtual {v0}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 26
    :cond_32
    invoke-static {p0}, Lcom/android/server/compat/overrides/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_36
    if-ne v1, v3, :cond_39

    return-object v0

    .line 30
    :cond_39
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Overrides is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getChangeOverrides()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/compat/overrides/ChangeOverrides;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/android/server/compat/overrides/Overrides;->changeOverrides:Ljava/util/List;

    if-nez v0, :cond_b

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/compat/overrides/Overrides;->changeOverrides:Ljava/util/List;

    .line 10
    :cond_b
    iget-object p0, p0, Lcom/android/server/compat/overrides/Overrides;->changeOverrides:Ljava/util/List;

    return-object p0
.end method

.method public write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    const-string v0, ">\n"

    .line 37
    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/XmlWriter;->increaseIndent()V

    .line 39
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/Overrides;->getChangeOverrides()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/compat/overrides/ChangeOverrides;

    const-string v2, "change-overrides"

    .line 40
    invoke-virtual {v1, p1, v2}, Lcom/android/server/compat/overrides/ChangeOverrides;->write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V

    goto :goto_24

    .line 42
    :cond_36
    invoke-virtual {p1}, Lcom/android/server/compat/overrides/XmlWriter;->decreaseIndent()V

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    return-void
.end method
