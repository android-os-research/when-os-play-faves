.class public synthetic Lcom/android/server/enterprise/firewall/Firewall$6;
.super Ljava/lang/Object;
.source "Firewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/Firewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$samsung$android$knox$net$firewall$Firewall$AddressType:[I

.field public static final synthetic $SwitchMap$com$samsung$android$knox$net$firewall$Firewall$NetworkInterface:[I

.field public static final synthetic $SwitchMap$com$samsung$android$knox$net$firewall$Firewall$PortLocation:[I

.field public static final synthetic $SwitchMap$com$samsung$android$knox$net$firewall$Firewall$Protocol:[I

.field public static final synthetic $SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 6

    .line 1512
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->values()[Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ALLOW:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    sget-object v3, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->DENY:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    const/4 v2, 0x3

    :try_start_1e
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$FirewallRule$RuleType:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->REDIRECT_EXCEPTION:Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/FirewallRule$RuleType;->ordinal()I

    move-result v4

    const/4 v5, 0x4

    aput v5, v3, v4
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    .line 1498
    :catch_33
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->values()[Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$Protocol:[I

    :try_start_3c
    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_44
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_44} :catch_44

    :catch_44
    :try_start_44
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$Protocol:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->TCP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_44 .. :try_end_4e} :catch_4e

    :catch_4e
    :try_start_4e
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$Protocol:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->UDP:Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$Protocol;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_58
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4e .. :try_end_58} :catch_58

    .line 1484
    :catch_58
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->values()[Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$PortLocation:[I

    :try_start_61
    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ALL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_69
    .catch Ljava/lang/NoSuchFieldError; {:try_start_61 .. :try_end_69} :catch_69

    :catch_69
    :try_start_69
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$PortLocation:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->LOCAL:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_73
    .catch Ljava/lang/NoSuchFieldError; {:try_start_69 .. :try_end_73} :catch_73

    :catch_73
    :try_start_73
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$PortLocation:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->REMOTE:Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$PortLocation;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_7d

    .line 1470
    :catch_7d
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->values()[Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$NetworkInterface:[I

    :try_start_86
    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ALL_NETWORKS:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_8e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_86 .. :try_end_8e} :catch_8e

    :catch_8e
    :try_start_8e
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$NetworkInterface:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->MOBILE_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_98
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8e .. :try_end_98} :catch_98

    :catch_98
    :try_start_98
    sget-object v3, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$NetworkInterface:[I

    sget-object v4, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->WIFI_DATA_ONLY:Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;

    invoke-virtual {v4}, Lcom/samsung/android/knox/net/firewall/Firewall$NetworkInterface;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_a2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_98 .. :try_end_a2} :catch_a2

    .line 1458
    :catch_a2
    invoke-static {}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->values()[Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$AddressType:[I

    :try_start_ab
    sget-object v3, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV4:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v3}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ab .. :try_end_b3} :catch_b3

    :catch_b3
    :try_start_b3
    sget-object v1, Lcom/android/server/enterprise/firewall/Firewall$6;->$SwitchMap$com$samsung$android$knox$net$firewall$Firewall$AddressType:[I

    sget-object v2, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->IPV6:Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;

    invoke-virtual {v2}, Lcom/samsung/android/knox/net/firewall/Firewall$AddressType;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_bd} :catch_bd

    :catch_bd
    return-void
.end method
