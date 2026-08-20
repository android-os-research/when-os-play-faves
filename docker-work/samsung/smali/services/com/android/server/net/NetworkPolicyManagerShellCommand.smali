.class public Lcom/android/server/net/NetworkPolicyManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "NetworkPolicyManagerShellCommand.java"


# instance fields
.field public final mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 40
    iput-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    const-string/jumbo p2, "wifi"

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public static overrideToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_a

    const-string/jumbo p0, "none"

    return-object p0

    :cond_a
    const-string p0, "false"

    return-object p0

    :cond_d
    const-string/jumbo p0, "true"

    return-object p0
.end method

.method public static stringToOverride(Ljava/lang/String;)I
    .registers 2

    .line 396
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    const/4 p0, 0x0

    return p0

    :cond_16
    const/4 p0, 0x2

    return p0

    :cond_18
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final addAppIdleWhitelist()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setAppIdleWhitelist(Z)I

    move-result p0

    return p0
.end method

.method public final addRestrictBackgroundBlacklist()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 323
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setUidPolicy(I)I

    move-result p0

    return p0
.end method

.method public final addRestrictBackgroundWhitelist()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 315
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setUidPolicy(I)I

    move-result p0

    return p0
.end method

.method public final getNextBooleanArg()I
    .registers 2

    .line 404
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 405
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_11

    const-string p0, "Error: didn\'t specify BOOLEAN"

    .line 407
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 410
    :cond_11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final getRestrictBackground()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Restrict background status: "

    .line 269
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->getRestrictBackground()Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "enabled"

    goto :goto_16

    :cond_14
    const-string p0, "disabled"

    :goto_16
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getRestrictedModeState()I
    .registers 3

    .line 261
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Restricted mode status: "

    .line 262
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 263
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->isRestrictedModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_14

    const-string p0, "enabled"

    goto :goto_16

    :cond_14
    const-string p0, "disabled"

    :goto_16
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final getUidFromNextArg()I
    .registers 4

    .line 414
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 415
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_11

    const-string p0, "Error: didn\'t specify UID"

    .line 417
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 421
    :cond_11
    :try_start_11
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_15} :catch_16

    return p0

    .line 423
    :catch_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: UID ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") should be a number"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x2

    return p0
.end method

.method public final listAppIdleWhitelist()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 256
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getAppIdleWhitelist()[I

    move-result-object v0

    const-string v1, "App Idle whitelisted UIDs"

    .line 257
    invoke-virtual {p0, v1, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidList(Ljava/lang/String;[I)I

    move-result p0

    return p0
.end method

.method public final listRestrictBackgroundBlacklist()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Restrict background blacklisted UIDs"

    const/4 v1, 0x1

    .line 250
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidPolicies(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final listRestrictBackgroundWhitelist()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Restrict background whitelisted UIDs"

    const/4 v1, 0x4

    .line 245
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidPolicies(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final listUidList(Ljava/lang/String;[I)I
    .registers 5

    .line 229
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    .line 230
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    array-length p1, p2

    const/4 v0, 0x0

    if-nez p1, :cond_17

    const-string/jumbo p1, "none"

    .line 232
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_28

    :cond_17
    move p1, v0

    .line 234
    :goto_18
    array-length v1, p2

    if-ge p1, v1, :cond_28

    .line 235
    aget v1, p2, p1

    .line 236
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x20

    .line 237
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_18

    .line 240
    :cond_28
    :goto_28
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return v0
.end method

.method public final listUidPolicies(Ljava/lang/String;I)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidsWithPolicy(I)[I

    move-result-object p2

    .line 225
    invoke-virtual {p0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listUidList(Ljava/lang/String;[I)I

    move-result p0

    return p0
.end method

.method public final listWifiNetworks()I
    .registers 7

    .line 348
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 349
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    move v3, v2

    goto :goto_16

    .line 353
    :cond_d
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    goto :goto_16

    :cond_15
    const/4 v3, 0x2

    .line 359
    :goto_16
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    .line 360
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_32

    .line 361
    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    if-ne v5, v3, :cond_20

    .line 362
    :cond_32
    invoke-static {v4}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v5, 0x3b

    .line 363
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 364
    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->overrideToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20

    :cond_48
    return v2
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 5

    if-nez p1, :cond_7

    .line 47
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 49
    :cond_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    .line 51
    :try_start_c
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_a2

    goto :goto_5f

    :sswitch_14
    const-string/jumbo v2, "stop-watching"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x6

    goto :goto_60

    :sswitch_1f
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x2

    goto :goto_60

    :sswitch_2a
    const-string/jumbo v2, "set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x1

    goto :goto_60

    :sswitch_35
    const-string v2, "get"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x0

    goto :goto_60

    :sswitch_3f
    const-string v2, "add"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x3

    goto :goto_60

    :sswitch_49
    const-string/jumbo v2, "remove"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x4

    goto :goto_60

    :sswitch_54
    const-string/jumbo v2, "start-watching"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const/4 v2, 0x5

    goto :goto_60

    :cond_5f
    :goto_5f
    move v2, v1

    :goto_60
    packed-switch v2, :pswitch_data_c0

    .line 67
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result p0

    goto :goto_8a

    .line 65
    :pswitch_68
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runStopWatching()I

    move-result p0

    return p0

    .line 63
    :pswitch_6d
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runStartWatching()I

    move-result p0

    return p0

    .line 61
    :pswitch_72
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runRemove()I

    move-result p0

    return p0

    .line 59
    :pswitch_77
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runAdd()I

    move-result p0

    return p0

    .line 57
    :pswitch_7c
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runList()I

    move-result p0

    return p0

    .line 55
    :pswitch_81
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runSet()I

    move-result p0

    return p0

    .line 53
    :pswitch_86
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->runGet()I

    move-result p0
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_8a} :catch_8b

    :goto_8a
    return p0

    :catch_8b
    move-exception p0

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remote exception: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_a2
    .sparse-switch
        -0x5c0b0642 -> :sswitch_54
        -0x37b5077c -> :sswitch_49
        0x178a1 -> :sswitch_3f
        0x18f56 -> :sswitch_35
        0x1bc62 -> :sswitch_2a
        0x32b09e -> :sswitch_1f
        0x412bca1e -> :sswitch_14
    .end sparse-switch

    :pswitch_data_c0
    .packed-switch 0x0
        :pswitch_86
        :pswitch_81
        :pswitch_7c
        :pswitch_77
        :pswitch_72
        :pswitch_6d
        :pswitch_68
    .end packed-switch
.end method

.method public onHelp()V
    .registers 2

    .line 77
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v0, "Network policy manager (netpolicy) commands:"

    .line 78
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  help"

    .line 79
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Print this help text."

    .line 80
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    .line 81
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  add restrict-background-whitelist UID"

    .line 82
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Adds a UID to the whitelist for restrict background usage."

    .line 83
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  add restrict-background-blacklist UID"

    .line 84
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Adds a UID to the blacklist for restrict background usage."

    .line 85
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  add app-idle-whitelist UID"

    .line 86
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Adds a UID to the temporary app idle whitelist."

    .line 87
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  get restrict-background"

    .line 88
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Gets the global restrict background usage status."

    .line 89
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  list wifi-networks [true|false]"

    .line 90
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Lists all saved wifi networks and whether they are metered or not."

    .line 91
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    If a boolean argument is passed, filters just the metered (or unmetered)"

    .line 92
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    networks."

    .line 93
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  list restrict-background-whitelist"

    .line 94
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Lists UIDs that are whitelisted for restrict background usage."

    .line 95
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  list restrict-background-blacklist"

    .line 96
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Lists UIDs that are blacklisted for restrict background usage."

    .line 97
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  remove restrict-background-whitelist UID"

    .line 98
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Removes a UID from the whitelist for restrict background usage."

    .line 99
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  remove restrict-background-blacklist UID"

    .line 100
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Removes a UID from the blacklist for restrict background usage."

    .line 101
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  remove app-idle-whitelist UID"

    .line 102
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Removes a UID from the temporary app idle whitelist."

    .line 103
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set metered-network ID [undefined|true|false]"

    .line 104
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Toggles whether the given wi-fi network is metered."

    .line 105
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set restrict-background BOOLEAN"

    .line 106
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets the global restrict background usage status."

    .line 107
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set sub-plan-owner subId [packageName]"

    .line 108
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    Sets the data plan owner package for subId."

    .line 109
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final removeAppIdleWhitelist()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 344
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setAppIdleWhitelist(Z)I

    move-result p0

    return p0
.end method

.method public final removeRestrictBackgroundBlacklist()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "not blacklisted"

    const/4 v1, 0x1

    .line 327
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->resetUidPolicy(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final removeRestrictBackgroundWhitelist()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "not whitelisted"

    const/4 v1, 0x4

    .line 319
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->resetUidPolicy(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final resetUidPolicy(Ljava/lang/String;I)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    if-gez v0, :cond_7

    return v0

    .line 304
    :cond_7
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidPolicy(I)I

    move-result v1

    if-eq v1, p2, :cond_25

    .line 306
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string p2, "Error: UID "

    .line 307
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const/16 p2, 0x20

    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 310
    :cond_25
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    return p1
.end method

.method public final runAdd()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 171
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_11

    const-string p0, "Error: didn\'t specify type of data to add"

    .line 173
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 176
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_68

    :goto_18
    move v3, v2

    goto :goto_3c

    :sswitch_1a
    const-string/jumbo v3, "restrict-background-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_18

    :cond_24
    const/4 v3, 0x2

    goto :goto_3c

    :sswitch_26
    const-string/jumbo v3, "restrict-background-blacklist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_18

    :cond_30
    const/4 v3, 0x1

    goto :goto_3c

    :sswitch_32
    const-string v3, "app-idle-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_18

    :cond_3b
    const/4 v3, 0x0

    :goto_3c
    packed-switch v3, :pswitch_data_76

    .line 184
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown add type \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 178
    :pswitch_59
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->addRestrictBackgroundWhitelist()I

    move-result p0

    return p0

    .line 180
    :pswitch_5e
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->addRestrictBackgroundBlacklist()I

    move-result p0

    return p0

    .line 182
    :pswitch_63
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->addAppIdleWhitelist()I

    move-result p0

    return p0

    :sswitch_data_68
    .sparse-switch
        -0x645dc946 -> :sswitch_32
        -0x27d90651 -> :sswitch_26
        0x261f10d9 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_63
        :pswitch_5e
        :pswitch_59
    .end packed-switch
.end method

.method public final runGet()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_11

    const-string p0, "Error: didn\'t specify type of data to get"

    .line 116
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_11
    const-string/jumbo v3, "restrict-background"

    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    const-string/jumbo v3, "restricted-mode"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 125
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown get type \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 123
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getRestrictedModeState()I

    move-result p0

    return p0

    .line 121
    :cond_42
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getRestrictBackground()I

    move-result p0

    return p0
.end method

.method public final runList()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_11

    const-string p0, "Error: didn\'t specify type of data to list"

    .line 152
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 155
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_7a

    :goto_18
    move v3, v2

    goto :goto_48

    :sswitch_1a
    const-string/jumbo v3, "restrict-background-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_18

    :cond_24
    const/4 v3, 0x3

    goto :goto_48

    :sswitch_26
    const-string/jumbo v3, "wifi-networks"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_18

    :cond_30
    const/4 v3, 0x2

    goto :goto_48

    :sswitch_32
    const-string/jumbo v3, "restrict-background-blacklist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_18

    :cond_3c
    const/4 v3, 0x1

    goto :goto_48

    :sswitch_3e
    const-string v3, "app-idle-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    goto :goto_18

    :cond_47
    const/4 v3, 0x0

    :goto_48
    packed-switch v3, :pswitch_data_8c

    .line 165
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown list type \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 161
    :pswitch_65
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listRestrictBackgroundWhitelist()I

    move-result p0

    return p0

    .line 159
    :pswitch_6a
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listWifiNetworks()I

    move-result p0

    return p0

    .line 163
    :pswitch_6f
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listRestrictBackgroundBlacklist()I

    move-result p0

    return p0

    .line 157
    :pswitch_74
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->listAppIdleWhitelist()I

    move-result p0

    return p0

    nop

    :sswitch_data_7a
    .sparse-switch
        -0x645dc946 -> :sswitch_3e
        -0x27d90651 -> :sswitch_32
        -0x15ab1843 -> :sswitch_26
        0x261f10d9 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_8c
    .packed-switch 0x0
        :pswitch_74
        :pswitch_6f
        :pswitch_6a
        :pswitch_65
    .end packed-switch
.end method

.method public final runRemove()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_11

    const-string p0, "Error: didn\'t specify type of data to remove"

    .line 192
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 195
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_68

    :goto_18
    move v3, v2

    goto :goto_3c

    :sswitch_1a
    const-string/jumbo v3, "restrict-background-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_18

    :cond_24
    const/4 v3, 0x2

    goto :goto_3c

    :sswitch_26
    const-string/jumbo v3, "restrict-background-blacklist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_18

    :cond_30
    const/4 v3, 0x1

    goto :goto_3c

    :sswitch_32
    const-string v3, "app-idle-whitelist"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_18

    :cond_3b
    const/4 v3, 0x0

    :goto_3c
    packed-switch v3, :pswitch_data_76

    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown remove type \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 197
    :pswitch_59
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->removeRestrictBackgroundWhitelist()I

    move-result p0

    return p0

    .line 199
    :pswitch_5e
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->removeRestrictBackgroundBlacklist()I

    move-result p0

    return p0

    .line 201
    :pswitch_63
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->removeAppIdleWhitelist()I

    move-result p0

    return p0

    :sswitch_data_68
    .sparse-switch
        -0x645dc946 -> :sswitch_32
        -0x27d90651 -> :sswitch_26
        0x261f10d9 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_63
        :pswitch_5e
        :pswitch_59
    .end packed-switch
.end method

.method public final runSet()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 130
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_11

    const-string p0, "Error: didn\'t specify type of data to set"

    .line 133
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 136
    :cond_11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_6a

    :goto_18
    move v3, v2

    goto :goto_3d

    :sswitch_1a
    const-string/jumbo v3, "sub-plan-owner"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_18

    :cond_24
    const/4 v3, 0x2

    goto :goto_3d

    :sswitch_26
    const-string/jumbo v3, "restrict-background"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    goto :goto_18

    :cond_30
    const/4 v3, 0x1

    goto :goto_3d

    :sswitch_32
    const-string/jumbo v3, "metered-network"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    goto :goto_18

    :cond_3c
    const/4 v3, 0x0

    :goto_3d
    packed-switch v3, :pswitch_data_78

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: unknown set type \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 142
    :pswitch_5a
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setSubPlanOwner()I

    move-result p0

    return p0

    .line 140
    :pswitch_5f
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setRestrictBackground()I

    move-result p0

    return p0

    .line 138
    :pswitch_64
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->setMeteredWifiNetwork()I

    move-result p0

    return p0

    nop

    :sswitch_data_6a
    .sparse-switch
        -0x3a9b30b7 -> :sswitch_32
        -0x2c87c721 -> :sswitch_26
        0x6e1614bc -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_64
        :pswitch_5f
        :pswitch_5a
    .end packed-switch
.end method

.method public final runStartWatching()I
    .registers 3

    .line 208
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_18

    .line 210
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object p0

    const-string v1, "Invalid UID: "

    .line 211
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    const/4 p0, -0x1

    return p0

    .line 214
    :cond_18
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setDebugUid(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final runStopWatching()I
    .registers 2

    .line 219
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setDebugUid(I)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setAppIdleWhitelist(Z)I
    .registers 3

    .line 331
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    if-gez v0, :cond_7

    return v0

    .line 335
    :cond_7
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setMeteredWifiNetwork()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 371
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 372
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_11

    const-string p0, "Error: didn\'t specify networkId"

    .line 374
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 377
    :cond_11
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1d

    const-string p0, "Error: didn\'t specify meteredOverride"

    .line 379
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    .line 382
    :cond_1d
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Landroid/net/NetworkPolicyManager;->resolveNetworkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 383
    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->stringToOverride(Ljava/lang/String;)I

    move-result v1

    .line 382
    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setWifiMeteredOverride(Ljava/lang/String;I)V

    return v2
.end method

.method public final setRestrictBackground()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getNextBooleanArg()I

    move-result v0

    if-gez v0, :cond_7

    return v0

    .line 279
    :cond_7
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v1, 0x0

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    invoke-virtual {p0, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackground(Z)V

    return v1
.end method

.method public final setSubPlanOwner()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 285
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 286
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->setSubscriptionPlansOwner(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public final setUidPolicy(I)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->getUidFromNextArg()I

    move-result v0

    if-gez v0, :cond_7

    return v0

    .line 295
    :cond_7
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerShellCommand;->mInterface:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setUidPolicy(II)V

    const/4 p0, 0x0

    return p0
.end method
