.class public Lcom/android/server/connectivity/Vpn$3;
.super Landroid/net/NetworkAgent;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn;->agentConnectForKnoxInterface()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Vpn;Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V
    .registers 19

    move-object v0, p0

    move-object v1, p1

    .line 4657
    iput-object v1, v0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;)V

    return-void
.end method


# virtual methods
.method public onNetworkCreated()V
    .registers 3

    const-string v0, "Vpn"

    const-string/jumbo v1, "knox vpn network is created"

    .line 4664
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    iget-object p0, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p0}, Lcom/android/server/connectivity/Vpn;->-$$Nest$monKnoxVpnConnected(Lcom/android/server/connectivity/Vpn;)V

    return-void
.end method

.method public onNetworkDestroyed()V
    .registers 2

    const-string p0, "Vpn"

    const-string/jumbo v0, "knox vpn network is destroyed"

    .line 4669
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNetworkUnwanted()V
    .registers 1

    return-void
.end method
