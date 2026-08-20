.class public Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
.super Ljava/lang/Object;
.source "TestHarnessModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/testharness/TestHarnessModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistentData"
.end annotation


# static fields
.field public static final VERSION_1:B = 0x1t

.field public static final VERSION_2:B = 0x2t


# instance fields
.field public final mAdbKeys:[B

.field public final mAdbTempKeys:[B

.field public final mVersion:I


# direct methods
.method public constructor <init>(I[B[B)V
    .registers 4

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput p1, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mVersion:I

    .line 420
    iput-object p2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    .line 421
    iput-object p3, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    return-void
.end method

.method public constructor <init>([B[B)V
    .registers 4

    const/4 v0, 0x2

    .line 415
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>(I[B[B)V

    return-void
.end method

.method public static fromBytes([B)Lcom/android/server/testharness/TestHarnessModeService$PersistentData;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;
        }
    .end annotation

    .line 426
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 427
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_14

    .line 431
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    .line 433
    :cond_14
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 434
    new-array v1, v1, [B

    .line 435
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 436
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 437
    new-array v2, v2, [B

    .line 438
    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 439
    new-instance v0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;-><init>(I[B[B)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2c

    return-object v0

    :catch_2c
    move-exception p0

    .line 441
    new-instance v0, Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;

    invoke-direct {v0, p0}, Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public toBytes()[B
    .registers 4

    .line 447
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 448
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v2, 0x2

    .line 449
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 450
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 451
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 452
    iget-object v2, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 453
    iget-object p0, p0, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    invoke-virtual {v1, p0}, Ljava/io/DataOutputStream;->write([B)V

    .line 454
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 455
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_2b} :catch_2c

    return-object p0

    :catch_2c
    move-exception p0

    .line 457
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
