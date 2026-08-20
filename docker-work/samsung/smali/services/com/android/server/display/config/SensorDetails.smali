.class public Lcom/android/server/display/config/SensorDetails;
.super Ljava/lang/Object;
.source "SensorDetails.java"


# instance fields
.field public name:Ljava/lang/String;

.field public refreshRate:Lcom/android/server/display/config/RefreshRateRange;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/SensorDetails;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/android/server/display/config/SensorDetails;

    invoke-direct {v0}, Lcom/android/server/display/config/SensorDetails;-><init>()V

    .line 56
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 58
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_55

    if-eq v1, v3, :cond_55

    .line 60
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 61
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "type"

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 63
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/SensorDetails;->setType(Ljava/lang/String;)V

    goto :goto_8

    :cond_2f
    const-string/jumbo v2, "name"

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 67
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/SensorDetails;->setName(Ljava/lang/String;)V

    goto :goto_8

    :cond_40
    const-string/jumbo v2, "refreshRate"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 71
    invoke-static {p0}, Lcom/android/server/display/config/RefreshRateRange;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/SensorDetails;->setRefreshRate(Lcom/android/server/display/config/RefreshRateRange;)V

    goto :goto_8

    .line 74
    :cond_51
    invoke-static {p0}, Lcom/android/server/display/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_55
    if-ne v1, v3, :cond_58

    return-object v0

    .line 78
    :cond_58
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "SensorDetails is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getRefreshRate()Lcom/android/server/display/config/RefreshRateRange;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/server/display/config/SensorDetails;->refreshRate:Lcom/android/server/display/config/RefreshRateRange;

    return-object p0
.end method

.method public final getType()Ljava/lang/String;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    return-object p0
.end method

.method public hasName()Z
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasRefreshRate()Z
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/server/display/config/SensorDetails;->refreshRate:Lcom/android/server/display/config/RefreshRateRange;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasType()Z
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public final setName(Ljava/lang/String;)V
    .registers 2

    .line 35
    iput-object p1, p0, Lcom/android/server/display/config/SensorDetails;->name:Ljava/lang/String;

    return-void
.end method

.method public final setRefreshRate(Lcom/android/server/display/config/RefreshRateRange;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/android/server/display/config/SensorDetails;->refreshRate:Lcom/android/server/display/config/RefreshRateRange;

    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/android/server/display/config/SensorDetails;->type:Ljava/lang/String;

    return-void
.end method
