.class public final Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;
.super Ljava/lang/Object;
.source "MotionPhotoVideoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;,
        Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;
    }
.end annotation


# static fields
.field private static final blacklist JPEG_LENGTH_SIZE:I = 0x2

.field private static final blacklist JPEG_MARKER_SIZE:I = 0x2

.field private static final blacklist MOTION_PHOTO_V2_SIGNATURE:Ljava/lang/String; = "mpv2"

.field private static final blacklist MOTION_PHOTO_V2_SIGNATURE_SIZE:I = 0x4

.field public static final blacklist SEF_DATA_MOTION_PHOTO:I = 0xa30

.field private static final blacklist TAG:Ljava/lang/String; = "MotionPhotoVideoUtils"

.field private static final blacklist XMP_RESERVED_SIZE:I = 0x500

.field private static blacklist isJpeg:Z

.field private static blacklist xmpPosition:J


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "MotionPhotoVideoUtils"

    invoke-static {v0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->isJpeg:Z

    .line 40
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    return-void
.end method

.method private final blacklist isJpeg(Ljava/io/FileDescriptor;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fd"
        }
    .end annotation

    .line 198
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 200
    const/4 p1, 0x0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 201
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 202
    invoke-virtual {v0, v2, p1, v1}, Ljava/io/FileInputStream;->read([BII)I

    .line 203
    aget-byte v1, v2, p1

    const/16 v3, 0xff

    and-int/2addr v1, v3

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2c

    aget-byte v1, v2, v4
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1f} :catch_28
    .catchall {:try_start_6 .. :try_end_1f} :catchall_26

    and-int/2addr v1, v3

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_2c

    move p1, v4

    goto :goto_2c

    .line 211
    :catchall_26
    move-exception p1

    goto :goto_35

    .line 205
    :catch_28
    move-exception v1

    :try_start_29
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_26

    .line 209
    :cond_2c
    :goto_2c
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    goto :goto_34

    .line 211
    :catch_30
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 209
    :goto_34
    return p1

    :goto_35
    :try_start_35
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    goto :goto_3d

    .line 211
    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 214
    :goto_3d
    throw p1
.end method

.method private final blacklist removeXmp(Ljava/io/FileDescriptor;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    const-string v0, "MotionPhotoVideoUtils"

    const-string/jumbo v1, "removeXmp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->seekToXmpStartPosition(Ljava/io/FileDescriptor;)J

    move-result-wide v1

    sput-wide v1, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    .line 293
    sget-boolean v1, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->isJpeg:Z

    if-eqz v1, :cond_d1

    const/4 v1, 0x0

    .line 295
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 297
    const/4 v3, 0x2

    :try_start_19
    new-array v4, v3, [B

    .line 298
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    .line 299
    const/4 v5, 0x0

    aget-byte v6, v4, v5

    const/16 v7, 0xff

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_a7

    const/4 v6, 0x1

    aget-byte v4, v4, v6

    and-int/2addr v4, v7

    const/16 v8, 0xe1

    if-ne v4, v8, :cond_a7

    .line 300
    new-array v4, v3, [B

    .line 301
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    .line 302
    aget-byte v8, v4, v5

    and-int/2addr v8, v7

    shl-int/lit8 v8, v8, 0x8

    aget-byte v4, v4, v6

    and-int/2addr v4, v7

    or-int/2addr v4, v8

    add-int/2addr v4, v3

    .line 303
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    sget-wide v9, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    sub-long/2addr v7, v9

    int-to-long v3, v4

    sub-long/2addr v7, v3

    long-to-int v7, v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 304
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    sget-wide v8, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    add-long/2addr v8, v3

    invoke-virtual {v7, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 305
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v3

    .line 306
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    if-ne v3, v4, :cond_70

    move v5, v6

    :cond_70
    if-nez v5, :cond_9d

    .line 308
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "read bytes("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") differ from buffer size("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_9d
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_a0} :catch_a3
    .catchall {:try_start_19 .. :try_end_a0} :catchall_a1

    goto :goto_a7

    .line 316
    :catchall_a1
    move-exception p1

    goto :goto_cd

    .line 314
    :catch_a3
    move-exception v0

    :try_start_a4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_a1

    .line 316
    :cond_a7
    :goto_a7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 314
    if-eqz v1, :cond_ef

    .line 320
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 322
    :try_start_b5
    sget-wide v2, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    invoke-virtual {p1, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 323
    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 324
    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x500

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c7} :catch_c8

    goto :goto_ef

    .line 326
    :catch_c8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ef

    .line 316
    :goto_cd
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 317
    throw p1

    :cond_d1
    const/16 v0, 0x500

    .line 330
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_ef

    .line 332
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    .line 334
    :try_start_e2
    sget-wide v1, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    invoke-virtual {p1, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 335
    invoke-virtual {p1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_ea} :catch_eb

    goto :goto_ef

    .line 337
    :catch_eb
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ef
    :goto_ef
    return-void
.end method

.method private final blacklist seekToXmpStartPosition(Ljava/io/FileDescriptor;)J
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 228
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 230
    sget-boolean p1, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->isJpeg:Z

    const-wide/16 v1, 0x0

    const-string v3, "MotionPhotoVideoUtils"

    if-eqz p1, :cond_ae

    .line 231
    const-string p1, "//JPEG//"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x400

    .line 232
    new-array p1, p1, [B

    .line 234
    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 235
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-virtual {v0, p1, v5, v4}, Ljava/io/FileInputStream;->read([BII)I

    :cond_22
    :goto_22
    nop

    .line 237
    invoke-virtual {v0, p1, v5, v4}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    if-lez v6, :cond_fc

    .line 238
    new-instance v6, Landroid/util/Pair;

    aget-byte v7, p1, v5

    const/16 v8, 0xff

    and-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x1

    aget-byte v10, p1, v9

    and-int/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 239
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-ne v7, v8, :cond_4b

    move v7, v9

    goto :goto_4c

    :cond_4b
    move v7, v5

    :goto_4c
    if-nez v7, :cond_58

    const-string/jumbo p1, "this is not valid markers"

    .line 241
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-wide v1

    :cond_58
    const/16 v7, 0xd0

    .line 246
    iget-object v10, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-gt v7, v10, :cond_71

    const/16 v7, 0xd7

    .line 247
    iget-object v10, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-lt v7, v10, :cond_71

    goto :goto_22

    :cond_71
    nop

    .line 252
    invoke-virtual {v0, p1, v5, v4}, Ljava/io/FileInputStream;->read([BII)I

    .line 253
    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    const/16 v10, 0xdd

    if-eq v7, v10, :cond_22

    .line 254
    aget-byte v7, p1, v5

    and-int/2addr v7, v8

    shl-int/lit8 v7, v7, 0x8

    aget-byte v9, p1, v9

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    int-to-long v7, v7

    const-wide/16 v9, 0x2

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/io/FileInputStream;->skip(J)J

    .line 255
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    const/16 v7, 0xe1

    if-ne v6, v7, :cond_22

    .line 256
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    .line 257
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_a8} :catch_a9

    return-wide v1

    .line 264
    :catch_a9
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_fc

    :cond_ae
    nop

    .line 267
    const-string p1, "//HEIF//"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance p1, Lcom/samsung/android/motionphoto/utils/HEIFParser;

    invoke-direct {p1}, Lcom/samsung/android/motionphoto/utils/HEIFParser;-><init>()V

    .line 271
    :try_start_b9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 273
    invoke-virtual {p1, v0}, Lcom/samsung/android/motionphoto/utils/HEIFParser;->getCoverImageXMPOffsetAndSize(Ljava/io/InputStream;)Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;

    move-result-object p1

    if-eqz p1, :cond_ed

    .line 275
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XMP "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;->offset:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p1, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;->size:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-wide v1, p1, Lcom/samsung/android/motionphoto/utils/HEIFParser$XMPInformation;->offset:J

    goto :goto_f9

    :cond_ed
    const-string p1, "Fail to get xmp information"

    .line 278
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_f2} :catch_f5
    .catchall {:try_start_b9 .. :try_end_f2} :catchall_f3

    goto :goto_f9

    .line 283
    :catchall_f3
    move-exception p1

    goto :goto_fd

    .line 281
    :catch_f5
    move-exception p1

    :try_start_f6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f9
    .catchall {:try_start_f6 .. :try_end_f9} :catchall_f3

    .line 283
    :goto_f9
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 281
    :cond_fc
    :goto_fc
    return-wide v1

    .line 283
    :goto_fd
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 284
    throw p1
.end method


# virtual methods
.method public final blacklist deleteVideo(Ljava/io/File;)Z
    .registers 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "srcFile"
        }
    .end annotation

    const-string v0, "MotionPhoto_Data"

    .line 85
    const-string v1, "MotionPhotoVideoUtils"

    const-string v2, "deleteVideo"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :try_start_9
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->getSEFDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;

    move-result-object v2

    if-eqz v2, :cond_84

    .line 91
    invoke-virtual {v2}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getOffset()J

    move-result-wide v3

    .line 92
    invoke-virtual {v2}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getLength()J

    move-result-wide v5

    .line 93
    invoke-virtual {v2}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->isMotionPhotoV2()Z

    move-result v2
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_86

    const-string/jumbo v7, "rw"

    if-eqz v2, :cond_5b

    :try_start_20
    const-string v8, "MotionPhotoV2"

    .line 97
    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v8, Ljava/io/RandomAccessFile;

    invoke-direct {v8, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_86

    .line 100
    :try_start_2a
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v9

    add-long/2addr v5, v3

    sub-long/2addr v9, v5

    long-to-int v11, v9

    .line 102
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 103
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12

    .line 104
    invoke-virtual {v12, v11, v5, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 105
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v5, 0x8

    sub-long/2addr v3, v5

    .line 106
    invoke-virtual {v12, v11, v3, v4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    add-long/2addr v3, v9

    .line 107
    invoke-virtual {v12, v3, v4}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;

    .line 109
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_4c} :catch_4f
    .catchall {:try_start_2a .. :try_end_4c} :catchall_4d

    goto :goto_53

    .line 114
    :catchall_4d
    move-exception p1

    goto :goto_57

    .line 111
    :catch_4f
    move-exception v3

    :try_start_50
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4d

    .line 114
    :goto_53
    :try_start_53
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_60

    :goto_57
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 115
    throw p1

    :cond_5b
    const-string v3, "Not MotionPhotoV2"

    .line 117
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_60
    nop

    .line 120
    invoke-static {p1, v0}, Lcom/samsung/android/media/SemExtendedFormat;->deleteData(Ljava/io/File;Ljava/lang/String;)Z

    .line 121
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, p1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 124
    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->isJpeg(Ljava/io/FileDescriptor;)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->isJpeg:Z

    if-nez v2, :cond_7e

    if-eqz v3, :cond_78

    goto :goto_7e

    :cond_78
    const-string p1, "There is no xmp"

    .line 128
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_81

    .line 126
    :cond_7e
    :goto_7e
    invoke-direct {p0, p1}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->removeXmp(Ljava/io/FileDescriptor;)V

    .line 132
    :goto_81
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_84} :catch_86

    .line 135
    :cond_84
    const/4 p1, 0x1

    goto :goto_8b

    :catch_86
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    :goto_8b
    return p1
.end method

.method public final blacklist deleteVideo(Ljava/io/File;Ljava/io/File;)Z
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "srcFile",
            "outFile"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "MotionPhoto_Data"

    .line 143
    const-string v4, "MotionPhotoVideoUtils"

    const-string v0, "deleteVideo"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_f
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v7

    new-array v8, v6, [Ljava/nio/file/CopyOption;

    sget-object v9, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v9, v8, v5

    invoke-static {v0, v7, v8}, Ljava/nio/file/Files;->copy(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 148
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->getSEFDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;

    move-result-object v0

    if-eqz v0, :cond_98

    .line 150
    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getOffset()J

    move-result-wide v7

    .line 151
    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getLength()J

    move-result-wide v9

    .line 153
    invoke-virtual {v0}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->isMotionPhotoV2()Z

    move-result v11
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_32} :catch_9a

    const-string/jumbo v12, "rw"

    if-eqz v11, :cond_6f

    :try_start_37
    const-string v0, "MotionPhotoV2"

    .line 155
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    new-instance v13, Ljava/io/RandomAccessFile;

    invoke-direct {v13, v2, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_41} :catch_9a

    .line 158
    :try_start_41
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->length()J

    move-result-wide v14

    add-long/2addr v9, v7

    sub-long/2addr v14, v9

    long-to-int v0, v14

    .line 160
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 161
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 162
    invoke-virtual {v5, v0, v9, v10}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    .line 163
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const-wide/16 v9, 0x8

    sub-long/2addr v7, v9

    .line 164
    invoke-virtual {v5, v0, v7, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    add-long/2addr v7, v14

    .line 165
    invoke-virtual {v5, v7, v8}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_60} :catch_63
    .catchall {:try_start_41 .. :try_end_60} :catchall_61

    goto :goto_67

    .line 170
    :catchall_61
    move-exception v0

    goto :goto_6b

    .line 167
    :catch_63
    move-exception v0

    :try_start_64
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_61

    .line 170
    :goto_67
    :try_start_67
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_74

    :goto_6b
    invoke-virtual {v13}, Ljava/io/RandomAccessFile;->close()V

    .line 171
    throw v0

    :cond_6f
    const-string v0, "Not MotionPhotoV2"

    .line 173
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_74
    nop

    .line 176
    invoke-static {v2, v3}, Lcom/samsung/android/media/SemExtendedFormat;->deleteData(Ljava/io/File;Ljava/lang/String;)Z

    .line 177
    new-instance v0, Ljava/io/RandomAccessFile;

    invoke-direct {v0, v2, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 178
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 179
    invoke-direct {v1, v2}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->isJpeg(Ljava/io/FileDescriptor;)Z

    move-result v3

    sput-boolean v3, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->isJpeg:Z

    if-nez v11, :cond_92

    if-eqz v3, :cond_8c

    goto :goto_92

    :cond_8c
    const-string v1, "There is no xmp"

    .line 183
    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 181
    :cond_92
    :goto_92
    invoke-direct {v1, v2}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->removeXmp(Ljava/io/FileDescriptor;)V

    .line 186
    :goto_95
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_98} :catch_9a

    .line 189
    :cond_98
    move v5, v6

    goto :goto_9f

    :catch_9a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    :goto_9f
    return v5
.end method

.method public final blacklist getSEFDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;
    .registers 29
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "tag"
        }
    .end annotation

    const-string v1, "MotionPhotoVideoUtils"

    .line 420
    :try_start_2
    invoke-static/range {p1 .. p2}, Lcom/samsung/android/media/SemExtendedFormat;->getDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/media/SemExtendedFormat$DataPosition;

    move-result-object v0

    const/4 v4, 0x0

    if-eqz v0, :cond_103

    .line 422
    iget-wide v5, v0, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->offset:J

    .line 423
    iget-wide v7, v0, Lcom/samsung/android/media/SemExtendedFormat$DataPosition;->length:J

    .line 425
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_14} :catch_10f

    .line 427
    :try_start_14
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 428
    const/4 v0, 0x4

    new-array v10, v0, [B

    .line 429
    invoke-virtual {v9, v10, v4, v0}, Ljava/io/FileInputStream;->read([BII)I

    const-string v11, "mpv2"

    const-string/jumbo v12, "utf-8"

    .line 431
    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    .line 432
    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_2e} :catch_ea
    .catchall {:try_start_14 .. :try_end_2e} :catchall_e8

    const-string v12, " length:"

    if-eqz v11, :cond_c3

    .line 434
    :try_start_32
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    const-wide/16 v13, 0x4

    add-long/2addr v5, v13

    invoke-virtual {v7, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 435
    invoke-virtual {v9, v10, v4, v0}, Ljava/io/FileInputStream;->read([BII)I

    .line 436
    const/4 v7, 0x3

    aget-byte v8, v10, v7
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_42} :catch_c0
    .catchall {:try_start_32 .. :try_end_42} :catchall_e8

    int-to-long v2, v8

    const-wide/16 v16, 0xff

    and-long v2, v2, v16

    .line 437
    const/4 v8, 0x2

    :try_start_48
    aget-byte v15, v10, v8

    int-to-long v7, v15

    const/16 v15, 0x8

    shl-long/2addr v7, v15

    const-wide/32 v18, 0xff00

    and-long v7, v7, v18

    or-long/2addr v2, v7

    .line 438
    const/4 v7, 0x1

    aget-byte v8, v10, v7

    int-to-long v7, v8

    const/16 v20, 0x10

    shl-long v7, v7, v20

    const-wide/32 v21, 0xff0000

    and-long v7, v7, v21

    or-long/2addr v2, v7

    .line 439
    aget-byte v7, v10, v4

    int-to-long v7, v7

    const/16 v23, 0x18

    shl-long v7, v7, v23

    or-long/2addr v2, v7

    .line 440
    invoke-virtual {v9}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v7

    add-long/2addr v5, v13

    invoke-virtual {v7, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 441
    invoke-virtual {v9, v10, v4, v0}, Ljava/io/FileInputStream;->read([BII)I

    .line 442
    const/4 v0, 0x3

    aget-byte v0, v10, v0
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_78} :catch_bc
    .catchall {:try_start_48 .. :try_end_78} :catchall_e8

    int-to-long v5, v0

    and-long v5, v5, v16

    .line 443
    const/4 v0, 0x2

    :try_start_7c
    aget-byte v0, v10, v0

    int-to-long v7, v0

    shl-long/2addr v7, v15

    and-long v7, v7, v18

    or-long/2addr v5, v7

    .line 444
    const/4 v0, 0x1

    aget-byte v0, v10, v0

    int-to-long v7, v0

    shl-long v7, v7, v20

    and-long v7, v7, v21

    or-long/2addr v5, v7

    .line 445
    aget-byte v0, v10, v4
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_8e} :catch_b4
    .catchall {:try_start_7c .. :try_end_8e} :catchall_e8

    int-to-long v7, v0

    shl-long v7, v7, v23

    or-long v4, v5, v7

    .line 446
    :try_start_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This file is a MotionPhoto V2 format - offset:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_b1} :catch_b2
    .catchall {:try_start_93 .. :try_end_b1} :catchall_e8

    goto :goto_f8

    :catch_b2
    move-exception v0

    goto :goto_b6

    :catch_b4
    move-exception v0

    move-wide v4, v5

    :goto_b6
    move-wide/from16 v24, v2

    move-wide v2, v4

    move-wide/from16 v5, v24

    goto :goto_f0

    .line 455
    :catch_bc
    move-exception v0

    move-wide v5, v2

    move v4, v11

    goto :goto_ed

    :catch_c0
    move-exception v0

    move v4, v11

    goto :goto_eb

    .line 446
    :cond_c3
    nop

    .line 450
    :try_start_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This file is not a MotionPhoto V2 format - offset:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_e2} :catch_e5
    .catchall {:try_start_c4 .. :try_end_e2} :catchall_e8

    move-wide v2, v5

    move-wide v4, v7

    goto :goto_f8

    .line 455
    :catch_e5
    move-exception v0

    move-wide v2, v7

    goto :goto_f0

    :catchall_e8
    move-exception v0

    goto :goto_ff

    :catch_ea
    move-exception v0

    :goto_eb
    const-wide/16 v5, 0x0

    :goto_ed
    move v11, v4

    const-wide/16 v2, 0x0

    .line 453
    :goto_f0
    :try_start_f0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f3
    .catchall {:try_start_f0 .. :try_end_f3} :catchall_e8

    move-wide/from16 v24, v2

    move-wide v2, v5

    move-wide/from16 v4, v24

    .line 455
    :goto_f8
    :try_start_f8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    move-wide v5, v4

    move v7, v11

    move-wide v3, v2

    goto :goto_108

    :goto_ff
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 456
    throw v0
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_f8 .. :try_end_103} :catch_10f

    :cond_103
    move v7, v4

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    .line 463
    :goto_108
    new-instance v0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;-><init>(JJZ)V

    return-object v0

    :catch_10f
    move-exception v0

    .line 459
    const-string v0, "position is not valid"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public final blacklist getVideoDataPosition(Ljava/io/File;)Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "srcFile"
        }
    .end annotation

    :try_start_0
    const-string v0, "MotionPhoto_Data"

    .line 401
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->getSEFDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_13

    .line 403
    invoke-virtual {p1}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getOffset()J

    move-result-wide v0

    .line 404
    invoke-virtual {p1}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getLength()J

    move-result-wide v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_1a

    goto :goto_14

    .line 401
    :cond_13
    move-wide v2, v0

    .line 411
    :goto_14
    new-instance p1, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$VideoInfo;-><init>(JJ)V

    return-object p1

    .line 407
    :catch_1a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final blacklist getXmpPosition()J
    .registers 3

    .line 220
    sget-wide v0, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    return-wide v0
.end method

.method public final blacklist saveVideo(Ljava/io/File;Ljava/io/File;)Z
    .registers 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "srcFile",
            "outFile"
        }
    .end annotation

    .line 44
    const-string v0, "MotionPhotoVideoUtils"

    const-string/jumbo v1, "saveVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_9
    const-string v2, "MotionPhoto_Data"

    .line 48
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->getSEFDataPosition(Ljava/io/File;Ljava/lang/String;)Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;

    move-result-object v2

    if-eqz v2, :cond_ac

    .line 50
    invoke-virtual {v2}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getOffset()J

    move-result-wide v3

    .line 51
    invoke-virtual {v2}, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils$MotionPhotoInfo;->getLength()J

    move-result-wide v5
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_a8

    .line 56
    const/4 v2, 0x0

    :try_start_1a
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_88
    .catchall {:try_start_1a .. :try_end_1f} :catchall_85

    .line 57
    :try_start_1f
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "size = "

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    long-to-int p1, v5

    .line 60
    new-array v3, p1, [B

    .line 61
    invoke-virtual {v7, v3, v1, p1}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1

    .line 62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mv data size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_67} :catch_81
    .catchall {:try_start_1f .. :try_end_67} :catchall_7f

    .line 65
    :try_start_67
    invoke-virtual {v0, v3, v1, p1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 66
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p2

    int-to-long v2, p1

    invoke-virtual {p2, v2, v3}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_72} :catch_7d
    .catchall {:try_start_67 .. :try_end_72} :catchall_7b

    const/4 p1, 0x1

    .line 72
    :try_start_73
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 73
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_79} :catch_a8

    move v1, p1

    goto :goto_ac

    :catchall_7b
    move-exception p1

    goto :goto_9a

    :catch_7d
    move-exception p1

    goto :goto_83

    :catchall_7f
    move-exception p1

    goto :goto_9b

    :catch_81
    move-exception p1

    move-object v0, v2

    :goto_83
    move-object v2, v7

    goto :goto_8a

    :catchall_85
    move-exception p1

    move-object p2, v2

    goto :goto_9d

    :catch_88
    move-exception p1

    move-object v0, v2

    .line 70
    :goto_8a
    :try_start_8a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_98

    if-eqz v2, :cond_92

    .line 72
    :try_start_8f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_92
    if-eqz v0, :cond_ac

    .line 73
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    goto :goto_ac

    :catchall_98
    move-exception p1

    move-object v7, v2

    :goto_9a
    move-object v2, v0

    :goto_9b
    move-object p2, v2

    move-object v2, v7

    :goto_9d
    if-eqz v2, :cond_a2

    .line 72
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_a2
    if-eqz p2, :cond_a7

    .line 73
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 74
    :cond_a7
    throw p1
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_a8} :catch_a8

    .line 77
    :catch_a8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_ac
    :goto_ac
    return v1
.end method

.method public final blacklist setXmpPosition(J)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "var1"
        }
    .end annotation

    .line 224
    sput-wide p1, Lcom/samsung/android/motionphoto/utils/MotionPhotoVideoUtils;->xmpPosition:J

    return-void
.end method
