.class public Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
.super Ljava/lang/Object;
.source "LidSwitchCondition.java"


# instance fields
.field public open:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/LidSwitchCondition;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 25
    new-instance v0, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;

    invoke-direct {v0}, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;-><init>()V

    .line 27
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 29
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_37

    if-eq v1, v3, :cond_37

    .line 31
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 32
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "open"

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 34
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;->setOpen(Z)V

    goto :goto_8

    .line 38
    :cond_33
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_37
    if-ne v1, v3, :cond_3a

    return-object v0

    .line 42
    :cond_3a
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "LidSwitchCondition is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getOpen()Z
    .registers 1

    .line 7
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;->open:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 10
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public hasOpen()Z
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;->open:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public setOpen(Z)V
    .registers 2

    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/LidSwitchCondition;->open:Ljava/lang/Boolean;

    return-void
.end method
