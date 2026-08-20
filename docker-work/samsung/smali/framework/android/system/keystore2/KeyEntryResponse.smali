.class public Landroid/system/keystore2/KeyEntryResponse;
.super Ljava/lang/Object;
.source "KeyEntryResponse.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/system/keystore2/KeyEntryResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

.field public blacklist metadata:Landroid/system/keystore2/KeyMetadata;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Landroid/system/keystore2/KeyEntryResponse$1;

    invoke-direct {v0}, Landroid/system/keystore2/KeyEntryResponse$1;-><init>()V

    sput-object v0, Landroid/system/keystore2/KeyEntryResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .registers 4
    .param p1, "_v"    # Ljava/lang/Object;

    .line 59
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 60
    :cond_4
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_10

    .line 61
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 63
    :cond_10
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 3

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "_mask":I
    iget-object v1, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-direct {p0, v1}, Landroid/system/keystore2/KeyEntryResponse;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 56
    return v0
.end method

.method public final blacklist getStability()I
    .registers 2

    .line 11
    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 8
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 38
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 40
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_62

    .line 41
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_60

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_26

    .line 46
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_20

    .line 49
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 41
    return-void

    .line 47
    :cond_20
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 42
    :cond_26
    :try_start_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/system/keystore2/IKeystoreSecurityLevel$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/keystore2/IKeystoreSecurityLevel;

    move-result-object v2

    iput-object v2, p0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_60

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_46

    .line 46
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_40

    .line 49
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 43
    return-void

    .line 47
    :cond_40
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 44
    :cond_46
    :try_start_46
    sget-object v2, Landroid/system/keystore2/KeyMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/keystore2/KeyMetadata;

    iput-object v2, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;
    :try_end_50
    .catchall {:try_start_46 .. :try_end_50} :catchall_60

    .line 46
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_5a

    .line 49
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
    nop

    .line 51
    return-void

    .line 47
    :cond_5a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 46
    :catchall_60
    move-exception v2

    goto :goto_6a

    .line 40
    :cond_62
    :try_start_62
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Landroid/system/keystore2/KeyEntryResponse;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_6a
    .catchall {:try_start_62 .. :try_end_6a} :catchall_60

    .line 46
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Landroid/system/keystore2/KeyEntryResponse;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_6a
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_73

    .line 47
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 49
    :cond_73
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 50
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
    iget-object v1, p0, Landroid/system/keystore2/KeyEntryResponse;->iSecurityLevel:Landroid/system/keystore2/IKeystoreSecurityLevel;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 29
    iget-object v1, p0, Landroid/system/keystore2/KeyEntryResponse;->metadata:Landroid/system/keystore2/KeyMetadata;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 31
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 32
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 34
    return-void
.end method
