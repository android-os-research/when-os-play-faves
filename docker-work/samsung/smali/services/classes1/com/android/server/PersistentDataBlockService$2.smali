.class public Lcom/android/server/PersistentDataBlockService$2;
.super Ljava/lang/Object;
.source "PersistentDataBlockService.java"

# interfaces
.implements Lcom/android/server/PersistentDataBlockManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method public constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .registers 2

    .line 734
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearTestHarnessModeData()V
    .registers 4

    .line 762
    invoke-virtual {p0}, Lcom/android/server/PersistentDataBlockService$2;->getTestHarnessModeData()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x270c

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    .line 763
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetTestHarnessModeDataOffset(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v1

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/PersistentDataBlockService$2;->writeDataBuffer(JLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public forceOemUnlockEnabled(Z)V
    .registers 4

    .line 839
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 840
    :try_start_7
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1, p1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mdoSetOemUnlockEnabledLocked(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 841
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/PersistentDataBlockService;)Z

    .line 842
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public getAllowedUid()I
    .registers 1

    .line 768
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmAllowedUid(Lcom/android/server/PersistentDataBlockService;)I

    move-result p0

    return p0
.end method

.method public getFrpCredentialHandle()[B
    .registers 4

    .line 743
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetFrpCredentialDataOffset(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->readInternal(JI)[B

    move-result-object p0

    return-object p0
.end method

.method public getTestHarnessModeData()[B
    .registers 4

    .line 753
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetTestHarnessModeDataOffset(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x270c

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->readInternal(JI)[B

    move-result-object p0

    if-nez p0, :cond_11

    const/4 p0, 0x0

    new-array p0, p0, [B

    :cond_11
    return-object p0
.end method

.method public final readInternal(JI)[B
    .registers 8

    .line 807
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$menforceChecksumValidity(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 813
    :try_start_8
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v3}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmDataBlockFile(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_1d} :catch_53

    .line 820
    :try_start_1d
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_45
    .catchall {:try_start_1d .. :try_end_24} :catchall_43

    .line 821
    :try_start_24
    invoke-virtual {v0, p1, p2}, Ljava/io/DataInputStream;->skip(J)J

    .line 822
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    if-lez p1, :cond_3a

    if-le p1, p3, :cond_30

    goto :goto_3a

    .line 826
    :cond_30
    new-array p1, p1, [B

    .line 827
    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 828
    monitor-exit p0
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_40

    .line 833
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p1

    :cond_3a
    :goto_3a
    const/4 p1, 0x0

    .line 824
    :try_start_3b
    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_40

    .line 833
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p1

    :catchall_40
    move-exception p1

    .line 829
    :try_start_41
    monitor-exit p0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    :try_start_42
    throw p1
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_43} :catch_45
    .catchall {:try_start_42 .. :try_end_43} :catchall_43

    :catchall_43
    move-exception p0

    goto :goto_4f

    :catch_45
    move-exception p0

    .line 831
    :try_start_46
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "persistent partition not readable"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_43

    .line 833
    :goto_4f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 834
    throw p0

    .line 816
    :catch_53
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "persistent partition not available"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 808
    :cond_5c
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "invalid checksum"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFrpCredentialHandle([B)V
    .registers 5

    .line 738
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetFrpCredentialDataOffset(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x3e4

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->writeInternal([BJI)V

    return-void
.end method

.method public setTestHarnessModeData([B)V
    .registers 5

    .line 748
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetTestHarnessModeDataOffset(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v0

    const/16 v2, 0x270c

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/PersistentDataBlockService$2;->writeInternal([BJI)V

    return-void
.end method

.method public final writeDataBuffer(JLjava/nio/ByteBuffer;)V
    .registers 6

    .line 788
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmLock(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 789
    :try_start_7
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$fgetmIsWritable(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 790
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_35

    return-void

    .line 793
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {v1}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mgetBlockOutputChannel(Lcom/android/server/PersistentDataBlockService;)Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 794
    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 795
    invoke-virtual {v1, p3}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 p1, 0x1

    .line 796
    invoke-virtual {v1, p1}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_21} :catch_28
    .catchall {:try_start_11 .. :try_end_21} :catchall_35

    .line 802
    :try_start_21
    iget-object p0, p0, Lcom/android/server/PersistentDataBlockService$2;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {p0}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$mcomputeAndWriteDigestLocked(Lcom/android/server/PersistentDataBlockService;)Z

    .line 803
    monitor-exit v0

    return-void

    :catch_28
    move-exception p0

    .line 798
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "unable to access persistent partition"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 799
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    .line 803
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_21 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final writeInternal([BJI)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    .line 772
    array-length v2, p1

    if-lez v2, :cond_8

    goto :goto_a

    :cond_8
    move v2, v1

    goto :goto_b

    :cond_a
    :goto_a
    move v2, v0

    :goto_b
    const-string v3, "data must be null or non-empty"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p1, :cond_17

    .line 773
    array-length v2, p1

    if-gt v2, p4, :cond_16

    goto :goto_17

    :cond_16
    move v0, v1

    :cond_17
    :goto_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data must not be longer than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    add-int/lit8 p4, p4, 0x4

    .line 777
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p4

    if-nez p1, :cond_34

    goto :goto_35

    .line 778
    :cond_34
    array-length v1, p1

    :goto_35
    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_3d

    .line 780
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 782
    :cond_3d
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 784
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/PersistentDataBlockService$2;->writeDataBuffer(JLjava/nio/ByteBuffer;)V

    return-void
.end method
