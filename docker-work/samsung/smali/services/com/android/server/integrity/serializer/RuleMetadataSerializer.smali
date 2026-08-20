.class public Lcom/android/server/integrity/serializer/RuleMetadataSerializer;
.super Ljava/lang/Object;
.source "RuleMetadataSerializer.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Lcom/android/server/integrity/model/RuleMetadata;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-static {p1}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lcom/android/server/integrity/model/RuleMetadata;->getRuleProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "P"

    invoke-static {p1, v1, v0}, Lcom/android/server/integrity/serializer/RuleMetadataSerializer;->serializeTaggedValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/server/integrity/model/RuleMetadata;->getVersion()Ljava/lang/String;

    move-result-object p0

    const-string v0, "V"

    invoke-static {p1, v0, p0}, Lcom/android/server/integrity/serializer/RuleMetadataSerializer;->serializeTaggedValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-interface {p1}, Landroid/util/TypedXmlSerializer;->endDocument()V

    return-void
.end method

.method public static serializeTaggedValue(Landroid/util/TypedXmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 48
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 49
    invoke-interface {p0, p2}, Landroid/util/TypedXmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
