.class public Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;
.super Ljava/lang/Object;
.source "AssociationRejectionData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bssid:[B

.field public isMboAssocDisallowedReasonCodePresent:Z

.field public isOceRssiBasedAssocRejectAttrPresent:Z

.field public mboAssocDisallowedReason:B

.field public oceRssiBasedAssocRejectData:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/OceRssiBasedAssocRejectAttr;

.field public ssid:[B

.field public statusCode:I

.field public timedOut:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 17
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData$1;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData$1;-><init>()V

    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->timedOut:Z

    .line 11
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->isMboAssocDisallowedReasonCodePresent:Z

    .line 13
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->isOceRssiBasedAssocRejectAttrPresent:Z

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 83
    :cond_4
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_e

    .line 84
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_e
    return p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->oceRssiBasedAssocRejectData:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/OceRssiBasedAssocRejectAttr;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/lit8 p0, p0, 0x0

    return p0
.end method

.method public final getStability()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_e2

    .line 52
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 70
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->ssid:[B

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 70
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->bssid:[B

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4d

    goto :goto_1a

    .line 70
    :cond_4d
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->statusCode:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_64

    goto :goto_1a

    .line 70
    :cond_64
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_6a
    :try_start_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->timedOut:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_81

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7b

    goto :goto_1a

    .line 70
    :cond_7b
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_81
    :try_start_81
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->isMboAssocDisallowedReasonCodePresent:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_98

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_92

    goto :goto_1a

    .line 70
    :cond_92
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_98
    :try_start_98
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->mboAssocDisallowedReason:B

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a2
    .catchall {:try_start_98 .. :try_end_a2} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    goto/16 :goto_1a

    .line 70
    :cond_aa
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->isOceRssiBasedAssocRejectAttrPresent:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_e0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c2

    goto/16 :goto_1a

    .line 70
    :cond_c2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_c8
    :try_start_c8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/OceRssiBasedAssocRejectAttr;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/OceRssiBasedAssocRejectAttr;

    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->oceRssiBasedAssocRejectData:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/OceRssiBasedAssocRejectAttr;
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_e0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_da

    add-int/2addr v0, v1

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 70
    :cond_da
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_e0
    move-exception p0

    goto :goto_ea

    .line 51
    :cond_e2
    :try_start_e2
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_ea
    .catchall {:try_start_e2 .. :try_end_ea} :catchall_e0

    :goto_ea
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_f3

    .line 70
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f3
    add-int/2addr v0, v1

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->ssid:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 34
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->bssid:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 35
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->statusCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->timedOut:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 37
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->isMboAssocDisallowedReasonCodePresent:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 38
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->mboAssocDisallowedReason:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 39
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->isOceRssiBasedAssocRejectAttrPresent:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 40
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/AssociationRejectionData;->oceRssiBasedAssocRejectData:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/OceRssiBasedAssocRejectAttr;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
