.class public Lcom/android/server/am/Heimdall$HeimdalldProxy$1;
.super Ljava/lang/Object;
.source "Heimdall.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/Heimdall$HeimdalldProxy;->initReceiver(Landroid/net/LocalSocket;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$sSocket:Landroid/net/LocalSocket;


# direct methods
.method public constructor <init>(Landroid/net/LocalSocket;)V
    .registers 2

    .line 446
    iput-object p1, p0, Lcom/android/server/am/Heimdall$HeimdalldProxy$1;->val$sSocket:Landroid/net/LocalSocket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 452
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    iget-object p0, p0, Lcom/android/server/am/Heimdall$HeimdalldProxy$1;->val$sSocket:Landroid/net/LocalSocket;

    .line 453
    invoke-virtual {p0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 454
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "heimdalldProxy receiver: wait for data"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_1a
    :goto_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 457
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "heimdalldProxy received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {p0}, Lcom/android/server/am/Heimdall$HeimdalldManager;->onReceiveData(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_1a

    :catch_3d
    move-exception p0

    .line 462
    invoke-static {}, Lcom/android/server/am/Heimdall;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "heimdalldProxy: socket read failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return-void
.end method
