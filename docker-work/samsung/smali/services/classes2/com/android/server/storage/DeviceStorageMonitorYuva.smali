.class public Lcom/android/server/storage/DeviceStorageMonitorYuva;
.super Ljava/lang/Object;
.source "DeviceStorageMonitorYuva.java"


# static fields
.field public static final ACTION_CANCEL_USER_MEM_LOW:Ljava/lang/String; = "com.samsung.android.sm.ACTION_CANCEL_USER_MEM_LOW"

.field public static final ACTION_USER_MEM_LOW:Ljava/lang/String; = "com.samsung.android.sm.ACTION_USER_MEM_LOW"

.field public static final DATA_PATH:Ljava/io/File;

.field public static final TAG:Ljava/lang/String; = "DeviceStorageMonitorYuva"

.field public static final valueCscYuva:Ljava/lang/String;


# instance fields
.field public DEBUG:Z

.field public isBootCompleted:Z

.field public isSupported:Z

.field public final mContext:Landroid/content/Context;

.field public mLowUserMemFlag_15:Z

.field public mLowUserMemFlag_20:Z

.field public mMemLowUserThreshold_15:J

.field public mMemLowUserThreshold_20:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 21
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DATA_PATH:Ljava/io/File;

    .line 24
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->valueCscYuva:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isBootCompleted:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    const-string v0, "DeviceStorageMonitorYuva"

    const-string v1, "constructor is called"

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    const/16 p1, 0x14

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->getStorageUserMemLowBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    const/16 p1, 0xf

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->getStorageUserMemLowBytes(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    .line 42
    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isYuvaSupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    return-void
.end method


# virtual methods
.method public getMemLowUserThreshold_15()J
    .registers 3

    .line 54
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    return-wide v0
.end method

.method public getMemLowUserThreshold_20()J
    .registers 3

    .line 51
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    return-wide v0
.end method

.method public final getStorageUserMemLowBytes(I)J
    .registers 6

    .line 46
    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DATA_PATH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    int-to-long v2, p1

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    .line 47
    iget-boolean p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz p0, :cond_26

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "user spcific threshold is calculated ->"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceStorageMonitorYuva"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-wide v0
.end method

.method public final intentBroadcastForUserLowMem(J)V
    .registers 8

    .line 117
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    if-eqz v0, :cond_63

    .line 118
    iget-wide v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_15:J

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    const/16 v2, 0xf

    if-gez v0, :cond_1d

    .line 119
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result p1

    if-eqz p1, :cond_63

    iget-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-nez p1, :cond_63

    .line 120
    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 121
    invoke-virtual {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendUserMemLowNotification(I)V

    goto :goto_63

    .line 123
    :cond_1d
    iget-wide v3, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mMemLowUserThreshold_20:J

    cmp-long p1, p1, v3

    const/16 p2, 0x14

    const/4 v0, 0x0

    if-gez p1, :cond_45

    .line 124
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result p1

    if-eqz p1, :cond_35

    iget-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-eqz p1, :cond_35

    .line 125
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 126
    invoke-virtual {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    .line 128
    :cond_35
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result p1

    if-eqz p1, :cond_63

    iget-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    if-nez p1, :cond_63

    .line 129
    iput-boolean v1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 130
    invoke-virtual {p0, p2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendUserMemLowNotification(I)V

    goto :goto_63

    .line 133
    :cond_45
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result p1

    if-eqz p1, :cond_54

    iget-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    if-eqz p1, :cond_54

    .line 134
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    .line 135
    invoke-virtual {p0, v2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    .line 137
    :cond_54
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result p1

    if-eqz p1, :cond_63

    iget-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    if-eqz p1, :cond_63

    .line 138
    iput-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    .line 139
    invoke-virtual {p0, p2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->sendCancelUserMemLowNotification(I)V

    :cond_63
    :goto_63
    return-void
.end method

.method public isLowUserMemFlag_15()Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    return p0
.end method

.method public isLowUserMemFlag_20()Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    return p0
.end method

.method public isYuvaSupported()Z
    .registers 4

    .line 73
    sget-object v0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->valueCscYuva:Ljava/lang/String;

    const-string v1, "MemorySaver"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "DeviceStorageMonitorYuva"

    if-nez v1, :cond_21

    const-string/jumbo v1, "usbbackup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_21

    .line 77
    :cond_16
    iget-boolean p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz p0, :cond_1f

    const-string p0, "device does not support YUVA"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const/4 p0, 0x0

    return p0

    .line 74
    :cond_21
    :goto_21
    iget-boolean p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz p0, :cond_2a

    const-string p0, "device supports YUVA"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    const/4 p0, 0x1

    return p0
.end method

.method public onUpdate(J)V
    .registers 4

    .line 111
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->isSupported:Z

    if-eqz v0, :cond_7

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorYuva;->intentBroadcastForUserLowMem(J)V

    :cond_7
    return-void
.end method

.method public final sendCancelUserMemLowNotification(I)V
    .registers 5

    .line 97
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent ACTION_CANCEL_USER_MEM_LOW broadcasting with ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStorageMonitorYuva"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm.ACTION_CANCEL_USER_MEM_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.memorysaver"

    const-string v2, "com.samsung.memorysaver.receiver.StorageStatusReceiver"

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PERCENT"

    .line 101
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 102
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 103
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "com.sec.android.autobackup"

    const-string v1, "com.sec.android.autobackup.UsbBackupReceiver"

    .line 105
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public final sendUserMemLowNotification(I)V
    .registers 5

    .line 83
    iget-boolean v0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->DEBUG:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent ACTION_USER_MEM_LOW broadcasting with ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceStorageMonitorYuva"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_1f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.sm.ACTION_USER_MEM_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.memorysaver"

    const-string v2, "com.samsung.memorysaver.receiver.StorageStatusReceiver"

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "PERCENT"

    .line 87
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 88
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    iget-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string p1, "com.sec.android.autobackup"

    const-string v1, "com.sec.android.autobackup.UsbBackupReceiver"

    .line 91
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object p0, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public setLowUserMemFlag_15(Z)V
    .registers 2

    .line 69
    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_15:Z

    return-void
.end method

.method public setLowUserMemFlag_20(Z)V
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/android/server/storage/DeviceStorageMonitorYuva;->mLowUserMemFlag_20:Z

    return-void
.end method
