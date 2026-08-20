.class public Lcom/samsung/android/knox/analytics/util/ZipHandler;
.super Ljava/lang/Object;
.source "ZipHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ZipHandler"


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deflate([B)Lcom/samsung/android/knox/analytics/util/ZipResult;
    .registers 6

    .line 16
    array-length v0, p0

    if-gtz v0, :cond_c

    .line 17
    sget-object p0, Lcom/samsung/android/knox/analytics/util/ZipHandler;->TAG:Ljava/lang/String;

    const-string v0, "deflate(): Empty object byte array"

    invoke-static {p0, v0}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 20
    :cond_c
    new-instance v0, Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 21
    invoke-virtual {v0, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 22
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/16 v1, 0x7fff

    new-array v1, v1, [B

    .line 24
    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v2

    .line 25
    new-array v3, v2, [B

    const/4 v4, 0x0

    .line 26
    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 29
    sget-object v0, Lcom/samsung/android/knox/analytics/util/ZipHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deflate(): bytes size: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", bytes size after compression: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",  bytes saved: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p0

    sub-int/2addr v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/samsung/android/knox/analytics/util/ZipResult;

    array-length p0, p0

    invoke-direct {v0, v3, v2, p0}, Lcom/samsung/android/knox/analytics/util/ZipResult;-><init>([BII)V

    return-object v0
.end method

.method public static inflate(Lcom/samsung/android/knox/analytics/util/ZipResult;)Lcom/samsung/android/knox/analytics/model/EventList;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 37
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/util/ZipResult;->getContent()[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/util/ZipResult;->getLength()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 38
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/util/ZipResult;->getOriginalLength()I

    move-result v1

    new-array v1, v1, [B

    .line 39
    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v2

    .line 40
    sget-object v3, Lcom/samsung/android/knox/analytics/util/ZipHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inflate(): actual number of uncompressed bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " original number of uncompressed bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/util/ZipResult;->getOriginalLength()I

    move-result p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 40
    invoke-static {v3, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    if-gtz v2, :cond_49

    const-string p0, "inflate(): Could not return to decompress data"

    .line 45
    invoke-static {v3, p0}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 48
    :cond_49
    new-instance p0, Lcom/samsung/android/knox/analytics/model/EventList;

    invoke-direct {p0, v1}, Lcom/samsung/android/knox/analytics/model/EventList;-><init>([B)V

    return-object p0
.end method
