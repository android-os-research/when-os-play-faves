.class public Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;
.super Ljava/lang/Object;
.source "PersistentSystemFontConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;
    }
.end annotation


# static fields
.field public static final ATTR_VALUE:Ljava/lang/String; = "value"

.field public static final TAG:Ljava/lang/String; = "PersistentSystemFontConfig"

.field public static final TAG_FAMILY:Ljava/lang/String; = "family"

.field public static final TAG_LAST_MODIFIED_DATE:Ljava/lang/String; = "lastModifiedDate"

.field public static final TAG_ROOT:Ljava/lang/String; = "fontConfig"

.field public static final TAG_UPDATED_FONT_DIR:Ljava/lang/String; = "updatedFontDir"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 136
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, ""

    :cond_9
    return-object p0
.end method

.method public static loadFromXml(Ljava/io/InputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-static {p0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Landroid/util/TypedXmlPullParser;

    move-result-object p0

    .line 61
    :cond_4
    :goto_4
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    goto :goto_4

    .line 65
    :cond_f
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 66
    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PersistentSystemFontConfig"

    if-ne v0, v1, :cond_38

    const-string v0, "fontConfig"

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 69
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid root tag: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_38
    if-ne v0, v2, :cond_4

    .line 73
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_a4

    :goto_45
    move v1, v0

    goto :goto_67

    :sswitch_47
    const-string/jumbo v1, "updatedFontDir"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    goto :goto_45

    :cond_51
    move v1, v2

    goto :goto_67

    :sswitch_53
    const-string v2, "family"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_67

    goto :goto_45

    :sswitch_5c
    const-string/jumbo v1, "lastModifiedDate"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_66

    goto :goto_45

    :cond_66
    const/4 v1, 0x0

    :cond_67
    :goto_67
    const-string/jumbo v0, "value"

    packed-switch v1, :pswitch_data_b2

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unknown tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 78
    :pswitch_82
    iget-object v1, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    invoke-static {p0, v0}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->getAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 83
    :pswitch_8d
    iget-object v0, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    invoke-static {p0}, Landroid/graphics/fonts/FontUpdateRequest$Family;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/graphics/fonts/FontUpdateRequest$Family;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :pswitch_98
    const-wide/16 v1, 0x0

    .line 75
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig;->parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    goto/16 :goto_4

    :cond_a2
    return-void

    nop

    :sswitch_data_a4
    .sparse-switch
        -0x5bd77033 -> :sswitch_5c
        -0x4c67a49c -> :sswitch_53
        -0x165177d -> :sswitch_47
    .end sparse-switch

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_98
        :pswitch_8d
        :pswitch_82
    .end packed-switch
.end method

.method public static parseLongAttribute(Landroid/util/TypedXmlPullParser;Ljava/lang/String;J)J
    .registers 5

    const/4 v0, 0x0

    .line 123
    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 124
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    return-wide p2

    .line 128
    :cond_c
    :try_start_c
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_10} :catch_11

    return-wide p0

    :catch_11
    return-wide p2
.end method

.method public static writeToXml(Ljava/io/OutputStream;Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-static {p0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Landroid/util/TypedXmlSerializer;

    move-result-object p0

    .line 99
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Landroid/util/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "fontConfig"

    .line 101
    invoke-interface {p0, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "lastModifiedDate"

    .line 102
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 103
    iget-wide v3, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->lastModifiedMillis:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-interface {p0, v1, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    invoke-interface {p0, v1, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 105
    iget-object v2, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->updatedFontDirs:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v5, "updatedFontDir"

    .line 106
    invoke-interface {p0, v1, v5}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 107
    invoke-interface {p0, v1, v4, v3}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 108
    invoke-interface {p0, v1, v5}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2a

    .line 110
    :cond_43
    iget-object p1, p1, Lcom/android/server/graphics/fonts/PersistentSystemFontConfig$Config;->fontFamilies:Ljava/util/List;

    const/4 v2, 0x0

    .line 111
    :goto_46
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_60

    .line 112
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/fonts/FontUpdateRequest$Family;

    const-string v4, "family"

    .line 113
    invoke-interface {p0, v1, v4}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    invoke-static {p0, v3}, Landroid/graphics/fonts/FontUpdateRequest$Family;->writeFamilyToXml(Landroid/util/TypedXmlSerializer;Landroid/graphics/fonts/FontUpdateRequest$Family;)V

    .line 115
    invoke-interface {p0, v1, v4}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 117
    :cond_60
    invoke-interface {p0, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 119
    invoke-interface {p0}, Landroid/util/TypedXmlSerializer;->endDocument()V

    return-void
.end method
