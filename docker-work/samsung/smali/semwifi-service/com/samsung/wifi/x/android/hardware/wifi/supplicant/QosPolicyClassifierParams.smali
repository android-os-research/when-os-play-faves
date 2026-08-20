.class public Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;
.super Ljava/lang/Object;
.source "QosPolicyClassifierParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public classifierParamMask:I

.field public domainName:Ljava/lang/String;

.field public dstIp:[B

.field public dstPortRange:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;

.field public flowLabelIpv6:[B

.field public ipVersion:B

.field public protocolNextHdr:B

.field public srcIp:[B

.field public srcPort:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 18
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams$1;

    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams$1;-><init>()V

    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->srcPort:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 87
    :cond_4
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_e

    .line 88
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_e
    return p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 82
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dstPortRange:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->describeContents(Ljava/lang/Object;)I

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

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_fa

    .line 54
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 74
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->ipVersion:B

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 74
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 57
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->classifierParamMask:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4d

    goto :goto_1a

    .line 74
    :cond_4d
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->srcIp:[B

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_64

    goto :goto_1a

    .line 74
    :cond_64
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_6a
    :try_start_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dstIp:[B

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_81

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7b

    goto :goto_1a

    .line 74
    :cond_7b
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_81
    :try_start_81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->srcPort:I

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_98

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_92

    goto :goto_1a

    .line 74
    :cond_92
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 65
    :cond_98
    :try_start_98
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;

    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dstPortRange:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a6
    .catchall {:try_start_98 .. :try_end_a6} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b4

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ae

    goto/16 :goto_1a

    .line 74
    :cond_ae
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 67
    :cond_b4
    :try_start_b4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->protocolNextHdr:B

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_be
    .catchall {:try_start_b4 .. :try_end_be} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_cc

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c6

    goto/16 :goto_1a

    .line 74
    :cond_c6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 69
    :cond_cc
    :try_start_cc
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->flowLabelIpv6:[B

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_d6
    .catchall {:try_start_cc .. :try_end_d6} :catchall_f8

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_e4

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_de

    goto/16 :goto_1a

    .line 74
    :cond_de
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_e4
    :try_start_e4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->domainName:Ljava/lang/String;
    :try_end_ea
    .catchall {:try_start_e4 .. :try_end_ea} :catchall_f8

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_f2

    add-int/2addr v0, v1

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 74
    :cond_f2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_f8
    move-exception p0

    goto :goto_102

    .line 53
    :cond_fa
    :try_start_fa
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_102
    .catchall {:try_start_fa .. :try_end_102} :catchall_f8

    :goto_102
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_10b

    .line 74
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10b
    add-int/2addr v0, v1

    .line 76
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 77
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 34
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->ipVersion:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 35
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->classifierParamMask:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->srcIp:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 37
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dstIp:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 38
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->srcPort:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dstPortRange:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 40
    iget-byte p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->protocolNextHdr:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 41
    iget-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->flowLabelIpv6:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 42
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->domainName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 45
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
