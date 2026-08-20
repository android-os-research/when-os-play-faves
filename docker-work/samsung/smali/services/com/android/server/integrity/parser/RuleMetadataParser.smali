.class public Lcom/android/server/integrity/parser/RuleMetadataParser;
.super Ljava/lang/Object;
.source "RuleMetadataParser.java"


# static fields
.field public static final RULE_PROVIDER_TAG:Ljava/lang/String; = "P"

.field public static final VERSION_TAG:Ljava/lang/String; = "V"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/io/InputStream;)Lcom/android/server/integrity/model/RuleMetadata;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object p0

    const-string v0, ""

    move-object v1, v0

    .line 48
    :cond_7
    :goto_7
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_49

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 50
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "P"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_44

    const-string v1, "V"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 56
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 59
    :cond_2d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown tag in metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_44
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    goto :goto_7

    .line 64
    :cond_49
    new-instance p0, Lcom/android/server/integrity/model/RuleMetadata;

    invoke-direct {p0, v0, v1}, Lcom/android/server/integrity/model/RuleMetadata;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
