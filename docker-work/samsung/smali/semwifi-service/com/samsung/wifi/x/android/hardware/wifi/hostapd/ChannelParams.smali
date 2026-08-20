.class public Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;
.super Ljava/lang/Object;
.source "ChannelParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public acsChannelFreqRangesMhz:[Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/FrequencyRange;

.field public acsShouldExcludeDfs:Z

.field public bandMask:I

.field public channel:I

.field public enableAcs:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams$1;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams$1;-><init>()V

    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->enableAcs:Z

    .line 10
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->acsShouldExcludeDfs:Z

    .line 11
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->channel:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 71
    :cond_4
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_19

    .line 73
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_c
    if-ge v0, v1, :cond_18

    aget-object v3, p1, v0

    .line 74
    invoke-direct {p0, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_18
    return v2

    .line 78
    :cond_19
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_24

    .line 79
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_24
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->acsChannelFreqRangesMhz:[Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/FrequencyRange;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->describeContents(Ljava/lang/Object;)I

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

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_9b

    .line 46
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_99

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 58
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 47
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->bandMask:I

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_99

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 58
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_3c
    :try_start_3c
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/FrequencyRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/FrequencyRange;

    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->acsChannelFreqRangesMhz:[Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/FrequencyRange;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4a
    .catchall {:try_start_3c .. :try_end_4a} :catchall_99

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_57

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_51

    goto :goto_1a

    .line 58
    :cond_51
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_57
    :try_start_57
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->enableAcs:Z

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_61
    .catchall {:try_start_57 .. :try_end_61} :catchall_99

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6e

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_68

    goto :goto_1a

    .line 58
    :cond_68
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_6e
    :try_start_6e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->acsShouldExcludeDfs:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_99

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_85

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7f

    goto :goto_1a

    .line 58
    :cond_7f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_85
    :try_start_85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->channel:I
    :try_end_8b
    .catchall {:try_start_85 .. :try_end_8b} :catchall_99

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_93

    add-int/2addr v0, v1

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 58
    :cond_93
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_99
    move-exception p0

    goto :goto_a3

    .line 45
    :cond_9b
    :try_start_9b
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a3
    .catchall {:try_start_9b .. :try_end_a3} :catchall_99

    :goto_a3
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_ac

    .line 58
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ac
    add-int/2addr v0, v1

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 61
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 29
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->bandMask:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->acsChannelFreqRangesMhz:[Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/FrequencyRange;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 32
    iget-boolean p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->enableAcs:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 33
    iget-boolean p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->acsShouldExcludeDfs:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 34
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/hostapd/ChannelParams;->channel:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 37
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
