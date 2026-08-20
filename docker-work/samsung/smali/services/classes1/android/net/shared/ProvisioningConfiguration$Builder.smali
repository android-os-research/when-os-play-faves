.class public Landroid/net/shared/ProvisioningConfiguration$Builder;
.super Ljava/lang/Object;
.source "ProvisioningConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/shared/ProvisioningConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mConfig:Landroid/net/shared/ProvisioningConfiguration;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Landroid/net/shared/ProvisioningConfiguration;

    invoke-direct {v0}, Landroid/net/shared/ProvisioningConfiguration;-><init>()V

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    return-void
.end method


# virtual methods
.method public build()Landroid/net/shared/ProvisioningConfiguration;
    .registers 3

    .line 276
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    if-nez v0, :cond_c

    goto :goto_14

    .line 278
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "IPv4 must be disabled in IPv6 link-localonly mode."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 281
    :cond_14
    :goto_14
    new-instance v0, Landroid/net/shared/ProvisioningConfiguration;

    invoke-direct {v0, p0}, Landroid/net/shared/ProvisioningConfiguration;-><init>(Landroid/net/shared/ProvisioningConfiguration;)V

    return-object v0
.end method

.method public withApfCapabilities(Landroid/net/apf/ApfCapabilities;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 186
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    return-object p0
.end method

.method public withDhcpOptions(Ljava/util/List;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/networkstack/aidl/dhcp/DhcpOption;",
            ">;)",
            "Landroid/net/shared/ProvisioningConfiguration$Builder;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    return-object p0
.end method

.method public withDisplayName(Ljava/lang/String;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 226
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public withInitialConfiguration(Landroid/net/shared/InitialConfiguration;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 169
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    return-object p0
.end method

.method public withIpv6LinkLocalOnly()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 268
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    return-object p0
.end method

.method public withLayer2Information(Landroid/net/shared/Layer2Information;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 245
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    return-object p0
.end method

.method public withNetwork(Landroid/net/Network;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 218
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public withPreDhcpAction()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 142
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/16 v1, 0x4650

    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    return-object p0
.end method

.method public withPreDhcpAction(I)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 153
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    return-object p0
.end method

.method public withPreconnection()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 161
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    return-object p0
.end method

.method public withProvisioningTimeoutMs(I)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 194
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    return-object p0
.end method

.method public withRandomMacAddress()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 202
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    return-object p0
.end method

.method public withScanResultInfo(Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 237
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    return-object p0
.end method

.method public withStableMacAddress()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 210
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    return-object p0
.end method

.method public withStaticConfiguration(Landroid/net/StaticIpConfiguration;)Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 4

    .line 177
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x1

    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 178
    iput-object p1, v0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    return-object p0
.end method

.method public withoutIPv4()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 107
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    return-object p0
.end method

.method public withoutIPv6()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 115
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    return-object p0
.end method

.method public withoutIpReachabilityMonitor()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 133
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    return-object p0
.end method

.method public withoutMultinetworkPolicyTracker()Landroid/net/shared/ProvisioningConfiguration$Builder;
    .registers 3

    .line 124
    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration$Builder;->mConfig:Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    return-object p0
.end method
