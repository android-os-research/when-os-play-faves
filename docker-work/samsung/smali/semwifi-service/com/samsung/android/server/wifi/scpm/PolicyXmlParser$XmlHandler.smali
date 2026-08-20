.class Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "PolicyXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XmlHandler"
.end annotation


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final DEBUG:Z = true

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.server.wifi"

.field private static final TAG:Ljava/lang/String; = "SemWifi.ScpmXml"

.field private static final WIFI_GROUP_NAME:Ljava/lang/String; = "WIFI"

.field private static final XML_TAG_BOOLEAN:Ljava/lang/String; = "boolean"

.field private static final XML_TAG_FLOAT:Ljava/lang/String; = "float"

.field private static final XML_TAG_INT:Ljava/lang/String; = "int"

.field private static final XML_TAG_LONG:Ljava/lang/String; = "long"

.field private static final XML_TAG_SCPM_GROUP:Ljava/lang/String; = "scpm-group"

.field private static final XML_TAG_SCPM_POLICY:Ljava/lang/String; = "scpm-policy"

.field private static final XML_TAG_START:Ljava/lang/String; = "wifi-framework-policy"

.field private static final XML_TAG_STRING:Ljava/lang/String; = "string"

.field private static final XML_TAG_WIFI_POLICY:Ljava/lang/String; = "wifi-policy"


# instance fields
.field private elementName:Ljava/lang/String;

.field private elementValue:Ljava/lang/StringBuilder;

.field private isActive:Z

.field private isOwnGroup:Z

.field private isOwnPolicy:Z

.field private lastCreatedPolicy:Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

.field private final policies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final scpmPolicyGroup:Ljava/lang/String;

.field private final scpmPolicyName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    const-string v0, "WIFI"

    .line 88
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 91
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 92
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->policies:Ljava/util/Set;

    .line 93
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->scpmPolicyGroup:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->scpmPolicyName:Ljava/lang/String;

    return-void
.end method

.method private createPolicy(Ljava/lang/String;)V
    .registers 4

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create wifiPolicy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifi.ScpmXml"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy$Factory;->getInstance(Ljava/lang/String;)Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->lastCreatedPolicy:Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

    .line 238
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->policies:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private getLastPolicy()Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->lastCreatedPolicy:Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

    return-object p0
.end method

.method private hasElements()Z
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_18

    .line 224
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private setValue(Ljava/lang/Object;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 174
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isActive:Z

    if-nez v0, :cond_5

    return-void

    .line 177
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->hasElements()Z

    move-result v0

    const-string v1, " : "

    const-string v2, "SemWifi.ScpmXml"

    if-nez v0, :cond_2e

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "element is empty "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 181
    :cond_2e
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->getLastPolicy()Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

    move-result-object v0

    if-nez v0, :cond_3a

    const-string p0, "policy is empty"

    .line 183
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 186
    :cond_3a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    instance-of v1, p1, Ljava/lang/Boolean;

    const-string v3, ":"

    const-string v4, "failed to parse "

    if-eqz v1, :cond_8f

    .line 189
    :try_start_60
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 190
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->setAttribute(Ljava/lang/String;Z)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6f} :catch_71

    goto/16 :goto_132

    .line 192
    :catch_71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_132

    .line 194
    :cond_8f
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_c1

    .line 196
    :try_start_93
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 197
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->setAttribute(Ljava/lang/String;I)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_a2} :catch_a4

    goto/16 :goto_132

    .line 199
    :catch_a4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    .line 201
    :cond_c1
    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_f2

    .line 203
    :try_start_c5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 204
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    invoke-virtual {v0, p1, v5, v6}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->setAttribute(Ljava/lang/String;J)V
    :try_end_d4
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_d4} :catch_d5

    goto :goto_132

    .line 206
    :catch_d5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    .line 208
    :cond_f2
    instance-of v1, p1, Ljava/lang/Float;

    if-eqz v1, :cond_123

    .line 210
    :try_start_f6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 211
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->setAttribute(Ljava/lang/String;F)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_105} :catch_106

    goto :goto_132

    .line 213
    :catch_106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_132

    .line 215
    :cond_123
    instance-of p1, p1, Ljava/lang/String;

    if-eqz p1, :cond_133

    .line 216
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :goto_132
    return-void

    .line 218
    :cond_133
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsupported tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public characters([CII)V
    .registers 4

    .line 99
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    if-eqz p0, :cond_7

    .line 100
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_7
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 148
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_80

    goto :goto_4e

    :sswitch_d
    const-string p1, "scpm-group"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_4e

    :cond_16
    const/4 v0, 0x5

    goto :goto_4e

    :sswitch_18
    const-string p1, "float"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_21

    goto :goto_4e

    :cond_21
    const/4 v0, 0x4

    goto :goto_4e

    :sswitch_23
    const-string p1, "boolean"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2c

    goto :goto_4e

    :cond_2c
    const/4 v0, 0x3

    goto :goto_4e

    :sswitch_2e
    const-string p1, "long"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_4e

    :cond_37
    const/4 v0, 0x2

    goto :goto_4e

    :sswitch_39
    const-string p1, "int"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_42

    goto :goto_4e

    :cond_42
    const/4 v0, 0x1

    goto :goto_4e

    :sswitch_44
    const-string p1, "string"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4d

    goto :goto_4e

    :cond_4d
    move v0, p2

    :goto_4e
    packed-switch v0, :pswitch_data_9a

    goto :goto_7b

    .line 150
    :pswitch_52
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isActive:Z

    goto :goto_7b

    :pswitch_55
    const/4 p1, 0x0

    .line 165
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->setValue(Ljava/lang/Object;)V

    goto :goto_7b

    .line 156
    :pswitch_5e
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->setValue(Ljava/lang/Object;)V

    goto :goto_7b

    :pswitch_64
    const-wide/16 p1, 0x0

    .line 162
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->setValue(Ljava/lang/Object;)V

    goto :goto_7b

    .line 159
    :pswitch_6e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->setValue(Ljava/lang/Object;)V

    goto :goto_7b

    :pswitch_76
    const-string p1, ""

    .line 153
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->setValue(Ljava/lang/Object;)V

    :goto_7b
    const/4 p1, 0x0

    .line 170
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    return-void

    nop

    :sswitch_data_80
    .sparse-switch
        -0x352a9fef -> :sswitch_44
        0x197ef -> :sswitch_39
        0x32c67c -> :sswitch_2e
        0x3db6c28 -> :sswitch_23
        0x5d0225c -> :sswitch_18
        0x5eaaa4ff -> :sswitch_d
    .end sparse-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_76
        :pswitch_6e
        :pswitch_64
        :pswitch_5e
        :pswitch_55
        :pswitch_52
    .end packed-switch
.end method

.method public getPolicies()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;",
            ">;"
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->policies:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 7

    .line 107
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    sparse-switch p1, :sswitch_data_e6

    goto/16 :goto_74

    :sswitch_f
    const-string p1, "scpm-group"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_19

    goto/16 :goto_74

    :cond_19
    const/16 v1, 0x8

    goto/16 :goto_74

    :sswitch_1d
    const-string p1, "wifi-framework-policy"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_74

    :cond_26
    const/4 v1, 0x7

    goto :goto_74

    :sswitch_28
    const-string p1, "wifi-policy"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    goto :goto_74

    :cond_31
    const/4 v1, 0x6

    goto :goto_74

    :sswitch_33
    const-string p1, "float"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto :goto_74

    :cond_3c
    const/4 v1, 0x5

    goto :goto_74

    :sswitch_3e
    const-string p1, "boolean"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_47

    goto :goto_74

    :cond_47
    const/4 v1, 0x4

    goto :goto_74

    :sswitch_49
    const-string p1, "long"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto :goto_74

    :cond_52
    const/4 v1, 0x3

    goto :goto_74

    :sswitch_54
    const-string p1, "int"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5d

    goto :goto_74

    :cond_5d
    const/4 v1, 0x2

    goto :goto_74

    :sswitch_5f
    const-string p1, "string"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_68

    goto :goto_74

    :cond_68
    move v1, p2

    goto :goto_74

    :sswitch_6a
    const-string p1, "scpm-policy"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_73

    goto :goto_74

    :cond_73
    move v1, v0

    :goto_74
    const-string p1, "name"

    packed-switch v1, :pswitch_data_10c

    goto/16 :goto_e4

    .line 115
    :pswitch_7b
    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isOwnPolicy:Z

    if-eqz p3, :cond_8c

    iget-object p3, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->scpmPolicyGroup:Ljava/lang/String;

    .line 116
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    goto :goto_8d

    :cond_8c
    move p2, v0

    :goto_8d
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isOwnGroup:Z

    goto :goto_e4

    :pswitch_90
    const-string p1, "package"

    .line 109
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e4

    const-string p2, "com.samsung.android.server.wifi"

    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isOwnPolicy:Z

    goto :goto_e4

    .line 122
    :pswitch_a5
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isActive:Z

    if-eqz p2, :cond_e4

    .line 123
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e4

    .line 125
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->createPolicy(Ljava/lang/String;)V

    goto :goto_e4

    .line 134
    :pswitch_b7
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isActive:Z

    if-eqz p2, :cond_e4

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->getLastPolicy()Lcom/samsung/android/server/wifi/scpm/WifiScpmPolicy;

    move-result-object p2

    if-nez p2, :cond_c2

    goto :goto_e4

    .line 137
    :cond_c2
    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementName:Ljava/lang/String;

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->elementValue:Ljava/lang/StringBuilder;

    goto :goto_e4

    .line 119
    :pswitch_d0
    iget-boolean p3, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isOwnGroup:Z

    if-eqz p3, :cond_e1

    iget-object p3, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->scpmPolicyName:Ljava/lang/String;

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e1

    goto :goto_e2

    :cond_e1
    move p2, v0

    :goto_e2
    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/scpm/PolicyXmlParser$XmlHandler;->isActive:Z

    :cond_e4
    :goto_e4
    return-void

    nop

    :sswitch_data_e6
    .sparse-switch
        -0x7a26394e -> :sswitch_6a
        -0x352a9fef -> :sswitch_5f
        0x197ef -> :sswitch_54
        0x32c67c -> :sswitch_49
        0x3db6c28 -> :sswitch_3e
        0x5d0225c -> :sswitch_33
        0x28f42eea -> :sswitch_28
        0x51714799 -> :sswitch_1d
        0x5eaaa4ff -> :sswitch_f
    .end sparse-switch

    :pswitch_data_10c
    .packed-switch 0x0
        :pswitch_d0
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
        :pswitch_b7
        :pswitch_a5
        :pswitch_90
        :pswitch_7b
    .end packed-switch
.end method
