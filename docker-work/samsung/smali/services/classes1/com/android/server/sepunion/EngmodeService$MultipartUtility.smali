.class public Lcom/android/server/sepunion/EngmodeService$MultipartUtility;
.super Ljava/lang/Object;
.source "EngmodeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/EngmodeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MultipartUtility"
.end annotation


# static fields
.field public static final LINE_FEED:Ljava/lang/String; = "\r\n"


# instance fields
.field public final boundary:Ljava/lang/String;

.field public charset:Ljava/lang/String;

.field public httpConn:Ljava/net/HttpURLConnection;

.field public outputStream:Ljava/io/OutputStream;

.field public final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;

.field public writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 418
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p3, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->charset:Ljava/lang/String;

    .line 422
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "==="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->boundary:Ljava/lang/String;

    .line 424
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    iput-object p2, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->httpConn:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    .line 426
    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 427
    iget-object p2, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->httpConn:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 428
    iget-object p2, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 429
    iget-object p2, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->httpConn:Ljava/net/HttpURLConnection;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "multipart/form-data; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Content-Type"

    invoke-virtual {p2, v1, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->httpConn:Ljava/net/HttpURLConnection;

    const/16 p2, 0x2710

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 431
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 432
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->outputStream:Ljava/io/OutputStream;

    if-nez p3, :cond_6e

    const-string p3, "ISO-8859-1"

    .line 434
    :cond_6e
    new-instance p1, Ljava/io/PrintWriter;

    new-instance p2, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->outputStream:Ljava/io/OutputStream;

    invoke-direct {p2, v1, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {p1, p2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public addByteArrayPart(Ljava/lang/String;[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->boundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 460
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\"; filename=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 461
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    const-string v0, "Content-Type: multipart/form-data"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 462
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    const-string v0, "Content-Transfer-Encoding: binary"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 463
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 464
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    .line 466
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 467
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 469
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 470
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public addFormField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 443
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->boundary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 444
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Content-Disposition: form-data; name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 445
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Type: text/plain; charset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->charset:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 446
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 447
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 448
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public addHeaderField(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 479
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, "\r\n"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 480
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public finish()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 493
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->boundary:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 494
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 495
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 498
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_62

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    iget-object v1, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 504
    :goto_49
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_59

    int-to-byte v2, v2

    .line 505
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_49

    .line 507
    :cond_59
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 508
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$MultipartUtility;->httpConn:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    .line 510
    :cond_62
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server returned non-OK status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
