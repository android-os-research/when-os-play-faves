.class final Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;
.super Ljava/lang/Object;
.source "SemTelephoneSDK.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceBindHelper"
.end annotation


# static fields
.field private static final ACTION:Ljava/lang/String; = "com.sec.android.phone.action.BIND_INTERNAL_SERVICE"

.field private static final PACKAGE_NAME:Ljava/lang/String; = "com.android.phone"

.field private static final STATUS_CONNECTED:I = 0x2

.field private static final STATUS_CONNECTING:I = 0x1

.field private static final STATUS_DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ServiceBindHelper"


# instance fields
.field private mApiRevision:I

.field private mSamsungInternalService:Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private volatile mServiceStatus:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmSamsungInternalService(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;)Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mSamsungInternalService:Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmApiRevision(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;I)V
    .registers 2

    iput p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mApiRevision:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSamsungInternalService(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mSamsungInternalService:Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    return-void
.end method

.method static bridge synthetic -$$Nest$misServiceDisconnected(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->isServiceDisconnected()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetServiceStatus(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->setServiceStatus(I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2200
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mServiceStatus:I

    .line 2204
    new-instance v0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper$1;-><init>(Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;)V

    iput-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 2236
    invoke-direct {p0, p1}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->bindService(Landroid/content/Context;)V

    .line 2237
    return-void
.end method

.method private bindService(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 2270
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->setServiceStatus(I)V

    .line 2271
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.phone.action.BIND_INTERNAL_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2272
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.android.phone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 2273
    iget-object v2, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2274
    return-void
.end method

.method private isServiceDisconnected()Z
    .registers 2

    .line 2290
    iget v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mServiceStatus:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private setServiceStatus(I)V
    .registers 4
    .param p1, "newStatus"    # I

    .line 2277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serviceStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mServiceStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceBindHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2278
    iput p1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mServiceStatus:I

    .line 2279
    return-void
.end method


# virtual methods
.method getApiRevision()I
    .registers 3

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getApiRevision : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mApiRevision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceBindHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    iget v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mApiRevision:I

    return v0
.end method

.method getServiceApi()Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;
    .registers 3

    .line 2240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getServiceApi : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mSamsungInternalService:Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    if-eqz v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (ServiceStatus :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mServiceStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceBindHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    iget-object v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mSamsungInternalService:Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    return-object v0
.end method

.method isServiceConnected()Z
    .registers 3

    .line 2286
    iget v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mServiceStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isServiceConnecting()Z
    .registers 3

    .line 2282
    iget v0, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mServiceStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method waitToGetConnected()V
    .registers 9

    .line 2251
    const-wide/16 v0, 0xfa0

    .line 2252
    .local v0, "TIME_OUT":J
    invoke-virtual {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->isServiceConnecting()Z

    move-result v2

    if-eqz v2, :cond_49

    .line 2254
    :try_start_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2255
    .local v2, "waitingAt":J
    monitor-enter p0
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_41

    .line 2256
    const-wide/16 v4, 0xfa0

    :try_start_f
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 2257
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_3e

    .line 2258
    :try_start_13
    const-string v4, "ServiceBindHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "time out "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->mSamsungInternalService:Lcom/samsung/telephony/phone/service/internalservice/ISamsungInternalService;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_3c} :catch_41

    .line 2261
    nop

    .end local v2    # "waitingAt":J
    goto :goto_49

    .line 2257
    .restart local v2    # "waitingAt":J
    :catchall_3e
    move-exception v4

    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    .end local v0    # "TIME_OUT":J
    .end local p0    # "this":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;
    :try_start_40
    throw v4
    :try_end_41
    .catch Ljava/lang/InterruptedException; {:try_start_40 .. :try_end_41} :catch_41

    .line 2259
    .end local v2    # "waitingAt":J
    .restart local v0    # "TIME_OUT":J
    .restart local p0    # "this":Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;
    :catch_41
    move-exception v2

    .line 2260
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "ServiceBindHelper"

    const-string v4, "wait connected"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2263
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_49
    :goto_49
    invoke-virtual {p0}, Lcom/samsung/android/semtelephonesdk/framework/SemTelephoneSDK$ServiceBindHelper;->isServiceConnected()Z

    move-result v2

    if-nez v2, :cond_56

    .line 2265
    const-string v2, "ServiceBindHelper"

    const-string v3, "not yet bound!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2267
    :cond_56
    return-void
.end method
