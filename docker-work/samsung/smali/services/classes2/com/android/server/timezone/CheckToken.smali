.class public final Lcom/android/server/timezone/CheckToken;
.super Ljava/lang/Object;
.source "CheckToken.java"


# instance fields
.field public final mOptimisticLockId:I

.field public final mPackageVersions:Lcom/android/server/timezone/PackageVersions;


# direct methods
.method public constructor <init>(ILcom/android/server/timezone/PackageVersions;)V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    if-eqz p2, :cond_a

    .line 42
    iput-object p2, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    return-void

    .line 40
    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "packageVersions == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromByteArray([B)Lcom/android/server/timezone/CheckToken;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 59
    new-instance p0, Ljava/io/DataInputStream;

    invoke-direct {p0, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 60
    :try_start_a
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 61
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    .line 62
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    .line 63
    new-instance v5, Lcom/android/server/timezone/CheckToken;

    new-instance v6, Lcom/android/server/timezone/PackageVersions;

    invoke-direct {v6, v1, v2, v3, v4}, Lcom/android/server/timezone/PackageVersions;-><init>(JJ)V

    invoke-direct {v5, v0, v6}, Lcom/android/server/timezone/CheckToken;-><init>(ILcom/android/server/timezone/PackageVersions;)V
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_24

    .line 64
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V

    return-object v5

    :catchall_24
    move-exception v0

    .line 59
    :try_start_25
    invoke-virtual {p0}, Ljava/io/DataInputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception p0

    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 72
    const-class v1, Lcom/android/server/timezone/CheckToken;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_10

    goto :goto_22

    .line 76
    :cond_10
    check-cast p1, Lcom/android/server/timezone/CheckToken;

    .line 78
    iget v1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    iget v2, p1, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    if-eq v1, v2, :cond_19

    return v0

    .line 81
    :cond_19
    iget-object p0, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget-object p1, p1, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {p0, p1}, Lcom/android/server/timezone/PackageVersions;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_22
    :goto_22
    return v0
.end method

.method public hashCode()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget-object p0, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {p0}, Lcom/android/server/timezone/PackageVersions;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public toByteArray()[B
    .registers 5

    .line 46
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 47
    :try_start_7
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_31

    .line 48
    :try_start_c
    iget v2, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 49
    iget-object v2, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget-wide v2, v2, Lcom/android/server/timezone/PackageVersions;->mUpdateAppVersion:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 50
    iget-object p0, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    iget-wide v2, p0, Lcom/android/server/timezone/PackageVersions;->mDataAppVersion:J

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_27

    .line 51
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_31

    .line 54
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0

    :catchall_27
    move-exception p0

    .line 47
    :try_start_28
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_30

    :catchall_2c
    move-exception v0

    :try_start_2d
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_30
    throw p0
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_31} :catch_31

    :catch_31
    move-exception p0

    .line 52
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to write into a ByteArrayOutputStream"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Token{mOptimisticLockId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/timezone/CheckToken;->mOptimisticLockId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageVersions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/timezone/CheckToken;->mPackageVersions:Lcom/android/server/timezone/PackageVersions;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
