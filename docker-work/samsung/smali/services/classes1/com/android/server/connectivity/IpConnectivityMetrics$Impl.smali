.class public final Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;
.super Landroid/net/IIpConnectivityMetrics$Stub;
.source "IpConnectivityMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/IpConnectivityMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Impl"
.end annotation


# static fields
.field public static final CMD_DEFAULT:Ljava/lang/String; = ""

.field public static final CMD_FLUSH:Ljava/lang/String; = "flush"

.field public static final CMD_LIST:Ljava/lang/String; = "list"

.field public static final CMD_PROTO:Ljava/lang/String; = "proto"

.field public static final CMD_PROTO_BIN:Ljava/lang/String; = "--proto"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V
    .registers 2

    .line 290
    iput-object p1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-direct {p0}, Landroid/net/IIpConnectivityMetrics$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .registers 3

    .line 355
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceNetdEventListeningPermission()V

    .line 356
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-nez p0, :cond_b

    const/4 p0, 0x0

    return p0

    .line 359
    :cond_b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 314
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceDumpPermission()V

    .line 317
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetdEventListenerService;->writeMobileDataDnsFile()V

    .line 319
    array-length v0, p3

    const/4 v1, 0x0

    if-lez v0, :cond_11

    aget-object p3, p3, v1

    goto :goto_13

    :cond_11
    const-string p3, ""

    :goto_13
    const/4 v0, -0x1

    .line 320
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_6c

    goto :goto_47

    :sswitch_1e
    const-string/jumbo v1, "proto"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_47

    move v1, v4

    goto :goto_48

    :sswitch_29
    const-string v2, "flush"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_47

    goto :goto_48

    :sswitch_32
    const-string/jumbo v1, "list"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_47

    const/4 v1, 0x3

    goto :goto_48

    :sswitch_3d
    const-string v1, "--proto"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_47

    move v1, v3

    goto :goto_48

    :cond_47
    :goto_47
    move v1, v0

    :goto_48
    if-eqz v1, :cond_65

    if-eq v1, v4, :cond_5f

    if-eq v1, v3, :cond_54

    .line 332
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {p0, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-$$Nest$mcmdList(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    return-void

    .line 328
    :cond_54
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {p0, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-$$Nest$mcmdListAsBinaryProto(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/OutputStream;)V

    return-void

    .line 325
    :cond_5f
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {p0, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-$$Nest$mcmdListAsTextProto(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    return-void

    .line 322
    :cond_65
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {p0, p2}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-$$Nest$mcmdFlush(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V

    return-void

    nop

    :sswitch_data_6c
    .sparse-switch
        -0x605db7b8 -> :sswitch_3d
        0x32b09e -> :sswitch_32
        0x5d03b04 -> :sswitch_29
        0x65fc9e8 -> :sswitch_1e
    .end sparse-switch
.end method

.method public final enforceDumpPermission()V
    .registers 2

    const-string v0, "android.permission.DUMP"

    .line 338
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforcePermission(Ljava/lang/String;)V

    return-void
.end method

.method public final enforceNetdEventListeningPermission()V
    .registers 4

    .line 346
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_9

    return-void

    .line 348
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 349
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "Uid %d has no permission to listen for netd events."

    .line 348
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final enforcePermission(Ljava/lang/String;)V
    .registers 3

    .line 342
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "IpConnectivityMetrics"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public logDefaultNetworkEvent(Landroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .registers 24

    move-object v0, p0

    .line 382
    iget-object v1, v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 384
    iget-object v0, v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object v2, v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    move-object v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkEvent(JLandroid/net/Network;IZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;ILandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public logDefaultNetworkValidity(Z)V
    .registers 4

    .line 374
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 375
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkValidity(JZ)V

    return-void
.end method

.method public logEvent(Landroid/net/ConnectivityMetricsEvent;)I
    .registers 3

    .line 308
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 309
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->-$$Nest$mappend(Lcom/android/server/connectivity/IpConnectivityMetrics;Landroid/net/ConnectivityMetricsEvent;)I

    move-result p0

    return p0
.end method

.method public removeNetdEventCallback(I)Z
    .registers 2

    .line 364
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->enforceNetdEventListeningPermission()V

    .line 365
    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;->this$0:Lcom/android/server/connectivity/IpConnectivityMetrics;

    iget-object p0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-nez p0, :cond_b

    const/4 p0, 0x1

    return p0

    .line 369
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->removeNetdEventCallback(I)Z

    move-result p0

    return p0
.end method
