.class public Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;
.super Ljava/lang/Thread;
.source "CoverAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->readFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;Ljava/lang/String;)V
    .registers 3

    .line 1366
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 1368
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetmTmpDir(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/io/File;

    move-result-object v0

    monitor-enter v0

    .line 1369
    :try_start_7
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetTAG(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "read authentication state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_f3

    const/4 v1, 0x0

    .line 1372
    :try_start_14
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {v3}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetmPath(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_1f} :catch_df
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1f} :catch_cc
    .catchall {:try_start_14 .. :try_end_1f} :catchall_ca

    .line 1374
    :try_start_1f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_52

    .line 1376
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    new-array v1, v1, [B

    iput-object v1, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    .line 1377
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 1378
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetTAG(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v6, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mId:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    :cond_52
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v1

    if-eq v1, v3, :cond_85

    .line 1382
    iget-object v4, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    new-array v1, v1, [B

    iput-object v1, v4, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    .line 1383
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 1384
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetTAG(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uri is"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v6, v6, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mUri:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_85
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v1

    if-eq v1, v3, :cond_b7

    .line 1388
    iget-object v3, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    new-array v1, v1, [B

    iput-object v1, v3, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    .line 1389
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    .line 1390
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetTAG(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extra data is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    iget-object v5, v5, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->mExtraData:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_b7
    iget-object v1, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {v1}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetTAG(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "An authentication state loaded"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_c2} :catch_c8
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_c2} :catch_c6
    .catchall {:try_start_1f .. :try_end_c2} :catchall_dc

    .line 1398
    :goto_c2
    :try_start_c2
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_f3

    goto :goto_ed

    :catch_c6
    move-exception v1

    goto :goto_d0

    :catch_c8
    move-object v1, v2

    goto :goto_df

    :catchall_ca
    move-exception p0

    goto :goto_ef

    :catch_cc
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v7

    .line 1396
    :goto_d0
    :try_start_d0
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetTAG(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "Failed to read authentication state"

    invoke-static {p0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_db
    .catchall {:try_start_d0 .. :try_end_db} :catchall_dc

    goto :goto_c2

    :catchall_dc
    move-exception p0

    move-object v1, v2

    goto :goto_ef

    .line 1394
    :catch_df
    :goto_df
    :try_start_df
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile$2;->this$1:Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;->-$$Nest$fgetTAG(Lcom/samsung/accessory/manager/authentication/cover/CoverAuthenticator$CoverAuthStateFile;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "File does not exist"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catchall {:try_start_df .. :try_end_ea} :catchall_ca

    .line 1398
    :try_start_ea
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1400
    :goto_ed
    monitor-exit v0

    return-void

    .line 1398
    :goto_ef
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1399
    throw p0

    :catchall_f3
    move-exception p0

    .line 1400
    monitor-exit v0
    :try_end_f5
    .catchall {:try_start_ea .. :try_end_f5} :catchall_f3

    throw p0
.end method
