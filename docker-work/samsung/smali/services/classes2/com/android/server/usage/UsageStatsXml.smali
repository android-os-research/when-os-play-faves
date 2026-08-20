.class public Lcom/android/server/usage/UsageStatsXml;
.super Ljava/lang/Object;
.source "UsageStatsXml.java"


# static fields
.field public static final CHECKED_IN_SUFFIX:Ljava/lang/String; = "-c"

.field public static final TAG:Ljava/lang/String; = "UsageStatsXml"

.field public static final USAGESTATS_TAG:Ljava/lang/String; = "usagestats"

.field public static final VERSION_ATTR:Ljava/lang/String; = "version"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Ljava/io/InputStream;Lcom/android/server/usage/IntervalStats;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Unrecognized version "

    const-string v1, "UsageStatsXml"

    .line 36
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    :try_start_8
    const-string/jumbo v3, "utf-8"

    .line 38
    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string/jumbo p0, "usagestats"

    .line 39
    invoke-static {v2, p0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    const/4 p0, 0x0

    const-string/jumbo v3, "version"

    .line 40
    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_1c} :catch_5a

    .line 42
    :try_start_1c
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_27

    .line 44
    invoke-static {v2, p1}, Lcom/android/server/usage/UsageStatsXmlV1;->read(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/usage/IntervalStats;)V

    return-void

    .line 48
    :cond_27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance p1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_4e} :catch_4e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_4e} :catch_5a

    :catch_4e
    move-exception p0

    :try_start_4f
    const-string p1, "Bad version"

    .line 52
    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_5a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4f .. :try_end_5a} :catch_5a

    :catch_5a
    move-exception p0

    const-string p1, "Failed to parse Xml"

    .line 56
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
