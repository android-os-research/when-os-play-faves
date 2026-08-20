.class public Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasswordData"
.end annotation


# instance fields
.field public credentialType:I

.field public passwordHandle:[B

.field public salt:[B

.field public scryptN:B

.field public scryptP:B

.field public scryptR:B

.field public secureMode:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetsecureMode(Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;)I
    .registers 1

    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    return p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(I)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .registers 3

    .line 725
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    invoke-direct {v0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;-><init>()V

    const/16 v1, 0xb

    .line 726
    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    const/4 v1, 0x3

    .line 727
    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    const/4 v1, 0x1

    .line 728
    iput-byte v1, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    .line 729
    iput p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    const/16 p0, 0x10

    .line 730
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    const/4 p0, 0x0

    .line 731
    iput p0, v0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    return-object v0
.end method

.method public static create(II)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .registers 2

    .line 812
    invoke-static {p0}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->create(I)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->setSecureMode(I)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    move-result-object p0

    return-object p0
.end method

.method public static fromBytes([B)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 742
    :cond_4
    new-instance v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;

    invoke-direct {v1}, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;-><init>()V

    .line 743
    array-length v2, p0

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 744
    array-length v3, p0

    const/4 v4, 0x0

    invoke-virtual {v2, p0, v4, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 745
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 746
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    .line 747
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    iput-byte p0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    .line 748
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    iput-byte p0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    .line 749
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    iput-byte p0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    .line 750
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    .line 751
    new-array p0, p0, [B

    iput-object p0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    .line 752
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 753
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    if-lez p0, :cond_47

    .line 755
    new-array p0, p0, [B

    iput-object p0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 756
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_49

    .line 758
    :cond_47
    iput-object v0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    .line 761
    :goto_49
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    if-ne p0, v0, :cond_56

    .line 762
    iput v4, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    goto :goto_5c

    .line 764
    :cond_56
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v1, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    :goto_5c
    return-object v1
.end method


# virtual methods
.method public getSecureMode()I
    .registers 1

    .line 799
    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    return p0
.end method

.method public isSdpMdfppMode()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public setSecureMode(I)Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;
    .registers 3

    if-ltz p1, :cond_9

    const/4 v0, 0x2

    if-le p1, v0, :cond_6

    goto :goto_9

    .line 806
    :cond_6
    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    goto :goto_c

    :cond_9
    :goto_9
    const/4 p1, 0x0

    .line 804
    iput p1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    :goto_c
    return-object p0
.end method

.method public toBytes()[B
    .registers 5

    .line 772
    iget-object v0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0xb

    add-int/lit8 v0, v0, 0x4

    .line 774
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    const/4 v2, 0x0

    if-eqz v1, :cond_e

    array-length v1, v1

    goto :goto_f

    :cond_e
    move v1, v2

    :goto_f
    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    .line 772
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 776
    iget v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->credentialType:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 777
    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptN:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 778
    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptR:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 779
    iget-byte v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->scryptP:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 780
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 781
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->salt:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 782
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    if-eqz v1, :cond_46

    array-length v3, v1

    if-lez v3, :cond_46

    .line 783
    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 784
    iget-object v1, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->passwordHandle:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_49

    .line 786
    :cond_46
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 788
    :goto_49
    iget p0, p0, Lcom/android/server/locksettings/SyntheticPasswordManager$PasswordData;->secureMode:I

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 789
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method
