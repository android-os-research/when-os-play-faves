.class public Lcom/android/server/display/config/BrightnessThresholds;
.super Ljava/lang/Object;
.source "BrightnessThresholds.java"


# instance fields
.field public minimum:Ljava/math/BigDecimal;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/BrightnessThresholds;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/android/server/display/config/BrightnessThresholds;

    invoke-direct {v0}, Lcom/android/server/display/config/BrightnessThresholds;-><init>()V

    .line 24
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 26
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_38

    if-eq v1, v3, :cond_38

    .line 28
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 29
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "minimum"

    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 31
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 32
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/BrightnessThresholds;->setMinimum(Ljava/math/BigDecimal;)V

    goto :goto_8

    .line 35
    :cond_34
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_38
    if-ne v1, v3, :cond_3b

    return-object v0

    .line 39
    :cond_3b
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "BrightnessThresholds is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getMinimum()Ljava/math/BigDecimal;
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/android/server/display/config/BrightnessThresholds;->minimum:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public hasMinimum()Z
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/android/server/display/config/BrightnessThresholds;->minimum:Ljava/math/BigDecimal;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final setMinimum(Ljava/math/BigDecimal;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/android/server/display/config/BrightnessThresholds;->minimum:Ljava/math/BigDecimal;

    return-void
.end method
