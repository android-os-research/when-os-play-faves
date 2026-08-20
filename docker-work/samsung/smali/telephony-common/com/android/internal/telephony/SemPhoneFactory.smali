.class public Lcom/android/internal/telephony/SemPhoneFactory;
.super Ljava/lang/Object;
.source "SemPhoneFactory.java"


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "SemPhoneFactory"

.field private static volatile blacklist mInstance:Lcom/android/internal/telephony/SemPhoneFactory; = null

.field private static final blacklist mLockProxyPhones:Ljava/lang/Object;

.field private static blacklist mMadeDefaults:Z = false

.field private static blacklist mSemPhone:Lcom/android/internal/telephony/SemPhone;

.field private static blacklist mSemPhones:[Lcom/android/internal/telephony/SemPhone;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSemPhoneSubInfoController:Lcom/android/internal/telephony/SemPhoneSubInfoController;

.field private blacklist mSemTelephonyController:Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monMultiSimConfigChanged(Lcom/android/internal/telephony/SemPhoneFactory;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneFactory;->onMultiSimConfigChanged(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mLockProxyPhones:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/internal/telephony/SemPhoneFactory$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemPhoneFactory$1;-><init>(Lcom/android/internal/telephony/SemPhoneFactory;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemPhoneFactory;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/android/internal/telephony/SemPhoneFactory;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/android/internal/telephony/SemPhoneFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/SemPhoneFactory;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneFactory;->initTelephonyComponent(Landroid/content/Context;)V

    .line 90
    sget-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SemPhoneFactory init done"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/SemPhoneFactory;
    .registers 2

    .line 77
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mInstance:Lcom/android/internal/telephony/SemPhoneFactory;

    if-eqz v0, :cond_7

    .line 80
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mInstance:Lcom/android/internal/telephony/SemPhoneFactory;

    return-object v0

    .line 78
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SemPhoneFactory.getInstance can\'t be called before make"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getSemPhone(I)Lcom/android/internal/telephony/SemPhone;
    .registers 6

    .line 50
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mLockProxyPhones:Ljava/lang/Object;

    monitor-enter v0

    .line 51
    :try_start_3
    sget-boolean v1, Lcom/android/internal/telephony/SemPhoneFactory;->mMadeDefaults:Z

    if-eqz v1, :cond_3f

    const v1, 0x7fffffff

    if-eq p0, v1, :cond_1d

    const/4 v1, -0x1

    if-ne p0, v1, :cond_10

    goto :goto_1d

    :cond_10
    if-ltz p0, :cond_1a

    .line 57
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhones:[Lcom/android/internal/telephony/SemPhone;

    array-length v2, v1

    if-ge p0, v2, :cond_1a

    .line 58
    aget-object v1, v1, p0

    goto :goto_1f

    :cond_1a
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhone:Lcom/android/internal/telephony/SemPhone;

    goto :goto_1f

    .line 55
    :cond_1d
    :goto_1d
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhone:Lcom/android/internal/telephony/SemPhone;

    .line 60
    :goto_1f
    sget-object v2, Lcom/android/internal/telephony/SemPhoneFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " phoneId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " phone="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    monitor-exit v0

    return-object v1

    .line 52
    :cond_3f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Default SemPhones haven\'t been made yet!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_47
    move-exception p0

    .line 62
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_3 .. :try_end_49} :catchall_47

    throw p0
.end method

.method private blacklist initTelephonyComponent(Landroid/content/Context;)V
    .registers 4

    .line 94
    invoke-direct {p0}, Lcom/android/internal/telephony/SemPhoneFactory;->makeSemPhone()V

    .line 96
    new-instance v0, Lcom/android/internal/telephony/SemPhoneSubInfoController;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/SemPhoneSubInfoController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhoneSubInfoController:Lcom/android/internal/telephony/SemPhoneSubInfoController;

    .line 97
    new-instance v0, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;

    iget-object v1, p0, Lcom/android/internal/telephony/SemPhoneFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemPhoneFactory;->mSemTelephonyController:Lcom/android/internal/telephony/semtelephonyinterface/SemTelephonyController;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemPhoneFactory;->makeSemTelephonyDatabaseHelper(Landroid/content/Context;)V

    return-void
.end method

.method private blacklist makeSemPhone()V
    .registers 5

    .line 103
    sget-boolean p0, Lcom/android/internal/telephony/SemPhoneFactory;->mMadeDefaults:Z

    if-nez p0, :cond_2b

    .line 104
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    .line 105
    new-array v0, p0, [Lcom/android/internal/telephony/SemPhone;

    sput-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhones:[Lcom/android/internal/telephony/SemPhone;

    const/4 v0, 0x0

    move v1, v0

    :goto_12
    if-ge v1, p0, :cond_20

    .line 108
    sget-object v2, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhones:[Lcom/android/internal/telephony/SemPhone;

    new-instance v3, Lcom/android/internal/telephony/SemPhone;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/SemPhone;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_20
    if-lez p0, :cond_28

    .line 111
    sget-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhones:[Lcom/android/internal/telephony/SemPhone;

    aget-object p0, p0, v0

    sput-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhone:Lcom/android/internal/telephony/SemPhone;

    :cond_28
    const/4 p0, 0x1

    .line 112
    sput-boolean p0, Lcom/android/internal/telephony/SemPhoneFactory;->mMadeDefaults:Z

    :cond_2b
    return-void
.end method

.method public static blacklist makeSemPhoneFactory(Landroid/content/Context;)Lcom/android/internal/telephony/SemPhoneFactory;
    .registers 3

    .line 66
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mInstance:Lcom/android/internal/telephony/SemPhoneFactory;

    if-nez v0, :cond_17

    .line 67
    const-class v0, Lcom/android/internal/telephony/SemPhoneFactory;

    monitor-enter v0

    .line 68
    :try_start_7
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mInstance:Lcom/android/internal/telephony/SemPhoneFactory;

    if-nez v1, :cond_12

    .line 69
    new-instance v1, Lcom/android/internal/telephony/SemPhoneFactory;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SemPhoneFactory;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mInstance:Lcom/android/internal/telephony/SemPhoneFactory;

    .line 71
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 73
    :cond_17
    :goto_17
    sget-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->mInstance:Lcom/android/internal/telephony/SemPhoneFactory;

    return-object p0
.end method

.method private blacklist makeSemTelephonyDatabaseHelper(Landroid/content/Context;)V
    .registers 3

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_16

    const-string v0, "android.hardware.type.watch"

    .line 134
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 135
    sget-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Do not create SemTelephonyDatabaseHelper in WATCH"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_16
    sget-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Creating SemTelephonyDatabaseHelper"

    invoke-static {p0, v0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    new-instance p0, Landroid/os/HandlerThread;

    const-string v0, "SemTelephonyDatabaseHelper"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, v0}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 142
    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    .line 143
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;->make(Landroid/content/Context;ILandroid/os/Looper;)Lcom/android/internal/telephony/SemTelephonyDatabaseHelper;

    return-void
.end method

.method private blacklist onMultiSimConfigChanged(I)V
    .registers 5

    .line 117
    sget-object p0, Lcom/android/internal/telephony/SemPhoneFactory;->mLockProxyPhones:Ljava/lang/Object;

    monitor-enter p0

    .line 118
    :try_start_3
    sget-object v0, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhones:[Lcom/android/internal/telephony/SemPhone;

    array-length v0, v0

    if-ne v0, p1, :cond_a

    .line 119
    monitor-exit p0

    return-void

    :cond_a
    if-le v0, p1, :cond_e

    .line 124
    monitor-exit p0

    return-void

    :cond_e
    :goto_e
    if-ge v0, p1, :cond_1c

    .line 127
    sget-object v1, Lcom/android/internal/telephony/SemPhoneFactory;->mSemPhones:[Lcom/android/internal/telephony/SemPhone;

    new-instance v2, Lcom/android/internal/telephony/SemPhone;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/SemPhone;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 129
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_3 .. :try_end_20} :catchall_1e

    throw p1
.end method
