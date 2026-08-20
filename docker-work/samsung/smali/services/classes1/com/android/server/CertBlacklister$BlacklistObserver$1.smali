.class public Lcom/android/server/CertBlacklister$BlacklistObserver$1;
.super Ljava/lang/Thread;
.source "CertBlacklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/CertBlacklister$BlacklistObserver;->writeBlacklist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/CertBlacklister$BlacklistObserver;Ljava/lang/String;)V
    .registers 3

    .line 77
    iput-object p1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 79
    iget-object v0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-static {v0}, Lcom/android/server/CertBlacklister$BlacklistObserver;->-$$Nest$fgetmTmpDir(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v0

    monitor-enter v0

    .line 80
    :try_start_7
    iget-object v1, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-virtual {v1}, Lcom/android/server/CertBlacklister$BlacklistObserver;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6b

    const-string v2, "CertBlacklister"

    const-string v3, "Certificate blacklist changed, updating..."

    .line 82
    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_6d

    const/4 v2, 0x0

    :try_start_17
    const-string/jumbo v3, "journal"

    const-string v4, ""

    .line 86
    iget-object v5, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-static {v5}, Lcom/android/server/CertBlacklister$BlacklistObserver;->-$$Nest$fgetmTmpDir(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/io/File;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 88
    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 90
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_30} :catch_5b
    .catchall {:try_start_17 .. :try_end_30} :catchall_59

    .line 91
    :try_start_30
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 93
    invoke-static {v4}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 95
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/CertBlacklister$BlacklistObserver$1;->this$0:Lcom/android/server/CertBlacklister$BlacklistObserver;

    invoke-static {p0}, Lcom/android/server/CertBlacklister$BlacklistObserver;->-$$Nest$fgetmPath(Lcom/android/server/CertBlacklister$BlacklistObserver;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const-string p0, "CertBlacklister"

    const-string v1, "Certificate blacklist updated"

    .line 96
    invoke-static {p0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_4f} :catch_56
    .catchall {:try_start_30 .. :try_end_4f} :catchall_53

    .line 100
    :try_start_4f
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_6d

    goto :goto_6b

    :catchall_53
    move-exception p0

    move-object v2, v4

    goto :goto_67

    :catch_56
    move-exception p0

    move-object v2, v4

    goto :goto_5c

    :catchall_59
    move-exception p0

    goto :goto_67

    :catch_5b
    move-exception p0

    :goto_5c
    :try_start_5c
    const-string v1, "CertBlacklister"

    const-string v3, "Failed to write blacklist"

    .line 98
    invoke-static {v1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_59

    .line 100
    :try_start_63
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6b

    :goto_67
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 101
    throw p0

    .line 103
    :cond_6b
    :goto_6b
    monitor-exit v0

    return-void

    :catchall_6d
    move-exception p0

    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_6d

    throw p0
.end method
