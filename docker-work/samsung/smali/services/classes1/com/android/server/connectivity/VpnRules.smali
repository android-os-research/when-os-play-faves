.class public Lcom/android/server/connectivity/VpnRules;
.super Ljava/lang/Object;
.source "VpnRules.java"


# static fields
.field public static final APPEND:Ljava/lang/String; = "-A"

.field public static final DELETE:Ljava/lang/String; = "-D"

.field public static final DEL_CHAIN:Ljava/lang/String; = "-X"

.field public static final FILTER:Ljava/lang/String; = "filter"

.field public static final FLUSH:Ljava/lang/String; = "-F"

.field public static final FW_FORWARD:Ljava/lang/String; = " fw_FORWARD"

.field public static final FW_INPUT:Ljava/lang/String; = " fw_INPUT"

.field public static final FW_OUTPUT:Ljava/lang/String; = " fw_OUTPUT"

.field public static final INSERT:Ljava/lang/String; = "-I"

.field public static final JUMP:Ljava/lang/String; = " -j"

.field public static final KEY_CMD:Ljava/lang/String; = "VPN_RULES"

.field public static final KEY_CMD_TCP_MONITOR:Ljava/lang/String; = "TCPMONITOR"

.field public static final MANGLE:Ljava/lang/String; = "mangle"

.field public static final NAT:Ljava/lang/String; = "nat"

.field public static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field public static final NEW_CHAIN:Ljava/lang/String; = "-N"

.field public static final OUTPUT:Ljava/lang/String; = " OUTPUT"

.field public static final POSTROUTING:Ljava/lang/String; = " POSTROUTING"

.field public static final PROTOCOL_TCP:Ljava/lang/String; = "tcp"

.field public static final PROTOCOL_UDP:Ljava/lang/String; = "udp"

.field public static final TAG:Ljava/lang/String; = "VpnRules"

.field public static final THETHERING_POSTROUTING:Ljava/lang/String; = " tetherctrl_nat_POSTROUTING"

.field public static final VPN_POSTROUTING:Ljava/lang/String; = " vpn_POSTROUTING"


# instance fields
.field public mNetdService:Landroid/net/INetd;

.field public mOemNetd:Lcom/android/internal/net/IOemNetd;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_a

    .line 64
    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnRules;->bindNetdNativeService()Z

    :cond_a
    return-void
.end method


# virtual methods
.method public addTcpmssClampRule()V
    .registers 3

    const-string v0, "VpnRules"

    const-string v1, "addTcpmssClampRule"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const-string v1, "*mangle\n-A vpn_POSTROUTING -p tcp --tcp-flag SYN,RST SYN -j TCPMSS --clamp-mss-to-pmtu\nCOMMIT\n"

    .line 95
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return-void
.end method

.method public addVpnRuleForTethering(Ljava/lang/String;)V
    .registers 4

    const-string v0, "/"

    .line 108
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*nat\n-I tetherctrl_nat_POSTROUTING -s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -j"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " RETURN\nCOMMIT\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    .line 111
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return-void
.end method

.method public final bindNetdNativeService()Z
    .registers 5

    const-string v0, "VpnRules"

    const/4 v1, 0x0

    :try_start_3
    const-string/jumbo v2, "netd"

    .line 221
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/INetd$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetd;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    if-nez v2, :cond_18

    const-string p0, "Failed to bind netd: null"

    .line 223
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 225
    :cond_18
    invoke-interface {v2}, Landroid/net/INetd;->isAlive()Z

    move-result v2

    if-nez v2, :cond_24

    const-string p0, "Failed to bind netd: not alive"

    .line 226
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_23} :catch_50

    return v1

    .line 234
    :cond_24
    :try_start_24
    iget-object v2, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    invoke-interface {v2}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/VpnRules;->mOemNetd:Lcom/android/internal/net/IOemNetd;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_30} :catch_3a

    if-nez v2, :cond_38

    const-string p0, "Failed to get OemNetd listener: null"

    .line 240
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_38
    const/4 p0, 0x1

    return p0

    :catch_3a
    move-exception p0

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get OemNetd listener: err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_50
    move-exception p0

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to bind netd: err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public createVpnPostroutingChain()V
    .registers 3

    const-string v0, "VpnRules"

    const-string v1, "createVpnPostroutingChain"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const-string v1, "*mangle\n-N vpn_POSTROUTING\nCOMMIT\n"

    .line 73
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    const-string v1, "*mangle\n-D POSTROUTING -j vpn_POSTROUTING\nCOMMIT\n"

    .line 75
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    const-string v1, "*mangle\n-A POSTROUTING -j vpn_POSTROUTING\nCOMMIT\n"

    .line 77
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return-void
.end method

.method public deleteTcpmssClampRule()V
    .registers 3

    const-string v0, "VpnRules"

    const-string v1, "deleteTcpmssClampRule"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const-string v1, "*mangle\n-D vpn_POSTROUTING -p tcp --tcp-flag SYN,RST SYN -j TCPMSS --clamp-mss-to-pmtu\nCOMMIT\n"

    .line 102
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return-void
.end method

.method public deleteTetheringRule(Ljava/lang/String;)V
    .registers 4

    const-string v0, "/"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 117
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*nat\n-D tetherctrl_nat_POSTROUTING -s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -j"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " RETURN\nCOMMIT\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    .line 119
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return-void
.end method

.method public deleteVpnPostroutingChain()V
    .registers 3

    const-string v0, "VpnRules"

    const-string v1, "deleteVpnPostroutingChain"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    const-string v1, "*mangle\n-D POSTROUTING -j vpn_POSTROUTING\nCOMMIT\n"

    .line 84
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    const-string v1, "*mangle\n-F vpn_POSTROUTING\nCOMMIT\n"

    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    const-string v1, "*mangle\n-X vpn_POSTROUTING\nCOMMIT\n"

    .line 88
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized runShellCommand(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    .line 269
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    if-nez v0, :cond_1a

    .line 270
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnRules;->bindNetdNativeService()Z

    move-result v0

    if-nez v0, :cond_1a

    const-string p1, "VpnRules"

    const-string/jumbo v0, "runShellCmd: Failed to bind netd"

    .line 271
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_f3

    .line 272
    monitor-exit p0

    return-object v1

    .line 276
    :cond_1a
    :try_start_1a
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    .line 277
    :goto_20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_3a

    .line 278
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const-string v4, "TCPMONITOR"

    rem-int/lit8 v5, v2, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v3, v4

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_20

    .line 280
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VpnRules"

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "runShellCmd: cmd = {"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "} param.len="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v2, p0, Lcom/android/server/connectivity/VpnRules;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v2, p1, v0}, Lcom/android/internal/net/IOemNetd;->runTcpMonitorShellCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_bb

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 284
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "VpnRules"

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runCmd: ret = {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a1

    const-string v3, "OK"

    goto :goto_a9

    :cond_a1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_a9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_b9} :catch_d9
    .catchall {:try_start_1a .. :try_end_b9} :catchall_f3

    .line 286
    monitor-exit p0

    return-object p1

    :cond_bb
    :try_start_bb
    const-string v0, "VpnRules"

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runShellCmd: ret = {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_d8} :catch_d9
    .catchall {:try_start_bb .. :try_end_d8} :catchall_f3

    goto :goto_f1

    :catch_d9
    move-exception p1

    :try_start_da
    const-string v0, "VpnRules"

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runShellCmd: err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f1
    .catchall {:try_start_da .. :try_end_f1} :catchall_f3

    .line 292
    :goto_f1
    monitor-exit p0

    return-object v1

    :catchall_f3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized runVpnRulesCommand(ILjava/lang/String;)V
    .registers 8

    monitor-enter p0

    .line 247
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mNetdService:Landroid/net/INetd;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/connectivity/VpnRules;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    if-nez v0, :cond_19

    .line 248
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/connectivity/VpnRules;->bindNetdNativeService()Z

    move-result v0

    if-nez v0, :cond_19

    const-string p1, "VpnRules"

    const-string/jumbo p2, "runCmd: Failed to bind netd"

    .line 249
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_b0

    .line 250
    monitor-exit p0

    return-void

    .line 254
    :cond_19
    :try_start_19
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 255
    :goto_1f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 256
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v3, "VPN_RULES"

    rem-int/lit8 v4, v1, 0x9

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    xor-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 258
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VpnRules"

    .line 259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "runCmd: cmd = {"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    const-string/jumbo v4, "|"

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "} param.len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v1, p0, Lcom/android/server/connectivity/VpnRules;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/net/IOemNetd;->runVpnRulesCommand(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "VpnRules"

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "runCmd: ret = {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_85

    const-string p1, "OK"

    :cond_85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_95} :catch_96
    .catchall {:try_start_19 .. :try_end_95} :catchall_b0

    goto :goto_ae

    :catch_96
    move-exception p1

    :try_start_97
    const-string p2, "VpnRules"

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "runCmd: err = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ae
    .catchall {:try_start_97 .. :try_end_ae} :catchall_b0

    .line 265
    :goto_ae
    monitor-exit p0

    return-void

    :catchall_b0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFirewallEgressDestRule(Ljava/lang/String;IZ)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-nez v1, :cond_9

    return-void

    :cond_9
    const/4 v3, 0x4

    const-string v4, ":"

    .line 147
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/4 v3, 0x6

    .line 150
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*filter\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "-I"

    const-string v7, "-D"

    if-eqz p3, :cond_25

    move-object v8, v6

    goto :goto_26

    :cond_25
    move-object v8, v7

    :goto_26
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " fw_INPUT"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " -s "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " -p "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "tcp"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " --sport "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " -j RETURN\nCOMMIT\n"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-virtual {v0, v3, v4}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_61

    move-object v14, v6

    goto :goto_62

    :cond_61
    move-object v14, v7

    :goto_62
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " fw_OUTPUT"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " -d "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " --dport "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 153
    invoke-virtual {v0, v3, v4}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v6

    if-eqz p3, :cond_97

    goto :goto_98

    :cond_97
    move-object v6, v7

    :goto_98
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "udp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    invoke-virtual {v0, v3, v4}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_c9

    move-object/from16 v7, v16

    :cond_c9
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-virtual {v0, v3, v1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return-void
.end method

.method public setFirewallEgressSourceRule(Ljava/lang/String;Z)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x4

    const-string v1, ":"

    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, 0x6

    .line 169
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*filter\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-I"

    const-string v4, "-D"

    if-eqz p2, :cond_1f

    move-object v5, v3

    goto :goto_20

    :cond_1f
    move-object v5, v4

    :goto_20
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " fw_INPUT"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -d "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -j RETURN\nCOMMIT\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_47

    goto :goto_48

    :cond_47
    move-object v3, v4

    :goto_48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " fw_OUTPUT"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -s "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-virtual {p0, v0, p1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return-void
.end method

.method public setFirewallEnabled(Z)V
    .registers 8

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*filter\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-A"

    const-string v3, "-D"

    if-eqz p1, :cond_12

    move-object v4, v2

    goto :goto_13

    :cond_12
    move-object v4, v3

    :goto_13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fw_INPUT"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -j DROP\nCOMMIT\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v4, 0x2e

    .line 126
    invoke-virtual {p0, v4, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_35

    move-object v5, v2

    goto :goto_36

    :cond_35
    move-object v5, v3

    :goto_36
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " fw_OUTPUT"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " -j REJECT\nCOMMIT\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {p0, v4, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_55

    goto :goto_56

    :cond_55
    move-object v2, v3

    :goto_56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fw_FORWARD"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-virtual {p0, v4, p1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return-void
.end method

.method public setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .registers 9

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*filter\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-I"

    const-string v3, "-D"

    if-eqz p2, :cond_12

    move-object v4, v2

    goto :goto_13

    :cond_12
    move-object v4, v3

    :goto_13
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " fw_INPUT"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -i "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -j RETURN\nCOMMIT\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2e

    .line 136
    invoke-virtual {p0, v5, v0}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_3c

    goto :goto_3d

    :cond_3c
    move-object v2, v3

    :goto_3d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " fw_OUTPUT"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " -o "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-virtual {p0, v5, p1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return-void
.end method

.method public setTcpPortBypassRule(ZIIIILjava/lang/String;Ljava/lang/String;)I
    .registers 16

    const/4 v0, -0x1

    const-string v1, "VpnRules"

    if-lez p2, :cond_fd

    if-lez p3, :cond_fd

    if-lez p4, :cond_fd

    if-lez p5, :cond_fd

    .line 180
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fd

    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_fd

    const/4 v2, 0x4

    const-string v3, ":"

    .line 183
    invoke-virtual {p7, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v2, 0x6

    :cond_21
    if-eqz p1, :cond_59

    const-string/jumbo v3, "ip rule"

    .line 188
    invoke-virtual {p0, v3}, Lcom/android/server/connectivity/VpnRules;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_2c
    const/4 v6, 0x3

    if-gt v5, v6, :cond_51

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fwmark 0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4c

    const/4 v4, 0x1

    goto :goto_51

    :cond_4c
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    :cond_51
    :goto_51
    if-nez v4, :cond_59

    const-string p0, "Failed to run setTcpPortBypassRule: invalid fwmark"

    .line 198
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 203
    :cond_59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ip -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " rule "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_71

    const-string v1, "add"

    goto :goto_73

    :cond_71
    const-string v1, "del"

    :goto_73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from all fwmark "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " table "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, " prio "

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 204
    invoke-virtual {p0, p4}, Lcom/android/server/connectivity/VpnRules;->runShellCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 206
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "*mangle\n"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "-A"

    const-string v0, "-D"

    if-eqz p1, :cond_a7

    move-object v1, p5

    goto :goto_a8

    :cond_a7
    move-object v1, v0

    :goto_a8
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OUTPUT"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -p tcp --dport "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -j MARK --set-mark "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nCOMMIT\n"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 207
    invoke-virtual {p0, v2, p4}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    .line 208
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*nat\n"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_d9

    goto :goto_da

    :cond_d9
    move-object p5, v0

    :goto_da
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " POSTROUTING"

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -o "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " -j SNAT --to "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-virtual {p0, v2, p1}, Lcom/android/server/connectivity/VpnRules;->runVpnRulesCommand(ILjava/lang/String;)V

    return p3

    :cond_fd
    const-string p0, "Failed to run setTcpPortBypassRule: invalid parameter"

    .line 212
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
