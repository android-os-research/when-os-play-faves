.class public Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;
.super Ljava/lang/Object;
.source "HwModeParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enable6GhzBand:Z

.field public enable80211AC:Z

.field public enable80211AX:Z

.field public enable80211BE:Z

.field public enable80211N:Z

.field public enableEdmg:Z

.field public enableHeMultiUserBeamformer:Z

.field public enableHeSingleUserBeamformee:Z

.field public enableHeSingleUserBeamformer:Z

.field public enableHeTargetWakeTime:Z

.field public maximumChannelBandwidth:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams$1;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams$1;-><init>()V

    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable80211N:Z

    .line 8
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable80211AC:Z

    .line 9
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable80211AX:Z

    .line 10
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable6GhzBand:Z

    .line 11
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableHeSingleUserBeamformer:Z

    .line 12
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableHeSingleUserBeamformee:Z

    .line 13
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableHeMultiUserBeamformer:Z

    .line 14
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableHeTargetWakeTime:Z

    .line 15
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableEdmg:Z

    .line 16
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable80211BE:Z

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

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_126

    .line 58
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_124

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 82
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable80211N:Z

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_124

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 82
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable80211AC:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_124

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4d

    goto :goto_1a

    .line 82
    :cond_4d
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable80211AX:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_124

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_64

    goto :goto_1a

    .line 82
    :cond_64
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_6a
    :try_start_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable6GhzBand:Z

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_124

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_81

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7b

    goto :goto_1a

    .line 82
    :cond_7b
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_81
    :try_start_81
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableHeSingleUserBeamformer:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_124

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_98

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_92

    goto :goto_1a

    .line 82
    :cond_92
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_98
    :try_start_98
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableHeSingleUserBeamformee:Z

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a2
    .catchall {:try_start_98 .. :try_end_a2} :catchall_124

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_aa

    goto/16 :goto_1a

    .line 82
    :cond_aa
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_b0
    :try_start_b0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableHeMultiUserBeamformer:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_124

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_c8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c2

    goto/16 :goto_1a

    .line 82
    :cond_c2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_c8
    :try_start_c8
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableHeTargetWakeTime:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d2
    .catchall {:try_start_c8 .. :try_end_d2} :catchall_124

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_da

    goto/16 :goto_1a

    .line 82
    :cond_da
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_e0
    :try_start_e0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableEdmg:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_ea
    .catchall {:try_start_e0 .. :try_end_ea} :catchall_124

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f2

    goto/16 :goto_1a

    .line 82
    :cond_f2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_f8
    :try_start_f8
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable80211BE:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_102
    .catchall {:try_start_f8 .. :try_end_102} :catchall_124

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_110

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10a

    goto/16 :goto_1a

    .line 82
    :cond_10a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_110
    :try_start_110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->maximumChannelBandwidth:I
    :try_end_116
    .catchall {:try_start_110 .. :try_end_116} :catchall_124

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_11e

    add-int/2addr v0, v1

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 82
    :cond_11e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_124
    move-exception p0

    goto :goto_12e

    .line 57
    :cond_126
    :try_start_126
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_12e
    .catchall {:try_start_126 .. :try_end_12e} :catchall_124

    :goto_12e
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_137

    .line 82
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_137
    add-int/2addr v0, v1

    .line 84
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 85
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p2

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable80211N:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 37
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable80211AC:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 38
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable80211AX:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 39
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable6GhzBand:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 40
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableHeSingleUserBeamformer:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 41
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableHeSingleUserBeamformee:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 42
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableHeMultiUserBeamformer:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 43
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableHeTargetWakeTime:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 44
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enableEdmg:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 45
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->enable80211BE:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 46
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/HwModeParams;->maximumChannelBandwidth:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, p2

    .line 49
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
