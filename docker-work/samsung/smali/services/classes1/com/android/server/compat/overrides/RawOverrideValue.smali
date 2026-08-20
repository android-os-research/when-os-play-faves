.class public Lcom/android/server/compat/overrides/RawOverrideValue;
.super Ljava/lang/Object;
.source "RawOverrideValue.java"


# instance fields
.field public enabled:Ljava/lang/Boolean;

.field public maxVersionCode:Ljava/lang/Long;

.field public minVersionCode:Ljava/lang/Long;

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/compat/overrides/RawOverrideValue;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljavax/xml/datatype/DatatypeConfigurationException;
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/android/server/compat/overrides/RawOverrideValue;

    invoke-direct {v0}, Lcom/android/server/compat/overrides/RawOverrideValue;-><init>()V

    const/4 v1, 0x0

    const-string/jumbo v2, "packageName"

    .line 81
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 84
    invoke-virtual {v0, v2}, Lcom/android/server/compat/overrides/RawOverrideValue;->setPackageName(Ljava/lang/String;)V

    :cond_12
    const-string/jumbo v2, "minVersionCode"

    .line 86
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 88
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 89
    invoke-virtual {v0, v2, v3}, Lcom/android/server/compat/overrides/RawOverrideValue;->setMinVersionCode(J)V

    :cond_22
    const-string/jumbo v2, "maxVersionCode"

    .line 91
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 93
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 94
    invoke-virtual {v0, v2, v3}, Lcom/android/server/compat/overrides/RawOverrideValue;->setMaxVersionCode(J)V

    :cond_32
    const-string v2, "enabled"

    .line 96
    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/server/compat/overrides/RawOverrideValue;->setEnabled(Z)V

    .line 101
    :cond_41
    invoke-static {p0}, Lcom/android/server/compat/overrides/XmlParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0
.end method


# virtual methods
.method public getEnabled()Z
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/compat/overrides/RawOverrideValue;->enabled:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 64
    :cond_6
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getMaxVersionCode()J
    .registers 3

    .line 43
    iget-object p0, p0, Lcom/android/server/compat/overrides/RawOverrideValue;->maxVersionCode:Ljava/lang/Long;

    if-nez p0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 46
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinVersionCode()J
    .registers 3

    .line 25
    iget-object p0, p0, Lcom/android/server/compat/overrides/RawOverrideValue;->minVersionCode:Ljava/lang/Long;

    if-nez p0, :cond_7

    const-wide/16 v0, 0x0

    return-wide v0

    .line 28
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/android/server/compat/overrides/RawOverrideValue;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public hasEnabled()Z
    .registers 1

    .line 68
    iget-object p0, p0, Lcom/android/server/compat/overrides/RawOverrideValue;->enabled:Ljava/lang/Boolean;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasMaxVersionCode()Z
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/server/compat/overrides/RawOverrideValue;->maxVersionCode:Ljava/lang/Long;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasMinVersionCode()Z
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/android/server/compat/overrides/RawOverrideValue;->minVersionCode:Ljava/lang/Long;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public hasPackageName()Z
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/android/server/compat/overrides/RawOverrideValue;->packageName:Ljava/lang/String;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public setEnabled(Z)V
    .registers 2

    .line 75
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/overrides/RawOverrideValue;->enabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setMaxVersionCode(J)V
    .registers 3

    .line 57
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/overrides/RawOverrideValue;->maxVersionCode:Ljava/lang/Long;

    return-void
.end method

.method public setMinVersionCode(J)V
    .registers 3

    .line 39
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/compat/overrides/RawOverrideValue;->minVersionCode:Ljava/lang/Long;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/android/server/compat/overrides/RawOverrideValue;->packageName:Ljava/lang/String;

    return-void
.end method

.method public write(Lcom/android/server/compat/overrides/XmlWriter;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/RawOverrideValue;->hasPackageName()Z

    move-result v0

    const-string v1, "\""

    if-eqz v0, :cond_2b

    const-string v0, " packageName=\""

    .line 108
    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/RawOverrideValue;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, v1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 112
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/RawOverrideValue;->hasMinVersionCode()Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, " minVersionCode=\""

    .line 113
    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/RawOverrideValue;->getMinVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p1, v1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 117
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/RawOverrideValue;->hasMaxVersionCode()Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, " maxVersionCode=\""

    .line 118
    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/RawOverrideValue;->getMaxVersionCode()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1, v1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 122
    :cond_5d
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/RawOverrideValue;->hasEnabled()Z

    move-result v0

    if-eqz v0, :cond_76

    const-string v0, " enabled=\""

    .line 123
    invoke-virtual {p1, v0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/RawOverrideValue;->getEnabled()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1, v1}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    :cond_76
    const-string p0, ">\n"

    .line 127
    invoke-virtual {p1, p0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/compat/overrides/XmlWriter;->print(Ljava/lang/String;)V

    return-void
.end method
