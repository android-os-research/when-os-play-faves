.class public Lcom/android/server/display/config/RefreshRateRange;
.super Ljava/lang/Object;
.source "RefreshRateRange.java"


# instance fields
.field public maximum:Ljava/math/BigInteger;

.field public minimum:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 38
    new-instance v0, Lcom/android/server/display/config/RefreshRateRange;

    invoke-direct {v0}, Lcom/android/server/display/config/RefreshRateRange;-><init>()V

    .line 40
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 42
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_4e

    if-eq v1, v3, :cond_4e

    .line 44
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 45
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "minimum"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 47
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 48
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/RefreshRateRange;->setMinimum(Ljava/math/BigInteger;)V

    goto :goto_8

    :cond_34
    const-string/jumbo v2, "maximum"

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 51
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 52
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/RefreshRateRange;->setMaximum(Ljava/math/BigInteger;)V

    goto :goto_8

    .line 55
    :cond_4a
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_4e
    if-ne v1, v3, :cond_51

    return-object v0

    .line 59
    :cond_51
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "RefreshRateRange is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getMaximum()Ljava/math/BigInteger;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateRange;->maximum:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final getMinimum()Ljava/math/BigInteger;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateRange;->minimum:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hasMaximum()Z
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateRange;->maximum:Ljava/math/BigInteger;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasMinimum()Z
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateRange;->minimum:Ljava/math/BigInteger;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final setMaximum(Ljava/math/BigInteger;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateRange;->maximum:Ljava/math/BigInteger;

    return-void
.end method

.method public final setMinimum(Ljava/math/BigInteger;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateRange;->minimum:Ljava/math/BigInteger;

    return-void
.end method
