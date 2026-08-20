.class public Lcom/android/server/policy/devicestate/config/DeviceState;
.super Ljava/lang/Object;
.source "DeviceState.java"


# instance fields
.field public conditions:Lcom/android/server/policy/devicestate/config/Conditions;

.field public flags:Lcom/android/server/policy/devicestate/config/Flags;

.field public identifier:Ljava/math/BigInteger;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/DeviceState;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 70
    new-instance v0, Lcom/android/server/policy/devicestate/config/DeviceState;

    invoke-direct {v0}, Lcom/android/server/policy/devicestate/config/DeviceState;-><init>()V

    .line 72
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 74
    :goto_8
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v1, v2, :cond_69

    if-eq v1, v3, :cond_69

    .line 76
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1a

    goto :goto_8

    .line 77
    :cond_1a
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "identifier"

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 79
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 80
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v2}, Lcom/android/server/policy/devicestate/config/DeviceState;->setIdentifier(Ljava/math/BigInteger;)V

    goto :goto_8

    :cond_34
    const-string/jumbo v2, "name"

    .line 82
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 83
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Lcom/android/server/policy/devicestate/config/DeviceState;->setName(Ljava/lang/String;)V

    goto :goto_8

    :cond_45
    const-string v2, "flags"

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    .line 87
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/Flags;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/Flags;

    move-result-object v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/server/policy/devicestate/config/DeviceState;->setFlags(Lcom/android/server/policy/devicestate/config/Flags;)V

    goto :goto_8

    :cond_55
    const-string v2, "conditions"

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 90
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/Conditions;->read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/policy/devicestate/config/Conditions;

    move-result-object v1

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/server/policy/devicestate/config/DeviceState;->setConditions(Lcom/android/server/policy/devicestate/config/Conditions;)V

    goto :goto_8

    .line 93
    :cond_65
    invoke-static {p0}, Lcom/android/server/policy/devicestate/config/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_8

    :cond_69
    if-ne v1, v3, :cond_6c

    return-object v0

    .line 97
    :cond_6c
    new-instance p0, Ljavax/xml/datatype/DatatypeConfigurationException;

    const-string v0, "DeviceState is not closed"

    invoke-direct {p0, v0}, Ljavax/xml/datatype/DatatypeConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getConditions()Lcom/android/server/policy/devicestate/config/Conditions;
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->conditions:Lcom/android/server/policy/devicestate/config/Conditions;

    return-object p0
.end method

.method public getFlags()Lcom/android/server/policy/devicestate/config/Flags;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->flags:Lcom/android/server/policy/devicestate/config/Flags;

    return-object p0
.end method

.method public getIdentifier()Ljava/math/BigInteger;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->identifier:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 25
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->name:Ljava/lang/String;

    return-object p0
.end method

.method public hasConditions()Z
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->conditions:Lcom/android/server/policy/devicestate/config/Conditions;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasFlags()Z
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->flags:Lcom/android/server/policy/devicestate/config/Flags;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasIdentifier()Z
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->identifier:Ljava/math/BigInteger;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasName()Z
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->name:Ljava/lang/String;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public setConditions(Lcom/android/server/policy/devicestate/config/Conditions;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->conditions:Lcom/android/server/policy/devicestate/config/Conditions;

    return-void
.end method

.method public setFlags(Lcom/android/server/policy/devicestate/config/Flags;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->flags:Lcom/android/server/policy/devicestate/config/Flags;

    return-void
.end method

.method public setIdentifier(Ljava/math/BigInteger;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->identifier:Ljava/math/BigInteger;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcom/android/server/policy/devicestate/config/DeviceState;->name:Ljava/lang/String;

    return-void
.end method
