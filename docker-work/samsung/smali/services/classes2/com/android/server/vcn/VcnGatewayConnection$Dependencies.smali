.class public Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;
.super Ljava/lang/Object;
.source "VcnGatewayConnection.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/VcnGatewayConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dependencies"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getElapsedRealTime()J
    .registers 3

    .line 2579
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnderlyingIfaceMtu(Ljava/lang/String;)I
    .registers 4

    const/4 p0, 0x0

    .line 2585
    :try_start_1
    invoke-static {p1}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object p1

    if-nez p1, :cond_8

    goto :goto_c

    .line 2586
    :cond_8
    invoke-virtual {p1}, Ljava/net/NetworkInterface;->getMTU()I

    move-result p0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_d

    :goto_c
    return p0

    :catch_d
    move-exception p1

    .line 2588
    invoke-static {}, Lcom/android/server/vcn/VcnGatewayConnection;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Could not get MTU of underlying network"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public isAirplaneModeOn(Lcom/android/server/vcn/VcnContext;)Z
    .registers 3

    .line 2573
    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "airplane_mode_on"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public newIkeSession(Lcom/android/server/vcn/VcnContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .registers 12

    .line 2525
    new-instance p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)V

    return-object p0
.end method

.method public newNetworkAgent(Lcom/android/server/vcn/VcnContext;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/vcn/VcnContext;",
            "Ljava/lang/String;",
            "Landroid/net/NetworkCapabilities;",
            "Landroid/net/LinkProperties;",
            "Landroid/net/NetworkScore;",
            "Landroid/net/NetworkAgentConfig;",
            "Landroid/net/NetworkProvider;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;"
        }
    .end annotation

    .line 2559
    new-instance v10, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;-><init>(Lcom/android/server/vcn/VcnContext;Ljava/lang/String;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Landroid/net/NetworkScore;Landroid/net/NetworkAgentConfig;Landroid/net/NetworkProvider;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    return-object v10
.end method

.method public newUnderlyingNetworkController(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;
    .registers 12

    .line 2514
    new-instance p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;)V

    return-object p0
.end method

.method public newWakeLock(Landroid/content/Context;ILjava/lang/String;)Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;
    .registers 4

    .line 2536
    new-instance p0, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    return-object p0
.end method

.method public newWakeupMessage(Lcom/android/server/vcn/VcnContext;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/internal/util/WakeupMessage;
    .registers 5

    .line 2545
    new-instance p0, Lcom/android/internal/util/WakeupMessage;

    invoke-virtual {p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/util/WakeupMessage;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object p0
.end method
