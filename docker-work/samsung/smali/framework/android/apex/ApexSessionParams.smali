.class public Landroid/apex/ApexSessionParams;
.super Ljava/lang/Object;
.source "ApexSessionParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/apex/ApexSessionParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist childSessionIds:[I

.field public blacklist hasRollbackEnabled:Z

.field public blacklist isRollback:Z

.field public blacklist rollbackId:I

.field public blacklist sessionId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Landroid/apex/ApexSessionParams$1;

    invoke-direct {v0}, Landroid/apex/ApexSessionParams$1;-><init>()V

    sput-object v0, Landroid/apex/ApexSessionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 8
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 9
    iput-boolean v0, p0, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    .line 10
    iput-boolean v0, p0, Landroid/apex/ApexSessionParams;->isRollback:Z

    .line 11
    iput v0, p0, Landroid/apex/ApexSessionParams;->rollbackId:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 9
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 41
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 43
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_b9

    .line 44
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_b7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 55
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 58
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    return-void

    .line 56
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/apex/ApexSessionParams;->sessionId:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_b7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 55
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 58
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    return-void

    .line 56
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 47
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    iput-object v2, p0, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_b7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 55
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 58
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 48
    return-void

    .line 56
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_68

    move v2, v5

    goto :goto_69

    :cond_68
    move v2, v6

    :goto_69
    iput-boolean v2, p0, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6f
    .catchall {:try_start_5e .. :try_end_6f} :catchall_b7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_81

    .line 55
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7b

    .line 58
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 56
    :cond_7b
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_81
    :try_start_81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_88

    goto :goto_89

    :cond_88
    move v5, v6

    :goto_89
    iput-boolean v5, p0, Landroid/apex/ApexSessionParams;->isRollback:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8f
    .catchall {:try_start_81 .. :try_end_8f} :catchall_b7

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_a1

    .line 55
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_9b

    .line 58
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 56
    :cond_9b
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_a1
    :try_start_a1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/apex/ApexSessionParams;->rollbackId:I
    :try_end_a7
    .catchall {:try_start_a1 .. :try_end_a7} :catchall_b7

    .line 55
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_b1

    .line 58
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    nop

    .line 60
    return-void

    .line 56
    :cond_b1
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :catchall_b7
    move-exception v2

    goto :goto_c1

    .line 43
    :cond_b9
    :try_start_b9
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/apex/ApexSessionParams;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_c1
    .catchall {:try_start_b9 .. :try_end_c1} :catchall_b7

    .line 55
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/apex/ApexSessionParams;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_c1
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_ca

    .line 56
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 58
    :cond_ca
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 59
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 27
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 28
    iget v1, p0, Landroid/apex/ApexSessionParams;->sessionId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    iget-object v1, p0, Landroid/apex/ApexSessionParams;->childSessionIds:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 30
    iget-boolean v1, p0, Landroid/apex/ApexSessionParams;->hasRollbackEnabled:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-boolean v1, p0, Landroid/apex/ApexSessionParams;->isRollback:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    iget v1, p0, Landroid/apex/ApexSessionParams;->rollbackId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 34
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 35
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 37
    return-void
.end method
