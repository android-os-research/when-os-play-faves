.class public Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
.super Ljava/lang/Object;
.source "PackageManagerShellCommandDataLoader.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommandDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Metadata"
.end annotation


# static fields
.field public static final DATA_ONLY_STREAMING:B = 0x2t

.field public static final LOCAL_FILE:B = 0x1t

.field public static final STDIN:B = 0x0t

.field public static final STREAMING:B = 0x3t

.field public static sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mData:Ljava/lang/String;

.field public final mMode:B

.field public final mSalt:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 144
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 168
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(BLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-byte p1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    if-nez p2, :cond_9

    const-string p2, ""

    .line 173
    :cond_9
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:Ljava/lang/String;

    .line 174
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mSalt:Ljava/lang/String;

    return-void
.end method

.method public static forDataOnlyStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .registers 3

    .line 160
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;)V

    return-object v0
.end method

.method public static forLocalFile(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 156
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    invoke-static {}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->nextGlobalSalt()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, v1}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static forStdIn(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .registers 3

    .line 150
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;)V

    return-object v0
.end method

.method public static forStreaming(Ljava/lang/String;)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .registers 3

    .line 164
    new-instance v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;)V

    return-object v0
.end method

.method public static fromByteArray([B)Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3f

    .line 178
    array-length v1, p0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_8

    goto :goto_3f

    :cond_8
    const/4 v1, 0x0

    .line 182
    aget-byte v1, p0, v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_18

    .line 198
    new-instance v2, Ljava/lang/String;

    array-length v4, p0

    sub-int/2addr v4, v3

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    goto :goto_39

    :cond_18
    const/4 v0, 0x4

    .line 188
    invoke-static {p0, v3, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 191
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p0, v2, v0, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v2, v0

    .line 193
    new-instance v0, Ljava/lang/String;

    array-length v4, p0

    sub-int/2addr v4, v2

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v2, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v2, v3

    .line 203
    :goto_39
    new-instance p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;-><init>(BLjava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3f
    :goto_3f
    return-object v0
.end method

.method public static nextGlobalSalt()Ljava/lang/Long;
    .registers 2

    .line 146
    sget-object v0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->sGlobalSalt:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .registers 1

    .line 241
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:Ljava/lang/String;

    return-object p0
.end method

.method public getMode()B
    .registers 1

    .line 237
    iget-byte p0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    return p0
.end method

.method public toByteArray()[B
    .registers 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mData:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 211
    iget-byte v1, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_19

    .line 228
    array-length p0, v0

    add-int/2addr p0, v2

    new-array p0, p0, [B

    .line 229
    aput-byte v1, p0, v3

    .line 230
    array-length v1, v0

    invoke-static {v0, v3, p0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_44

    .line 213
    :cond_19
    array-length v1, v0

    .line 214
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mSalt:Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    add-int/lit8 v5, v1, 0x5

    .line 215
    array-length v6, v4

    add-int/2addr v5, v6

    new-array v5, v5, [B

    .line 217
    iget-byte p0, p0, Lcom/android/server/pm/PackageManagerShellCommandDataLoader$Metadata;->mMode:B

    aput-byte p0, v5, v3

    const/4 p0, 0x4

    .line 219
    invoke-static {v5, v2, p0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 p0, 0x5

    .line 222
    invoke-static {v0, v3, v5, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p0, v1

    .line 224
    array-length v0, v4

    invoke-static {v4, v3, v5, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v5

    :goto_44
    return-object p0
.end method
