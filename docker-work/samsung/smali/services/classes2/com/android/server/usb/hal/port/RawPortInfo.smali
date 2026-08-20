.class public final Lcom/android/server/usb/hal/port/RawPortInfo;
.super Ljava/lang/Object;
.source "RawPortInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/usb/hal/port/RawPortInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canChangeDataRole:Z

.field public canChangeMode:Z

.field public canChangePowerRole:Z

.field public contaminantDetectionStatus:I

.field public contaminantProtectionStatus:I

.field public currentDataRole:I

.field public currentMode:I

.field public currentPowerRole:I

.field public final portId:Ljava/lang/String;

.field public powerBrickConnectionStatus:I

.field public powerTransferLimited:Z

.field public final supportedContaminantProtectionModes:I

.field public final supportedModes:I

.field public supportsEnableContaminantPresenceDetection:Z

.field public supportsEnableContaminantPresenceProtection:Z

.field public usbDataStatus:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Lcom/android/server/usb/hal/port/RawPortInfo$1;

    invoke-direct {v0}, Lcom/android/server/usb/hal/port/RawPortInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/usb/hal/port/RawPortInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    .line 46
    iput p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    const/4 p1, 0x0

    .line 47
    iput p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    .line 48
    iput-boolean p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    .line 49
    iput p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    .line 50
    iput-boolean p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    .line 51
    iput p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    .line 52
    iput p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    .line 54
    iput-boolean p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    .line 55
    iput p1, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIZIZIZZIZIIZI)V
    .registers 19

    move-object v0, p0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 69
    iput-object v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    move v1, p2

    .line 70
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    move v1, p3

    .line 71
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    move v1, p4

    .line 72
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    move v1, p5

    .line 73
    iput-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    move v1, p6

    .line 74
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    move v1, p7

    .line 75
    iput-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    move v1, p8

    .line 76
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    move v1, p9

    .line 77
    iput-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    move v1, p10

    .line 78
    iput-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    move v1, p11

    .line 80
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    move v1, p12

    .line 81
    iput-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    move v1, p13

    .line 83
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    move/from16 v1, p14

    .line 84
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    move/from16 v1, p15

    .line 85
    iput-boolean v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    move/from16 v1, p16

    .line 86
    iput v1, v0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 96
    iget-object p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->portId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedModes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportedContaminantProtectionModes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeMode:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentPowerRole:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangePowerRole:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 103
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->currentDataRole:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->canChangeDataRole:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 105
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceProtection:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 106
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantProtectionStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->supportsEnableContaminantPresenceDetection:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 108
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->contaminantDetectionStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->usbDataStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-boolean p2, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerTransferLimited:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 111
    iget p0, p0, Lcom/android/server/usb/hal/port/RawPortInfo;->powerBrickConnectionStatus:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
