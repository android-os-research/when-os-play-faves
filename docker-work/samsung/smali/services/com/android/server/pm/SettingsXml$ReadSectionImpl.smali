.class public Lcom/android/server/pm/SettingsXml$ReadSectionImpl;
.super Ljava/lang/Object;
.source "SettingsXml.java"

# interfaces
.implements Lcom/android/server/pm/SettingsXml$ChildSection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/SettingsXml;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadSectionImpl"
.end annotation


# instance fields
.field public final mDepthStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mInput:Ljava/io/InputStream;

.field public final mParser:Landroid/util/TypedXmlPullParser;


# direct methods
.method public constructor <init>(Landroid/util/TypedXmlPullParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mInput:Ljava/io/InputStream;

    .line 179
    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    .line 180
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToFirstTag()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    .line 170
    iput-object p1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mInput:Ljava/io/InputStream;

    .line 171
    invoke-static {}, Landroid/util/Xml;->newFastPullParser()Landroid/util/TypedXmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    .line 172
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/util/TypedXmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToFirstTag()V

    return-void
.end method


# virtual methods
.method public children()Lcom/android/server/pm/SettingsXml$ChildSection;
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    iget-object v1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    invoke-interface {v1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 307
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "SettingsXml"

    const-string v2, "Children depth stack was not empty, data may have been lost"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 310
    :cond_14
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mInput:Ljava/io/InputStream;

    if-eqz p0, :cond_1b

    .line 311
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1b
    return-void
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4

    .line 235
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInt(Ljava/lang/String;)I
    .registers 3

    const/4 v0, -0x1

    .line 240
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4

    .line 245
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1, p2}, Landroid/util/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getLong(Ljava/lang/String;)J
    .registers 3

    const/4 v0, -0x1

    .line 250
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->getLong(Ljava/lang/String;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getLong(Ljava/lang/String;I)J
    .registers 5

    .line 255
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    int-to-long v0, p2

    const/4 p2, 0x0

    invoke-interface {p0, p2, p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    invoke-interface {p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 215
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 221
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_a

    return-object p2

    :cond_a
    return-object p0
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3

    .line 209
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final moveToFirstTag()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    return-void

    .line 190
    :cond_a
    :goto_a
    iget-object v0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    invoke-interface {v0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    if-eq v0, v1, :cond_16

    const/4 v2, 0x1

    if-eq v0, v2, :cond_16

    goto :goto_a

    :cond_16
    return-void
.end method

.method public moveToNext()Z
    .registers 2

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public moveToNext(Ljava/lang/String;)Z
    .registers 2

    .line 271
    invoke-virtual {p0, p1}, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->moveToNextInternal(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final moveToNextInternal(Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    .line 276
    :try_start_1
    iget-object v1, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    move v3, v0

    :goto_f
    if-nez v3, :cond_39

    .line 279
    iget-object v4, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    .line 280
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v4

    if-eq v4, v2, :cond_39

    const/4 v5, 0x3

    if-ne v4, v5, :cond_24

    iget-object v5, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    .line 281
    invoke-interface {v5}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_39

    :cond_24
    const/4 v5, 0x2

    if-eq v4, v5, :cond_28

    goto :goto_f

    :cond_28
    if-eqz p1, :cond_37

    .line 286
    iget-object v4, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mParser:Landroid/util/TypedXmlPullParser;

    .line 287
    invoke-interface {v4}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_37

    goto :goto_f

    :cond_37
    move v3, v2

    goto :goto_f

    :cond_39
    if-nez v3, :cond_40

    .line 295
    iget-object p0, p0, Lcom/android/server/pm/SettingsXml$ReadSectionImpl;->mDepthStack:Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_40} :catch_41

    :cond_40
    return v3

    :catch_41
    return v0
.end method
