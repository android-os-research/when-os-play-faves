.class public Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.super Lcom/android/server/connectivity/Vpn$VpnRunner;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LegacyVpnRunner"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LegacyVpnRunner"


# instance fields
.field public ipAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mArguments:[[Ljava/lang/String;

.field public mBringupStartTime:J

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public final mDaemons:[Ljava/lang/String;

.field public final mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mOuterInterface:Ljava/lang/String;

.field public final mProfile:Lcom/android/internal/net/VpnProfile;

.field public mServerIP:Ljava/lang/String;

.field public final mSockets:[Landroid/net/LocalSocket;

.field public final mTetheringChangedReceiver:Landroid/content/BroadcastReceiver;

.field public final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public static synthetic $r8$lambda$xy7E_fJnfDpexoBQ_tauOoMO5aw(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetipAddresses(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOuterConnection(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmOuterInterface(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputipAddresses(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;Ljava/util/List;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/VpnConfig;[Ljava/lang/String;[Ljava/lang/String;Lcom/android/internal/net/VpnProfile;)V
    .registers 10

    .line 3681
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    const-string v0, "LegacyVpnRunner"

    .line 3682
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Vpn$VpnRunner;-><init>(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    .line 3614
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/16 v1, -0x1

    .line 3618
    iput-wide v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    const/4 v1, 0x0

    .line 3621
    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 3627
    new-instance v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3648
    new-instance v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;

    invoke-direct {v1, p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$2;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTetheringChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez p3, :cond_31

    if-eqz p4, :cond_29

    goto :goto_31

    .line 3684
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arguments to racoon and mtpd must not both be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3687
    :cond_31
    :goto_31
    iput-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const/4 p2, 0x2

    const-string/jumbo v1, "mtpd"

    if-nez p4, :cond_4d

    .line 3689
    aget-object v2, p3, p2

    const-string/jumbo v3, "hybridrsa"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4d

    const-string v2, "charon"

    .line 3690
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    goto :goto_56

    :cond_4d
    const-string/jumbo v2, "racoon"

    .line 3692
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    .line 3694
    :goto_56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Daemon[0]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array p2, p2, [[Ljava/lang/String;

    aput-object p3, p2, v3

    const/4 p3, 0x1

    aput-object p4, p2, p3

    .line 3697
    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    .line 3698
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length p2, p2

    new-array p2, p2, [Landroid/net/LocalSocket;

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    .line 3706
    iget-object p2, p1, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object p2, p2, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    .line 3708
    iput-object p5, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 3710
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c7

    .line 3711
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmConnectivityManager(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object p2

    array-length p3, p2

    :goto_96
    if-ge v3, p3, :cond_c7

    aget-object p4, p2, v3

    .line 3712
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmConnectivityManager(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;

    move-result-object p5

    invoke-virtual {p5, p4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p5

    if-eqz p5, :cond_c4

    .line 3713
    invoke-virtual {p5}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object p5

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-interface {p5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_c4

    .line 3714
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmConnectivityManager(Lcom/android/server/connectivity/Vpn;)Landroid/net/ConnectivityManager;

    move-result-object p5

    invoke-virtual {p5, p4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p4

    if-eqz p4, :cond_c4

    .line 3716
    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterConnection:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p4}, Landroid/net/NetworkInfo;->getType()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_c7

    :cond_c4
    add-int/lit8 v3, v3, 0x1

    goto :goto_96

    .line 3723
    :cond_c7
    :goto_c7
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3724
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3725
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object p3

    iget-object p4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, p4, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3728
    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 3729
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3730
    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTetheringChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final bringup(Z)V
    .registers 18

    move-object/from16 v1, p0

    const-string v0, ""

    const-string v2, ""

    .line 3931
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-le v4, v6, :cond_18

    aget-object v3, v3, v6

    if-eqz v3, :cond_18

    .line 3933
    array-length v4, v3

    if-le v4, v5, :cond_18

    .line 3934
    aget-object v0, v3, v6

    .line 3935
    aget-object v2, v3, v5

    :cond_18
    move-object v3, v2

    move-object v2, v0

    const/4 v4, 0x0

    const/4 v7, 0x0

    if-nez p1, :cond_b6

    .line 3949
    :try_start_1e
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_24} :catch_429

    .line 3951
    :try_start_24
    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 3952
    array-length v8, v0

    move v9, v4

    :goto_2a
    if-ge v9, v8, :cond_5d

    aget-object v10, v0, v9

    const-string v11, "LegacyVpnRunner"

    .line 3953
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "resolved address: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3954
    instance-of v11, v10, Ljava/net/Inet4Address;

    if-eqz v11, :cond_50

    .line 3955
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    goto :goto_5d

    .line 3957
    :cond_50
    instance-of v11, v10, Ljava/net/Inet6Address;

    if-eqz v11, :cond_5a

    .line 3958
    invoke-virtual {v10}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    :cond_5a
    add-int/lit8 v9, v9, 0x1

    goto :goto_2a

    :cond_5d
    :goto_5d
    const-string v0, "LegacyVpnRunner"

    .line 3961
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resolved mProfile.server: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_76} :catch_77

    goto :goto_a8

    :catch_77
    move-exception v0

    :try_start_78
    const-string v8, "LegacyVpnRunner"

    .line 3963
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to get host address e :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LegacyVpnRunner"

    .line 3964
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get host address:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v9, v9, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3970
    :goto_a8
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lcom/android/server/connectivity/Vpn$Dependencies;->resolve(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 3974
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkAndFixupArguments(Ljava/net/InetAddress;)V

    goto :goto_b7

    :cond_b6
    move-object v0, v7

    .line 3979
    :goto_b7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iput-wide v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    .line 3982
    iget-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v9, v8

    move v10, v4

    :goto_c1
    if-ge v10, v9, :cond_d6

    aget-object v11, v8, v10

    .line 3983
    :goto_c5
    iget-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v12, v12, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v12, v11}, Lcom/android/server/connectivity/Vpn$Dependencies;->isServiceStopped(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_d3

    .line 3984
    invoke-virtual {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_c5

    :cond_d3
    add-int/lit8 v10, v10, 0x1

    goto :goto_c1

    .line 3989
    :cond_d6
    iget-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v8}, Lcom/android/server/connectivity/Vpn$Dependencies;->getStateFile()Ljava/io/File;

    move-result-object v8

    .line 3990
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 3991
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_421

    .line 3995
    new-instance v9, Ljava/io/File;

    const-string v10, "/data/misc/vpn/abort"

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3996
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 3997
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_419

    .line 4002
    iget-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v11, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    const-string v12, "execute"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    move v10, v4

    .line 4005
    :goto_101
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v12, v11

    if-ge v10, v12, :cond_140

    .line 4006
    iget-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v12, v12, v10

    if-nez v12, :cond_10d

    goto :goto_13d

    .line 4012
    :cond_10d
    aget-object v11, v11, v10

    .line 4013
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v13, v13, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v13, v11}, Lcom/android/server/connectivity/Vpn$Dependencies;->startService(Ljava/lang/String;)V

    .line 4016
    :goto_116
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v13, v13, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v13, v11}, Lcom/android/server/connectivity/Vpn$Dependencies;->isServiceRunning(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_124

    .line 4017
    invoke-virtual {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_116

    .line 4021
    :cond_124
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    new-instance v14, Landroid/net/LocalSocket;

    invoke-direct {v14}, Landroid/net/LocalSocket;-><init>()V

    aput-object v14, v13, v10

    .line 4024
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v13, v13, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget-object v14, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v14, v14, v10

    new-instance v15, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$$ExternalSyntheticLambda0;

    invoke-direct {v15, v1}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V

    invoke-virtual {v13, v11, v14, v12, v15}, Lcom/android/server/connectivity/Vpn$Dependencies;->sendArgumentsToDaemon(Ljava/lang/String;Landroid/net/LocalSocket;[Ljava/lang/String;Lcom/android/server/connectivity/Vpn$RetryScheduler;)V

    :goto_13d
    add-int/lit8 v10, v10, 0x1

    goto :goto_101

    .line 4029
    :cond_140
    :goto_140
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1a3

    move v10, v4

    .line 4031
    :goto_147
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v12, v11

    if-ge v10, v12, :cond_19f

    .line 4032
    aget-object v11, v11, v10

    .line 4033
    iget-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v12, v12, v10

    if-eqz v12, :cond_176

    iget-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v12, v12, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v12, v11}, Lcom/android/server/connectivity/Vpn$Dependencies;->isServiceRunning(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15f

    goto :goto_176

    .line 4034
    :cond_15f
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is dead"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_176
    :goto_176
    const-string v12, "charon"

    .line 4037
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_19c

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_185

    goto :goto_19c

    .line 4038
    :cond_185
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is shutdown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19c
    :goto_19c
    add-int/lit8 v10, v10, 0x1

    goto :goto_147

    .line 4042
    :cond_19f
    invoke-virtual {v1, v6}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    goto :goto_140

    .line 4046
    :cond_1a3
    invoke-static {v8, v4, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "\n"

    const/4 v10, -0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 4047
    array-length v9, v8

    const/4 v10, 0x7

    if-ne v9, v10, :cond_3f7

    .line 4053
    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    aget-object v10, v8, v4

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    .line 4055
    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    aget-object v10, v8, v6

    invoke-virtual {v9, v10}, Lcom/android/internal/net/VpnConfig;->addLegacyAddresses(Ljava/lang/String;)V

    .line 4057
    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    aget-object v10, v8, v6

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v4

    invoke-static {v9, v10}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fputmLegacyAddress(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)V

    if-nez p1, :cond_1ef

    .line 4062
    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v9, v9, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    if-eqz v9, :cond_1e6

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1ef

    .line 4063
    :cond_1e6
    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    aget-object v5, v8, v5

    invoke-virtual {v9, v5}, Lcom/android/internal/net/VpnConfig;->addLegacyRoutes(Ljava/lang/String;)V

    .line 4069
    :cond_1ef
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    if-eqz v5, :cond_1fd

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_21a

    :cond_1fd
    const/4 v5, 0x3

    .line 4070
    aget-object v5, v8, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 4071
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_21a

    .line 4072
    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v9, Lcom/android/internal/net/VpnConfig;->dnsServers:Ljava/util/List;

    .line 4077
    :cond_21a
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    if-eqz v5, :cond_228

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_245

    :cond_228
    const/4 v5, 0x4

    .line 4078
    aget-object v5, v8, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 4079
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_245

    .line 4080
    iget-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v8, v8, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    const-string v9, " "

    invoke-virtual {v5, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v8, Lcom/android/internal/net/VpnConfig;->searchDomains:Ljava/util/List;

    :cond_245
    const/16 v5, 0x80

    const/16 v8, 0x20

    const/16 v9, 0x9

    if-nez p1, :cond_29e

    .line 4087
    instance-of v10, v0, Ljava/net/Inet4Address;

    if-eqz v10, :cond_265

    .line 4088
    iget-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v10, v10, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v11, Landroid/net/RouteInfo;

    new-instance v12, Landroid/net/IpPrefix;

    invoke-direct {v12, v0, v8}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v11, v12, v7, v7, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_293

    .line 4091
    :cond_265
    instance-of v10, v0, Ljava/net/Inet6Address;

    if-eqz v10, :cond_27d

    .line 4092
    iget-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v10, v10, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v10, v10, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v11, Landroid/net/RouteInfo;

    new-instance v12, Landroid/net/IpPrefix;

    invoke-direct {v12, v0, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v11, v12, v7, v7, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_293

    :cond_27d
    const-string v10, "LegacyVpnRunner"

    .line 4096
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown IP address family for VPN endpoint: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    :goto_293
    iget-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-boolean v11, v10, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v11, :cond_29e

    .line 4101
    iget-object v11, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    invoke-static {v10, v11, v6}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 4105
    :cond_29e
    instance-of v6, v0, Ljava/net/Inet4Address;

    if-eqz v6, :cond_2b6

    .line 4106
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v5, v5, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v5, v5, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v6, Landroid/net/RouteInfo;

    new-instance v10, Landroid/net/IpPrefix;

    invoke-direct {v10, v0, v8}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v6, v10, v7, v7, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e4

    .line 4109
    :cond_2b6
    instance-of v6, v0, Ljava/net/Inet6Address;

    if-eqz v6, :cond_2ce

    .line 4110
    iget-object v6, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v6, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->routes:Ljava/util/List;

    new-instance v8, Landroid/net/RouteInfo;

    new-instance v10, Landroid/net/IpPrefix;

    invoke-direct {v10, v0, v5}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v8, v10, v7, v7, v9}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2e4

    :cond_2ce
    const-string v5, "LegacyVpnRunner"

    .line 4114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown IP address family for VPN endpoint: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4119
    :goto_2e4
    iget-object v5, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    monitor-enter v5
    :try_end_2e7
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_2e7} :catch_429

    .line 4121
    :try_start_2e7
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/internal/net/VpnConfig;->startTime:J

    .line 4124
    invoke-virtual {v1, v4}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->checkInterruptAndDelay(Z)V

    .line 4127
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v0, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    iget-object v7, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v6, v0, v7}, Lcom/android/server/connectivity/Vpn$Dependencies;->isInterfacePresent(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d7

    .line 4132
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v6, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v6, v6, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    iput-object v6, v0, Lcom/android/server/connectivity/Vpn;->mInterface:Ljava/lang/String;

    .line 4133
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mprepareStatusIntent(Lcom/android/server/connectivity/Vpn;)V

    .line 4141
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$magentConnect(Lcom/android/server/connectivity/Vpn;)V

    const-string v0, "LegacyVpnRunner"

    const-string v6, "Connected!"

    .line 4146
    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_342

    .line 4152
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mshowNotification(Lcom/android/server/connectivity/Vpn;)V

    const-string v0, "LegacyVpnRunner"

    const-string v6, "add vpn rules"

    .line 4153
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4154
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnRules(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->createVpnPostroutingChain()V

    .line 4155
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnRules(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->addTcpmssClampRule()V

    .line 4157
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const-string v7, "agentConnect"

    invoke-static {v0, v6, v7}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mbroadcastVpnState(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 4164
    :cond_342
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->isWifiApMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3a0

    .line 4165
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    if-nez v0, :cond_359

    .line 4166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 4168
    :cond_359
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v0, v0, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v0, v0, Lcom/android/internal/net/VpnConfig;->addresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_363
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/LinkAddress;

    const-string v7, "LegacyVpnRunner"

    .line 4169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addVpnRuleForTethering :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4170
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v7}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnRules(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/VpnRules;->addVpnRuleForTethering(Ljava/lang/String;)V

    .line 4171
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    invoke-virtual {v6}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_363

    .line 4175
    :cond_3a0
    monitor-exit v5
    :try_end_3a1
    .catchall {:try_start_2e7 .. :try_end_3a1} :catchall_3f4

    const/4 v8, 0x5

    const/4 v9, 0x5

    const/4 v10, 0x1

    .line 4180
    :try_start_3a4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    const-string v12, "Vpn"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connecting to VPN network  to server address "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from type "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " succeeded"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    .line 4186
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 4179
    invoke-static/range {v8 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3d5
    .catch Ljava/lang/Exception; {:try_start_3a4 .. :try_end_3d5} :catch_429

    goto/16 :goto_48e

    .line 4128
    :cond_3d7
    :try_start_3d7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mConfig:Lcom/android/internal/net/VpnConfig;

    iget-object v7, v7, Lcom/android/internal/net/VpnConfig;->interfaze:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is gone"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_3f4
    move-exception v0

    .line 4175
    monitor-exit v5
    :try_end_3f6
    .catchall {:try_start_3d7 .. :try_end_3f6} :catchall_3f4

    :try_start_3f6
    throw v0

    .line 4048
    :cond_3f7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse the state: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\', \'"

    .line 4049
    invoke-static {v6, v8}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3998
    :cond_419
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot delete the abort"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3992
    :cond_421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v5, "Cannot delete the state"

    invoke-direct {v0, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_429
    .catch Ljava/lang/Exception; {:try_start_3f6 .. :try_end_429} :catch_429

    :catch_429
    move-exception v0

    const-string v5, "LegacyVpnRunner"

    const-string v6, "Aborting"

    .line 4190
    invoke-static {v5, v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v7, 0x5

    const/4 v8, 0x5

    const/4 v9, 0x0

    .line 4194
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-string v11, "Vpn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connecting to VPN network to server address "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from type "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    .line 4200
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 4193
    invoke-static/range {v7 .. v14}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4204
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-boolean v3, v2, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v3, :cond_470

    .line 4205
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    .line 4208
    :cond_470
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    .line 4210
    iget-object v2, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 4211
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exitVpnRunner()V

    if-nez p1, :cond_48e

    .line 4214
    iget-object v1, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mbroadcastVpnState(Lcom/android/server/connectivity/Vpn;Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    :cond_48e
    :goto_48e
    return-void
.end method

.method public final checkAndFixupArguments(Ljava/net/InetAddress;)V
    .registers 6

    .line 3885
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    .line 3887
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "charon"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 3888
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_32

    .line 3889
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 3892
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object p0, p0, v1

    aput-object p1, p0, v1

    goto :goto_32

    .line 3890
    :cond_2a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid server argument for charon"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    :goto_32
    return-void

    .line 3900
    :cond_33
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string/jumbo v2, "racoon"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    const-string/jumbo v3, "mtpd"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 3907
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_6f

    .line 3908
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 3911
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v0, v0, v1

    aput-object p1, v0, v2

    goto :goto_6f

    .line 3909
    :cond_67
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid server argument for racoon"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3914
    :cond_6f
    :goto_6f
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_91

    .line 3915
    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 3918
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object p0, p0, v2

    aput-object p1, p0, v3

    goto :goto_91

    .line 3916
    :cond_89
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid server argument for mtpd"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_91
    :goto_91
    return-void

    .line 3901
    :cond_92
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unexpected daemons order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final checkInterruptAndDelay(Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 3875
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3876
    iget-wide v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBringupStartTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_19

    if-eqz p1, :cond_13

    const-wide/16 p0, 0xc8

    goto :goto_15

    :cond_13
    const-wide/16 p0, 0x1

    .line 3877
    :goto_15
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V

    return-void

    .line 3879
    :cond_19
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    const-string v0, "checkpoint"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Vpn;->updateState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;)V

    .line 3880
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VPN bringup took too long"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public exitIfOuterInterfaceIs(Ljava/lang/String;)V
    .registers 4

    .line 3741
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mOuterInterface:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 3742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Legacy VPN is going down with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LegacyVpnRunner"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->exitVpnRunner()V

    :cond_21
    return-void
.end method

.method public exitVpnRunner()V
    .registers 3

    .line 3751
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 3755
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$magentDisconnect(Lcom/android/server/connectivity/Vpn;)V

    .line 3757
    :try_start_8
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 3759
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmContext(Lcom/android/server/connectivity/Vpn;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mTetheringChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method

.method public final isCharonActivated()Z
    .registers 2

    :try_start_0
    const-string/jumbo p0, "ipsec0"

    .line 4277
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    const/4 p0, 0x1

    return p0

    :catch_c
    const-string p0, "LegacyVpnRunner"

    const-string v0, "charon Iface doesn\'t exist"

    .line 4281
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final isEgressActivated()Z
    .registers 8

    const-string v0, "Egress Iface ("

    const-string v1, "LegacyVpnRunner"

    const/4 v2, 0x0

    .line 4310
    :try_start_5
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v3}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEgressIface(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    .line 4311
    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    move v5, v2

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InetAddress;

    move v5, v4

    goto :goto_1d

    :cond_2b
    if-nez v5, :cond_4b

    .line 4315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEgressIface(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") deactivated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_4a} :catch_4c

    return v2

    :cond_4b
    return v4

    .line 4321
    :catch_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmEgressIface(Lcom/android/server/connectivity/Vpn;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") doesn\'t exist"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final isWifiApMode(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    const-string/jumbo p0, "wifi"

    .line 4260
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 4262
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result p0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_13

    const/16 p1, 0xd

    if-ne p0, p1, :cond_1e

    const/4 p0, 0x1

    return p0

    :catch_13
    move-exception p0

    const-string p1, "LegacyVpnRunner"

    const-string v0, "Failed to get hotspot status, assume hotpost disabled"

    .line 4267
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .registers 28

    move-object/from16 v1, p0

    const-string v0, "LegacyVpnRunner"

    const-string v2, "Waiting"

    .line 3767
    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LegacyVpnRunner"

    .line 3771
    monitor-enter v2

    :try_start_c
    const-string v0, "LegacyVpnRunner"

    const-string v3, "Executing"

    .line 3772
    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_2c3

    const-wide/16 v3, 0xc8

    const/16 v5, 0x14

    const-wide/16 v6, 0x32

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 3784
    :try_start_1d
    invoke-virtual {v1, v10}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->bringup(Z)V

    .line 3787
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->waitForDaemonsToStop()V

    .line 3788
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_26} :catch_1d7
    .catchall {:try_start_1d .. :try_end_26} :catchall_fc

    .line 3792
    :try_start_26
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-boolean v12, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v12, :cond_31

    .line 3793
    iget-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    invoke-static {v0, v12, v10}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    :cond_31
    const-string v0, "LegacyVpnRunner"

    const-string v12, "delete vpn rules"

    .line 3799
    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnRules(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 3805
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    if-eqz v0, :cond_77

    .line 3806
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "LegacyVpnRunner"

    .line 3807
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deleteTetheringRule"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v13}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnRules(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/server/connectivity/VpnRules;->deleteTetheringRule(Ljava/lang/String;)V

    goto :goto_49

    .line 3810
    :cond_75
    iput-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 3812
    :cond_77
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    const-string v0, ""

    const-string v8, ""

    .line 3819
    iget-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v13, v12

    if-le v13, v11, :cond_8e

    aget-object v12, v12, v11

    if-eqz v12, :cond_8e

    .line 3821
    array-length v13, v12

    if-le v13, v9, :cond_8e

    .line 3822
    aget-object v0, v12, v11

    .line 3823
    aget-object v8, v12, v9

    :cond_8e
    const/4 v11, 0x5

    const/4 v12, 0x5

    const/4 v13, 0x1

    .line 3827
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    const-string v15, "Vpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Disconnecting from VPN network to server address "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " from type "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " succeeded"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    .line 3833
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 3826
    invoke-static/range {v11 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3836
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v8, v0

    const/4 v9, 0x0

    :goto_c6
    if-ge v9, v8, :cond_d0

    aget-object v10, v0, v9

    .line 3837
    invoke-static {v10}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_cd
    .catchall {:try_start_26 .. :try_end_cd} :catchall_2c3

    add-int/lit8 v9, v9, 0x1

    goto :goto_c6

    .line 3842
    :cond_d0
    :try_start_d0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d3
    .catch Ljava/lang/InterruptedException; {:try_start_d0 .. :try_end_d3} :catch_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_2c3

    .line 3845
    :catch_d3
    :try_start_d3
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v6, v0

    const/4 v7, 0x0

    :goto_d7
    if-ge v7, v6, :cond_2b7

    aget-object v8, v0, v7

    const-string v9, "charon"

    .line 3847
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f2

    const/4 v9, 0x0

    :goto_e4
    if-ge v9, v5, :cond_f2

    .line 3848
    invoke-static {v8}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v10
    :try_end_ea
    .catchall {:try_start_d3 .. :try_end_ea} :catchall_2c3

    if-eqz v10, :cond_f2

    .line 3850
    :try_start_ec
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_ef} :catch_ef
    .catchall {:try_start_ec .. :try_end_ef} :catchall_2c3

    :catch_ef
    add-int/lit8 v9, v9, 0x1

    goto :goto_e4

    .line 3855
    :cond_f2
    :try_start_f2
    iget-object v9, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v9, v9, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v9, v8}, Lcom/android/server/connectivity/Vpn$Dependencies;->stopService(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_d7

    :catchall_fc
    move-exception v0

    .line 3792
    iget-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-boolean v12, v10, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v12, :cond_109

    .line 3793
    iget-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v10, v12, v13}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    :cond_109
    const-string v10, "LegacyVpnRunner"

    const-string v12, "delete vpn rules"

    .line 3799
    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    iget-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v10}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnRules(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 3805
    iget-object v10, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    if-eqz v10, :cond_14f

    .line 3806
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_121
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "LegacyVpnRunner"

    .line 3807
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "deleteTetheringRule"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    iget-object v13, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v13}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnRules(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/server/connectivity/VpnRules;->deleteTetheringRule(Ljava/lang/String;)V

    goto :goto_121

    .line 3810
    :cond_14d
    iput-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 3812
    :cond_14f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    const-string v8, ""

    const-string v10, ""

    .line 3819
    iget-object v12, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v13, v12

    if-le v13, v11, :cond_166

    aget-object v12, v12, v11

    if-eqz v12, :cond_166

    .line 3821
    array-length v13, v12

    if-le v13, v9, :cond_166

    .line 3822
    aget-object v8, v12, v11

    .line 3823
    aget-object v10, v12, v9

    :cond_166
    const/4 v11, 0x5

    const/4 v12, 0x5

    const/4 v13, 0x1

    .line 3827
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    const-string v15, "Vpn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting from VPN network to server address "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from type "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " succeeded"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v17, ""

    .line 3833
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v18

    .line 3826
    invoke-static/range {v11 .. v18}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3836
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v4, v3

    const/4 v13, 0x0

    :goto_19e
    if-ge v13, v4, :cond_1a8

    aget-object v8, v3, v13

    .line 3837
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_1a5
    .catchall {:try_start_f2 .. :try_end_1a5} :catchall_2c3

    add-int/lit8 v13, v13, 0x1

    goto :goto_19e

    .line 3842
    :cond_1a8
    :try_start_1a8
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1ab
    .catch Ljava/lang/InterruptedException; {:try_start_1a8 .. :try_end_1ab} :catch_1ab
    .catchall {:try_start_1a8 .. :try_end_1ab} :catchall_2c3

    .line 3845
    :catch_1ab
    :try_start_1ab
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v4, v3

    const/4 v13, 0x0

    :goto_1af
    if-ge v13, v4, :cond_1d6

    aget-object v6, v3, v13

    const-string v7, "charon"

    .line 3847
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1cc

    const/4 v7, 0x0

    :goto_1bc
    if-ge v7, v5, :cond_1cc

    .line 3848
    invoke-static {v6}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v8
    :try_end_1c2
    .catchall {:try_start_1ab .. :try_end_1c2} :catchall_2c3

    if-eqz v8, :cond_1cc

    const-wide/16 v8, 0xc8

    .line 3850
    :try_start_1c6
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_1c6 .. :try_end_1c9} :catch_1c9
    .catchall {:try_start_1c6 .. :try_end_1c9} :catchall_2c3

    :catch_1c9
    add-int/lit8 v7, v7, 0x1

    goto :goto_1bc

    .line 3855
    :cond_1cc
    :try_start_1cc
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v7, v6}, Lcom/android/server/connectivity/Vpn$Dependencies;->stopService(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1af

    .line 3857
    :cond_1d6
    throw v0

    .line 3792
    :catch_1d7
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-boolean v3, v0, Lcom/android/server/connectivity/Vpn;->mLockdown:Z

    if-nez v3, :cond_1e4

    .line 3793
    iget-object v3, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mServerIP:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static {v0, v3, v13}, Lcom/android/server/connectivity/Vpn;->-$$Nest$msetupIpRulesForCcMode(Lcom/android/server/connectivity/Vpn;Ljava/lang/String;Z)V

    goto :goto_1e5

    :cond_1e4
    const/4 v13, 0x0

    :goto_1e5
    const-string v0, "LegacyVpnRunner"

    const-string v3, "delete vpn rules"

    .line 3799
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3800
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnRules(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/VpnRules;->deleteVpnPostroutingChain()V

    .line 3805
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    if-eqz v0, :cond_22b

    .line 3806
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1fd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_229

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "LegacyVpnRunner"

    .line 3807
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "deleteTetheringRule"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v4}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmVpnRules(Lcom/android/server/connectivity/Vpn;)Lcom/android/server/connectivity/VpnRules;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/connectivity/VpnRules;->deleteTetheringRule(Ljava/lang/String;)V

    goto :goto_1fd

    .line 3810
    :cond_229
    iput-object v8, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->ipAddresses:Ljava/util/List;

    .line 3812
    :cond_22b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->stopLegacyDaemons()V

    const-string v0, ""

    const-string v3, ""

    .line 3819
    iget-object v4, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    array-length v8, v4

    if-le v8, v11, :cond_242

    aget-object v4, v4, v11

    if-eqz v4, :cond_242

    .line 3821
    array-length v8, v4

    if-le v8, v9, :cond_242

    .line 3822
    aget-object v0, v4, v11

    .line 3823
    aget-object v3, v4, v9

    :cond_242
    const/16 v19, 0x5

    const/16 v20, 0x5

    const/16 v21, 0x1

    .line 3827
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v22

    const-string v23, "Vpn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Disconnecting from VPN network to server address "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " from type "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " succeeded"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, ""

    .line 3833
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v26

    .line 3826
    invoke-static/range {v19 .. v26}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 3836
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    array-length v3, v0

    move v4, v13

    :goto_27d
    if-ge v4, v3, :cond_287

    aget-object v8, v0, v4

    .line 3837
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_284
    .catchall {:try_start_1cc .. :try_end_284} :catchall_2c3

    add-int/lit8 v4, v4, 0x1

    goto :goto_27d

    .line 3842
    :cond_287
    :try_start_287
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_28a
    .catch Ljava/lang/InterruptedException; {:try_start_287 .. :try_end_28a} :catch_28a
    .catchall {:try_start_287 .. :try_end_28a} :catchall_2c3

    .line 3845
    :catch_28a
    :try_start_28a
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v3, v0

    move v4, v13

    :goto_28e
    if-ge v4, v3, :cond_2b7

    aget-object v6, v0, v4

    const-string v7, "charon"

    .line 3847
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2ab

    move v7, v13

    :goto_29b
    if-ge v7, v5, :cond_2ab

    .line 3848
    invoke-static {v6}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v8
    :try_end_2a1
    .catchall {:try_start_28a .. :try_end_2a1} :catchall_2c3

    if-eqz v8, :cond_2ab

    const-wide/16 v8, 0xc8

    .line 3850
    :try_start_2a5
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_2a5 .. :try_end_2a8} :catch_2a8
    .catchall {:try_start_2a5 .. :try_end_2a8} :catchall_2c3

    :catch_2a8
    add-int/lit8 v7, v7, 0x1

    goto :goto_29b

    :cond_2ab
    const-wide/16 v8, 0xc8

    .line 3855
    :try_start_2ad
    iget-object v7, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v7, v7, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    invoke-virtual {v7, v6}, Lcom/android/server/connectivity/Vpn$Dependencies;->stopService(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_28e

    .line 3858
    :cond_2b7
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$magentDisconnect(Lcom/android/server/connectivity/Vpn;)V

    .line 3860
    iget-object v0, v1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$mhideNotification(Lcom/android/server/connectivity/Vpn;)V

    .line 3862
    monitor-exit v2

    return-void

    :catchall_2c3
    move-exception v0

    monitor-exit v2
    :try_end_2c5
    .catchall {:try_start_2ad .. :try_end_2c5} :catchall_2c3

    throw v0
.end method

.method public final stopLegacyDaemons()V
    .registers 7

    const-string v0, "LegacyVpnRunner"

    const-string/jumbo v1, "stopLegacyDaemons: begin"

    .line 4287
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 4288
    :goto_a
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_40

    .line 4289
    aget-object v2, v2, v1

    const-string v3, "charon"

    .line 4290
    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_33

    .line 4293
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v3, v3, v1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move v3, v0

    :goto_21
    const/16 v4, 0x14

    if-ge v3, v4, :cond_3a

    .line 4295
    invoke-static {v2}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a

    const-wide/16 v4, 0xc8

    .line 4297
    :try_start_2d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_30} :catch_30

    :catch_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 4301
    :cond_33
    iget-object v3, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mSockets:[Landroid/net/LocalSocket;

    aget-object v3, v3, v1

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4303
    :cond_3a
    invoke-static {v2}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_40
    return-void
.end method

.method public final waitForDaemonsToStop()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 4234
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$fgetmNetworkInfo(Lcom/android/server/connectivity/Vpn;)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    const-wide/16 v0, 0x7d0

    .line 4238
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 4240
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string/jumbo v2, "racoon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_27

    .line 4241
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->isEgressActivated()Z

    move-result v0

    if-nez v0, :cond_40

    goto :goto_3f

    .line 4243
    :cond_27
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    aget-object v0, v0, v1

    const-string v2, "charon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_40

    .line 4244
    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->isCharonActivated()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->isEgressActivated()Z

    move-result v0

    if-nez v0, :cond_40

    :cond_3f
    :goto_3f
    return-void

    .line 4248
    :cond_40
    :goto_40
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mDaemons:[Ljava/lang/String;

    array-length v2, v0

    if-ge v1, v2, :cond_d

    .line 4249
    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->mArguments:[[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_58

    iget-object v2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    iget-object v2, v2, Lcom/android/server/connectivity/Vpn;->mDeps:Lcom/android/server/connectivity/Vpn$Dependencies;

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/Vpn$Dependencies;->isServiceStopped(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    return-void

    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_40
.end method
