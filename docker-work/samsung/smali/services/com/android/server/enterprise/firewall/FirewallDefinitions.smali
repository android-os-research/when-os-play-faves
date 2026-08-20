.class public Lcom/android/server/enterprise/firewall/FirewallDefinitions;
.super Ljava/lang/Object;
.source "FirewallDefinitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/FirewallDefinitions$IP;,
        Lcom/android/server/enterprise/firewall/FirewallDefinitions$Table;
    }
.end annotation


# static fields
.field public static final ADD_TO_FORWARD:Ljava/lang/String; = "-A FORWARD -j "

.field public static final ADD_TO_INPUT:Ljava/lang/String; = "-A INPUT -j "

.field public static final ADD_TO_OUTPUT:Ljava/lang/String; = "-A OUTPUT -j "

.field public static final ALL_APPS_UID:I = -0x1

.field public static final APPEND:Ljava/lang/String; = "-A"

.field public static final CHAIN_ALLOW_FORWARD:Ljava/lang/String; = "firewall_allow-forward"

.field public static final CHAIN_ALLOW_INPUT:Ljava/lang/String; = "firewall_allow-input"

.field public static final CHAIN_ALLOW_OUTPUT:Ljava/lang/String; = "firewall_allow-output"

.field public static final CHAIN_DENY_FORWARD:Ljava/lang/String; = "firewall_deny-forward"

.field public static final CHAIN_DENY_INPUT:Ljava/lang/String; = "firewall_deny-input"

.field public static final CHAIN_DENY_OUTPUT:Ljava/lang/String; = "firewall_deny-output"

.field public static final CHAIN_DOMAIN_FILTER_INPUT:Ljava/lang/String; = "domain_filter-input"

.field public static final CHAIN_DOMAIN_FILTER_INPUT_ALL:Ljava/lang/String; = "domain_input-all"

.field public static final CHAIN_DOMAIN_FILTER_INPUT_UID:Ljava/lang/String; = "domain_input-uid"

.field public static final CHAIN_DOMAIN_FILTER_OUTPUT:Ljava/lang/String; = "domain_filter-output"

.field public static final CHAIN_DOMAIN_FILTER_OUTPUT_ALL:Ljava/lang/String; = "domain_output-all"

.field public static final CHAIN_DOMAIN_FILTER_OUTPUT_UID:Ljava/lang/String; = "domain_output-uid"

.field public static final CHAIN_REDIRECT:Ljava/lang/String; = "firewall_redirect-output"

.field public static final CHAIN_REDIRECT_EXCEPTIONS:Ljava/lang/String; = "firewall_exceptions-output"

.field public static final CHAIN_TEST_IPV6:Ljava/lang/String; = "test_ipv6"

.field public static final DELETE:Ljava/lang/String; = "-D"

.field public static final DELIMITER:Ljava/lang/String; = "\n"

.field public static final DEL_FROM_FORWARD:Ljava/lang/String; = "-D FORWARD -j "

.field public static final DEL_FROM_INPUT:Ljava/lang/String; = "-D INPUT -j "

.field public static final DEL_FROM_OUTPUT:Ljava/lang/String; = "-D OUTPUT -j "

.field public static final END_COMMAND:Ljava/lang/String; = "COMMIT\n"

.field public static final EXEMPT_PACKAGE_LIST:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_TABLE:Ljava/lang/String; = "*filter"

.field public static final ICMPV6_PROTOCOL:Ljava/lang/String; = " -p icmpv6"

.field public static final ICMP_PROTOCOL:Ljava/lang/String; = " -p icmp"

.field public static final INSERT:Ljava/lang/String; = "-I"

.field public static final IP6TABLES:Ljava/lang/String; = "/system/bin/ip6tables -w "

.field public static final IPTABLES:Ljava/lang/String; = "/system/bin/iptables -w "

.field public static final MAX_CMD_SIZE_BYTES:I = 0x61a80

.field public static final NAT_TABLE:Ljava/lang/String; = "*nat"

.field public static final PATTERN_NUMERAL_ENDING_SUFIX:Ljava/util/regex/Pattern;

.field public static final TCP_PROTOCOL:Ljava/lang/String; = " -p tcp"

.field public static final UDP_PROTOCOL:Ljava/lang/String; = " -p udp"


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "[0-9]*$"

    .line 9
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions;->PATTERN_NUMERAL_ENDING_SUFIX:Ljava/util/regex/Pattern;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x41b

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "netd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/firewall/FirewallDefinitions;->EXEMPT_PACKAGE_LIST:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
