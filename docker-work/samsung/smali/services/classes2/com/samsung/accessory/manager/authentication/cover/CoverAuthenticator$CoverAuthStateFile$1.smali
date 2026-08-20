.class public Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;
.super Ljava/lang/Thread;
.source "CoverAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->writeFile([B[B[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

.field public final synthetic val$extraData:[B

.field public final synthetic val$id:[B

.field public final synthetic val$uri:[B


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;Ljava/lang/String;[B[B[B)V
    .registers 6

    .line 1323
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iput-object p3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$id:[B

    iput-object p4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$uri:[B

    iput-object p5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$extraData:[B

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 1325
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetmTmpDir(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/io/File;

    move-result-object v0

    monitor-enter v0

    .line 1326
    :try_start_7
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetTAG(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "An authentication state changed, updating..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_97

    const/4 v1, 0x0

    :try_start_13
    const-string v2, "journal"

    const-string v3, ""

    .line 1330
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetmTmpDir(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/io/File;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 1334
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_26} :catch_83
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_26} :catch_71
    .catchall {:try_start_13 .. :try_end_26} :catchall_6f

    .line 1335
    :try_start_26
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$id:[B

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 1336
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$id:[B

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1338
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$uri:[B

    if-eqz v1, :cond_3e

    .line 1339
    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 1340
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$uri:[B

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1343
    :cond_3e
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$extraData:[B

    if-eqz v1, :cond_4b

    .line 1344
    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write(I)V

    .line 1345
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->val$extraData:[B

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1349
    :cond_4b
    invoke-static {v3}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 1351
    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {v4}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetmPath(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1352
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetTAG(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "An authentication state updated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_67} :catch_6d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_67} :catch_6b
    .catchall {:try_start_26 .. :try_end_67} :catchall_80

    .line 1358
    :goto_67
    :try_start_67
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_97

    goto :goto_91

    :catch_6b
    move-exception v1

    goto :goto_74

    :catch_6d
    move-object v1, v3

    goto :goto_83

    :catchall_6f
    move-exception p0

    goto :goto_93

    :catch_71
    move-exception v2

    move-object v3, v1

    move-object v1, v2

    .line 1356
    :goto_74
    :try_start_74
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetTAG(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Failed to write authentication state"

    invoke-static {p0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7f
    .catchall {:try_start_74 .. :try_end_7f} :catchall_80

    goto :goto_67

    :catchall_80
    move-exception p0

    move-object v1, v3

    goto :goto_93

    .line 1354
    :catch_83
    :goto_83
    :try_start_83
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$1;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetTAG(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "File does not exist"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8e
    .catchall {:try_start_83 .. :try_end_8e} :catchall_6f

    .line 1358
    :try_start_8e
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1360
    :goto_91
    monitor-exit v0

    return-void

    .line 1358
    :goto_93
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1359
    throw p0

    :catchall_97
    move-exception p0

    .line 1360
    monitor-exit v0
    :try_end_99
    .catchall {:try_start_8e .. :try_end_99} :catchall_97

    throw p0
.end method
