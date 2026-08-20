.class public Lcom/android/server/enterprise/firewall/FirewallUtils;
.super Ljava/lang/Object;
.source "FirewallUtils.java"


# static fields
.field public static final PACKAGE_EXCEPTION_KEYWORDS:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "FirewallUtils"


# direct methods
.method public static constructor <clinit>()V
    .registers 9

    const-string v0, ".mdm."

    const-string v1, ".knox."

    const-string v2, ".elm."

    const-string v3, ".edm."

    const-string v4, "com.android.captiveportallogin"

    const-string v5, ".klm"

    const-string v6, ".spay"

    const-string v7, ".ucm"

    const-string v8, ".ucs"

    .line 54
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallUtils;->PACKAGE_EXCEPTION_KEYWORDS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertAddressType(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;
    .registers 2

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    return-object p0

    .line 151
    :cond_9
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 152
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    return-object p0

    .line 153
    :cond_18
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 154
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    return-object p0

    .line 156
    :cond_27
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    return-object p0
.end method

.method public static convertDirection(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Direction;
    .registers 2

    .line 67
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    return-object p0

    .line 68
    :cond_9
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->INPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 69
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->INPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    return-object p0

    .line 70
    :cond_18
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->OUTPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 71
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->OUTPUT:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    return-object p0

    .line 72
    :cond_27
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->FORWARD:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_36

    .line 73
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->FORWARD:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    return-object p0

    .line 75
    :cond_36
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    return-object p0
.end method

.method public static convertNetworkInterface(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;
    .registers 2

    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    return-object p0

    .line 87
    :cond_9
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 88
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    return-object p0

    .line 89
    :cond_18
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 90
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    return-object p0

    .line 92
    :cond_27
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    return-object p0
.end method

.method public static convertNetworkInterfaceForIptables(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)Ljava/lang/String;
    .registers 4

    .line 728
    invoke-static {}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAllNetworkInterfaces()Ljava/util/Set;

    move-result-object v0

    .line 729
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    const-string/jumbo p0, "rmnet"

    const-string v1, "ccinet"

    .line 730
    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string/jumbo v1, "net"

    const-string/jumbo v2, "rmnet+"

    .line 731
    invoke-static {v0, p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getBestEffortInterfaceName(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 733
    :cond_24
    sget-object v1, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string/jumbo p0, "wlan"

    .line 734
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string/jumbo v1, "lan"

    const-string/jumbo v2, "wlan+"

    .line 735
    invoke-static {v0, p0, v1, v2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getBestEffortInterfaceName(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_42
    const-string p0, ""

    return-object p0
.end method

.method public static convertPortLocation(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;
    .registers 2

    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    return-object p0

    .line 104
    :cond_9
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->LOCAL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 105
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->LOCAL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    return-object p0

    .line 106
    :cond_18
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->REMOTE:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 107
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->REMOTE:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    return-object p0

    .line 109
    :cond_27
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    return-object p0
.end method

.method public static convertProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;
    .registers 2

    .line 119
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 120
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    return-object p0

    .line 121
    :cond_f
    sget-object v0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->UDP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    .line 122
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->UDP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    return-object p0

    .line 124
    :cond_1e
    sget-object p0, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    return-object p0
.end method

.method public static convertStatus(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;
    .registers 2

    .line 134
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    return-object p0

    .line 135
    :cond_9
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 136
    sget-object p0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    return-object p0

    .line 137
    :cond_18
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->PENDING:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {v0}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_27

    .line 138
    sget-object p0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->PENDING:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    return-object p0

    .line 140
    :cond_27
    sget-object p0, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->DISABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    return-object p0
.end method

.method public static filterRulesByUser(ILjava/lang/String;)Ljava/lang/String;
    .registers 13

    const-string v0, "-"

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_e

    .line 438
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 439
    :cond_e
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "\n"

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_15
    :goto_15
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_98

    .line 442
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v4, "owner UID match"

    .line 443
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2b

    goto :goto_8e

    :cond_2b
    add-int/lit8 v4, v4, 0xf

    .line 448
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 450
    :try_start_35
    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_80

    .line 451
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 452
    aget-object v7, v4, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 454
    aget-object v9, v4, v6

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-gt v9, v5, :cond_67

    .line 457
    aget-object v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    goto :goto_79

    .line 460
    :cond_67
    aget-object v4, v4, v6

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    :goto_79
    if-lt p0, v7, :cond_7e

    if-gt p0, v4, :cond_7e

    goto :goto_8e

    :cond_7e
    move v6, v8

    goto :goto_8e

    .line 466
    :cond_80
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4
    :try_end_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_8c} :catch_8e

    if-ne p0, v4, :cond_7e

    :catch_8e
    :goto_8e
    if-eqz v6, :cond_15

    .line 475
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_15

    .line 479
    :cond_98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAllNetworkInterfaces()Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 742
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 744
    :try_start_5
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    if-eqz v1, :cond_39

    .line 746
    :cond_b
    :goto_b
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 747
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/NetworkInterface;

    .line 748
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 749
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    .line 750
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_2e} :catch_2f

    goto :goto_b

    :catch_2f
    move-exception v1

    .line 755
    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirewallUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    return-object v0
.end method

.method public static getAllUsers(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 642
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "user"

    .line 643
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-eqz p0, :cond_34

    .line 645
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 646
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 647
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 648
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_34
    return-object v0
.end method

.method public static getAppOrUserUid(Lcom/samsung/android/knox/net/firewall/FirewallRule;Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 4

    .line 667
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 668
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPackageUid()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    .line 667
    invoke-static {v0, p1, p0, v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAppOrUserUid(Ljava/lang/String;ILjava/lang/Integer;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppOrUserUid(Ljava/lang/String;ILjava/lang/Integer;Z)Ljava/lang/String;
    .registers 6

    const-string v0, " -m owner --uid-owner "

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    const-string v1, "*"

    .line 679
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    const p0, 0x1869f

    if-nez p1, :cond_1a

    if-eqz p3, :cond_17

    const/16 p1, 0x2710

    goto :goto_1f

    :cond_17
    const/16 p1, 0x3e9

    goto :goto_1f

    :cond_1a
    const p2, 0x186a0

    mul-int/2addr p1, p2

    add-int/2addr p0, p1

    .line 691
    :goto_1f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_71

    .line 692
    :cond_37
    sget-object p3, Lcom/android/server/enterprise/firewall/FirewallDefinitions;->EXEMPT_PACKAGE_LIST:Ljava/util/Map;

    invoke-interface {p3, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 693
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_71

    :cond_53
    if-eqz p2, :cond_5c

    .line 695
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v1, -0x1

    if-ne p3, v1, :cond_60

    .line 696
    :cond_5c
    invoke-static {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidForApplication(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object p2

    :cond_60
    if-eqz p2, :cond_71

    .line 699
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_71
    :goto_71
    return-object v0
.end method

.method public static getAppOrUserUid(Ljava/lang/String;IZ)Ljava/lang/String;
    .registers 4

    const/4 v0, -0x1

    .line 671
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAppOrUserUid(Ljava/lang/String;ILjava/lang/Integer;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppOrUserUid(Ljava/lang/String;Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;
    .registers 3

    .line 663
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getAppOrUserUid(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBestEffortInterfaceName(Ljava/util/Set;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 764
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "+"

    if-eqz v1, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 765
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 766
    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 767
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 773
    :cond_38
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 774
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 775
    sget-object p0, Lcom/android/server/enterprise/firewall/FirewallDefinitions;->PATTERN_NUMERAL_ENDING_SUFIX:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_59
    return-object p3
.end method

.method public static getContentValuesFromRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;I)Landroid/content/ContentValues;
    .registers 15

    .line 167
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_20

    .line 169
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "adminUid"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStatus()Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_20
    sget-object p1, Lcom/android/server/enterprise/firewall/FirewallUtils$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getRuleType()Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x1

    const-string v2, "direction"

    const-string/jumbo v3, "portLocation"

    const-string/jumbo v4, "networkInterfaceStr"

    const-string/jumbo v5, "signature"

    const-string v6, "addressType"

    const-string/jumbo v7, "protocol"

    const-string/jumbo v8, "networkInterface"

    const-string/jumbo v9, "packageName"

    const-string/jumbo v10, "portNumber"

    const-string/jumbo v11, "ipAddress"

    const-string/jumbo v12, "ruleType"

    if-eq p1, v1, :cond_1c4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_143

    const/4 v1, 0x3

    if-eq p1, v1, :cond_c4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_59

    goto/16 :goto_243

    .line 223
    :cond_59
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v12, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_90

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_90
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_243

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_243

    .line 207
    :cond_c4
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v12, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_fb

    .line 212
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_fb
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetIpAddress()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "targetIpAddress"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getTargetPortNumber()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "targetPortNumber"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_243

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_243

    .line 191
    :cond_143
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v12, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_185

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    :cond_185
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_243

    .line 204
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_243

    .line 175
    :cond_1c4
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v12, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getIpAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v11, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortNumber()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v10, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getPortLocation()Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v9, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_206

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getApplication()Lcom/samsung/android/knox/AppIdentity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_206
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getNetworkInterface()Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getDirection()Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$Direction;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getProtocol()Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getAddressType()Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v6, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_243

    .line 188
    invoke-virtual {p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->getStrNetworkInterface()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v4, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_243
    :goto_243
    return-object v0
.end method

.method public static getRuleFromContentValues(Ljava/util/List;Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)[Lcom/samsung/android/knox/net/firewall/FirewallRule;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;",
            "Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;",
            ")[",
            "Lcom/samsung/android/knox/net/firewall/FirewallRule;"
        }
    .end annotation

    .line 245
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/samsung/android/knox/net/firewall/FirewallRule;

    .line 247
    sget-object v1, Lcom/android/server/enterprise/firewall/FirewallUtils$1;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "direction"

    const-string/jumbo v3, "portLocation"

    const-string/jumbo v4, "networkInterfaceStr"

    const-string/jumbo v5, "id"

    const-string/jumbo v6, "status"

    const-string/jumbo v7, "protocol"

    const-string/jumbo v8, "networkInterface"

    const-string/jumbo v9, "signature"

    const-string/jumbo v10, "packageName"

    const-string/jumbo v11, "portNumber"

    const-string/jumbo v12, "ipAddress"

    const-string v13, "addressType"

    const/4 v14, 0x1

    if-eq v1, v14, :cond_1f1

    const/4 v15, 0x2

    if-eq v1, v15, :cond_150

    const/4 v2, 0x3

    if-eq v1, v2, :cond_bd

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3e

    goto/16 :goto_294

    .line 329
    :cond_3e
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v15, 0x0

    :goto_43
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_294

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 330
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    sget-object v14, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 332
    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 p0, v1

    .line 331
    invoke-static/range {v16 .. v16}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertAddressType(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v1

    invoke-direct {v3, v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    .line 333
    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 335
    new-instance v1, Lcom/samsung/android/knox/AppIdentity;

    .line 336
    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v10

    .line 337
    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v14, v10}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    .line 340
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterface(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)V

    .line 342
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setProtocol(Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;)V

    .line 344
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertStatus(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 345
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setId(I)V

    .line 346
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStrNetworkInterface(Ljava/lang/String;)V

    .line 347
    aput-object v3, v0, v15

    const/4 v1, 0x1

    add-int/2addr v15, v1

    move v14, v1

    move-object/from16 v10, v16

    move-object/from16 v1, p0

    goto :goto_43

    :cond_bd
    move-object/from16 v16, v10

    .line 304
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v15, 0x0

    :goto_c4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_294

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 305
    new-instance v3, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    sget-object v10, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 307
    invoke-virtual {v2, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 306
    invoke-static {v14}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertAddressType(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v14

    invoke-direct {v3, v10, v14}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    .line 308
    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    const-string/jumbo v10, "targetIpAddress"

    .line 310
    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setTargetIpAddress(Ljava/lang/String;)V

    const-string/jumbo v10, "targetPortNumber"

    .line 311
    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setTargetPortNumber(Ljava/lang/String;)V

    .line 312
    new-instance v10, Lcom/samsung/android/knox/AppIdentity;

    move-object/from16 p0, v1

    move-object/from16 v14, v16

    .line 313
    invoke-virtual {v2, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v10, v1, v14}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-virtual {v3, v10}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    .line 317
    invoke-virtual {v2, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterface(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)V

    .line 319
    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setProtocol(Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;)V

    .line 321
    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertStatus(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 322
    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setId(I)V

    .line 323
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStrNetworkInterface(Ljava/lang/String;)V

    .line 324
    aput-object v3, v0, v15

    const/4 v1, 0x1

    add-int/2addr v15, v1

    move-object/from16 v1, p0

    goto/16 :goto_c4

    :cond_150
    move-object/from16 v16, v10

    .line 277
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v15, 0x0

    :goto_157
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_294

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 278
    new-instance v14, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    move-object/from16 p0, v1

    sget-object v1, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    .line 280
    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v18, v13

    .line 279
    invoke-static/range {v17 .. v17}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertAddressType(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v13

    invoke-direct {v14, v1, v13}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    .line 281
    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v10, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertPortLocation(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortLocation(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)V

    .line 285
    new-instance v1, Lcom/samsung/android/knox/AppIdentity;

    move-object/from16 v13, v16

    move-object/from16 v16, v3

    .line 286
    invoke-virtual {v10, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v13

    .line 287
    invoke-virtual {v10, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v1, v3, v13}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    .line 290
    invoke-virtual {v10, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterface(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)V

    .line 292
    invoke-virtual {v10, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertDirection(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setDirection(Lcom/samsung/android/knox/net/firewall/Firewall$Direction;)V

    .line 294
    invoke-virtual {v10, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setProtocol(Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;)V

    .line 296
    invoke-virtual {v10, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertStatus(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 297
    invoke-virtual {v10, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setId(I)V

    .line 298
    invoke-virtual {v10, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStrNetworkInterface(Ljava/lang/String;)V

    .line 299
    aput-object v14, v0, v15

    const/4 v1, 0x1

    add-int/2addr v15, v1

    move-object/from16 v1, p0

    move-object/from16 v3, v16

    move-object/from16 v16, v17

    move-object/from16 v13, v18

    goto/16 :goto_157

    :cond_1f1
    move-object/from16 v16, v3

    move-object/from16 v17, v10

    move-object/from16 v18, v13

    .line 250
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v15, 0x0

    :goto_1fc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_294

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 251
    new-instance v10, Lcom/samsung/android/knox/net/firewall/FirewallRule;

    sget-object v13, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-object/from16 v14, v18

    .line 253
    invoke-virtual {v3, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 p0, v1

    .line 252
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertAddressType(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v1

    invoke-direct {v10, v13, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;-><init>(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;)V

    .line 254
    invoke-virtual {v3, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setIpAddress(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortNumber(Ljava/lang/String;)V

    move-object/from16 v1, v16

    .line 257
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 256
    invoke-static {v13}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertPortLocation(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setPortLocation(Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;)V

    .line 258
    new-instance v13, Lcom/samsung/android/knox/AppIdentity;

    move-object/from16 p1, v11

    move-object/from16 v1, v17

    .line 259
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 260
    invoke-virtual {v3, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v11, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual {v10, v13}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setApplication(Lcom/samsung/android/knox/AppIdentity;)V

    .line 263
    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertNetworkInterface(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setNetworkInterface(Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;)V

    .line 265
    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertDirection(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Direction;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setDirection(Lcom/samsung/android/knox/net/firewall/Firewall$Direction;)V

    .line 267
    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertProtocol(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setProtocol(Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;)V

    .line 269
    invoke-virtual {v3, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-static {v1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->convertStatus(Ljava/lang/String;)Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStatus(Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;)V

    .line 270
    invoke-virtual {v3, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setId(I)V

    .line 271
    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/samsung/android/knox/net/firewall/FirewallRule;->setStrNetworkInterface(Ljava/lang/String;)V

    .line 272
    aput-object v10, v0, v15

    const/4 v1, 0x1

    add-int/2addr v15, v1

    move-object/from16 v1, p0

    move-object/from16 v11, p1

    move-object/from16 v18, v14

    goto/16 :goto_1fc

    :cond_294
    :goto_294
    return-object v0
.end method

.method public static getTableByRuletype(Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;)Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
    .registers 2

    .line 628
    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    sget-object v0, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_14

    .line 631
    :cond_11
    sget-object p0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->NAT:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    return-object p0

    .line 629
    :cond_14
    :goto_14
    sget-object p0, Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;->FILTER:Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;

    return-object p0
.end method

.method public static getUidForApplication(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 8

    const-string/jumbo v0, "package"

    .line 707
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 706
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 709
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    .line 711
    :try_start_12
    invoke-interface {v0, p0, v3, v4, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_1c
    .catchall {:try_start_12 .. :try_end_16} :catchall_1a

    .line 715
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3b

    :catchall_1a
    move-exception p0

    goto :goto_45

    :catch_1c
    move-exception p0

    :try_start_1d
    const-string p1, "FirewallUtils"

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception on get getApplicationInfo"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_1a

    .line 715
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p0, v5

    :goto_3b
    if-nez p0, :cond_3e

    goto :goto_44

    .line 717
    :cond_3e
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_44
    return-object v5

    .line 715
    :goto_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 716
    throw p0
.end method

.method public static getUidsToExemptForUser(ILandroid/content/Context;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 791
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 793
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/16 v3, 0x40

    .line 795
    :try_start_a
    invoke-virtual {v0, v3, p0}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 796
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_3f

    if-eqz v0, :cond_17

    goto :goto_1f

    .line 801
    :cond_17
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 803
    invoke-static {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getUidsToExemptFromPackages(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_1f
    :goto_1f
    :try_start_1f
    const-string p1, "FirewallUtils"

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packages list is either null or empty "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V
    :try_end_3b
    .catchall {:try_start_1f .. :try_end_3b} :catchall_3f

    .line 801
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_3f
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 802
    throw p0
.end method

.method public static getUidsToExemptFromPackages(Ljava/util/List;Landroid/content/Context;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string v0, "FirewallUtils"

    .line 807
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 808
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_b
    const-string v2, "android"

    const/16 v3, 0x40

    .line 811
    invoke-virtual {p1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-nez p1, :cond_1c

    const-string/jumbo p0, "processPackageExceptionList() - systemInfo is null"

    .line 814
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_1b} :catch_65

    return-object v1

    .line 821
    :cond_1c
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 822
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 823
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_25

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 824
    invoke-static {v2, v3}, Lcom/android/server/enterprise/utils/Utils;->isSystemApplication(Landroid/content/pm/PackageInfo;[Landroid/content/pm/Signature;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 826
    sget-object v3, Lcom/android/server/enterprise/firewall/FirewallUtils;->PACKAGE_EXCEPTION_KEYWORDS:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_45
    if-ge v5, v4, :cond_25

    aget-object v6, v3, v5

    .line 827
    iget-object v7, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 828
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5e
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 833
    :cond_61
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :catch_65
    move-exception p0

    const-string/jumbo p1, "processPackageExceptionList() - failed to retrieve package info for system"

    .line 818
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static isIpv6SupportedForTable(Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;)Z
    .registers 2

    .line 611
    sget-object v0, Lcom/android/server/enterprise/firewall/FirewallUtils$1;->$SwitchMap$com$android$server$enterprise$firewall$FirewallDefinitions$Table:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    goto :goto_15

    .line 616
    :cond_10
    sget-boolean p0, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6NatSupport:Z

    goto :goto_15

    .line 613
    :cond_13
    sget-boolean p0, Lcom/android/server/enterprise/firewall/Firewall;->mHasIpv6FilterSupport:Z

    :goto_15
    return p0
.end method

.method public static isRuleEnabled(Lcom/samsung/android/knox/net/firewall/FirewallRule;ILcom/android/server/enterprise/storage/EdmStorageProvider;)Z
    .registers 6

    const-string/jumbo v0, "status"

    .line 363
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p2, :cond_b

    return v2

    .line 371
    :cond_b
    invoke-static {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;I)Landroid/content/ContentValues;

    move-result-object p0

    .line 373
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string p1, "FirewallRule"

    .line 375
    invoke-virtual {p2, p1, v1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 377
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_21

    goto :goto_3e

    .line 381
    :cond_21
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 384
    sget-object p1, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->ENABLED:Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;

    invoke-virtual {p1}, Lcom/samsung/android/knox/net/firewall/FirewallRule$Status;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e

    const/4 v2, 0x1

    :cond_3e
    :goto_3e
    return v2
.end method

.method public static isRuleInDb(Lcom/samsung/android/knox/net/firewall/FirewallRule;ILcom/android/server/enterprise/storage/EdmStorageProvider;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return v0

    .line 401
    :cond_4
    invoke-static {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallUtils;->getContentValuesFromRule(Lcom/samsung/android/knox/net/firewall/FirewallRule;I)Landroid/content/ContentValues;

    move-result-object p0

    const-string/jumbo p1, "status"

    .line 402
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 403
    sget-object p1, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    const-string v1, "FirewallRule"

    invoke-virtual {p2, v1, p1, p0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    .line 404
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1e

    const/4 p0, 0x1

    return p0

    :cond_1e
    return v0
.end method

.method public static validateDomain(Ljava/lang/String;)Z
    .registers 10

    .line 492
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 497
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "http:"

    .line 499
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_100

    const-string/jumbo v0, "https:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    goto/16 :goto_100

    .line 506
    :cond_20
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xff

    if-le v0, v2, :cond_29

    return v1

    :cond_29
    const-string v0, "*"

    .line 510
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_33

    return v3

    .line 515
    :cond_33
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v4, 0x2

    if-eqz v2, :cond_4d

    const-string v2, "*."

    .line 518
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_47

    .line 519
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_4b

    .line 521
    :cond_47
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_4b
    move v2, v3

    goto :goto_4e

    :cond_4d
    move v2, v1

    .line 526
    :goto_4e
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_71

    const-string v0, ".*"

    .line 529
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 530
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_6f

    .line 532
    :cond_66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_6f
    move v0, v3

    goto :goto_72

    :cond_71
    move v0, v1

    :goto_72
    const-string v4, "\\."

    .line 540
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-nez v2, :cond_aa

    move v5, v1

    .line 551
    :goto_7b
    aget-object v6, v4, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_a6

    .line 552
    aget-object v6, v4, v1

    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x61

    if-lt v6, v7, :cond_91

    const/16 v7, 0x7a

    if-le v6, v7, :cond_a1

    :cond_91
    const/16 v7, 0x41

    if-lt v6, v7, :cond_99

    const/16 v7, 0x5a

    if-le v6, v7, :cond_a1

    :cond_99
    const/16 v7, 0x30

    if-lt v6, v7, :cond_a3

    const/16 v7, 0x39

    if-gt v6, v7, :cond_a3

    :cond_a1
    move v5, v3

    goto :goto_a7

    :cond_a3
    add-int/lit8 v5, v5, 0x1

    goto :goto_7b

    :cond_a6
    move v5, v1

    :goto_a7
    if-nez v5, :cond_aa

    return v1

    :cond_aa
    move v5, v1

    move v6, v5

    .line 568
    :goto_ac
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_bf

    .line 569
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-ne v7, v8, :cond_bc

    add-int/lit8 v6, v6, 0x1

    :cond_bc
    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    .line 576
    :cond_bf
    array-length p0, v4

    if-lt v6, p0, :cond_c3

    return v1

    .line 582
    :cond_c3
    array-length p0, v4

    move v5, v1

    :goto_c5
    if-ge v5, p0, :cond_d5

    aget-object v6, v4, v5

    .line 583
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x3f

    if-le v6, v7, :cond_d2

    return v1

    :cond_d2
    add-int/lit8 v5, v5, 0x1

    goto :goto_c5

    .line 595
    :cond_d5
    array-length p0, v4

    move v5, v1

    :goto_d7
    if-ge v5, p0, :cond_ff

    aget-object v6, v4, v5

    const-string v7, "^[A-Za-z0-9-]+$"

    .line 596
    invoke-virtual {v6, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_fe

    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_ed

    if-eqz v2, :cond_fe

    .line 597
    :cond_ed
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v8, :cond_fb

    if-nez v0, :cond_fb

    goto :goto_fe

    :cond_fb
    add-int/lit8 v5, v5, 0x1

    goto :goto_d7

    :cond_fe
    :goto_fe
    return v1

    :cond_ff
    return v3

    :cond_100
    :goto_100
    return v1
.end method

.method public static verifyPackageName(Ljava/lang/String;I)Z
    .registers 9

    const-string v0, "*"

    .line 417
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    :cond_a
    const-string/jumbo v0, "package"

    .line 421
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 420
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 423
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 425
    :try_start_1c
    invoke-interface {v0, p0, v4, v5, p1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_20} :catch_2a
    .catchall {:try_start_1c .. :try_end_20} :catchall_28

    .line 430
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz p0, :cond_26

    goto :goto_27

    :cond_26
    move v1, v6

    :goto_27
    return v1

    :catchall_28
    move-exception p0

    goto :goto_49

    :catch_2a
    move-exception p0

    :try_start_2b
    const-string p1, "FirewallUtils"

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remote Exception on get getApplicationInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_2b .. :try_end_45} :catchall_28

    .line 430
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :goto_49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 431
    throw p0
.end method
