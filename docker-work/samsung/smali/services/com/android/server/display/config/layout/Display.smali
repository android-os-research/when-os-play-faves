.class public Lcom/android/server/display/config/layout/Display;
.super Ljava/lang/Object;
.source "Display.java"


# instance fields
.field public address:Ljava/math/BigInteger;

.field public defaultDisplay:Ljava/lang/Boolean;

.field public enabled:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/display/config/layout/Display;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/android/server/display/config/layout/Display;

    invoke-direct {v0}, Lcom/android/server/display/config/layout/Display;-><init>()V

    const/4 v1, 0x0

    const-string v2, "enabled"

    .line 62
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 64
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 65
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/layout/Display;->setEnabled(Z)V

    :cond_15
    const-string v2, "defaultDisplay"

    .line 67
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/server/display/config/layout/Display;->setDefaultDisplay(Z)V

    .line 72
    :cond_24
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 74
    :goto_27
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_56

    if-eq v1, v3, :cond_56

    .line 76
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_39

    goto :goto_27

    .line 77
    :cond_39
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "address"

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 79
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v2}, Lcom/android/server/display/config/layout/Display;->setAddress(Ljava/math/BigInteger;)V

    goto :goto_27

    .line 83
    :cond_52
    invoke-static {p0}, Lcom/android/server/display/config/layout/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_27

    :cond_56
    if-ne v1, v3, :cond_59

    return-object v0

    .line 87
    :cond_59
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "Display is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getAddress()Ljava/math/BigInteger;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->address:Ljava/math/BigInteger;

    return-object p0
.end method

.method public hasAddress()Z
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->address:Ljava/math/BigInteger;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasDefaultDisplay()Z
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->defaultDisplay:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasEnabled()Z
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->enabled:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public isDefaultDisplay()Z
    .registers 1

    .line 42
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->defaultDisplay:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 45
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/android/server/display/config/layout/Display;->enabled:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 27
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setAddress(Ljava/math/BigInteger;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->address:Ljava/math/BigInteger;

    return-void
.end method

.method public setDefaultDisplay(Z)V
    .registers 2

    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->defaultDisplay:Ljava/lang/Boolean;

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 38
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/layout/Display;->enabled:Ljava/lang/Boolean;

    return-void
.end method
