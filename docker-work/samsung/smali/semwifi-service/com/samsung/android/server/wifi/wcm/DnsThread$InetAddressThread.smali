.class final Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;
.super Ljava/lang/Thread;
.source "DnsThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/DnsThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InetAddressThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.InetAddressThread"


# instance fields
.field private final mHostToResolve:Ljava/lang/String;

.field private volatile mResultIp:Ljava/net/InetAddress;

.field private volatile mResultType:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/DnsThread;Ljava/lang/String;)V
    .registers 3

    .line 186
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 183
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    const/4 p1, 0x0

    .line 184
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 187
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mHostToResolve:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getResultIp()Ljava/net/InetAddress;
    .registers 1

    .line 191
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    return-object p0
.end method

.method public getType()I
    .registers 1

    .line 195
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    return p0
.end method

.method public run()V
    .registers 18

    move-object/from16 v1, p0

    const-string v0, "."

    const-string v2, "WifiConnectivityMonitor.InetAddressThread"

    const/4 v3, 0x1

    .line 201
    :try_start_7
    iget-object v4, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/Network;

    move-result-object v4

    if-nez v4, :cond_28

    const/16 v0, 0x9

    .line 202
    iput v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 203
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "already disconnected!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_1e
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 208
    :cond_28
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v4

    if-eqz v4, :cond_44

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DNS requested, Host : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mHostToResolve:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_44
    iget-object v4, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/Network;

    move-result-object v4

    iget-object v5, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mHostToResolve:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v4

    .line 212
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v5

    if-eqz v5, :cond_73

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DNS response arrived from InetThread ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_73
    iget-object v5, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {v5}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmAlreadyFinished(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Z

    move-result v5

    if-eqz v5, :cond_87

    .line 215
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_86

    const-string v0, "already finished"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_86
    return-void

    .line 218
    :cond_87
    iget-object v5, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {v5, v3}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fputmAlreadyFinished(Lcom/samsung/android/server/wifi/wcm/DnsThread;Z)V

    const/4 v5, 0x0

    .line 222
    array-length v6, v4
    :try_end_8e
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_8e} :catch_1fb
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_8e} :catch_1d3
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_8e} :catch_1aa

    const/4 v7, 0x0

    move v8, v7

    :goto_90
    const-string v9, "DNS_CHECK_RESULT_SUCCESS: "

    if-ge v8, v6, :cond_16c

    :try_start_94
    aget-object v10, v4, v8

    .line 223
    instance-of v11, v10, Ljava/net/Inet4Address;

    if-eqz v11, :cond_167

    .line 225
    invoke-virtual {v10}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v11

    aget-byte v11, v11, v7

    and-int/lit16 v11, v11, 0xff

    .line 226
    invoke-virtual {v10}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v12

    aget-byte v12, v12, v3

    and-int/lit16 v12, v12, 0xff

    .line 227
    invoke-virtual {v10}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v13

    const/4 v14, 0x2

    aget-byte v13, v13, v14

    and-int/lit16 v13, v13, 0xff

    .line 228
    invoke-virtual {v10}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v15

    const/16 v16, 0x3

    aget-byte v15, v15, v16

    and-int/lit16 v15, v15, 0xff

    const/16 v14, 0xa

    if-eq v11, v14, :cond_110

    const/16 v14, 0xc0

    if-ne v11, v14, :cond_c9

    const/16 v14, 0xa8

    if-eq v12, v14, :cond_110

    :cond_c9
    const/16 v14, 0xac

    if-ne v11, v14, :cond_d5

    const/16 v14, 0x10

    if-lt v12, v14, :cond_d5

    const/16 v14, 0x1f

    if-le v12, v14, :cond_110

    :cond_d5
    if-ne v11, v3, :cond_e4

    const/16 v14, 0x21

    if-ne v12, v14, :cond_e4

    const/16 v14, 0xcb

    if-ne v13, v14, :cond_e4

    const/16 v14, 0x27

    if-ne v15, v14, :cond_e4

    goto :goto_110

    .line 241
    :cond_e4
    iput-object v10, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    .line 242
    iput v7, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 243
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_106

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_106
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    .line 233
    :cond_110
    :goto_110
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v9

    if-eqz v9, :cond_141

    .line 234
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mHostToResolve:Ljava/lang/String;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " - Dns Response with private Network IP Address !!! - "

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_141
    iput-object v10, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    const/4 v9, 0x2

    .line 237
    iput v9, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 238
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v9

    if-eqz v9, :cond_168

    .line 239
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DNS_CHECK_RESULT_PRIVATE_IP: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    invoke-virtual {v10}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_168

    :cond_167
    move-object v5, v10

    :cond_168
    :goto_168
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_90

    .line 253
    :cond_16c
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    if-nez v0, :cond_19f

    if-eqz v5, :cond_19f

    .line 254
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_17d

    const-string v0, "Dns Response with IPv6"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_17d
    iput-object v5, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    .line 256
    iput v7, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 257
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_19f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_19f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1a8
    .catch Ljava/net/UnknownHostException; {:try_start_94 .. :try_end_1a8} :catch_1fb
    .catch Ljava/lang/SecurityException; {:try_start_94 .. :try_end_1a8} :catch_1d3
    .catch Ljava/lang/NullPointerException; {:try_start_94 .. :try_end_1a8} :catch_1aa

    goto/16 :goto_23a

    :catch_1aa
    move-exception v0

    .line 276
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_1c5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointerException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c5
    const/16 v0, 0x8

    .line 277
    iput v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 278
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_23a

    :catch_1d3
    move-exception v0

    .line 272
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_1ee

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1ee
    const/4 v0, 0x7

    .line 273
    iput v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 274
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_23a

    :catch_1fb
    move-exception v0

    .line 261
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_223

    const-string v4, "DNS service refused"

    .line 262
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_223

    .line 263
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_215

    const-string v0, "DNS_CHECK_RESULT_NO_INTERNET"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_215
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmDnsThreadCallBack(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;

    move-result-object v0

    const/16 v2, 0x612

    invoke-interface {v0, v2}, Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;->notifyAnalyticsDisconnectReason(S)V

    .line 265
    iput v3, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    goto :goto_231

    .line 267
    :cond_223
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_22e

    const-string v0, "DNS_CHECK_RESULT_UNKNOWNHOSTEXCEPTION"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22e
    const/4 v0, 0x6

    .line 268
    iput v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 270
    :goto_231
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_23a
    return-void
.end method
