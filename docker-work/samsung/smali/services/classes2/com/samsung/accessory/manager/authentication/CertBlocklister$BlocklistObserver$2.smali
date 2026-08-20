.class public Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;
.super Ljava/lang/Thread;
.source "CertBlocklister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->writeBlocklist()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;Ljava/lang/String;)V
    .registers 3

    .line 139
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 141
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->-$$Nest$fgetmTmpDir(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/io/File;

    move-result-object v0

    monitor-enter v0

    .line 142
    :try_start_7
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 144
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-static {v2}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->-$$Nest$fgetmBlocklist(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 145
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_28

    const-string p0, "SAccessoryManager_CertBlocklister"

    const-string v1, "Certificate blocklist not changed, return..."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_28
    monitor-exit v0

    return-void

    :cond_2a
    if-eqz v1, :cond_ab

    .line 150
    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-static {v2, v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->-$$Nest$fputmBlocklist(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "SAccessoryManager_CertBlocklister"

    const-string v2, "Certificate blocklist changed, updating..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_ad

    :cond_3e
    const/4 v1, 0x0

    :try_start_3f
    const-string v2, "journal"

    const-string v3, ""

    .line 155
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->-$$Nest$fgetmTmpDir(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 157
    invoke-virtual {v2, v3, v4}, Ljava/io/File;->setReadable(ZZ)Z

    .line 159
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_57} :catch_8e
    .catchall {:try_start_3f .. :try_end_57} :catchall_8c

    .line 160
    :try_start_57
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->-$$Nest$fgetmBlocklist(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 162
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 164
    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver$2;->this$0:Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->-$$Nest$fgetmPath(Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 165
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$BlocklistObserver;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_82

    const-string p0, "SAccessoryManager_CertBlocklister"

    const-string v1, "Certificate blocklist updated"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_82} :catch_89
    .catchall {:try_start_57 .. :try_end_82} :catchall_86

    .line 169
    :cond_82
    :try_start_82
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_ad

    goto :goto_99

    :catchall_86
    move-exception p0

    move-object v1, v3

    goto :goto_a7

    :catch_89
    move-exception p0

    move-object v1, v3

    goto :goto_8f

    :catchall_8c
    move-exception p0

    goto :goto_a7

    :catch_8e
    move-exception p0

    :goto_8f
    :try_start_8f
    const-string v2, "SAccessoryManager_CertBlocklister"

    const-string v3, "Failed to write list"

    .line 167
    invoke-static {v2, v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_8c

    .line 169
    :try_start_96
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 172
    :goto_99
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->-$$Nest$sfgetmCertBlocklistListener()Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    move-result-object p0

    if-eqz p0, :cond_ab

    .line 173
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/CertBlocklister;->-$$Nest$sfgetmCertBlocklistListener()Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/accessory/manager/authentication/CertBlocklister$CertBlocklistListener;->onCertBlocklistChanged()V

    goto :goto_ab

    .line 169
    :goto_a7
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 170
    throw p0

    .line 175
    :cond_ab
    :goto_ab
    monitor-exit v0

    return-void

    :catchall_ad
    move-exception p0

    monitor-exit v0
    :try_end_af
    .catchall {:try_start_96 .. :try_end_af} :catchall_ad

    throw p0
.end method
