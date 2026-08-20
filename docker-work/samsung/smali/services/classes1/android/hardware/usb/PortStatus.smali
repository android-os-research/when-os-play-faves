.class public Landroid/hardware/usb/PortStatus;
.super Ljava/lang/Object;
.source "PortStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/PortStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canChangeDataRole:Z

.field public canChangeMode:Z

.field public canChangePowerRole:Z

.field public contaminantDetectionStatus:B

.field public contaminantProtectionStatus:B

.field public currentDataRole:B

.field public currentMode:B

.field public currentPowerRole:B

.field public portName:Ljava/lang/String;

.field public powerBrickStatus:B

.field public powerTransferLimited:Z

.field public supportedContaminantProtectionModes:[B

.field public supportedModes:[B

.field public supportsEnableContaminantPresenceDetection:Z

.field public supportsEnableContaminantPresenceProtection:Z

.field public usbDataStatus:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Landroid/hardware/usb/PortStatus$1;

    invoke-direct {v0}, Landroid/hardware/usb/PortStatus$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/PortStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    .line 9
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->currentPowerRole:B

    .line 10
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->currentMode:B

    .line 11
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->canChangeMode:Z

    .line 12
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->canChangeDataRole:Z

    .line 13
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->canChangePowerRole:Z

    .line 16
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 17
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->contaminantProtectionStatus:B

    .line 18
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 19
    iput-byte v0, p0, Landroid/hardware/usb/PortStatus;->contaminantDetectionStatus:B

    .line 21
    iput-boolean v0, p0, Landroid/hardware/usb/PortStatus;->powerTransferLimited:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getStability()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_19e

    .line 68
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 102
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->portName:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 102
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4d

    goto :goto_1a

    .line 102
    :cond_4d
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->currentPowerRole:B

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_64

    goto :goto_1a

    .line 102
    :cond_64
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_6a
    :try_start_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->currentMode:B

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_81

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7b

    goto :goto_1a

    .line 102
    :cond_7b
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_81
    :try_start_81
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->canChangeMode:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_98

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_92

    goto :goto_1a

    .line 102
    :cond_92
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_98
    :try_start_98
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->canChangeDataRole:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a2
    .catchall {:try_start_98 .. :try_end_a2} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    goto/16 :goto_1a

    .line 102
    :cond_aa
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->canChangePowerRole:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c2

    goto/16 :goto_1a

    .line 102
    :cond_c2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_c8
    :try_start_c8
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->supportedModes:[B

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_da

    goto/16 :goto_1a

    .line 102
    :cond_da
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_e0
    :try_start_e0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->supportedContaminantProtectionModes:[B

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ea
    .catchall {:try_start_e0 .. :try_end_ea} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f2

    goto/16 :goto_1a

    .line 102
    :cond_f2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_f8
    :try_start_f8
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_102
    .catchall {:try_start_f8 .. :try_end_102} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_110

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10a

    goto/16 :goto_1a

    .line 102
    :cond_10a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_110
    :try_start_110
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->contaminantProtectionStatus:B

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_11a
    .catchall {:try_start_110 .. :try_end_11a} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_128

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_122

    goto/16 :goto_1a

    .line 102
    :cond_122
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_128
    :try_start_128
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_132
    .catchall {:try_start_128 .. :try_end_132} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_140

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_13a

    goto/16 :goto_1a

    .line 102
    :cond_13a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_140
    :try_start_140
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->contaminantDetectionStatus:B

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14a
    .catchall {:try_start_140 .. :try_end_14a} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_158

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_152

    goto/16 :goto_1a

    .line 102
    :cond_152
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_158
    :try_start_158
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/usb/PortStatus;->usbDataStatus:[B

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_162
    .catchall {:try_start_158 .. :try_end_162} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_170

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_16a

    goto/16 :goto_1a

    .line 102
    :cond_16a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_170
    :try_start_170
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/usb/PortStatus;->powerTransferLimited:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_17a
    .catchall {:try_start_170 .. :try_end_17a} :catchall_19c

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_188

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_182

    goto/16 :goto_1a

    .line 102
    :cond_182
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_188
    :try_start_188
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Landroid/hardware/usb/PortStatus;->powerBrickStatus:B
    :try_end_18e
    .catchall {:try_start_188 .. :try_end_18e} :catchall_19c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_196

    add-int/2addr v0, v1

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 102
    :cond_196
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_19c
    move-exception p0

    goto :goto_1a6

    .line 67
    :cond_19e
    :try_start_19e
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1a6
    .catchall {:try_start_19e .. :try_end_1a6} :catchall_19c

    :goto_1a6
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1af

    .line 102
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1af
    add-int/2addr v0, v1

    .line 104
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 105
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Landroid/hardware/usb/PortStatus;->portName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-byte v0, p0, Landroid/hardware/usb/PortStatus;->currentDataRole:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    iget-byte v0, p0, Landroid/hardware/usb/PortStatus;->currentPowerRole:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 44
    iget-byte v0, p0, Landroid/hardware/usb/PortStatus;->currentMode:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 45
    iget-boolean v0, p0, Landroid/hardware/usb/PortStatus;->canChangeMode:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 46
    iget-boolean v0, p0, Landroid/hardware/usb/PortStatus;->canChangeDataRole:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 47
    iget-boolean v0, p0, Landroid/hardware/usb/PortStatus;->canChangePowerRole:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 48
    iget-object v0, p0, Landroid/hardware/usb/PortStatus;->supportedModes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 49
    iget-object v0, p0, Landroid/hardware/usb/PortStatus;->supportedContaminantProtectionModes:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 50
    iget-boolean v0, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceProtection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 51
    iget-byte v0, p0, Landroid/hardware/usb/PortStatus;->contaminantProtectionStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 52
    iget-boolean v0, p0, Landroid/hardware/usb/PortStatus;->supportsEnableContaminantPresenceDetection:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 53
    iget-byte v0, p0, Landroid/hardware/usb/PortStatus;->contaminantDetectionStatus:B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 54
    iget-object v0, p0, Landroid/hardware/usb/PortStatus;->usbDataStatus:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 55
    iget-boolean v0, p0, Landroid/hardware/usb/PortStatus;->powerTransferLimited:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 56
    iget-byte p0, p0, Landroid/hardware/usb/PortStatus;->powerBrickStatus:B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    .line 59
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
