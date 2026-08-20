.class public Landroid/net/ProvisioningConfigurationParcelable;
.super Ljava/lang/Object;
.source "ProvisioningConfigurationParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/ProvisioningConfigurationParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public apfCapabilities:Landroid/net/apf/ApfCapabilities;

.field public displayName:Ljava/lang/String;

.field public enableIPv4:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public enableIPv6:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public enablePreconnection:Z

.field public initialConfig:Landroid/net/InitialConfigurationParcelable;

.field public ipv4ProvisioningMode:I

.field public ipv6AddrGenMode:I

.field public ipv6ProvisioningMode:I

.field public layer2Info:Landroid/net/Layer2InformationParcelable;

.field public network:Landroid/net/Network;

.field public options:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/networkstack/aidl/dhcp/DhcpOption;",
            ">;"
        }
    .end annotation
.end field

.field public provisioningTimeoutMs:I

.field public requestedPreDhcpActionMs:I

.field public scanResultInfo:Landroid/net/ScanResultInfoParcelable;

.field public staticIpConfig:Landroid/net/StaticIpConfiguration;

.field public usingIpReachabilityMonitor:Z

.field public usingMultinetworkPolicyTracker:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Landroid/net/ProvisioningConfigurationParcelable$1;

    invoke-direct {v0}, Landroid/net/ProvisioningConfigurationParcelable$1;-><init>()V

    sput-object v0, Landroid/net/ProvisioningConfigurationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    .line 11
    iput-boolean v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    .line 13
    iput-boolean v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    .line 14
    iput-boolean v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    .line 15
    iput v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    .line 19
    iput v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    .line 20
    iput v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    .line 23
    iput-boolean v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    .line 27
    iput v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv4ProvisioningMode:I

    .line 28
    iput v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6ProvisioningMode:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 154
    :cond_4
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_1f

    .line 156
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 157
    invoke-direct {p0, v1}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_e

    :cond_1e
    return v0

    .line 161
    :cond_1f
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_2a

    .line 162
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_2a
    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 3

    .line 143
    iget-object v0, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    invoke-direct {p0, v0}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    .line 144
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v1}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 145
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-direct {p0, v1}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 146
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    invoke-direct {p0, v1}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 147
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    invoke-direct {p0, v1}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 148
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    invoke-direct {p0, v1}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 149
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    invoke-direct {p0, v1}, Landroid/net/ProvisioningConfigurationParcelable;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .registers 7

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_1e8

    .line 74
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_25

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1f

    :goto_1a
    add-int/2addr v0, v1

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 112
    :cond_1f
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_25
    :try_start_25
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_36

    goto :goto_1a

    .line 112
    :cond_36
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_3c
    :try_start_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_46
    .catchall {:try_start_3c .. :try_end_46} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_53

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4d

    goto :goto_1a

    .line 112
    :cond_4d
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 79
    :cond_53
    :try_start_53
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5d
    .catchall {:try_start_53 .. :try_end_5d} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_6a

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_64

    goto :goto_1a

    .line 112
    :cond_64
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 81
    :cond_6a
    :try_start_6a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_74
    .catchall {:try_start_6a .. :try_end_74} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_81

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_7b

    goto :goto_1a

    .line 112
    :cond_7b
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 83
    :cond_81
    :try_start_81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8b
    .catchall {:try_start_81 .. :try_end_8b} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_98

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_92

    goto :goto_1a

    .line 112
    :cond_92
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_98
    :try_start_98
    sget-object v2, Landroid/net/InitialConfigurationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/InitialConfigurationParcelable;

    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_a6
    .catchall {:try_start_98 .. :try_end_a6} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b4

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ae

    goto/16 :goto_1a

    .line 112
    :cond_ae
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 87
    :cond_b4
    :try_start_b4
    sget-object v2, Landroid/net/StaticIpConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/StaticIpConfiguration;

    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_c2
    .catchall {:try_start_b4 .. :try_end_c2} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_ca

    goto/16 :goto_1a

    .line 112
    :cond_ca
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 89
    :cond_d0
    :try_start_d0
    sget-object v2, Landroid/net/apf/ApfCapabilities;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/apf/ApfCapabilities;

    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_de
    .catchall {:try_start_d0 .. :try_end_de} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_ec

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e6

    goto/16 :goto_1a

    .line 112
    :cond_e6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_ec
    :try_start_ec
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_f6
    .catchall {:try_start_ec .. :try_end_f6} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_104

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_fe

    goto/16 :goto_1a

    .line 112
    :cond_fe
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_104
    :try_start_104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_10e
    .catchall {:try_start_104 .. :try_end_10e} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11c

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_116

    goto/16 :goto_1a

    .line 112
    :cond_116
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 95
    :cond_11c
    :try_start_11c
    sget-object v2, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Network;

    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_12a
    .catchall {:try_start_11c .. :try_end_12a} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_138

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_132

    goto/16 :goto_1a

    .line 112
    :cond_132
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_138
    :try_start_138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_142
    .catchall {:try_start_138 .. :try_end_142} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_150

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14a

    goto/16 :goto_1a

    .line 112
    :cond_14a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 99
    :cond_150
    :try_start_150
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    iput-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_15a
    .catchall {:try_start_150 .. :try_end_15a} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_168

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_162

    goto/16 :goto_1a

    .line 112
    :cond_162
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 101
    :cond_168
    :try_start_168
    sget-object v2, Landroid/net/ScanResultInfoParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ScanResultInfoParcelable;

    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_176
    .catchall {:try_start_168 .. :try_end_176} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_184

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_17e

    goto/16 :goto_1a

    .line 112
    :cond_17e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :cond_184
    :try_start_184
    sget-object v2, Landroid/net/Layer2InformationParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Layer2InformationParcelable;

    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_192
    .catchall {:try_start_184 .. :try_end_192} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1a0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_19a

    goto/16 :goto_1a

    .line 112
    :cond_19a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_1a0
    :try_start_1a0
    sget-object v2, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1ac
    .catchall {:try_start_1a0 .. :try_end_1ac} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1ba

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1b4

    goto/16 :goto_1a

    .line 112
    :cond_1b4
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_1ba
    :try_start_1ba
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv4ProvisioningMode:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1c4
    .catchall {:try_start_1ba .. :try_end_1c4} :catchall_1e6

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1d2

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1cc

    goto/16 :goto_1a

    .line 112
    :cond_1cc
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 109
    :cond_1d2
    :try_start_1d2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6ProvisioningMode:I
    :try_end_1d8
    .catchall {:try_start_1d2 .. :try_end_1d8} :catchall_1e6

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_1e0

    add-int/2addr v0, v1

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    .line 112
    :cond_1e0
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1e6
    move-exception p0

    goto :goto_1f0

    .line 73
    :cond_1e8
    :try_start_1e8
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1f0
    .catchall {:try_start_1e8 .. :try_end_1f0} :catchall_1e6

    :goto_1f0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_1f9

    .line 112
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1f9
    add-int/2addr v0, v1

    .line 114
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 115
    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 119
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ", "

    const-string/jumbo v2, "{"

    const-string/jumbo v3, "}"

    invoke-direct {v0, v1, v2, v3}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableIPv4: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableIPv6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usingMultinetworkPolicyTracker: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usingIpReachabilityMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestedPreDhcpActionMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initialConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "staticIpConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apfCapabilities: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "provisioningTimeoutMs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ipv6AddrGenMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enablePreconnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scanResultInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "layer2Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "options: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ipv4ProvisioningMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv4ProvisioningMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ipv6ProvisioningMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6ProvisioningMode:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.net.ProvisioningConfigurationParcelable"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    iget-boolean v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 46
    iget-boolean v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 47
    iget-boolean v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 48
    iget-boolean v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 49
    iget v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 51
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 52
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 53
    iget v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 56
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-boolean v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 58
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 59
    iget-object v1, p0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 60
    iget-object p2, p0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 61
    iget p2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv4ProvisioningMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget p0, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6ProvisioningMode:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
