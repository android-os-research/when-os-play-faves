.class Landroid/util/apk/MemoryMappedFileDataSource;
.super Ljava/lang/Object;
.source "MemoryMappedFileDataSource.java"

# interfaces
.implements Landroid/util/apk/DataSource;


# static fields
.field private static final blacklist MEMORY_PAGE_SIZE_BYTES:J


# instance fields
.field private final blacklist mFd:Ljava/io/FileDescriptor;

.field private final blacklist mFilePosition:J

.field private final blacklist mSize:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 34
    sget v0, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v0

    sput-wide v0, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    return-void
.end method

.method constructor blacklist <init>(Ljava/io/FileDescriptor;JJ)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "position"    # J
    .param p4, "size"    # J

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;

    .line 49
    iput-wide p2, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mFilePosition:J

    .line 50
    iput-wide p4, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mSize:J

    .line 51
    return-void
.end method


# virtual methods
.method public blacklist feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .registers 30
    .param p1, "md"    # Landroid/util/apk/DataDigester;
    .param p2, "offset"    # J
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation

    .line 74
    move-object/from16 v1, p0

    iget-wide v2, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFilePosition:J

    add-long v2, v2, p2

    .line 75
    .local v2, "filePosition":J
    sget-wide v4, Landroid/util/apk/MemoryMappedFileDataSource;->MEMORY_PAGE_SIZE_BYTES:J

    div-long v6, v2, v4

    mul-long/2addr v6, v4

    .line 77
    .local v6, "mmapFilePosition":J
    sub-long v4, v2, v6

    long-to-int v4, v4

    .line 78
    .local v4, "dataStartOffsetInMmapRegion":I
    add-int v0, p4, v4

    int-to-long v14, v0

    .line 79
    .local v14, "mmapRegionSize":J
    const-wide/16 v17, 0x0

    .line 81
    .local v17, "mmapPtr":J
    const-wide/16 v8, 0x0

    const-wide/16 v19, 0x0

    :try_start_17
    sget v12, Landroid/system/OsConstants;->PROT_READ:I

    sget v0, Landroid/system/OsConstants;->MAP_SHARED:I

    sget v5, Landroid/system/OsConstants;->MAP_POPULATE:I

    or-int v13, v0, v5

    iget-object v0, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;
    :try_end_21
    .catch Landroid/system/ErrnoException; {:try_start_17 .. :try_end_21} :catch_98
    .catchall {:try_start_17 .. :try_end_21} :catchall_8e

    move-wide v10, v14

    move-wide/from16 v21, v14

    .end local v14    # "mmapRegionSize":J
    .local v21, "mmapRegionSize":J
    move-object v14, v0

    move-wide v15, v6

    :try_start_26
    invoke-static/range {v8 .. v16}, Landroid/system/Os;->mmap(JJIILjava/io/FileDescriptor;J)J

    move-result-wide v8
    :try_end_2a
    .catch Landroid/system/ErrnoException; {:try_start_26 .. :try_end_2a} :catch_86
    .catchall {:try_start_26 .. :try_end_2a} :catchall_7b

    move-wide v14, v8

    .line 88
    .end local v17    # "mmapPtr":J
    .local v14, "mmapPtr":J
    :try_start_2b
    new-instance v0, Ljava/nio/DirectByteBuffer;

    int-to-long v8, v4

    add-long v10, v14, v8

    iget-object v12, v1, Landroid/util/apk/MemoryMappedFileDataSource;->mFd:Ljava/io/FileDescriptor;
    :try_end_32
    .catch Landroid/system/ErrnoException; {:try_start_2b .. :try_end_32} :catch_70
    .catchall {:try_start_2b .. :try_end_32} :catchall_66

    const/4 v13, 0x0

    const/4 v5, 0x1

    move-object v8, v0

    move/from16 v9, p4

    move-wide/from16 v23, v2

    move-wide v1, v14

    .end local v2    # "filePosition":J
    .end local v14    # "mmapPtr":J
    .local v1, "mmapPtr":J
    .local v23, "filePosition":J
    move v14, v5

    :try_start_3b
    invoke-direct/range {v8 .. v14}, Ljava/nio/DirectByteBuffer;-><init>(IJLjava/io/FileDescriptor;Ljava/lang/Runnable;Z)V
    :try_end_3e
    .catch Landroid/system/ErrnoException; {:try_start_3b .. :try_end_3e} :catch_5e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_56

    .line 95
    .local v0, "buf":Ljava/nio/ByteBuffer;
    move-object/from16 v3, p1

    :try_start_40
    invoke-interface {v3, v0}, Landroid/util/apk/DataDigester;->consume(Ljava/nio/ByteBuffer;)V
    :try_end_43
    .catch Landroid/system/ErrnoException; {:try_start_40 .. :try_end_43} :catch_54
    .catchall {:try_start_40 .. :try_end_43} :catchall_52

    .line 99
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    cmp-long v0, v1, v19

    if-eqz v0, :cond_4f

    .line 101
    move-wide/from16 v8, v21

    .end local v21    # "mmapRegionSize":J
    .local v8, "mmapRegionSize":J
    :try_start_49
    invoke-static {v1, v2, v8, v9}, Landroid/system/Os;->munmap(JJ)V
    :try_end_4c
    .catch Landroid/system/ErrnoException; {:try_start_49 .. :try_end_4c} :catch_4d

    .line 102
    :goto_4c
    goto :goto_51

    :catch_4d
    move-exception v0

    goto :goto_4c

    .line 99
    .end local v8    # "mmapRegionSize":J
    .restart local v21    # "mmapRegionSize":J
    :cond_4f
    move-wide/from16 v8, v21

    .line 105
    .end local v21    # "mmapRegionSize":J
    .restart local v8    # "mmapRegionSize":J
    :goto_51
    return-void

    .line 99
    .end local v8    # "mmapRegionSize":J
    .restart local v21    # "mmapRegionSize":J
    :catchall_52
    move-exception v0

    goto :goto_59

    .line 96
    :catch_54
    move-exception v0

    goto :goto_61

    .line 99
    :catchall_56
    move-exception v0

    move-object/from16 v3, p1

    :goto_59
    move-wide/from16 v8, v21

    move-object v5, v0

    .end local v21    # "mmapRegionSize":J
    .restart local v8    # "mmapRegionSize":J
    goto/16 :goto_c1

    .line 96
    .end local v8    # "mmapRegionSize":J
    .restart local v21    # "mmapRegionSize":J
    :catch_5e
    move-exception v0

    move-object/from16 v3, p1

    :goto_61
    move-wide/from16 v8, v21

    move-wide/from16 v17, v1

    .end local v21    # "mmapRegionSize":J
    .restart local v8    # "mmapRegionSize":J
    goto :goto_9e

    .line 99
    .end local v1    # "mmapPtr":J
    .end local v8    # "mmapRegionSize":J
    .end local v23    # "filePosition":J
    .restart local v2    # "filePosition":J
    .restart local v14    # "mmapPtr":J
    .restart local v21    # "mmapRegionSize":J
    :catchall_66
    move-exception v0

    move-wide/from16 v23, v2

    move-wide v1, v14

    move-wide/from16 v8, v21

    move-object/from16 v3, p1

    move-object v5, v0

    .end local v2    # "filePosition":J
    .end local v14    # "mmapPtr":J
    .end local v21    # "mmapRegionSize":J
    .restart local v1    # "mmapPtr":J
    .restart local v8    # "mmapRegionSize":J
    .restart local v23    # "filePosition":J
    goto :goto_c1

    .line 96
    .end local v1    # "mmapPtr":J
    .end local v8    # "mmapRegionSize":J
    .end local v23    # "filePosition":J
    .restart local v2    # "filePosition":J
    .restart local v14    # "mmapPtr":J
    .restart local v21    # "mmapRegionSize":J
    :catch_70
    move-exception v0

    move-wide/from16 v23, v2

    move-wide v1, v14

    move-wide/from16 v8, v21

    move-object/from16 v3, p1

    move-wide/from16 v17, v1

    .end local v2    # "filePosition":J
    .end local v14    # "mmapPtr":J
    .end local v21    # "mmapRegionSize":J
    .restart local v1    # "mmapPtr":J
    .restart local v8    # "mmapRegionSize":J
    .restart local v23    # "filePosition":J
    goto :goto_9e

    .line 99
    .end local v1    # "mmapPtr":J
    .end local v8    # "mmapRegionSize":J
    .end local v23    # "filePosition":J
    .restart local v2    # "filePosition":J
    .restart local v17    # "mmapPtr":J
    .restart local v21    # "mmapRegionSize":J
    :catchall_7b
    move-exception v0

    move-wide/from16 v23, v2

    move-wide/from16 v8, v21

    move-object/from16 v3, p1

    move-object v5, v0

    move-wide/from16 v1, v17

    .end local v2    # "filePosition":J
    .end local v21    # "mmapRegionSize":J
    .restart local v8    # "mmapRegionSize":J
    .restart local v23    # "filePosition":J
    goto :goto_c1

    .line 96
    .end local v8    # "mmapRegionSize":J
    .end local v23    # "filePosition":J
    .restart local v2    # "filePosition":J
    .restart local v21    # "mmapRegionSize":J
    :catch_86
    move-exception v0

    move-wide/from16 v23, v2

    move-wide/from16 v8, v21

    move-object/from16 v3, p1

    .end local v2    # "filePosition":J
    .end local v21    # "mmapRegionSize":J
    .restart local v8    # "mmapRegionSize":J
    .restart local v23    # "filePosition":J
    goto :goto_9e

    .line 99
    .end local v8    # "mmapRegionSize":J
    .end local v23    # "filePosition":J
    .restart local v2    # "filePosition":J
    .local v14, "mmapRegionSize":J
    :catchall_8e
    move-exception v0

    move-wide/from16 v23, v2

    move-wide v8, v14

    move-object/from16 v3, p1

    move-object v5, v0

    move-wide/from16 v1, v17

    .end local v2    # "filePosition":J
    .end local v14    # "mmapRegionSize":J
    .restart local v8    # "mmapRegionSize":J
    .restart local v23    # "filePosition":J
    goto :goto_c1

    .line 96
    .end local v8    # "mmapRegionSize":J
    .end local v23    # "filePosition":J
    .restart local v2    # "filePosition":J
    .restart local v14    # "mmapRegionSize":J
    :catch_98
    move-exception v0

    move-wide/from16 v23, v2

    move-wide v8, v14

    move-object/from16 v3, p1

    .line 97
    .end local v2    # "filePosition":J
    .end local v14    # "mmapRegionSize":J
    .local v0, "e":Landroid/system/ErrnoException;
    .restart local v8    # "mmapRegionSize":J
    .restart local v23    # "filePosition":J
    :goto_9e
    :try_start_9e
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to mmap "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " bytes"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v4    # "dataStartOffsetInMmapRegion":I
    .end local v6    # "mmapFilePosition":J
    .end local v8    # "mmapRegionSize":J
    .end local v17    # "mmapPtr":J
    .end local v23    # "filePosition":J
    .end local p0    # "this":Landroid/util/apk/MemoryMappedFileDataSource;
    .end local p1    # "md":Landroid/util/apk/DataDigester;
    .end local p2    # "offset":J
    .end local p4    # "size":I
    throw v1
    :try_end_bd
    .catchall {:try_start_9e .. :try_end_bd} :catchall_bd

    .line 99
    .end local v0    # "e":Landroid/system/ErrnoException;
    .restart local v4    # "dataStartOffsetInMmapRegion":I
    .restart local v6    # "mmapFilePosition":J
    .restart local v8    # "mmapRegionSize":J
    .restart local v17    # "mmapPtr":J
    .restart local v23    # "filePosition":J
    .restart local p0    # "this":Landroid/util/apk/MemoryMappedFileDataSource;
    .restart local p1    # "md":Landroid/util/apk/DataDigester;
    .restart local p2    # "offset":J
    .restart local p4    # "size":I
    :catchall_bd
    move-exception v0

    move-object v5, v0

    move-wide/from16 v1, v17

    .end local v17    # "mmapPtr":J
    .restart local v1    # "mmapPtr":J
    :goto_c1
    cmp-long v0, v1, v19

    if-eqz v0, :cond_cb

    .line 101
    :try_start_c5
    invoke-static {v1, v2, v8, v9}, Landroid/system/Os;->munmap(JJ)V
    :try_end_c8
    .catch Landroid/system/ErrnoException; {:try_start_c5 .. :try_end_c8} :catch_c9

    .line 102
    :goto_c8
    goto :goto_cb

    :catch_c9
    move-exception v0

    goto :goto_c8

    .line 104
    :cond_cb
    :goto_cb
    throw v5
.end method

.method public blacklist size()J
    .registers 3

    .line 55
    iget-wide v0, p0, Landroid/util/apk/MemoryMappedFileDataSource;->mSize:J

    return-wide v0
.end method
