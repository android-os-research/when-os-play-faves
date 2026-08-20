.class public Lcom/samsung/android/server/audio/MultiSoundManager;
.super Ljava/lang/Object;
.source "MultiSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;,
        Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;,
        Lcom/samsung/android/server/audio/MultiSoundManager$RemoveStackAppRunnable;,
        Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;,
        Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;,
        Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;
    }
.end annotation


# static fields
.field public static final DEFAULT_VOLUME:I = 0x64

.field public static final ID_HEADUP_NOTIFICATION:I = 0x3ed

.field public static final ID_NOTIFICATION:I = 0x3ec

.field public static final MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "AudioCore_Notification"

.field public static final TAG:Ljava/lang/String; = "AS.MultiSoundManager"

.field public static final TYPE_SEPARATE_APP_SOUND:I = 0x1

.field public static final TYPE_TV_DUAL_MODE:I = 0x2

.field public static final sLastSetDeviceToNativeLock:Ljava/lang/Object;

.field public static sLastSetDeviceToNativeTime:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLastSetDeviceToNativeLock"
        }
    .end annotation
.end field


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public mAudioHandler:Landroid/os/Handler;

.field public final mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

.field public mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

.field public final mMultiSoundLock:Ljava/lang/Object;

.field public mNm:Landroid/app/NotificationManager;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mPinAppInfoList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;",
            ">;"
        }
    .end annotation
.end field

.field public mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

.field public final mRemoteSubmixApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

.field public mTaskStack:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTaskStackListener:Landroid/app/TaskStackListener;

.field public mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;

.field public mVolumeTable:[F


# direct methods
.method public static synthetic $r8$lambda$phohH3araERI0NWXu2ZL3ZRzsc0(Lcom/samsung/android/server/audio/MultiSoundManager;Lcom/samsung/android/media/AudioParameter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->lambda$setDeviceToNative$1(Lcom/samsung/android/media/AudioParameter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yS6Pqj21jVt2l-fBFTTEmt_aX4g(Lcom/samsung/android/server/audio/MultiSoundManager;Lcom/samsung/android/media/AudioParameter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->lambda$setStateToNative$0(Lcom/samsung/android/media/AudioParameter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAudioSystem(Lcom/samsung/android/server/audio/MultiSoundManager;)Lcom/android/server/audio/AudioSystemAdapter;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmInterface(Lcom/samsung/android/server/audio/MultiSoundManager;)Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTaskStack(Lcom/samsung/android/server/audio/MultiSoundManager;)Ljava/util/HashMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mTaskStack:Ljava/util/HashMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetUidByTaskId(Lcom/samsung/android/server/audio/MultiSoundManager;I)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getUidByTaskId(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mupdateForegroundAppUid(Lcom/samsung/android/server/audio/MultiSoundManager;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/MultiSoundManager;->updateForegroundAppUid(IZ)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    const/4 v1, 0x2

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x4

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x8

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x80

    .line 78
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x100

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x200

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x4000

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x4000000

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const v1, 0x8000

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 98
    sput-wide v0, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;Landroid/os/Handler;Lcom/android/server/audio/AudioSystemAdapter;)V
    .registers 9

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mTaskStack:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    .line 112
    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/audio/MultiSoundManager$1;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mTaskStackListener:Landroid/app/TaskStackListener;

    .line 129
    new-instance v1, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    const/4 v2, -0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;I)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 130
    new-instance v1, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;I)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;

    .line 131
    new-instance v1, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;IZ)V

    iput-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    .line 1263
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    .line 135
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    .line 136
    iput-boolean v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->makeVolumeTable()V

    .line 138
    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    .line 139
    iput-object p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    .line 140
    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const-string p2, "activity"

    .line 141
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 142
    iget-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 143
    iget-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 144
    iput-object p4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    .line 145
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 148
    :try_start_6e
    invoke-interface {p1, v0}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_72

    goto :goto_7d

    :catch_72
    move-exception p0

    const-string p1, "AS.MultiSoundManager"

    const-string p2, "Exception - registerTaskStackListener"

    .line 150
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_7d
    return-void
.end method

.method private synthetic lambda$setDeviceToNative$1(Lcom/samsung/android/media/AudioParameter;)V
    .registers 2

    .line 726
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$setStateToNative$0(Lcom/samsung/android/media/AudioParameter;)V
    .registers 2

    .line 708
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearHeadUpNotification()V
    .registers 2

    .line 938
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const/16 v0, 0x3ed

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public clearNotification()V
    .registers 2

    .line 878
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const/16 v0, 0x3ec

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public disable()V
    .registers 3

    .line 179
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "AS.MultiSoundManager"

    const-string v1, "disable"

    .line 183
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 185
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    .line 186
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {p0}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->clearNotification()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 666
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\nMultiSound, size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isEnabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_152

    .line 671
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 672
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 673
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 674
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getPackageName(I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "), device=0x"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 675
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "volume="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppVolume()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_32

    .line 679
    :cond_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Current Default Device: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    .line 680
    invoke-interface {v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getCurrentMediaDevice()I

    move-result v1

    .line 679
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Pin Device: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Pin App: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  SEC_AUDIO_MULTI_SOUND=true"

    .line 683
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  SEC_AUDIO_SUPPORT_D2D=true"

    .line 684
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    const-string v1, "com.samsung.android.oneconnect"

    invoke-interface {v0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->isInstalledApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10f

    const-string v0, "  Smart Things=install"

    .line 686
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_10f
    const-string v0, "  mPreventOverheatState="

    .line 689
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  Dual App : "

    .line 691
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 692
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    monitor-enter v1

    .line 693
    :try_start_121
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_127
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_148

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 694
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_127

    .line 696
    :cond_148
    monitor-exit v1
    :try_end_149
    .catchall {:try_start_121 .. :try_end_149} :catchall_14f

    const-string p0, ""

    .line 697
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_14f
    move-exception p0

    .line 696
    :try_start_150
    monitor-exit v1
    :try_end_151
    .catchall {:try_start_150 .. :try_end_151} :catchall_14f

    throw p0

    :catchall_152
    move-exception p0

    .line 669
    :try_start_153
    monitor-exit v0
    :try_end_154
    .catchall {:try_start_153 .. :try_end_154} :catchall_152

    throw p0
.end method

.method public enable(Z)V
    .registers 4

    .line 167
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "AS.MultiSoundManager"

    const-string v1, "enable"

    .line 170
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 171
    iput-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    .line 172
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->resetByEnableDisable()V

    if-eqz p1, :cond_19

    .line 174
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {p0}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->showNotification()V

    :cond_19
    return-void
.end method

.method public final enableSeparateRemoteSubmix(Z)V
    .registers 3

    const/4 v0, -0x1

    .line 1281
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->enableSeparateRemoteSubmix(ZI)V

    return-void
.end method

.method public final enableSeparateRemoteSubmix(ZI)V
    .registers 6

    .line 1266
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string v1, "audioParam"

    .line 1267
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string v1, "l_multi_sound_key"

    .line 1268
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string v1, "enable"

    .line 1269
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string v1, "exclusive"

    .line 1270
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string v1, "device"

    const v2, 0x8000

    .line 1271
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const/4 v2, 0x2

    .line 1273
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 1274
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    .line 1275
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    .line 1277
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->setAppCastingState(ZI)V

    return-void
.end method

.method public getAppDevice(I)I
    .registers 5

    .line 330
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    monitor-enter v0

    .line 332
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const v2, 0x8000

    if-eqz v1, :cond_14

    .line 333
    monitor-exit v0

    return v2

    .line 335
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_77

    .line 337
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    const/4 v0, 0x0

    if-nez p1, :cond_25

    return v0

    .line 342
    :cond_25
    invoke-virtual {p1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice()I

    move-result p1

    .line 343
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->isDeviceConnected(I)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_31

    :cond_30
    move p1, v0

    :goto_31
    if-ne p1, v2, :cond_34

    return p1

    .line 348
    :cond_34
    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v1, :cond_39

    return v0

    :cond_39
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3d

    return p1

    .line 356
    :cond_3d
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getCurrentMediaDevice()I

    move-result p1

    .line 357
    sget-object v1, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    return p1

    .line 362
    :cond_4e
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {p0}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getConnectedDevice()I

    move-result p0

    and-int/lit16 p1, p0, 0x4000

    const/16 v1, 0x400

    const/high16 v2, 0x4000000

    if-eqz p1, :cond_5f

    const/16 v0, 0x4000

    goto :goto_76

    :cond_5f
    and-int p1, p0, v2

    if-eqz p1, :cond_65

    move v0, v2

    goto :goto_76

    :cond_65
    and-int/lit8 p1, p0, 0x4

    if-eqz p1, :cond_6b

    const/4 v0, 0x4

    goto :goto_76

    :cond_6b
    and-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_72

    const/16 v0, 0x8

    goto :goto_76

    :cond_72
    and-int/2addr p0, v1

    if-eqz p0, :cond_76

    move v0, v1

    :cond_76
    :goto_76
    return v0

    :catchall_77
    move-exception p0

    .line 335
    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public getAppDevice(IZ)I
    .registers 3

    if-eqz p2, :cond_17

    .line 295
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    if-eqz p0, :cond_15

    .line 296
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice()I

    move-result p0

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0

    .line 298
    :cond_17
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result p0

    return p0
.end method

.method public getAppVolume(I)I
    .registers 3

    .line 418
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    if-eqz p0, :cond_17

    .line 421
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppVolume()I

    move-result p0

    monitor-exit v0

    return p0

    :cond_17
    const/16 p0, 0x64

    .line 424
    monitor-exit v0

    return p0

    :catchall_1b
    move-exception p0

    .line 425
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public getAppVolumeFloat(I)F
    .registers 6

    .line 429
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1b

    .line 433
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mVolumeTable:[F

    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppVolume()I

    move-result v3

    aget v2, v2, v3

    .line 436
    :cond_1b
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    .line 437
    invoke-virtual {v3, p1}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->needLimitVolumeForApp(I)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 438
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->isSpeakerOut(I)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 439
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    invoke-static {p0}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->-$$Nest$fgetmLimitedVolumeForOverheat(Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;)F

    move-result p0

    mul-float/2addr v2, p0

    :cond_30
    if-eqz v1, :cond_39

    .line 442
    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->isShouldMute()Z

    move-result p0

    if-eqz p0, :cond_39

    const/4 v2, 0x0

    .line 446
    :cond_39
    monitor-exit v0

    return v2

    :catchall_3b
    move-exception p0

    .line 447
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public final getCurrentMediaDevice()I
    .registers 5

    .line 302
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {p0}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getCurrentMediaDevice()I

    move-result p0

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    const/high16 v1, 0x200000

    const/high16 v2, 0x80000

    const/high16 v3, 0x40000

    if-eqz v0, :cond_44

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_17

    const/4 p0, 0x2

    goto :goto_44

    :cond_17
    and-int v0, p0, v3

    if-eqz v0, :cond_1d

    move p0, v3

    goto :goto_44

    :cond_1d
    and-int v0, p0, v2

    if-eqz v0, :cond_23

    move p0, v2

    goto :goto_44

    :cond_23
    and-int v0, p0, v1

    if-eqz v0, :cond_29

    move p0, v1

    goto :goto_44

    .line 319
    :cond_29
    sget-object v0, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_44

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int v2, v1, p0

    if-ne v2, v1, :cond_2f

    return v1

    :cond_44
    :goto_44
    return p0
.end method

.method public final getCurrentUserId()I
    .registers 3

    .line 1130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1132
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 1133
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_e} :catch_17
    .catchall {:try_start_4 .. :try_end_e} :catchall_12

    .line 1137
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1138
    throw p0

    .line 1137
    :catch_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0
.end method

.method public getDeviceMultiSoundUsingActually()I
    .registers 5

    .line 590
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    monitor-enter v0

    .line 592
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 593
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/server/audio/AudioHelper;->isUsingAudioForUid(I)Z

    move-result v2

    if-eqz v2, :cond_9

    const p0, 0x8000

    .line 594
    monitor-exit v0

    return p0

    .line 597
    :cond_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_5d

    .line 599
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    return v1

    .line 603
    :cond_2b
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 604
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3a
    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 605
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice()I

    move-result v3

    if-nez v3, :cond_4d

    goto :goto_3a

    .line 609
    :cond_4d
    iget v3, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-static {v3}, Lcom/samsung/android/server/audio/AudioHelper;->isUsingAudioForUid(I)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 610
    iget v0, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result p0

    return p0

    :cond_5c
    return v1

    :catchall_5d
    move-exception p0

    .line 597
    :try_start_5e
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw p0
.end method

.method public getPinAppInfo(I)Ljava/lang/String;
    .registers 12

    .line 524
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    monitor-enter v0

    .line 525
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->isRemoteSubmixAppExist()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_39

    const v1, 0x8000

    if-ne p1, v1, :cond_39

    .line 526
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 527
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {v1, p1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getPackageName(I)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v2
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_a2

    .line 529
    :try_start_2d
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_33} :catch_35
    .catchall {:try_start_2d .. :try_end_33} :catchall_a2

    :try_start_33
    monitor-exit v0

    return-object p0

    :catch_35
    const-string p0, ""

    .line 532
    monitor-exit v0

    return-object p0

    .line 535
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_a2

    .line 537
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 538
    :try_start_3d
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v0, :cond_45

    const-string p0, ""

    .line 539
    monitor-exit v1

    return-object p0

    .line 541
    :cond_45
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 542
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 543
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 544
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result v4

    if-eq v4, p1, :cond_6c

    goto :goto_4f

    .line 548
    :cond_6c
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {v4, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getPackageName(I)[Ljava/lang/String;

    move-result-object v3

    .line 549
    aget-object v4, v3, v2

    .line 550
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {v5}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getMultiSoundAppFromSetting()Ljava/lang/String;

    move-result-object v5

    .line 553
    array-length v6, v3

    move v7, v2

    :goto_7c
    if-ge v7, v6, :cond_8b

    aget-object v8, v3, v7

    .line 554
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_84
    .catchall {:try_start_3d .. :try_end_84} :catchall_9f

    if-eqz v9, :cond_88

    move-object v4, v8

    goto :goto_8b

    :cond_88
    add-int/lit8 v7, v7, 0x1

    goto :goto_7c

    .line 561
    :cond_8b
    :goto_8b
    :try_start_8b
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {v3, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getApplicationLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_91} :catch_93
    .catchall {:try_start_8b .. :try_end_91} :catchall_9f

    :try_start_91
    monitor-exit v1

    return-object p0

    :catch_93
    const-string v3, "AS.MultiSoundManager"

    const-string v4, "not found"

    .line 563
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4f

    :cond_9b
    const-string p0, ""

    .line 566
    monitor-exit v1

    return-object p0

    :catchall_9f
    move-exception p0

    .line 567
    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_91 .. :try_end_a1} :catchall_9f

    throw p0

    :catchall_a2
    move-exception p0

    .line 535
    :try_start_a3
    monitor-exit v0
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a2

    throw p0
.end method

.method public getPinDevice()I
    .registers 5

    .line 504
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 506
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 507
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 508
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice()I

    move-result v3

    if-nez v3, :cond_28

    goto :goto_15

    .line 512
    :cond_28
    iget v2, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result v2

    if-eqz v2, :cond_15

    const v3, 0x8000

    if-eq v2, v3, :cond_15

    move v1, v2

    :cond_36
    return v1
.end method

.method public getPinPackageName(I)[Ljava/lang/String;
    .registers 6

    .line 617
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 619
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 620
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice()I

    move-result v3

    if-ne v3, p1, :cond_12

    .line 621
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getPackageName(I)[Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_30
    const-string p0, ""

    .line 624
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_38
    move-exception p0

    .line 625
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public getPreventOverheatState()Z
    .registers 1

    .line 777
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    invoke-static {p0}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->-$$Nest$fgetmState(Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;)Z

    move-result p0

    return p0
.end method

.method public getRemoteSubmixApps()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1345
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    return-object p0
.end method

.method public final getRemoteSubmixPacakageNames()[Ljava/lang/String;
    .registers 6

    .line 1302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1303
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    monitor-enter v1

    .line 1304
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1305
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->getPackageName(I)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_e

    .line 1307
    :cond_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3a

    .line 1308
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    .line 1309
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :catchall_3a
    move-exception p0

    .line 1307
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final getUidByTaskId(I)I
    .registers 8

    .line 743
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v1, -0x1

    const-string v2, "AS.MultiSoundManager"

    if-nez v0, :cond_d

    const-string p0, "ActivityManager is null."

    .line 744
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    const v3, 0x7fffffff

    .line 750
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 752
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1a
    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 753
    iget v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v4, p1, :cond_1a

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_1a

    .line 754
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 756
    :try_start_32
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 757
    iget p0, v4, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_3b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_3b} :catch_3c

    return p0

    .line 760
    :catch_3c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not installed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_51
    return v1
.end method

.method public isAppMute(I)Z
    .registers 3

    .line 468
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 469
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 470
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_2a
    move-exception p0

    .line 471
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public final isDeviceConnected(I)Z
    .registers 3

    .line 1143
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/android/server/audio/AudioSystemAdapter;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_c

    goto :goto_d

    :cond_c
    const/4 p1, 0x0

    :goto_d
    return p1
.end method

.method public isEnabled()Z
    .registers 1

    .line 190
    iget-boolean p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    return p0
.end method

.method public isRemoteSubmixAppExist()Z
    .registers 2

    .line 1296
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    monitor-enter v0

    .line 1297
    :try_start_3
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    if-lez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    monitor-exit v0

    return p0

    :catchall_10
    move-exception p0

    .line 1298
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final isSpeakerOut(I)Z
    .registers 7

    .line 475
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getCurrentMediaDevice()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_c

    move v0, v2

    goto :goto_d

    :cond_c
    move v0, v3

    .line 478
    :goto_d
    iget-boolean v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v4, :cond_12

    return v0

    .line 483
    :cond_12
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result p0

    if-nez p0, :cond_19

    return v0

    :cond_19
    if-ne p0, v1, :cond_1c

    goto :goto_1d

    :cond_1c
    move v2, v3

    :goto_1d
    return v2
.end method

.method public final makeVolumeTable()V
    .registers 8

    const/16 v0, 0x65

    new-array v0, v0, [F

    .line 156
    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mVolumeTable:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x64

    aput v1, v0, v2

    const/4 v0, 0x1

    :goto_11
    if-ge v0, v2, :cond_2e

    .line 162
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mVolumeTable:[F

    int-to-double v3, v0

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    mul-double/2addr v3, v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->exp(D)D

    move-result-wide v3

    const-wide/high16 v5, -0x3fec000000000000L    # -5.0

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v3, v3

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2e
    return-void
.end method

.method public removeItem(I)Z
    .registers 7

    .line 654
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    const-string v1, "AS.MultiSoundManager"

    .line 656
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeItem, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    invoke-virtual {p0, p1, v2, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->setDeviceToNative(III)V

    const/4 p0, 0x1

    .line 659
    monitor-exit v0

    return p0

    .line 661
    :cond_36
    monitor-exit v0

    return v2

    :catchall_38
    move-exception p0

    .line 662
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw p0
.end method

.method public resetByAudioServerDied()V
    .registers 7

    .line 629
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "AS.MultiSoundManager"

    const-string/jumbo v2, "resetByAudioServerDied"

    .line 630
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 633
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 634
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 635
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v3

    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/android/server/audio/MultiSoundManager;->setDeviceToNative(III)V

    .line 636
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    goto :goto_15

    .line 638
    :cond_3b
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setStateToNative()V

    .line 639
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_71

    .line 641
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    monitor-enter v1

    const/4 v0, -0x1

    .line 643
    :try_start_43
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_49
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v3, 0x8000

    .line 644
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->setRemoteSubmixAppToNative(II)V

    goto :goto_49

    .line 647
    :cond_60
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_6c

    const/4 v2, 0x1

    .line 648
    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->enableSeparateRemoteSubmix(ZI)V

    .line 650
    :cond_6c
    monitor-exit v1

    return-void

    :catchall_6e
    move-exception p0

    monitor-exit v1
    :try_end_70
    .catchall {:try_start_43 .. :try_end_70} :catchall_6e

    throw p0

    :catchall_71
    move-exception p0

    .line 639
    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    throw p0
.end method

.method public final resetByEnableDisable()V
    .registers 6

    const-string v0, "AS.MultiSoundManager"

    const-string/jumbo v1, "resetByEnableDisable"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 196
    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 200
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 201
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice()I

    move-result v3

    if-nez v3, :cond_2f

    goto :goto_1c

    .line 205
    :cond_2f
    iget-boolean v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v3, :cond_47

    const v3, 0x8000

    if-eq v0, v3, :cond_47

    .line 206
    iget v3, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result v3

    if-eq v0, v3, :cond_47

    .line 208
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    iget v4, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-interface {v3, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->sendBecomingNoisyIntent(I)V

    .line 212
    :cond_47
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    iget v2, v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-interface {v3, v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->updateFocusRequester(I)V

    goto :goto_1c

    .line 215
    :cond_4f
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setStateToNative()V

    return-void
.end method

.method public resetPinDevice()V
    .registers 5

    .line 574
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 575
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 576
    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice()I

    move-result v2

    if-nez v2, :cond_22

    goto :goto_f

    .line 579
    :cond_22
    iget v1, v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppDevice(IIZ)V

    goto :goto_f

    .line 581
    :cond_2a
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->disable()V

    return-void
.end method

.method public sendBecomingNoisyIntentToUnpinApps(I)V
    .registers 5

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendBecomingNoisyIntentToUnpinApps, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.MultiSoundManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x8000

    if-eq p1, v0, :cond_27

    .line 1039
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->isRemoteSubmixAppExist()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1041
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getRemoteSubmixPacakageNames()[Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    .line 1043
    :cond_27
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinPackageName(I)[Ljava/lang/String;

    move-result-object v0

    .line 1046
    :goto_2f
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.media.AUDIO_BECOMING_NOISY_SEC"

    .line 1047
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1048
    sget-object v2, Landroid/media/AudioSystem;->DEVICE_OUT_ALL_A2DP_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4b

    const/4 p1, 0x1

    const-string v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    .line 1049
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1051
    :cond_4b
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendIntentToSpecificPackage(Landroid/content/Intent;[Ljava/lang/String;)V

    const-string p1, "android.media.AUDIO_BECOMING_NOISY"

    .line 1053
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1054
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5d

    const/4 p1, 0x0

    .line 1055
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1057
    :cond_5d
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendIntentToSpecificPackage(Landroid/content/Intent;[Ljava/lang/String;)V

    return-void
.end method

.method public sendBecomingNoisyToPinnedApp(I)V
    .registers 5

    .line 492
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 494
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 495
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 496
    iget v2, v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->getAppDevice(I)I

    move-result v2

    if-ne v2, p1, :cond_14

    .line 497
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    iget v1, v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    invoke-interface {v2, v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->sendBecomingNoisyIntent(I)V

    goto :goto_14

    :cond_30
    return-void
.end method

.method public final sendBroadcastToAll(Landroid/content/Intent;)V
    .registers 5

    const/high16 v0, 0x4000000

    .line 1119
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 1120
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1121
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1123
    :try_start_e
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 1125
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    throw p0
.end method

.method public final sendIntentToSpecificPackage(Landroid/content/Intent;[Ljava/lang/String;)V
    .registers 16

    .line 1064
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1066
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v3, 0x0

    .line 1067
    invoke-static {v3, v4}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getCurrentUserId()I

    move-result v4

    .line 1066
    invoke-virtual {v2, p1, v3, v4}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object v2
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_de

    .line 1069
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1071
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->queryRegisteredReceiverPackages(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v0

    .line 1073
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string/jumbo v3, "send intent except "

    const-string/jumbo v4, "sendBecomingNoisyIntentToUnpinApps to "

    const-string v5, "AS.MultiSoundManager"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1075
    iget-object v8, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v8, :cond_3c

    goto :goto_21

    .line 1077
    :cond_3c
    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1078
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_45

    goto :goto_21

    .line 1080
    :cond_45
    array-length v9, p2

    move v10, v7

    :goto_47
    if-ge v10, v9, :cond_67

    aget-object v11, p2, v10

    .line 1081
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_64

    .line 1082
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    :cond_64
    add-int/lit8 v10, v10, 0x1

    goto :goto_47

    :cond_67
    move v6, v7

    :goto_68
    if-eqz v6, :cond_6b

    goto :goto_21

    .line 1090
    :cond_6b
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1091
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1092
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 1098
    :cond_8c
    array-length v1, v0

    move v2, v7

    :goto_8e
    if-ge v2, v1, :cond_dd

    aget-object v8, v0, v2

    if-eqz v8, :cond_da

    .line 1100
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9b

    goto :goto_da

    .line 1102
    :cond_9b
    array-length v9, p2

    move v10, v7

    :goto_9d
    if-ge v10, v9, :cond_be

    aget-object v11, p2, v10

    .line 1103
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_bb

    .line 1104
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v6

    goto :goto_bf

    :cond_bb
    add-int/lit8 v10, v10, 0x1

    goto :goto_9d

    :cond_be
    move v9, v7

    :goto_bf
    if-eqz v9, :cond_c2

    goto :goto_da

    .line 1112
    :cond_c2
    invoke-virtual {p1, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1114
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_da
    :goto_da
    add-int/lit8 v2, v2, 0x1

    goto :goto_8e

    :cond_dd
    return-void

    :catchall_de
    move-exception p0

    .line 1069
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1070
    throw p0
.end method

.method public setAppDevice(IIZ)V
    .registers 11

    const/4 v0, 0x3

    .line 219
    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 221
    :try_start_8
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    const-string/jumbo v3, "setAppDevice"

    invoke-interface {v2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string p0, "AS.MultiSoundManager"

    const-string/jumbo p1, "setAppDevice: permission error"

    .line 222
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    monitor-exit v1

    return-void

    .line 225
    :cond_1d
    sget-object v2, Lcom/samsung/android/server/audio/MultiSoundManager;->MULTI_SOUND_SUPPORTED_DEVICE_SET:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    if-eqz v2, :cond_39

    if-eqz p2, :cond_39

    const-string p0, "AS.MultiSoundManager"

    const-string/jumbo p1, "setAppDevice: unsupported device"

    .line 228
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    monitor-exit v1

    return-void

    .line 232
    :cond_39
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    if-eqz v2, :cond_57

    .line 234
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice()I

    move-result v2

    if-ne v2, p2, :cond_57

    const-string p0, "AS.MultiSoundManager"

    const-string/jumbo p1, "same device pin."

    .line 235
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    monitor-exit v1

    return-void

    .line 238
    :cond_57
    sget-object v2, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    const/4 v0, 0x2

    .line 241
    :cond_64
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    const/4 v3, 0x0

    if-nez v2, :cond_d4

    if-eqz p2, :cond_d4

    const v2, 0x8000

    if-eq p2, v2, :cond_d4

    .line 245
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 246
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7a
    :goto_7a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 247
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    .line 249
    invoke-virtual {v5}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getAppDevice()I

    move-result v6

    if-eqz v6, :cond_7a

    if-ne v6, v2, :cond_95

    goto :goto_7a

    .line 255
    :cond_95
    invoke-virtual {v5}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v6

    if-eq p1, v6, :cond_7a

    .line 257
    iget-boolean v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-eqz v2, :cond_ad

    if-eq p2, v0, :cond_ad

    .line 258
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-virtual {v5}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->sendBecomingNoisyIntent(I)V

    const/16 v2, 0xc8

    goto :goto_ae

    :cond_ad
    move v2, v3

    .line 261
    :goto_ae
    invoke-virtual {v5, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->setAppDevice(I)V

    .line 262
    invoke-virtual {v5}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v4

    invoke-virtual {p0, v4, v3, v2}, Lcom/samsung/android/server/audio/MultiSoundManager;->setDeviceToNative(III)V

    .line 263
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-virtual {v5}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->updateFocusRequester(I)V

    .line 264
    invoke-virtual {v5}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->removable()Z

    move-result v2

    if-eqz v2, :cond_d4

    .line 265
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    :cond_d4
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    if-nez v2, :cond_ea

    .line 275
    new-instance v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    const/16 v4, 0x64

    invoke-direct {v2, p1, p2, v4}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;-><init>(III)V

    goto :goto_ed

    .line 277
    :cond_ea
    invoke-virtual {v2, p2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->setAppDevice(I)V

    .line 280
    :goto_ed
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->removable()Z

    move-result v4

    if-eqz v4, :cond_fd

    .line 281
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_106

    .line 283
    :cond_fd
    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    :goto_106
    invoke-virtual {p0, p1, p2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->setDeviceToNative(III)V

    .line 286
    monitor-exit v1
    :try_end_10a
    .catchall {:try_start_8 .. :try_end_10a} :catchall_118

    .line 287
    iget-boolean p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    if-eqz p1, :cond_117

    if-ne p2, v0, :cond_117

    if-eqz p3, :cond_117

    .line 288
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {p0, v0}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->showHeadUpNotification(I)V

    :cond_117
    return-void

    :catchall_118
    move-exception p0

    .line 286
    :try_start_119
    monitor-exit v1
    :try_end_11a
    .catchall {:try_start_119 .. :try_end_11a} :catchall_118

    throw p0
.end method

.method public setAppMute(IZ)V
    .registers 7

    .line 451
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    if-nez v1, :cond_19

    .line 454
    new-instance v1, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v1, p1, v2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;-><init>(III)V

    .line 456
    :cond_19
    invoke-virtual {v1, p2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->setShouldMute(Z)V

    .line 458
    invoke-virtual {v1}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->removable()Z

    move-result p2

    if-eqz p2, :cond_2c

    .line 459
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 461
    :cond_2c
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :goto_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_3a

    .line 464
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    return-void

    :catchall_3a
    move-exception p0

    .line 463
    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public setAppToRemoteSubmix(II)V
    .registers 7

    .line 1314
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    monitor-enter v0

    const/16 v1, -0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, v1, :cond_4a

    .line 1316
    :try_start_9
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    const-string p0, "AS.MultiSoundManager"

    .line 1317
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already set uid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    monitor-exit v0

    return-void

    :cond_2d
    const p2, 0x8000

    .line 1321
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/MultiSoundManager;->setRemoteSubmixAppToNative(II)V

    .line 1322
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_3e

    .line 1323
    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->enableSeparateRemoteSubmix(ZI)V

    .line 1325
    :cond_3e
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_8c

    :catchall_48
    move-exception p0

    goto :goto_93

    :cond_4a
    const/16 v1, -0x3ea

    if-ne p2, v1, :cond_4f

    goto :goto_50

    :cond_4f
    move v2, v3

    .line 1328
    :goto_50
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_74

    const-string p0, "AS.MultiSoundManager"

    .line 1329
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid uid "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    monitor-exit v0

    return-void

    .line 1333
    :cond_74
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1334
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mRemoteSubmixApps:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-nez p2, :cond_88

    .line 1335
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->enableSeparateRemoteSubmix(Z)V

    .line 1337
    :cond_88
    invoke-virtual {p0, p1, v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->setRemoteSubmixAppToNative(II)V

    move v3, v2

    .line 1339
    :goto_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_9 .. :try_end_8d} :catchall_48

    .line 1340
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    invoke-interface {p0, p1, v3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->updateFocusRequester(IZ)V

    return-void

    .line 1339
    :goto_93
    :try_start_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_48

    throw p0
.end method

.method public setAppVolume(II)V
    .registers 7

    const/16 v0, 0x64

    if-gt p2, v0, :cond_47

    if-gez p2, :cond_7

    goto :goto_47

    .line 385
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mMultiSoundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 386
    :try_start_a
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    const/4 v3, 0x0

    if-nez v2, :cond_23

    if-ne p2, v0, :cond_1d

    .line 391
    monitor-exit v1

    return-void

    .line 393
    :cond_1d
    new-instance v2, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;

    invoke-direct {v2, p1, v3, p2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;-><init>(III)V

    goto :goto_2a

    .line 395
    :cond_23
    invoke-virtual {v2, p2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->setAppVolume(I)V

    .line 396
    invoke-virtual {v2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->removable()Z

    move-result v3

    :goto_2a
    if-eqz v3, :cond_36

    .line 400
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3f

    .line 402
    :cond_36
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPinAppInfoList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :goto_3f
    monitor-exit v1
    :try_end_40
    .catchall {:try_start_a .. :try_end_40} :catchall_44

    .line 405
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    return-void

    :catchall_44
    move-exception p0

    .line 404
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p0

    :cond_47
    :goto_47
    const-string p0, "AS.MultiSoundManager"

    const-string/jumbo p1, "setAppVolume: Invalid volume"

    .line 381
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAppVolumeToNative(I)V
    .registers 3

    .line 409
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    invoke-static {v0}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;->-$$Nest$fgetmUid(Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;)I

    move-result v0

    if-ne v0, p1, :cond_10

    .line 410
    iget-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_17

    .line 412
    :cond_10
    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;I)V

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    .line 414
    :goto_17
    iget-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mSetVolumeRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$SetVolumeRunnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setDeviceToNative(III)V
    .registers 8

    .line 712
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string v1, "audioParam"

    .line 713
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string v1, "l_multi_sound_key"

    .line 714
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "uid"

    .line 715
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    const-string v0, "device"

    .line 716
    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    const-string/jumbo p2, "type"

    const/4 v0, 0x1

    .line 717
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    .line 718
    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object p1

    .line 720
    sget-object p2, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeLock:Ljava/lang/Object;

    monitor-enter p2

    .line 721
    :try_start_2d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    int-to-long v2, p3

    add-long/2addr v0, v2

    .line 722
    sget-wide v2, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeTime:J

    cmp-long p3, v2, v0

    if-ltz p3, :cond_3c

    const-wide/16 v0, 0x1e

    add-long/2addr v0, v2

    .line 725
    :cond_3c
    sput-wide v0, Lcom/samsung/android/server/audio/MultiSoundManager;->sLastSetDeviceToNativeTime:J

    .line 726
    iget-object p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;Lcom/samsung/android/media/AudioParameter;)V

    invoke-virtual {p3, v2, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 727
    monitor-exit p2

    return-void

    :catchall_4a
    move-exception p0

    monitor-exit p2
    :try_end_4c
    .catchall {:try_start_2d .. :try_end_4c} :catchall_4a

    throw p0
.end method

.method public setLimitedVolumeForOverheat()V
    .registers 1

    .line 773
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->setLimitedVolumeForOverheat()V

    return-void
.end method

.method public setPreventOverheatState(I)V
    .registers 2

    .line 781
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->setDevice(I)V

    return-void
.end method

.method public setPreventOverheatState(IZ)V
    .registers 3

    .line 769
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mPreventOverheatState:Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->setState(IZ)V

    return-void
.end method

.method public final setRemoteSubmixAppToNative(II)V
    .registers 5

    .line 1285
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string v1, "audioParam"

    .line 1286
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string v1, "l_multi_sound_key"

    .line 1287
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "uid"

    .line 1288
    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    const-string v0, "device"

    .line 1289
    invoke-virtual {p1, v0, p2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    const-string/jumbo p2, "type"

    const/4 v0, 0x2

    .line 1290
    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object p1

    .line 1291
    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object p1

    .line 1292
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioSystem:Lcom/android/server/audio/AudioSystemAdapter;

    invoke-virtual {p1}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioSystemAdapter;->setParameters(Ljava/lang/String;)I

    return-void
.end method

.method public final setStateToNative()V
    .registers 6

    .line 701
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    const-string v1, "audioParam"

    .line 702
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string v1, "l_multi_sound_key"

    .line 703
    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mEnabled:Z

    const-string v2, "enable"

    .line 704
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;Z)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    .line 705
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    .line 708
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/server/audio/MultiSoundManager$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;Lcom/samsung/android/media/AudioParameter;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showHeadUpNotification(II)V
    .registers 13

    const/4 v0, 0x2

    .line 882
    invoke-static {v0}, Landroid/media/AudioManager;->getDevicesStatic(I)[Landroid/media/AudioDeviceInfo;

    move-result-object v1

    const-string v2, ""

    .line 883
    filled-new-array {v2, v2}, [Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v5, 0x1

    aput p2, v3, v5

    .line 886
    sget-object p2, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    sget-object p1, Lcom/samsung/android/media/SemAudioSystem;->MULTI_SOUND_PRIMARY_DEVICE_SET:Ljava/util/Set;

    aget p2, v3, v5

    .line 887
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    return-void

    :cond_2e
    move p1, v4

    :goto_2f
    if-ge p1, v0, :cond_7a

    .line 892
    aget p2, v3, p1

    if-eq p2, v0, :cond_68

    const/4 v6, 0x4

    if-eq p2, v6, :cond_58

    const/16 v6, 0x8

    if-eq p2, v6, :cond_58

    .line 901
    array-length p2, v1

    move v6, v4

    :goto_3e
    if-ge v6, p2, :cond_77

    aget-object v7, v1, v6

    .line 902
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->semGetInternalType()I

    move-result v8

    aget v9, v3, p1

    if-ne v8, v9, :cond_55

    .line 903
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getProductName()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    goto :goto_77

    :cond_55
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    .line 898
    :cond_58
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v6, 0x10405d9

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    goto :goto_77

    .line 894
    :cond_68
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v6, 0x1040826

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    :cond_77
    :goto_77
    add-int/lit8 p1, p1, 0x1

    goto :goto_2f

    .line 910
    :cond_7a
    sget-boolean p1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    if-eqz p1, :cond_96

    .line 911
    iget-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const p2, 0x1040813

    .line 912
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    aget-object v1, v2, v4

    aput-object v1, p2, v4

    aget-object v1, v2, v5

    aput-object v1, p2, v5

    .line 911
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_b8

    .line 915
    :cond_96
    iget-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const p2, 0x1040812

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    .line 916
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v4

    aget-object v1, v2, v4

    aput-object v1, p2, v5

    aget-object v1, v2, v5

    aput-object v1, p2, v0

    .line 915
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 918
    :goto_b8
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.audio.headup.changedevice"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0xc000000

    invoke-static {p2, v5, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 922
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const-string v3, "AudioCore_Notification"

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 923
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 924
    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x1080a75

    .line 925
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v3, 0x1040814

    .line 926
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 927
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 928
    invoke-virtual {v2, p1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 929
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 930
    invoke-virtual {p1, v5}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v1, 0x1040810

    .line 931
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0, p2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 932
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 934
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const/16 p2, 0x3ed

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public showNotification()V
    .registers 10

    .line 797
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x3

    .line 800
    invoke-static {v0}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 801
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinDevice()I

    move-result v1

    if-eqz v1, :cond_12f

    if-ne v0, v1, :cond_14

    goto/16 :goto_12f

    .line 807
    :cond_14
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.Launch_Setting"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.setting.multisound"

    const-string v3, "com.samsung.android.setting.multisound.MultiSoundSettingsActivity"

    .line 808
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const/high16 v3, 0x14000000

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 813
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.TurnOff_MultiSound"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    iget-object v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const/high16 v5, 0x4000000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 817
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const-string v7, "AudioCore_Notification"

    invoke-direct {v3, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, 0x4

    const v7, 0x1040819

    const/4 v8, 0x1

    if-eq v1, v6, :cond_b2

    const/16 v6, 0x8

    if-eq v1, v6, :cond_b2

    const/16 v6, 0x80

    if-eq v1, v6, :cond_95

    const/16 v6, 0x4000

    if-eq v1, v6, :cond_78

    if-eq v1, v5, :cond_78

    .line 851
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    if-eqz v5, :cond_66

    .line 852
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v5, 0x104081b

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_ce

    .line 855
    :cond_66
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v6, 0x104081a

    new-array v7, v8, [Ljava/lang/Object;

    .line 856
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v4

    .line 855
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ce

    .line 842
    :cond_78
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    if-eqz v5, :cond_83

    .line 843
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_ce

    .line 846
    :cond_83
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v6, 0x104081c

    new-array v7, v8, [Ljava/lang/Object;

    .line 847
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v4

    .line 846
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ce

    .line 832
    :cond_95
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    if-eqz v5, :cond_a0

    .line 833
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_ce

    .line 836
    :cond_a0
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v6, 0x1040816

    new-array v7, v8, [Ljava/lang/Object;

    .line 837
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v4

    .line 836
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_ce

    .line 823
    :cond_b2
    sget-boolean v5, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_MULTI_SOUND_SELECT_MULTIPLE_APPLICATIONS:Z

    if-eqz v5, :cond_bd

    .line 824
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_ce

    .line 827
    :cond_bd
    iget-object v5, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v6, 0x1040818

    new-array v7, v8, [Ljava/lang/Object;

    .line 828
    invoke-virtual {p0, v1}, Lcom/samsung/android/server/audio/MultiSoundManager;->getPinAppInfo(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v4

    .line 827
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 860
    :goto_ce
    new-instance v5, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v5}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v5, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v7, 0x104081e

    .line 861
    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x1080a75

    .line 862
    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 863
    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 864
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v4, 0x0

    .line 865
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 866
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 868
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040815

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const v5, 0x1080078

    .line 867
    invoke-virtual {v1, v5, v4, v0}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 871
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x104081f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 870
    invoke-virtual {v0, v5, v1, v2}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 874
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const/16 v0, 0x3ec

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_12f
    :goto_12f
    return-void
.end method

.method public showToast()V
    .registers 5

    .line 942
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 944
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 945
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x104081e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x104080c

    .line 944
    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 946
    invoke-static {v0, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public updateAudioServiceNotificationChannel()V
    .registers 5

    .line 785
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    const-string v1, "AudioCore_Notification"

    if-eqz v0, :cond_9

    .line 786
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    .line 789
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    .line 790
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mContext:Landroid/content/Context;

    .line 791
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040826

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 793
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mNm:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public final updateForegroundAppUid(IZ)V
    .registers 4

    if-eqz p2, :cond_20

    .line 732
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p2

    if-eqz p2, :cond_13

    .line 733
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 735
    :cond_13
    new-instance p2, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;I)V

    iput-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mUpdateFocusedAppRunnable:Lcom/samsung/android/server/audio/MultiSoundManager$UpdateFocusedAppRunnable;

    .line 736
    iget-object p0, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    .line 738
    :cond_20
    iget-object p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager;->mAudioHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/server/audio/MultiSoundManager$RemoveStackAppRunnable;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager$RemoveStackAppRunnable;-><init>(Lcom/samsung/android/server/audio/MultiSoundManager;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2a
    return-void
.end method
