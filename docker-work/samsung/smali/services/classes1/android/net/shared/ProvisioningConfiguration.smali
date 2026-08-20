.class public Landroid/net/shared/ProvisioningConfiguration;
.super Ljava/lang/Object;
.source "ProvisioningConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;,
        Landroid/net/shared/ProvisioningConfiguration$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT_MS:I = 0x4650

.field public static final IPV6_ADDR_GEN_MODE_EUI64:I = 0x0

.field public static final IPV6_ADDR_GEN_MODE_STABLE_PRIVACY:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ProvisioningConfiguration"

.field public static final VERSION_ADDED_PROVISIONING_ENUM:I = 0xc


# instance fields
.field public mApfCapabilities:Landroid/net/apf/ApfCapabilities;

.field public mDhcpOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/networkstack/aidl/dhcp/DhcpOption;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayName:Ljava/lang/String;

.field public mEnablePreconnection:Z

.field public mIPv4ProvisioningMode:I

.field public mIPv6AddrGenMode:I

.field public mIPv6ProvisioningMode:I

.field public mInitialConfig:Landroid/net/shared/InitialConfiguration;

.field public mLayer2Info:Landroid/net/shared/Layer2Information;

.field public mNetwork:Landroid/net/Network;

.field public mProvisioningTimeoutMs:I

.field public mRequestedPreDhcpActionMs:I

.field public mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

.field public mStaticIpConfig:Landroid/net/StaticIpConfiguration;

.field public mUsingIpReachabilityMonitor:Z

.field public mUsingMultinetworkPolicyTracker:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    const/4 v0, 0x1

    .line 467
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 468
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    const/16 v1, 0x4650

    .line 473
    iput v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    const/4 v1, 0x2

    .line 474
    iput v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    const/4 v2, 0x0

    .line 475
    iput-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 476
    iput-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 480
    iput v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 481
    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    return-void
.end method

.method public constructor <init>(Landroid/net/shared/ProvisioningConfiguration;)V
    .registers 5

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 466
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    const/4 v0, 0x1

    .line 467
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 468
    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    const/16 v1, 0x4650

    .line 473
    iput v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    const/4 v1, 0x2

    .line 474
    iput v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    const/4 v2, 0x0

    .line 475
    iput-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 476
    iput-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 480
    iput v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 481
    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    .line 486
    iget-boolean v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    .line 487
    iget-boolean v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 488
    iget-boolean v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iput-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 489
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 490
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    invoke-static {v0}, Landroid/net/shared/InitialConfiguration;->copy(Landroid/net/shared/InitialConfiguration;)Landroid/net/shared/InitialConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 491
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v0, :cond_38

    goto :goto_3f

    .line 493
    :cond_38
    new-instance v2, Landroid/net/StaticIpConfiguration;

    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v2, v0}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_3f
    iput-object v2, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 494
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 495
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 496
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 497
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 498
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 499
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 500
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    .line 501
    iget-object v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    iput-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    .line 502
    iget v0, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    iput v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 503
    iget p1, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    iput p1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    return-void
.end method

.method private static dhcpOptionEquals(Landroid/net/networkstack/aidl/dhcp/DhcpOption;Landroid/net/networkstack/aidl/dhcp/DhcpOption;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1d

    if-nez p1, :cond_a

    goto :goto_1d

    .line 629
    :cond_a
    iget-byte v2, p0, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->type:B

    iget-byte v3, p1, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->type:B

    if-ne v2, v3, :cond_1b

    iget-object p0, p0, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->value:[B

    iget-object p1, p1, Landroid/net/networkstack/aidl/dhcp/DhcpOption;->value:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    move v0, v1

    :goto_1c
    return v0

    :cond_1d
    :goto_1d
    return v1
.end method

.method private static dhcpOptionListEquals(Ljava/util/List;Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/networkstack/aidl/dhcp/DhcpOption;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/networkstack/aidl/dhcp/DhcpOption;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_33

    if-nez p1, :cond_a

    goto :goto_33

    .line 638
    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    return v1

    :cond_15
    move v2, v1

    .line 640
    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_32

    .line 641
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/networkstack/aidl/dhcp/DhcpOption;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/networkstack/aidl/dhcp/DhcpOption;

    invoke-static {v3, v4}, Landroid/net/shared/ProvisioningConfiguration;->dhcpOptionEquals(Landroid/net/networkstack/aidl/dhcp/DhcpOption;Landroid/net/networkstack/aidl/dhcp/DhcpOption;)Z

    move-result v3

    if-nez v3, :cond_2f

    return v1

    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_32
    return v0

    :cond_33
    :goto_33
    return v1
.end method

.method public static fromStableParcelable(Landroid/net/ProvisioningConfigurationParcelable;I)Landroid/net/shared/ProvisioningConfiguration;
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 545
    :cond_4
    new-instance v1, Landroid/net/shared/ProvisioningConfiguration;

    invoke-direct {v1}, Landroid/net/shared/ProvisioningConfiguration;-><init>()V

    .line 546
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    .line 547
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    .line 548
    iget-boolean v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    iput-boolean v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    .line 549
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    iput v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    .line 550
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    invoke-static {v2}, Landroid/net/shared/InitialConfiguration;->fromStableParcelable(Landroid/net/InitialConfigurationParcelable;)Landroid/net/shared/InitialConfiguration;

    move-result-object v2

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 551
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v2, :cond_27

    move-object v2, v0

    goto :goto_2e

    .line 553
    :cond_27
    new-instance v2, Landroid/net/StaticIpConfiguration;

    iget-object v3, p0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v2, v3}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_2e
    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 554
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 555
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    iput v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    .line 556
    iget v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    iput v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    .line 557
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 558
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 559
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    invoke-static {v2}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->fromStableParcelable(Landroid/net/ScanResultInfoParcelable;)Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    move-result-object v2

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 560
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    invoke-static {v2}, Landroid/net/shared/Layer2Information;->fromStableParcelable(Landroid/net/Layer2InformationParcelable;)Landroid/net/shared/Layer2Information;

    move-result-object v2

    iput-object v2, v1, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    .line 561
    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    if-nez v2, :cond_59

    goto :goto_60

    :cond_59
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_60
    iput-object v0, v1, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    const/16 v0, 0xc

    if-ge p1, v0, :cond_74

    .line 563
    iget-boolean p1, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    if-eqz p1, :cond_6c

    const/4 p1, 0x2

    goto :goto_6d

    :cond_6c
    const/4 p1, 0x0

    :goto_6d
    iput p1, v1, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 564
    iget-boolean p0, p0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    iput p0, v1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    goto :goto_7c

    .line 566
    :cond_74
    iget p1, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv4ProvisioningMode:I

    iput p1, v1, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    .line 567
    iget p0, p0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6ProvisioningMode:I

    iput p0, v1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    :goto_7c
    return-object v1
.end method

.method public static ipv4ProvisioningModeToString(I)Ljava/lang/String;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_c
    const-string p0, "dhcp"

    return-object p0

    :cond_f
    const-string/jumbo p0, "static"

    return-object p0

    :cond_13
    const-string p0, "disabled"

    return-object p0
.end method

.method public static ipv6ProvisioningModeToString(I)Ljava/lang/String;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p0, :cond_14

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const-string/jumbo p0, "unknown"

    return-object p0

    :cond_c
    const-string/jumbo p0, "link-local"

    return-object p0

    :cond_10
    const-string/jumbo p0, "slaac"

    return-object p0

    :cond_14
    const-string p0, "disabled"

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 648
    instance-of v0, p1, Landroid/net/shared/ProvisioningConfiguration;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 649
    :cond_6
    check-cast p1, Landroid/net/shared/ProvisioningConfiguration;

    .line 650
    iget-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    iget-boolean v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    if-ne v0, v2, :cond_89

    iget-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iget-boolean v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    if-ne v0, v2, :cond_89

    iget-boolean v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iget-boolean v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    if-ne v0, v2, :cond_89

    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iget v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    if-ne v0, v2, :cond_89

    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    .line 654
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 655
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 656
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iget v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    if-ne v0, v2, :cond_89

    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iget v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    if-ne v0, v2, :cond_89

    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    .line 659
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    .line 660
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    .line 661
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    .line 662
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget-object v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    iget-object v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    .line 663
    invoke-static {v0, v2}, Landroid/net/shared/ProvisioningConfiguration;->dhcpOptionListEquals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_89

    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    iget v2, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    if-ne v0, v2, :cond_89

    iget p0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    iget p1, p1, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    if-ne p0, p1, :cond_89

    const/4 v1, 0x1

    :cond_89
    return v1
.end method

.method public isValid()Z
    .registers 1

    .line 669
    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/net/shared/InitialConfiguration;->isValid()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public toStableParcelable()Landroid/net/ProvisioningConfigurationParcelable;
    .registers 6

    .line 510
    new-instance v0, Landroid/net/ProvisioningConfigurationParcelable;

    invoke-direct {v0}, Landroid/net/ProvisioningConfigurationParcelable;-><init>()V

    .line 511
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_d

    move v4, v2

    goto :goto_e

    :cond_d
    move v4, v3

    :goto_e
    iput-boolean v4, v0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv4:Z

    .line 512
    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->ipv4ProvisioningMode:I

    .line 513
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    if-eqz v1, :cond_17

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    iput-boolean v2, v0, Landroid/net/ProvisioningConfigurationParcelable;->enableIPv6:Z

    .line 514
    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6ProvisioningMode:I

    .line 515
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->enablePreconnection:Z

    .line 516
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->usingMultinetworkPolicyTracker:Z

    .line 517
    iget-boolean v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    iput-boolean v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->usingIpReachabilityMonitor:Z

    .line 518
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->requestedPreDhcpActionMs:I

    .line 519
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_33

    move-object v1, v2

    goto :goto_37

    :cond_33
    invoke-virtual {v1}, Landroid/net/shared/InitialConfiguration;->toStableParcelable()Landroid/net/InitialConfigurationParcelable;

    move-result-object v1

    :goto_37
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->initialConfig:Landroid/net/InitialConfigurationParcelable;

    .line 520
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    if-nez v1, :cond_3f

    move-object v1, v2

    goto :goto_46

    .line 522
    :cond_3f
    new-instance v1, Landroid/net/StaticIpConfiguration;

    iget-object v3, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-direct {v1, v3}, Landroid/net/StaticIpConfiguration;-><init>(Landroid/net/StaticIpConfiguration;)V

    :goto_46
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->staticIpConfig:Landroid/net/StaticIpConfiguration;

    .line 523
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->apfCapabilities:Landroid/net/apf/ApfCapabilities;

    .line 524
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->provisioningTimeoutMs:I

    .line 525
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    iput v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->ipv6AddrGenMode:I

    .line 526
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->network:Landroid/net/Network;

    .line 527
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->displayName:Ljava/lang/String;

    .line 528
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    if-nez v1, :cond_62

    move-object v1, v2

    goto :goto_66

    :cond_62
    invoke-virtual {v1}, Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;->toStableParcelable()Landroid/net/ScanResultInfoParcelable;

    move-result-object v1

    :goto_66
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->scanResultInfo:Landroid/net/ScanResultInfoParcelable;

    .line 529
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    if-nez v1, :cond_6e

    move-object v1, v2

    goto :goto_72

    :cond_6e
    invoke-virtual {v1}, Landroid/net/shared/Layer2Information;->toStableParcelable()Landroid/net/Layer2InformationParcelable;

    move-result-object v1

    :goto_72
    iput-object v1, v0, Landroid/net/ProvisioningConfigurationParcelable;->layer2Info:Landroid/net/Layer2InformationParcelable;

    .line 530
    iget-object v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    if-nez v1, :cond_79

    goto :goto_80

    :cond_79
    new-instance v2, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    invoke-direct {v2, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_80
    iput-object v2, v0, Landroid/net/ProvisioningConfigurationParcelable;->options:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 602
    iget v0, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv4ProvisioningMode:I

    invoke-static {v0}, Landroid/net/shared/ProvisioningConfiguration;->ipv4ProvisioningModeToString(I)Ljava/lang/String;

    move-result-object v0

    .line 603
    iget v1, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6ProvisioningMode:I

    invoke-static {v1}, Landroid/net/shared/ProvisioningConfiguration;->ipv6ProvisioningModeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 604
    new-instance v2, Ljava/util/StringJoiner;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ", "

    const-string/jumbo v5, "}"

    invoke-direct {v2, v4, v3, v5}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mEnablePreconnection: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mEnablePreconnection:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 605
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUsingMultinetworkPolicyTracker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingMultinetworkPolicyTracker:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 606
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUsingIpReachabilityMonitor: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mUsingIpReachabilityMonitor:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 607
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mRequestedPreDhcpActionMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mRequestedPreDhcpActionMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 608
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mInitialConfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mInitialConfig:Landroid/net/shared/InitialConfiguration;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 609
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mStaticIpConfig: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mStaticIpConfig:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 610
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mApfCapabilities: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mApfCapabilities:Landroid/net/apf/ApfCapabilities;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 611
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mProvisioningTimeoutMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mProvisioningTimeoutMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 612
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIPv6AddrGenMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mIPv6AddrGenMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 613
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mNetwork: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 614
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDisplayName: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 615
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mScanResultInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mScanResultInfo:Landroid/net/shared/ProvisioningConfiguration$ScanResultInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 616
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mLayer2Info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/net/shared/ProvisioningConfiguration;->mLayer2Info:Landroid/net/shared/Layer2Information;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 617
    invoke-virtual {v2, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mDhcpOptions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/shared/ProvisioningConfiguration;->mDhcpOptions:Ljava/util/List;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 618
    invoke-virtual {v2, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIPv4ProvisioningMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 619
    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIPv6ProvisioningMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-virtual {p0, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object p0

    .line 621
    invoke-virtual {p0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
