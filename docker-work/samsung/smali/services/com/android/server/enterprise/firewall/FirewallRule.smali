.class public Lcom/android/server/enterprise/firewall/FirewallRule;
.super Ljava/lang/Object;
.source "FirewallRule.java"


# static fields
.field public static final APPEND:I = 0x1

.field public static final BOTH_DIRECTION:Ljava/lang/String; = "both"

.field public static final BOTH_INTERFACES:Ljava/lang/String; = "both"

.field public static final BOTH_PORT_LOCATION:Ljava/lang/String; = "both"

.field public static final BOTH_PROTOCOL:Ljava/lang/String; = "both"

.field public static final DATA_INTERFACE:Ljava/lang/String; = "data"

.field public static final DELETE:I = 0x2

.field public static final FILTER_TABLE:Ljava/lang/String; = "filter"

.field public static final INSERT:I = 0x3

.field public static final IN_DIRECTION:Ljava/lang/String; = "in"

.field public static final LOCAL_PORT_LOCATION:Ljava/lang/String; = "local"

.field public static final MANGLE_TABLE:Ljava/lang/String; = "mangle"

.field public static final NAT_TABLE:Ljava/lang/String; = "nat"

.field public static final NO_TYPE_SET:I = -0x1

.field public static final NO_UID_SET:I = -0x1

.field public static final OUT_DIRECTION:Ljava/lang/String; = "out"

.field public static final RAW_TABLE:Ljava/lang/String; = "raw"

.field public static final REMOTE_PORT_LOCATION:Ljava/lang/String; = "remote"

.field public static final TAG:Ljava/lang/String; = "FirewallPolicy"

.field public static final TCP_PROTOCOL:Ljava/lang/String; = "tcp"

.field public static final UDP_PROTOCOL:Ljava/lang/String; = "udp"

.field public static final WIFI_INTERFACE:Ljava/lang/String; = "wifi"


# instance fields
.field public mChain:Ljava/lang/String;

.field public mDirection:Ljava/lang/String;

.field public mIprange:Ljava/lang/String;

.field public mNetworkInterface:Ljava/lang/String;

.field public mPort:Ljava/lang/String;

.field public mPortLocation:Ljava/lang/String;

.field public mProtocol:Ljava/lang/String;

.field public mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

.field public mRuleType:I

.field public mTable:Ljava/lang/String;

.field public mUid:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    .line 68
    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    const-string v1, ""

    .line 72
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setDirection(Ljava/lang/String;)Z

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setHostnameOrIp(Ljava/lang/String;)Z

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPort(Ljava/lang/String;)Z

    .line 75
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setProtocol(Ljava/lang/String;)Z

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPortLocation(Ljava/lang/String;)Z

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setNetworkInterface(Ljava/lang/String;)Z

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleType(I)Z

    .line 79
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setUid(I)Z

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/enterprise/firewall/FirewallRuleAction;)V
    .registers 13

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 67
    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    .line 68
    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/firewall/FirewallRule;->setTable(Ljava/lang/String;)Z

    .line 87
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/firewall/FirewallRule;->setChain(Ljava/lang/String;)Z

    .line 88
    invoke-virtual {p0, p3}, Lcom/android/server/enterprise/firewall/FirewallRule;->setDirection(Ljava/lang/String;)Z

    .line 89
    invoke-virtual {p0, p4}, Lcom/android/server/enterprise/firewall/FirewallRule;->setHostnameOrIp(Ljava/lang/String;)Z

    .line 90
    invoke-virtual {p0, p5}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPort(Ljava/lang/String;)Z

    .line 91
    invoke-virtual {p0, p6}, Lcom/android/server/enterprise/firewall/FirewallRule;->setProtocol(Ljava/lang/String;)Z

    .line 92
    invoke-virtual {p0, p7}, Lcom/android/server/enterprise/firewall/FirewallRule;->setPortLocation(Ljava/lang/String;)Z

    .line 93
    invoke-virtual {p0, p8}, Lcom/android/server/enterprise/firewall/FirewallRule;->setNetworkInterface(Ljava/lang/String;)Z

    .line 94
    invoke-virtual {p0, p9}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleType(I)Z

    .line 95
    invoke-virtual {p0, p10}, Lcom/android/server/enterprise/firewall/FirewallRule;->setUid(I)Z

    .line 96
    invoke-virtual {p0, p11}, Lcom/android/server/enterprise/firewall/FirewallRule;->setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z

    return-void
.end method


# virtual methods
.method public getChain()Ljava/lang/String;
    .registers 1

    .line 106
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mChain:Ljava/lang/String;

    return-object p0
.end method

.method public getDirection()Ljava/lang/String;
    .registers 1

    .line 132
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mDirection:Ljava/lang/String;

    return-object p0
.end method

.method public getHostnameOrIp()Ljava/lang/String;
    .registers 1

    .line 142
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mIprange:Ljava/lang/String;

    return-object p0
.end method

.method public getNetworkInterface()Ljava/lang/String;
    .registers 1

    .line 184
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mNetworkInterface:Ljava/lang/String;

    return-object p0
.end method

.method public getPort()Ljava/lang/String;
    .registers 1

    .line 161
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPort:Ljava/lang/String;

    return-object p0
.end method

.method public getPortLocation()Ljava/lang/String;
    .registers 1

    .line 243
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPortLocation:Ljava/lang/String;

    return-object p0
.end method

.method public getProtocol()Ljava/lang/String;
    .registers 1

    .line 230
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mProtocol:Ljava/lang/String;

    return-object p0
.end method

.method public getRuleAction()Lcom/android/server/enterprise/firewall/FirewallRuleAction;
    .registers 1

    .line 193
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    return-object p0
.end method

.method public getRuleType()I
    .registers 1

    .line 205
    iget p0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    return p0
.end method

.method public getTable()Ljava/lang/String;
    .registers 1

    .line 119
    iget-object p0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mTable:Ljava/lang/String;

    return-object p0
.end method

.method public getUid()I
    .registers 1

    .line 216
    iget p0, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    return p0
.end method

.method public setChain(Ljava/lang/String;)Z
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mChain:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public setDirection(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "both"

    .line 123
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "in"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "out"

    .line 124
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    .line 125
    :cond_1d
    :goto_1d
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mDirection:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public setHostnameOrIp(Ljava/lang/String;)Z
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mIprange:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public setNetworkInterface(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "both"

    .line 175
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string/jumbo v0, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "data"

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1c

    :cond_1a
    const/4 p0, 0x0

    return p0

    .line 177
    :cond_1c
    :goto_1c
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mNetworkInterface:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public setPort(Ljava/lang/String;)Z
    .registers 2

    .line 156
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPort:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public setPortLocation(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "both"

    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "remote"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string/jumbo v0, "local"

    .line 235
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    return p0

    .line 236
    :cond_1d
    :goto_1d
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mPortLocation:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public setProtocol(Ljava/lang/String;)Z
    .registers 4

    const-string v0, "both"

    .line 220
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "FirewallPolicy"

    if-nez v0, :cond_25

    const-string/jumbo v0, "tcp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string/jumbo v0, "udp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_25

    :cond_1d
    const-string/jumbo p0, "setProtocol before false"

    .line 225
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 221
    :cond_25
    :goto_25
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mProtocol:Ljava/lang/String;

    const-string/jumbo p0, "setProtocol before true"

    .line 222
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public setRuleAction(Lcom/android/server/enterprise/firewall/FirewallRuleAction;)Z
    .registers 2

    .line 188
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleAction:Lcom/android/server/enterprise/firewall/FirewallRuleAction;

    const/4 p0, 0x1

    return p0
.end method

.method public setRuleType(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_c

    const/4 v1, 0x3

    if-ne p1, v1, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    return p0

    .line 198
    :cond_c
    :goto_c
    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mRuleType:I

    return v0
.end method

.method public setTable(Ljava/lang/String;)Z
    .registers 3

    const-string v0, "filter"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string/jumbo v0, "nat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string/jumbo v0, "raw"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    const-string/jumbo v0, "mangle"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    goto :goto_26

    :cond_24
    const/4 p0, 0x0

    return p0

    .line 112
    :cond_26
    :goto_26
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mTable:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public setUid(I)Z
    .registers 2

    .line 211
    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallRule;->mUid:I

    const/4 p0, 0x1

    return p0
.end method
