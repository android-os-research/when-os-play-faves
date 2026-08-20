.class public Landroid/security/metrics/KeyCreationWithGeneralInfo;
.super Ljava/lang/Object;
.source "KeyCreationWithGeneralInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/security/metrics/KeyCreationWithGeneralInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist algorithm:I

.field public blacklist attestation_requested:Z

.field public blacklist ec_curve:I

.field public blacklist error_code:I

.field public blacklist key_origin:I

.field public blacklist key_size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Landroid/security/metrics/KeyCreationWithGeneralInfo$1;

    invoke-direct {v0}, Landroid/security/metrics/KeyCreationWithGeneralInfo$1;-><init>()V

    sput-object v0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_size:I

    .line 15
    iput v0, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->error_code:I

    .line 16
    iput-boolean v0, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->attestation_requested:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, "_mask":I
    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 47
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 49
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_ca

    .line 50
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    return-void

    .line 64
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 51
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->algorithm:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_42

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_3c

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    return-void

    .line 64
    :cond_3c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 53
    :cond_42
    :try_start_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_size:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5e

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_58

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    return-void

    .line 64
    :cond_58
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :cond_5e
    :try_start_5e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->ec_curve:I

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7a

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_74

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 64
    :cond_74
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_7a
    :try_start_7a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_origin:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_84
    .catchall {:try_start_7a .. :try_end_84} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_96

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_90

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 64
    :cond_90
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_96
    :try_start_96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->error_code:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a0
    .catchall {:try_start_96 .. :try_end_a0} :catchall_c8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b2

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ac

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 64
    :cond_ac
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_b2
    :try_start_b2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->attestation_requested:Z
    :try_end_b8
    .catchall {:try_start_b2 .. :try_end_b8} :catchall_c8

    .line 63
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c2

    .line 66
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    nop

    .line 68
    return-void

    .line 64
    :cond_c2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :catchall_c8
    move-exception v2

    goto :goto_d2

    .line 49
    :cond_ca
    :try_start_ca
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/security/metrics/KeyCreationWithGeneralInfo;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_c8

    .line 63
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/security/metrics/KeyCreationWithGeneralInfo;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_d2
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_db

    .line 64
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_db
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 67
    throw v2
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 32
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget v1, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->algorithm:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget v1, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_size:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v1, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->ec_curve:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v1, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->key_origin:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget v1, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->error_code:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget-boolean v1, p0, Landroid/security/metrics/KeyCreationWithGeneralInfo;->attestation_requested:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 40
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    return-void
.end method
