.class public Lcom/samsung/android/camera/visionserver/DownloadHelper;
.super Ljava/lang/Object;
.source "DownloadHelper.java"


# instance fields
.field public TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DownloadHelper"

    .line 33
    iput-object v0, p0, Lcom/samsung/android/camera/visionserver/DownloadHelper;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public downloadToJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .registers 8

    .line 48
    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/visionserver/DownloadHelper;->getURLConnection(Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 53
    :cond_8
    invoke-virtual {p1}, Ljava/net/URLConnection;->getContentLengthLong()J

    move-result-wide v1

    .line 54
    iget-object v3, p0, Lcom/samsung/android/camera/visionserver/DownloadHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get contents length > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :try_start_22
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_26} :catch_48

    .line 57
    :try_start_26
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/io/Reader;)Lcom/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonObject;
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_3c

    if-eqz p1, :cond_3b

    .line 58
    :try_start_38
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_48

    :cond_3b
    return-object v1

    :catchall_3c
    move-exception v1

    if-eqz p1, :cond_47

    .line 56
    :try_start_3f
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p1

    :try_start_44
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_47
    :goto_47
    throw v1
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_48

    :catch_48
    move-exception p1

    .line 59
    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/DownloadHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid JsonObject - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getURLConnection(Ljava/lang/String;)Ljava/net/URLConnection;
    .registers 4

    .line 38
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    return-object p1

    :catch_e
    move-exception p1

    .line 41
    iget-object p0, p0, Lcom/samsung/android/camera/visionserver/DownloadHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "url is invalid - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method
