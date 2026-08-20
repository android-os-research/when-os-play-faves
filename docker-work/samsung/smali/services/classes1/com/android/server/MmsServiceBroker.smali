.class public Lcom/android/server/MmsServiceBroker;
.super Lcom/android/server/SystemService;
.source "MmsServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MmsServiceBroker$BinderService;
    }
.end annotation


# static fields
.field public static final FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

.field public static final FAKE_MMS_SENT_URI:Landroid/net/Uri;

.field public static final FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

.field public static final FAKE_SMS_SENT_URI:Landroid/net/Uri;

.field public static final MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field public static final MSG_TRY_CONNECTING:I = 0x1

.field public static final RETRY_DELAY_ON_DISCONNECTION_MS:J = 0xbb8L

.field public static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0xfa0L

.field public static final TAG:Ljava/lang/String; = "MmsServiceBroker"


# instance fields
.field public volatile mAppOpsManager:Landroid/app/AppOpsManager;

.field public mConnection:Landroid/content/ServiceConnection;

.field public final mConnectionHandler:Landroid/os/Handler;

.field public mContext:Landroid/content/Context;

.field public volatile mPackageManager:Landroid/content/pm/PackageManager;

.field public volatile mService:Lcom/android/internal/telephony/IMms;

.field public final mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

.field public volatile mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmConnectionHandler(Lcom/android/server/MmsServiceBroker;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/MmsServiceBroker;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/MmsServiceBroker;Lcom/android/internal/telephony/IMms;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetAppOpsManager(Lcom/android/server/MmsServiceBroker;)Landroid/app/AppOpsManager;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/MmsServiceBroker;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetPhoneIdFromSubId(Lcom/android/server/MmsServiceBroker;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/MmsServiceBroker;->getPhoneIdFromSubId(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetServiceGuarded(Lcom/android/server/MmsServiceBroker;)Lcom/android/internal/telephony/IMms;
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/MmsServiceBroker;->getServiceGuarded()Lcom/android/internal/telephony/IMms;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mtryConnecting(Lcom/android/server/MmsServiceBroker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/MmsServiceBroker;->tryConnecting()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetFAKE_MMS_DRAFT_URI()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetFAKE_MMS_SENT_URI()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetFAKE_SMS_DRAFT_URI()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetFAKE_SMS_SENT_URI()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 61
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.mms.service"

    const-string v2, "com.android.mms.service.MmsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/MmsServiceBroker;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    const-string v0, "content://sms/sent/0"

    .line 66
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_SENT_URI:Landroid/net/Uri;

    const-string v0, "content://mms/sent/0"

    .line 67
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_SENT_URI:Landroid/net/Uri;

    const-string v0, "content://sms/draft/0"

    .line 68
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_SMS_DRAFT_URI:Landroid/net/Uri;

    const-string v0, "content://mms/draft/0"

    .line 69
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/MmsServiceBroker;->FAKE_MMS_DRAFT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 219
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 80
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 81
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 83
    new-instance v1, Lcom/android/server/MmsServiceBroker$1;

    invoke-direct {v1, p0}, Lcom/android/server/MmsServiceBroker$1;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    .line 96
    new-instance v1, Lcom/android/server/MmsServiceBroker$2;

    invoke-direct {v1, p0}, Lcom/android/server/MmsServiceBroker$2;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    .line 123
    new-instance v1, Lcom/android/server/MmsServiceBroker$3;

    invoke-direct {v1, p0}, Lcom/android/server/MmsServiceBroker$3;-><init>(Lcom/android/server/MmsServiceBroker;)V

    iput-object v1, p0, Lcom/android/server/MmsServiceBroker;->mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

    .line 220
    iput-object p1, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    .line 221
    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    return-void
.end method


# virtual methods
.method public final getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_10

    .line 301
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 303
    :cond_10
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public final getCallingPackageName()Ljava/lang/String;
    .registers 2

    .line 322
    invoke-virtual {p0}, Lcom/android/server/MmsServiceBroker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 323
    array-length v0, p0

    if-lez v0, :cond_15

    const/4 v0, 0x0

    .line 324
    aget-object p0, p0, v0

    return-object p0

    :cond_15
    const-string/jumbo p0, "unknown"

    return-object p0
.end method

.method public final getOrConnectService()Lcom/android/internal/telephony/IMms;
    .registers 7

    .line 253
    monitor-enter p0

    .line 254
    :try_start_1
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-eqz v0, :cond_9

    .line 255
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    monitor-exit p0

    return-object v0

    :cond_9
    const-string v0, "MmsServiceBroker"

    const-string v1, "MmsService not connected. Try connecting..."

    .line 258
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mConnectionHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    .line 260
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_4c

    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    :goto_21
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_42

    .line 267
    :try_start_27
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_2a} :catch_2b
    .catchall {:try_start_27 .. :try_end_2a} :catchall_4c

    goto :goto_33

    :catch_2b
    move-exception v2

    :try_start_2c
    const-string v3, "MmsServiceBroker"

    const-string v4, "Connection wait interrupted"

    .line 269
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    :goto_33
    iget-object v2, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-eqz v2, :cond_3b

    .line 273
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    monitor-exit p0

    return-object v0

    .line 276
    :cond_3b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    goto :goto_21

    :cond_42
    const-string v0, "MmsServiceBroker"

    const-string v1, "Can not connect to MmsService (timed out)"

    .line 279
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 280
    monitor-exit p0

    return-object v0

    :catchall_4c
    move-exception v0

    .line 281
    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_2c .. :try_end_4e} :catchall_4c

    throw v0
.end method

.method public final getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    .line 307
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_c

    .line 308
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 310
    :cond_c
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public final getPhoneIdFromSubId(I)I
    .registers 3

    .line 543
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "telephony_subscription_service"

    .line 544
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    const/4 v0, -0x1

    if-nez p0, :cond_f

    return v0

    .line 546
    :cond_f
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-nez p0, :cond_16

    return v0

    .line 548
    :cond_16
    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result p0

    return p0
.end method

.method public final getServiceGuarded()Lcom/android/internal/telephony/IMms;
    .registers 2

    .line 292
    invoke-virtual {p0}, Lcom/android/server/MmsServiceBroker;->getOrConnectService()Lcom/android/internal/telephony/IMms;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 296
    :cond_7
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker;->mServiceStubForFailure:Lcom/android/internal/telephony/IMms;

    return-object p0
.end method

.method public final getTelephonyManager()Landroid/telephony/TelephonyManager;
    .registers 3

    .line 314
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_11

    .line 315
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 318
    :cond_11
    iget-object p0, p0, Lcom/android/server/MmsServiceBroker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public onStart()V
    .registers 3

    .line 226
    new-instance v0, Lcom/android/server/MmsServiceBroker$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/MmsServiceBroker$BinderService;-><init>(Lcom/android/server/MmsServiceBroker;Lcom/android/server/MmsServiceBroker$BinderService-IA;)V

    const-string/jumbo v1, "imms"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public systemRunning()V
    .registers 2

    const-string p0, "MmsServiceBroker"

    const-string v0, "Delay connecting to MmsService until an API is called"

    .line 230
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final tryConnecting()V
    .registers 5

    const-string v0, "MmsServiceBroker"

    const-string v1, "Connecting to MmsService"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    monitor-enter p0

    .line 236
    :try_start_8
    iget-object v0, p0, Lcom/android/server/MmsServiceBroker;->mService:Lcom/android/internal/telephony/IMms;

    if-eqz v0, :cond_15

    const-string v0, "MmsServiceBroker"

    const-string v1, "Already connected"

    .line 237
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    monitor-exit p0

    return-void

    .line 240
    :cond_15
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    sget-object v1, Lcom/android/server/MmsServiceBroker;->MMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_3c

    .line 243
    :try_start_1f
    iget-object v1, p0, Lcom/android/server/MmsServiceBroker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/MmsServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "MmsServiceBroker"

    const-string v1, "Failed to bind to MmsService"

    .line 244
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_1f .. :try_end_31} :catch_32
    .catchall {:try_start_1f .. :try_end_31} :catchall_3c

    goto :goto_3a

    :catch_32
    move-exception v0

    :try_start_33
    const-string v1, "MmsServiceBroker"

    const-string v2, "Forbidden to bind to MmsService"

    .line 247
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 249
    :cond_3a
    :goto_3a
    monitor-exit p0

    return-void

    :catchall_3c
    move-exception v0

    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_3c

    throw v0
.end method
