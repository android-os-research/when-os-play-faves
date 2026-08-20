.class public Lcom/android/server/DirEncryptServiceHelper;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;,
        Lcom/android/server/DirEncryptServiceHelper$Notify;,
        Lcom/android/server/DirEncryptServiceHelper$VoldResponse;,
        Lcom/android/server/DirEncryptServiceHelper$VoldCommand;,
        Lcom/android/server/DirEncryptServiceHelper$Command;,
        Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;
    }
.end annotation


# static fields
.field public static final DELAY:I = 0x1f4

.field public static final TAG:Ljava/lang/String; = "DirEncryptServiceHelper"

.field public static final UNMOUNT_POLICY_INTENT:Ljava/lang/String; = "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

.field public static mMountSDcardToHelper:Z = false

.field public static mNeedToCreateKey:Z = false

.field public static mNotificationChannelID:Ljava/lang/String; = "sdcard_encryption_channel"

.field public static mSync:Ljava/lang/Object;


# instance fields
.field public mAlreadyDecrypted:Z

.field public mAnimateSync:Ljava/lang/Object;

.field public mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

.field public mBootCompleted:Z

.field public final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mDecryptTimestamp:Ljava/lang/String;

.field public mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

.field public mEncryptTimestamp:Ljava/lang/String;

.field public mErrAdditionalSpace:I

.field public mFirstUnlockLockscreen:Z

.field public mHandler:Landroid/os/Handler;

.field public mLastError:I

.field public final mListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/security/IDirEncryptServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPrevPercent:I

.field public mProgressTime:J

.field public mSelfSDMountRequested:Z

.field public mServiceStatus:I

.field public mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

.field public mUnnmountRequested:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAnimateSync(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBootCompleted(Lcom/android/server/DirEncryptServiceHelper;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDew(Lcom/android/server/DirEncryptServiceHelper;)Lcom/samsung/android/security/DirEncryptionWrapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetNotification(Lcom/android/server/DirEncryptServiceHelper;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetmNotificationChannelID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/DirEncryptServiceHelper;->mNotificationChannelID:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;-><init>(Lcom/android/server/DirEncryptServiceHelper;Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener-IA;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    .line 70
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 75
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 77
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mFirstUnlockLockscreen:Z

    .line 79
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    const-string v2, ""

    .line 86
    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    .line 90
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 91
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 92
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    .line 94
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    .line 97
    iput-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    const-wide/16 v2, -0x1

    .line 102
    iput-wide v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    const/4 v0, -0x1

    .line 103
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    .line 117
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptServiceHelper$1;-><init>(Lcom/android/server/DirEncryptServiceHelper;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 318
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    .line 319
    new-instance v2, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-direct {v2, p0, p1}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;-><init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    .line 320
    new-instance p1, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 321
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    .line 322
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    .line 323
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 324
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static getStorageManagerService()Landroid/os/storage/IStorageManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string/jumbo v0, "mount"

    .line 108
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 110
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0

    :cond_e
    const-string v0, "DirEncryptServiceHelper"

    const-string v1, "Can\'t get storagemanager service"

    .line 112
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Could not contact storagemanager service"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isSupportBlockEncryption()Z
    .registers 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final checkSdCardMetafile()V
    .registers 11

    const/4 v0, 0x0

    .line 854
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 855
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 857
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 858
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v1

    .line 861
    invoke-static {v0}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v2

    .line 862
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1a

    move v3, v4

    goto :goto_1b

    :cond_1a
    move v3, v0

    :goto_1b
    if-eqz v2, :cond_1e

    move v3, v0

    :cond_1e
    const-string/jumbo v5, "sec.fle.encryption.status"

    const-string v6, ""

    .line 869
    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 870
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSdCardMetafile result:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " unlocked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Policy:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " skipMounting:"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "DirEncryptServiceHelper"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "encrypted"

    .line 873
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "checkSdCardMetafile but user locked yet"

    if-eqz v2, :cond_76

    const-string v1, "ENC_META_CHECK : Encryption State Normal"

    .line 874
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_6a

    .line 876
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 881
    :cond_6a
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 882
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_c7

    :cond_76
    const-string v2, "decrypting"

    .line 883
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v9, "ENC_META_CHECK : EAS Policy Set"

    if-nez v8, :cond_a2

    const-string v8, "encrypting"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_89

    goto :goto_a2

    :cond_89
    if-ne v1, v4, :cond_92

    .line 898
    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->startCryptSDCardSettingsActivity()V

    goto :goto_c7

    :cond_92
    const-string v1, "ENC_META_CHECK : Normal SD Card"

    .line 901
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 905
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    const/4 v1, 0x3

    const-string v2, "done"

    .line 907
    invoke-virtual {p0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_c7

    .line 884
    :cond_a2
    :goto_a2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    if-ne v1, v4, :cond_b1

    .line 885
    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->startCryptSDCardSettingsActivity()V

    goto :goto_c7

    :cond_b1
    const-string v1, "SD card has encrypting/decrypting state -> Self Encrypting/Decrypting!!"

    .line 888
    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_bc

    .line 890
    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 893
    :cond_bc
    iput-boolean v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 894
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    .line 910
    :goto_c7
    sput-boolean v0, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    return-void
.end method

.method public final clearNotification()V
    .registers 3

    const-string v0, "DirEncryptServiceHelper"

    const-string v1, "clearNotification"

    .line 937
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 939
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 940
    sget v1, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    const/4 v0, -0x1

    .line 941
    iput v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    return-void
.end method

.method public doHandleMessage(Landroid/os/Message;)V
    .registers 6

    .line 404
    sget-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_3
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3b

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1d

    const/16 p1, 0xa

    if-eq v1, p1, :cond_17

    const-string p0, "DirEncryptServiceHelper"

    const-string p1, "Invalid command!!!"

    .line 421
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 417
    :cond_17
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->mountVolume()Z

    goto :goto_3e

    .line 411
    :cond_1d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v1, "DirEncryptServiceHelper"

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Command.USB_STATE:: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_3e

    .line 407
    :cond_3b
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCard()V

    .line 423
    :goto_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public final doWorkForUSBState(Ljava/lang/String;)V
    .registers 14

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doWorkForUSBState:: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirEncryptServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "vold.decrypt"

    const-string v2, "0"

    .line 667
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "trigger_restart_min_framework"

    .line 668
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string p0, "Do not work if encryption lock page"

    .line 669
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2e
    const-string v0, "HiddenMount"

    .line 673
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "encrypted"

    const-string/jumbo v3, "sec.fle.encryption.status"

    const/4 v4, 0x1

    const-string v5, ""

    const/4 v6, 0x0

    if-eqz v0, :cond_92

    .line 685
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 687
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 688
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 689
    iget-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    if-eqz p1, :cond_78

    .line 690
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 692
    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 694
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    const-string p1, "encrypting"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_65

    goto :goto_66

    :cond_65
    move v4, v6

    .line 698
    :cond_66
    :goto_66
    :try_start_66
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->getStorageManagerService()Landroid/os/storage/IStorageManager;

    move-result-object p0

    if-eqz p0, :cond_1af

    .line 700
    invoke-interface {p0, v4}, Landroid/os/storage/IStorageManager;->encryptExternalStorage(Z)I
    :try_end_6f
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6f} :catch_71

    goto/16 :goto_1af

    :catch_71
    const-string p0, "Unable to communicate with Mountservice"

    .line 703
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1af

    :cond_78
    :try_start_78
    const-string/jumbo p1, "vold.crypto.ext_migrate"

    .line 707
    invoke-static {p1, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    .line 708
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1af

    .line 709
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->checkSdCardMetafile()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_8a} :catch_8c

    goto/16 :goto_1af

    :catch_8c
    move-exception p0

    .line 712
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1af

    :cond_92
    const-string v0, "MoveMount"

    .line 715
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "Mount"

    const-string/jumbo v8, "success"

    const/4 v9, 0x3

    const/4 v10, 0x2

    if-eqz v0, :cond_f3

    .line 724
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result p1

    if-nez p1, :cond_cd

    iget p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_cd

    const-string p1, "Since encrypt is OFF: no final mount command (DECRYPTED)"

    .line 726
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 728
    invoke-virtual {p0, v9, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    const-string p1, "delete uuid"

    .line 729
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iget-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    if-nez p1, :cond_c6

    .line 732
    invoke-virtual {p0, v10, v6, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto/16 :goto_1af

    :cond_c6
    const-string p0, "don\'t send encryption notification"

    .line 734
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1af

    .line 736
    :cond_cd
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result p1

    if-nez p1, :cond_e6

    const-string/jumbo p1, "looks like encryption policies were received while SD card decryption was on going (DECRYPTING)!!"

    .line 737
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-virtual {p0, v10, v6, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 739
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string p1, "busy"

    .line 740
    invoke-virtual {p0, v9, p1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_1af

    .line 741
    :cond_e6
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result p0

    if-eqz p0, :cond_1af

    const-string p0, "MOVE_MOUNT => ENCRYPTING, ENCRYPTED or OTHER_ENCRYPT"

    .line 745
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1af

    :cond_f3
    const-string/jumbo v0, "mounted"

    .line 747
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v11, "free"

    if-eqz v0, :cond_14f

    const-string p1, "Update SD card encryption status"

    .line 748
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "sec.vold.ext_encrypted_type"

    .line 749
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 750
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "block"

    .line 751
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_148

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_148

    .line 752
    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 753
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 754
    invoke-virtual {p0, v10, v4, v8}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 755
    invoke-virtual {p0, v10, v7}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 758
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ENCRYPT Response admin : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 760
    iput-object v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto :goto_1af

    .line 762
    :cond_148
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 763
    invoke-virtual {p0, v9, v11}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_1af

    :cond_14f
    const-string/jumbo v0, "removed"

    .line 765
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16d

    .line 766
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 767
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 768
    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const-string p1, "SD card removed"

    .line 770
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 773
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 774
    invoke-virtual {p0, v6, v11}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto :goto_1af

    :cond_16d
    const-string/jumbo v0, "unmounted"

    .line 775
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18f

    const-string p1, "SD card unmounted"

    .line 776
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez p1, :cond_182

    .line 778
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 781
    :cond_182
    iget-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    if-ne p1, v4, :cond_1af

    .line 782
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    const/16 p1, 0xa

    const/4 v0, 0x0

    .line 784
    invoke-virtual {p0, p1, v6, v0}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    goto :goto_1af

    :cond_18f
    const-string v0, "bad_removal"

    .line 786
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1af

    .line 787
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    const-string p1, "SD card bad removed"

    .line 788
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez p1, :cond_1ab

    .line 790
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->clearNotification()V

    .line 791
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 792
    invoke-virtual {p0, v6, v11}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 795
    :cond_1ab
    iput-boolean v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 796
    iput v6, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    :cond_1af
    :goto_1af
    return-void
.end method

.method public getAdditionalSpaceRequired()I
    .registers 1

    .line 357
    iget p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    return p0
.end method

.method public getCurrentStatus()I
    .registers 1

    .line 349
    iget p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return p0
.end method

.method public final getCurrentTime()Ljava/lang/String;
    .registers 4

    .line 1112
    :try_start_0
    new-instance p0, Ljava/text/SimpleDateFormat;

    const-string v0, "MM-dd HH:mm:ss.SSS"

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1113
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    goto :goto_30

    :catch_17
    move-exception p0

    .line 1115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DirEncryptServiceHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Unknown"

    :goto_30
    return-object p0
.end method

.method public getDecryptTimestamp()Ljava/lang/String;
    .registers 1

    .line 365
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    return-object p0
.end method

.method public getEncryptTimestamp()Ljava/lang/String;
    .registers 1

    .line 361
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    return-object p0
.end method

.method public getLastError()I
    .registers 1

    .line 353
    iget p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    return p0
.end method

.method public getNeedToCreateKey()Z
    .registers 1

    .line 345
    sget-boolean p0, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    return p0
.end method

.method public final getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;
    .registers 7

    .line 916
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 917
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 p0, 0x0

    .line 918
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    if-eqz p1, :cond_13

    .line 920
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 921
    :cond_13
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 922
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 923
    new-instance p0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {p0, p4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 924
    invoke-virtual {v0, p5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 925
    sget-object p0, Lcom/android/server/DirEncryptServiceHelper;->mNotificationChannelID:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    return-object v0
.end method

.method public final getSecurityIntent()Landroid/content/Intent;
    .registers 3

    .line 931
    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "adminStart"

    const-string v1, "1"

    .line 932
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final getTopClassName()Ljava/lang/String;
    .registers 2

    .line 829
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    .line 831
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    .line 832
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_23

    const/4 v0, 0x0

    .line 833
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    goto :goto_25

    :cond_23
    const-string p0, ""

    :goto_25
    return-object p0
.end method

.method public final isAdminApplied()I
    .registers 3

    .line 650
    new-instance v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;

    invoke-direct {v0}, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;-><init>()V

    .line 651
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    .line 653
    invoke-virtual {p0, v1}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    .line 655
    iput p0, v0, Lcom/samsung/android/security/SemSdCardEncryptionPolicy;->mIsPolicy:I

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public final isCryptSDCardSettings()Z
    .registers 3

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isCryptSDCardSettings : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getTopClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirEncryptServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getTopClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getTopClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.settings.Settings$CryptSDCardSettingsActivity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2f

    const/4 p0, 0x1

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public isSdCardEncryped()Z
    .registers 7

    const-string/jumbo v0, "sec.fle.encryption.status"

    const-string v1, ""

    .line 801
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "persist.vold.ext_encrypted_type"

    .line 802
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 803
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object p0

    .line 805
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSdCardEncryped state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isExistMeta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isEncryptionType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DirEncryptServiceHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_75

    .line 808
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->isSupportBlockEncryption()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "encrypted"

    const-string/jumbo v5, "mounted"

    if-eqz v2, :cond_60

    .line 809
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_75

    const-string p0, "block"

    .line 810
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5f

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_75

    :cond_5f
    return v3

    .line 813
    :cond_60
    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_75

    .line 814
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_74

    const-string p0, "encrypting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_75

    :cond_74
    return v3

    :cond_75
    const/4 p0, 0x0

    return p0
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .registers 1

    .line 392
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result p0

    return p0
.end method

.method public final notifyEncryptionStatusChanged(ILjava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 592
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;II)V

    return-void
.end method

.method public final notifyEncryptionStatusChanged(ILjava/lang/String;II)V
    .registers 15

    const-string v0, "DirEncryptServiceHelper"

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyEncryptionStatusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 598
    :try_start_22
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    const/4 v2, 0x0

    :goto_29
    if-ge v2, v1, :cond_7a

    .line 600
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/security/IDirEncryptServiceListener;
    :try_end_34
    .catchall {:try_start_22 .. :try_end_34} :catchall_81

    :try_start_34
    const-string v3, "DirEncryptServiceHelper"

    .line 602
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolId()Ljava/lang/String;

    move-result-object v5

    move v6, p1

    move-object v7, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/security/IDirEncryptServiceListener;->onEncryptionStatusChanged(Ljava/lang/String;ILjava/lang/String;II)V
    :try_end_57
    .catch Landroid/os/RemoteException; {:try_start_34 .. :try_end_57} :catch_70
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_57} :catch_58
    .catchall {:try_start_34 .. :try_end_57} :catchall_81

    goto :goto_77

    :catch_58
    move-exception v3

    :try_start_59
    const-string v4, "DirEncryptServiceHelper"

    .line 607
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Listener failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    :catch_70
    const-string v3, "DirEncryptServiceHelper"

    const-string v4, "Listener dead"

    .line 605
    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 610
    :cond_7a
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 611
    monitor-exit v0

    return-void

    :catchall_81
    move-exception p0

    monitor-exit v0
    :try_end_83
    .catchall {:try_start_59 .. :try_end_83} :catchall_81

    throw p0
.end method

.method public onEventInner(ILandroid/os/PersistableBundle;)Z
    .registers 13

    .line 428
    sget-object v0, Lcom/android/server/DirEncryptServiceHelper;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "path"

    .line 429
    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v1, "status"

    .line 430
    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "description"

    .line 431
    invoke-virtual {p2, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "arg1"

    .line 432
    invoke-virtual {p2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "arg2"

    .line 433
    invoke-virtual {p2, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v4, "DirEncryptServiceHelper"

    .line 434
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onEventInner resp_code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " status : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x0

    packed-switch p1, :pswitch_data_254

    :pswitch_4a
    goto/16 :goto_24f

    :pswitch_4c
    const/16 p1, 0xb

    .line 532
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const-string p2, ""

    .line 533
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 534
    invoke-virtual {p0, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    if-nez v1, :cond_5b

    goto :goto_5c

    :cond_5b
    move v6, v8

    :goto_5c
    const-string p1, "free"

    .line 535
    invoke-virtual {p0, v6, p1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_24f

    .line 548
    :pswitch_63
    iput v9, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 549
    iput v9, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    .line 551
    iput-boolean v9, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 553
    iget-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7b

    const-string p0, "DirEncryptServiceHelper"

    const-string/jumbo p1, "there is no SD card"

    .line 555
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_24f

    :cond_7b
    if-ne v1, v7, :cond_8a

    const-string p2, "DirEncryptServiceHelper"

    const-string v1, "ENC_META_CHECK : Encryption State Normal"

    .line 562
    invoke-static {p2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iput-boolean v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 566
    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->doWorkForUSBState(Ljava/lang/String;)V

    goto :goto_cc

    .line 568
    :cond_8a
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result p1

    if-ne p1, v7, :cond_c1

    const-string p1, "DirEncryptServiceHelper"

    .line 569
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENC_META_CHECK : EAS Policy Set"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->isSupportBlockEncryption()Z

    move-result p1

    if-eqz p1, :cond_bd

    const-string p1, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_bd

    .line 571
    iget-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/security/DirEncryptionWrapper;->setExternalSDvolUsedSize(J)V

    .line 572
    :cond_bd
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->startCryptSDCardSettingsActivity()V

    goto :goto_cc

    :cond_c1
    const-string p1, "DirEncryptServiceHelper"

    const-string p2, "ENC_META_CHECK : Normal SD Card"

    .line 574
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iput-boolean v9, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 578
    iput-boolean v7, p0, Lcom/android/server/DirEncryptServiceHelper;->mAlreadyDecrypted:Z

    .line 583
    :goto_cc
    sput-boolean v9, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    goto/16 :goto_24f

    :pswitch_d0
    const/4 p1, 0x7

    .line 540
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 542
    invoke-virtual {p0, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    if-nez v1, :cond_d9

    goto :goto_da

    :cond_d9
    move v6, v8

    :goto_da
    const-string p1, "free"

    .line 543
    invoke-virtual {p0, v6, p1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_24f

    .line 520
    :pswitch_e1
    iput v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    const/4 p1, 0x4

    .line 521
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 522
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v5, v1, p1}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 524
    invoke-virtual {p0, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    if-nez v1, :cond_100

    goto :goto_101

    :cond_100
    move v6, v8

    :goto_101
    const-string p1, "free"

    .line 525
    invoke-virtual {p0, v6, p1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    goto/16 :goto_24f

    :pswitch_108
    const-string p1, "DirEncryptServiceHelper"

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DirEncryptServiceHelperVoldResponse.PROGRESS percentage("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "), storage("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v1, v7, :cond_131

    .line 502
    invoke-virtual {p0, v8}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    goto :goto_134

    .line 504
    :cond_131
    invoke-virtual {p0, v6}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    .line 506
    :goto_134
    iget p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    sub-int p1, v3, p1

    if-lt p1, v7, :cond_150

    .line 507
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v4, v1, p1}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 508
    iput v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    :cond_150
    const/16 p1, 0x64

    if-ne v3, p1, :cond_157

    const/4 p1, -0x1

    .line 511
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mPrevPercent:I

    :cond_157
    if-nez v1, :cond_15a

    goto :goto_15b

    :cond_15a
    move v6, v8

    :goto_15b
    const-string p1, "busy"

    .line 513
    invoke-virtual {p0, v6, p1, v3, p2}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;II)V

    goto/16 :goto_24f

    :pswitch_162
    const-string/jumbo p1, "success"

    .line 439
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c8

    const-string p1, "DirEncryptServiceHelper"

    const-string p2, "RESP_ENCRYPT success"

    .line 440
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iput v9, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 442
    invoke-virtual {p0, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string/jumbo p1, "success"

    .line 443
    invoke-virtual {p0, v8, v1, p1}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    if-nez v1, :cond_180

    goto :goto_181

    :cond_180
    move v6, v8

    :goto_181
    const-string p1, "Mount"

    .line 444
    invoke-virtual {p0, v6, p1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    const-string p1, "DirEncryptServiceHelper"

    .line 449
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENCRYPT Response admin : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1b5

    const-string p1, "DirEncryptServiceHelper"

    const-string p2, "Decrypt compelte"

    .line 451
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 452
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 453
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto/16 :goto_24f

    :cond_1b5
    const-string p1, "DirEncryptServiceHelper"

    const-string p2, "Encrypt complete"

    .line 455
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    const-string p1, ""

    .line 457
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto/16 :goto_24f

    :cond_1c8
    const-string p1, "exception"

    .line 459
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_22c

    const-string p1, "DirEncryptServiceHelper"

    const-string p2, "RESP_ENCRYPT : encrypted on other device"

    .line 460
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 461
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 462
    invoke-virtual {p0, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    const-string p1, "exception"

    .line 463
    invoke-virtual {p0, v8, v1, p1}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    if-nez v1, :cond_1e6

    goto :goto_1e7

    :cond_1e6
    move v6, v8

    :goto_1e7
    const-string p1, "Mount"

    .line 464
    invoke-virtual {p0, v6, p1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    const-string p1, "DirEncryptServiceHelper"

    .line 469
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENCRYPT Response admin : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_21a

    const-string p1, "DirEncryptServiceHelper"

    const-string p2, "Decrypt compelte"

    .line 471
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 472
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    .line 473
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto :goto_24f

    :cond_21a
    const-string p1, "DirEncryptServiceHelper"

    const-string p2, "Encrypt complete"

    .line 475
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mEncryptTimestamp:Ljava/lang/String;

    const-string p1, ""

    .line 477
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mDecryptTimestamp:Ljava/lang/String;

    goto :goto_24f

    :cond_22c
    const-string p1, "DirEncryptServiceHelper"

    const-string p2, "RESP_ENCRYPT failed"

    .line 480
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    if-nez p1, :cond_23e

    if-ne v1, v7, :cond_23c

    .line 483
    iput v4, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    goto :goto_23e

    .line 485
    :cond_23c
    iput v5, p0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    :cond_23e
    :goto_23e
    const-string p1, "failed"

    .line 488
    invoke-virtual {p0, v8, v1, p1}, Lcom/android/server/DirEncryptServiceHelper;->showNotification(IILjava/lang/String;)V

    .line 489
    invoke-virtual {p0, v9}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    if-nez v1, :cond_249

    goto :goto_24a

    :cond_249
    move v6, v8

    :goto_24a
    const-string p1, "free"

    .line 490
    invoke-virtual {p0, v6, p1}, Lcom/android/server/DirEncryptServiceHelper;->notifyEncryptionStatusChanged(ILjava/lang/String;)V

    .line 587
    :goto_24f
    monitor-exit v0

    return v7

    :catchall_251
    move-exception p0

    monitor-exit v0
    :try_end_253
    .catchall {:try_start_3 .. :try_end_253} :catchall_251

    throw p0

    :pswitch_data_254
    .packed-switch 0x2ab
        :pswitch_162
        :pswitch_108
        :pswitch_4a
        :pswitch_e1
        :pswitch_d0
        :pswitch_4a
        :pswitch_4a
        :pswitch_4a
        :pswitch_162
        :pswitch_63
        :pswitch_4c
    .end packed-switch
.end method

.method public ready()V
    .registers 2

    const/4 v0, 0x1

    .line 378
    invoke-virtual {p0, v0}, Lcom/android/server/DirEncryptServiceHelper;->setStatus(I)V

    return-void
.end method

.method public registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .registers 2

    .line 396
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public registerStorageEventListener()Z
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mStorageEventListener:Lcom/android/server/DirEncryptServiceHelper$SDStorageEventListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z

    move-result p0

    const-string v0, "DirEncryptServiceHelper"

    if-nez p0, :cond_13

    const-string p0, "RegisterStorageEventListner fail"

    .line 329
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_13
    const-string p0, "RegisterStorageEventListner success"

    .line 332
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public setBootComplted(Z)V
    .registers 2

    .line 374
    iput-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mBootCompleted:Z

    return-void
.end method

.method public setExecParams(Landroid/os/Handler;)V
    .registers 2

    .line 382
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public setMountSDcardToHelper(Z)V
    .registers 2

    .line 341
    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    return-void
.end method

.method public setNeedToCreateKey(Z)V
    .registers 2

    .line 337
    sput-boolean p1, Lcom/android/server/DirEncryptServiceHelper;->mNeedToCreateKey:Z

    return-void
.end method

.method public final setStatus(I)V
    .registers 4

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DirEncryptServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper;->mServiceStatus:I

    return-void
.end method

.method public final showNotification(IILjava/lang/String;)V
    .registers 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, ""

    const/4 v7, 0x4

    const/4 v8, 0x2

    const v10, 0x1040c0b

    const v11, 0x1040c0f

    const/4 v12, 0x1

    if-eq v1, v12, :cond_26e

    const/4 v14, 0x6

    const/4 v15, 0x5

    const v16, 0x108028c

    const v5, 0x1040c0d

    const v6, 0x1040c08

    const/high16 v9, 0xc000000

    const/4 v13, 0x0

    if-eq v1, v8, :cond_1ab

    const/4 v8, 0x3

    if-eq v1, v8, :cond_16a

    if-eq v1, v15, :cond_12e

    if-eq v1, v14, :cond_e3

    const/4 v3, 0x7

    if-eq v1, v3, :cond_b7

    const/16 v3, 0xa

    if-eq v1, v3, :cond_84

    const/16 v3, 0xb

    if-eq v1, v3, :cond_45

    .line 1087
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1088
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    :cond_44
    return-void

    :cond_45
    if-ne v2, v12, :cond_5f

    .line 1051
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1052
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v16, 0x10802f1

    goto :goto_73

    .line 1055
    :cond_5f
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1056
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1058
    :goto_73
    iput v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    .line 1059
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v13, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    goto/16 :goto_126

    .line 1078
    :cond_84
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040c17

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1079
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040c16

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1080
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.android.security.SemSdCardEncryption.UNMOUNT_POLICY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v13, v4, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1081
    iput v13, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const v4, 0x108007b

    move-object v6, v1

    move-object v5, v2

    move-object v2, v3

    move v3, v4

    move-object v4, v6

    goto/16 :goto_2aa

    .line 955
    :cond_b7
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040c3b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 956
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040c3a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 958
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DirEncryptServiceHelper;->getSecurityIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-static {v3, v13, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object v6, v1

    move-object v5, v2

    move-object v2, v3

    const v3, 0x10802f2

    goto/16 :goto_2aa

    .line 1033
    :cond_e3
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mErrAdditionalSpace:I

    if-ne v2, v12, :cond_103

    .line 1035
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1036
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v16, 0x10802f1

    goto :goto_117

    .line 1039
    :cond_103
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1040
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1043
    :goto_117
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v13, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1044
    iput v7, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    :goto_126
    move-object v4, v1

    move-object v6, v4

    move-object v5, v2

    move-object v2, v3

    move/from16 v3, v16

    goto/16 :goto_2aa

    .line 1014
    :cond_12e
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1015
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimateSync:Ljava/lang/Object;

    monitor-enter v3

    .line 1017
    :try_start_135
    iget-wide v4, v0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_143

    .line 1018
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/android/server/DirEncryptServiceHelper;->mProgressTime:J

    .line 1020
    :cond_143
    iget-object v4, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-static {v4, v1}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->-$$Nest$fputmProgress(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)V

    .line 1021
    iget-object v4, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-static {v4, v2}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->-$$Nest$fputmEnctype(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)V

    if-nez v1, :cond_15c

    .line 1024
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->start()V

    .line 1025
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_165

    :cond_15c
    const/16 v2, 0x64

    if-ne v2, v1, :cond_165

    .line 1027
    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    .line 1029
    :cond_165
    :goto_165
    monitor-exit v3

    return-void

    :catchall_167
    move-exception v0

    monitor-exit v3
    :try_end_169
    .catchall {:try_start_135 .. :try_end_169} :catchall_167

    throw v0

    :cond_16a
    if-ne v2, v12, :cond_181

    .line 1066
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1067
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_195

    .line 1070
    :cond_181
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1071
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1073
    :goto_195
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v13, v4, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object v4, v1

    move-object v6, v4

    move-object v5, v2

    move-object v2, v3

    const v3, 0x10802f1

    goto/16 :goto_2aa

    :cond_1ab
    const/16 v1, 0x8

    const v4, 0x1040c09

    if-ne v2, v12, :cond_20e

    .line 964
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "success"

    .line 965
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d8

    .line 966
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1040c0e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 967
    iput v13, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const v5, 0x10802f2

    goto :goto_233

    :cond_1d8
    const-string v6, "exception"

    .line 969
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f1

    .line 970
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 971
    iput v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object v1, v3

    const v5, 0x10802f1

    goto :goto_233

    .line 974
    :cond_1f1
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v13, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 975
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 976
    iput v15, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const v5, 0x10802f1

    goto :goto_268

    .line 980
    :cond_20e
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "success"

    .line 981
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_235

    .line 982
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1040c0a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 983
    iput v13, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    const v5, 0x108028d

    :goto_233
    const/4 v13, 0x0

    goto :goto_268

    :cond_235
    const-string v5, "exception"

    .line 985
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24d

    .line 986
    iget-object v3, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 987
    iput v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move-object v1, v3

    move/from16 v5, v16

    goto :goto_233

    .line 990
    :cond_24d
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v13, v3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 991
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 992
    iput v14, v0, Lcom/android/server/DirEncryptServiceHelper;->mLastError:I

    move/from16 v5, v16

    :goto_268
    move-object v6, v1

    move-object v4, v2

    move v3, v5

    move-object v2, v13

    move-object v5, v6

    goto :goto_2aa

    :cond_26e
    if-ne v2, v12, :cond_28b

    .line 1002
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1003
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040c10

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x10802f2

    goto :goto_2a5

    .line 1006
    :cond_28b
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1007
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040c0c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v5, 0x108028d

    :goto_2a5
    move-object v4, v1

    move-object v6, v4

    move v3, v5

    move-object v5, v2

    const/4 v2, 0x0

    .line 1093
    :goto_2aa
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->isInProgress()Z

    move-result v1

    if-eqz v1, :cond_2b7

    .line 1094
    iget-object v1, v0, Lcom/android/server/DirEncryptServiceHelper;->mAnimator:Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->stop()V

    :cond_2b7
    move-object/from16 v1, p0

    .line 1097
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/DirEncryptServiceHelper;->getNotification(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_2f4

    .line 1099
    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/2addr v2, v12

    or-int/lit8 v2, v2, 0x10

    .line 1100
    iput v2, v1, Landroid/app/Notification;->flags:I

    .line 1101
    iget v2, v1, Landroid/app/Notification;->defaults:I

    or-int/2addr v2, v7

    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 1103
    iget-object v2, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1104
    new-instance v3, Landroid/app/NotificationChannel;

    sget-object v4, Lcom/android/server/DirEncryptServiceHelper;->mNotificationChannelID:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x2

    invoke-direct {v3, v4, v0, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1105
    sget v0, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    invoke-virtual {v2, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_2f4
    return-void
.end method

.method public final startCryptSDCardSettingsActivity()V
    .registers 4

    .line 839
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isCryptSDCardSettings()Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "DirEncryptServiceHelper"

    const-string/jumbo v1, "startCryptSDCardSettingsActivity"

    .line 840
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.app.action.START_SDCARD_ENCRYPTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10400000

    .line 842
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 843
    sget-boolean v2, Lcom/android/server/DirEncryptServiceHelper;->mMountSDcardToHelper:Z

    if-nez v2, :cond_3a

    .line 845
    :try_start_1e
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_23
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1e .. :try_end_23} :catch_24

    goto :goto_3a

    :catch_24
    move-exception p0

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startCryptSDCardSettingsActivity Failed to start intent activity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3a
    :goto_3a
    return-void
.end method

.method public final unmountSDCard()V
    .registers 2

    const/4 v0, 0x1

    .line 615
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mSelfSDMountRequested:Z

    .line 618
    :try_start_3
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p0

    .line 620
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    return-void
.end method

.method public unmountSDCardByAdmin()V
    .registers 5

    .line 630
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/security/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SD card  : State = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " / Admin policy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / Encrypted : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DirEncryptServiceHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isAdminApplied()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_5d

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result v1

    if-nez v1, :cond_5d

    const-string/jumbo v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "Unmount SD Card By Admin"

    .line 634
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iput-boolean v3, p0, Lcom/android/server/DirEncryptServiceHelper;->mUnnmountRequested:Z

    .line 641
    :try_start_53
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/security/DirEncryptionWrapper;->unmountVolume()Z
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_58} :catch_59

    goto :goto_5d

    :catch_59
    move-exception p0

    .line 643
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .registers 2

    .line 400
    iget-object p0, p0, Lcom/android/server/DirEncryptServiceHelper;->mListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
