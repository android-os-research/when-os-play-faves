.class public Lcom/android/server/policy/devicestate/config/Conditions;
.super Ljava/lang/Object;
.source "Conditions.java"


# instance fields
.field public lidSwitch:Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

.field public sensor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/policy/devicestate/config/SensorCondition;",
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

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/Conditions;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/android/server/policy/devicestate/config/Conditions;

    invoke-direct {v0}, Lcom/android/server/policy/devicestate/config/Conditions;-><init>()V

    .line 32
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 34
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_48

    if-eq v1, v3, :cond_48

    .line 36
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 37
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "lid-switch"

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 39
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/android/server/policy/devicestate/config/Conditions;->setLidSwitch(Lcom/android/server/policy/devicestate/config/LidSwitchCondition;)V

    goto :goto_8

    :cond_2f
    const-string/jumbo v2, "sensor"

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 42
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/SensorCondition;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/SensorCondition;

    move-result-object v1

    .line 43
    invoke-virtual {v0}, Lcom/android/server/policy/devicestate/config/Conditions;->getSensor()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 45
    :cond_44
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_48
    if-ne v1, v3, :cond_4b

    return-object v0

    .line 49
    :cond_4b
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Conditions is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getLidSwitch()Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/Conditions;->lidSwitch:Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    return-object p0
.end method

.method public getSensor()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/policy/devicestate/config/SensorCondition;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    .line 26
    :cond_b
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/Conditions;->sensor:Ljava/util/List;

    return-object p0
.end method

.method public hasLidSwitch()Z
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/Conditions;->lidSwitch:Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public setLidSwitch(Lcom/android/server/policy/devicestate/config/LidSwitchCondition;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/Conditions;->lidSwitch:Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    return-void
.end method
