.class public Lcom/android/server/tv/TvInputHardwareManager;
.super Ljava/lang/Object;
.source "TvInputHardwareManager.java"

# interfaces
.implements Lcom/android/server/tv/TvInputHal$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;,
        Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;,
        Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;,
        Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;,
        Lcom/android/server/tv/TvInputHardwareManager$Listener;,
        Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;,
        Lcom/android/server/tv/TvInputHardwareManager$Connection;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TvInputHardwareManager"


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mConnections:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/tv/TvInputHardwareManager$Connection;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mCurrentIndex:I

.field public mCurrentMaxIndex:I

.field public final mHal:Lcom/android/server/tv/TvInputHal;

.field public final mHandler:Landroid/os/Handler;

.field public final mHardwareInputIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mHardwareList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

.field public final mHdmiDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

.field public final mHdmiInputIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mHdmiStateMap:Landroid/util/SparseBooleanArray;

.field public final mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

.field public final mInputMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/media/tv/TvInputInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

.field public final mLock:Ljava/lang/Object;

.field public final mPendingHdmiDeviceEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingTvinputInfoEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field public final mVolumeReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAudioManager(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/media/AudioManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnections(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHal(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHardwareInputIdMap(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiDeviceList(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiInputIdMap(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiStateMap(Lcom/android/server/tv/TvInputHardwareManager;)Landroid/util/SparseBooleanArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/tv/TvInputHardwareManager;)Lcom/android/server/tv/TvInputHardwareManager$Listener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPendingHdmiDeviceEvents(Lcom/android/server/tv/TvInputHardwareManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mfindHardwareInfoForHdmiPortLocked(Lcom/android/server/tv/TvInputHardwareManager;I)Landroid/media/tv/TvInputHardwareInfo;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetMediaStreamVolume(Lcom/android/server/tv/TvInputHardwareManager;)F
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->getMediaStreamVolume()F

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mhandleVolumeChange(Lcom/android/server/tv/TvInputHardwareManager;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateVolume(Lcom/android/server/tv/TvInputHardwareManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->updateVolume()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smintArrayContains([II)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->intArrayContains([II)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/tv/TvInputHardwareManager$Listener;)V
    .registers 6

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Lcom/android/server/tv/TvInputHal;

    invoke-direct {v0, p0}, Lcom/android/server/tv/TvInputHal;-><init>(Lcom/android/server/tv/TvInputHal$Callback;)V

    iput-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHal:Lcom/android/server/tv/TvInputHal;

    .line 90
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    .line 92
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    .line 94
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    .line 96
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    .line 97
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 100
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$HdmiHotplugEventListener-IA;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    .line 102
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$HdmiDeviceEventListener-IA;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    .line 103
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$HdmiSystemAudioModeChangeListener-IA;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    .line 105
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/tv/TvInputHardwareManager$1;-><init>(Lcom/android/server/tv/TvInputHardwareManager;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    .line 111
    iput v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 112
    iput v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    .line 114
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    .line 115
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    .line 117
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingTvinputInfoEvents:Ljava/util/List;

    .line 120
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$ListenerHandler-IA;)V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    .line 125
    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    .line 126
    iput-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mListener:Lcom/android/server/tv/TvInputHardwareManager$Listener;

    const-string p2, "audio"

    .line 127
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    .line 128
    invoke-virtual {v0}, Lcom/android/server/tv/TvInputHal;->init()V

    return-void
.end method

.method public static indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;TT;)I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 337
    :goto_1
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_15

    .line 338
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v0

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    const/4 p0, -0x1

    return p0
.end method

.method public static intArrayContains([II)Z
    .registers 6

    .line 346
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_e

    aget v3, p0, v2

    if-ne v3, p1, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return v1
.end method


# virtual methods
.method public acquireHardware(ILandroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;IILjava/lang/String;I)Landroid/media/tv/ITvInputHardware;
    .registers 20

    move-object v0, p0

    move v1, p1

    .line 397
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 399
    iget-object v2, v0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "tv_tuner_resource_mgr"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;

    .line 401
    iget-object v3, v0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 402
    :try_start_13
    iget-object v4, v0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    const/4 v5, 0x0

    if-nez v4, :cond_36

    .line 404
    sget-object v0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid deviceId : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    monitor-exit v3

    return-object v5

    .line 408
    :cond_36
    new-instance v11, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    invoke-direct {v11}, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;-><init>()V

    move-object/from16 v6, p6

    .line 409
    iput-object v6, v11, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->tvInputSessionId:Ljava/lang/String;

    move/from16 v6, p7

    .line 410
    iput v6, v11, Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;->useCase:I

    .line 411
    invoke-virtual {v4}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getResourceClientProfileLocked()Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;

    move-result-object v6

    if-eqz v6, :cond_69

    if-eqz v2, :cond_69

    .line 413
    invoke-virtual {v2, v11, v6}, Landroid/media/tv/tunerresourcemanager/TunerResourceManager;->isHigherPriority(Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)Z

    move-result v2

    if-nez v2, :cond_69

    .line 414
    sget-object v0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Acquiring does not show higher priority than the current holder. Device id:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    monitor-exit v3

    return-object v5

    .line 418
    :cond_69
    new-instance v6, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    .line 419
    invoke-virtual {v4}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v1

    invoke-direct {v6, p0, v1}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V
    :try_end_72
    .catchall {:try_start_13 .. :try_end_72} :catchall_93

    .line 421
    :try_start_72
    invoke-interface {p2}, Landroid/media/tv/ITvInputHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v4, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_7a
    .catch Landroid/os/RemoteException; {:try_start_72 .. :try_end_7a} :catch_8e
    .catchall {:try_start_72 .. :try_end_7a} :catchall_93

    .line 426
    :try_start_7a
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v5, v4

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)V

    .line 428
    invoke-virtual {v4}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareLocked()Landroid/media/tv/ITvInputHardware;

    move-result-object v0

    monitor-exit v3

    return-object v0

    .line 423
    :catch_8e
    invoke-virtual {v6}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->release()V

    .line 424
    monitor-exit v3

    return-object v5

    :catchall_93
    move-exception v0

    .line 429
    monitor-exit v3
    :try_end_95
    .catchall {:try_start_7a .. :try_end_95} :catchall_93

    throw v0
.end method

.method public addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 9

    .line 293
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 294
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_41

    .line 296
    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to override previous registration: old = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 297
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_41
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 301
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->processPendingTvInputInfoEventsLocked()V

    .line 303
    sget-object v1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deviceId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", tvinputinfo = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    .line 308
    :goto_76
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_bd

    .line 309
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    .line 310
    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v3

    if-nez v3, :cond_8c

    goto :goto_ba

    .line 314
    :cond_8c
    iget-object v5, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_ba

    .line 315
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ba

    .line 319
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiStateMap:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result p1

    if-eqz p1, :cond_ae

    move p1, v1

    goto :goto_af

    :cond_ae
    move p1, v4

    .line 322
    :goto_af
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v4, p1, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 323
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 324
    monitor-exit v0

    return-void

    :cond_ba
    :goto_ba
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 328
    :cond_bd
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    if-eqz p1, :cond_d8

    .line 330
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 331
    invoke-static {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result p1

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object p2

    .line 330
    invoke-virtual {p0, v4, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 331
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 333
    :cond_d8
    monitor-exit v0

    return-void

    :catchall_da
    move-exception p0

    monitor-exit v0
    :try_end_dc
    .catchall {:try_start_3 .. :try_end_dc} :catchall_da

    throw p0
.end method

.method public addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 8

    .line 353
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getType()I

    move-result v0

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_88

    .line 356
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_b
    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getParentId()Ljava/lang/String;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-static {v2, v1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_69

    .line 362
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_55

    .line 364
    sget-object v2, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to override previous registration: old = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    .line 365
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_55
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 369
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    monitor-exit v0

    return-void

    .line 360
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "info ("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") has invalid parentId."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_85
    move-exception p0

    .line 370
    monitor-exit v0
    :try_end_87
    .catchall {:try_start_b .. :try_end_87} :catchall_85

    throw p0

    .line 354
    :cond_88
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "info ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") has non-HDMI type."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final buildHardwareListLocked()V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 174
    :goto_6
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 175
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_22
    return-void
.end method

.method public captureFrame(Ljava/lang/String;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;II)Z
    .registers 7

    .line 502
    iget-object p4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter p4

    .line 503
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result p5

    const/4 v0, 0x0

    if-gez p5, :cond_22

    .line 505
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid inputId : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    monitor-exit p4

    return v0

    .line 508
    :cond_22
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p1, p5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 509
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    move-result-object p5

    if-eqz p5, :cond_4d

    .line 512
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 514
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 515
    invoke-virtual {p1, v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    .line 518
    :cond_3d
    invoke-static {p5, p2, p3}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->-$$Nest$mstartCapture(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/view/Surface;Landroid/media/tv/TvStreamConfig;)Z

    move-result p2

    if-eqz p2, :cond_4b

    .line 520
    new-instance v0, Lcom/android/server/tv/TvInputHardwareManager$2;

    invoke-direct {v0, p0, p5, p3}, Lcom/android/server/tv/TvInputHardwareManager$2;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/TvStreamConfig;)V

    invoke-virtual {p1, v0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    .line 527
    :cond_4b
    monitor-exit p4

    return p2

    .line 529
    :cond_4d
    monitor-exit p4

    return v0

    :catchall_4f
    move-exception p0

    monitor-exit p4
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public final checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z
    .registers 4

    .line 286
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallingUidLocked()Ljava/lang/Integer;

    move-result-object p0

    .line 287
    invoke-virtual {p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getResolvedUserIdLocked()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    .line 289
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_1b

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eq p0, p3, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 608
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 609
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    sget-object p3, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    invoke-static {p2, p3, p1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p2

    if-nez p2, :cond_12

    return-void

    .line 611
    :cond_12
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_15
    const-string p3, "TvInputHardwareManager Info:"

    .line 612
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "mConnections: deviceId -> Connection"

    .line 614
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 p3, 0x0

    move v0, p3

    .line 616
    :goto_27
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_57

    .line 617
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 618
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 619
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 622
    :cond_57
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "mHardwareList:"

    .line 624
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 626
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_68
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_78

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/tv/TvInputHardwareInfo;

    .line 627
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_68

    .line 629
    :cond_78
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "mHdmiDeviceList:"

    .line 631
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 633
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_89
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 634
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_89

    .line 636
    :cond_99
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "mHardwareInputIdMap: deviceId -> inputId"

    .line 638
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v0, p3

    .line 640
    :goto_a5
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_d5

    .line 641
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 642
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 643
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    .line 645
    :cond_d5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v0, "mHdmiInputIdMap: id -> inputId"

    .line 647
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 648
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 649
    :goto_e0
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p3, v0, :cond_110

    .line 650
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 651
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_e0

    .line 654
    :cond_110
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "mInputMap: inputId -> inputInfo"

    .line 656
    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 658
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_125
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_153

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 659
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_125

    .line 661
    :cond_153
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 662
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 663
    monitor-exit p2

    return-void

    :catchall_15b
    move-exception p0

    monitor-exit p2
    :try_end_15d
    .catchall {:try_start_15 .. :try_end_15d} :catchall_15b

    throw p0
.end method

.method public final findDeviceIdForInputIdLocked(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    .line 466
    :goto_1
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 467
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 468
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getInfoLocked()Landroid/media/tv/TvInputInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    return v0

    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_23
    const/4 p0, -0x1

    return p0
.end method

.method public final findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;
    .registers 5

    .line 456
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 457
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_6

    .line 458
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v1

    if-ne v1, p1, :cond_6

    return-object v0

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAvailableTvStreamConfigList(Ljava/lang/String;II)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/media/tv/TvStreamConfig;",
            ">;"
        }
    .end annotation

    .line 480
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 481
    iget-object p3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter p3

    .line 482
    :try_start_8
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager;->findDeviceIdForInputIdLocked(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_26

    .line 484
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid inputId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    monitor-exit p3

    return-object p2

    .line 487
    :cond_26
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    .line 488
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getConfigsLocked()[Landroid/media/tv/TvStreamConfig;

    move-result-object p0

    array-length p1, p0

    const/4 v0, 0x0

    :goto_34
    if-ge v0, p1, :cond_45

    aget-object v1, p0, v0

    .line 489
    invoke-virtual {v1}, Landroid/media/tv/TvStreamConfig;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_42

    .line 490
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    .line 493
    :cond_45
    monitor-exit p3

    return-object p2

    :catchall_47
    move-exception p0

    monitor-exit p3
    :try_end_49
    .catchall {:try_start_8 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public getHardwareList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/tv/TvInputHardwareInfo;",
            ">;"
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 275
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getHdmiDeviceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_b
    move-exception p0

    .line 281
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public final getMediaStreamVolume()F
    .registers 2

    .line 604
    iget v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    int-to-float v0, v0

    iget p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final handleVolumeChange(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 566
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 567
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-nez v0, :cond_3a

    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 590
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unrecognized intent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_31
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 581
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_50

    return-void

    :cond_3a
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 569
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v2, :cond_43

    return-void

    :cond_43
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 573
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 574
    iget p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    if-ne p1, p2, :cond_4e

    return-void

    .line 577
    :cond_4e
    iput p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    .line 593
    :cond_50
    iget-object p1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 594
    :goto_53
    :try_start_53
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge v1, p2, :cond_6f

    .line 595
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-virtual {p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareImplLocked()Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;

    move-result-object p2

    if-eqz p2, :cond_6c

    .line 597
    invoke-virtual {p2}, Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;->onMediaStreamVolumeChanged()V

    :cond_6c
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 600
    :cond_6f
    monitor-exit p1

    return-void

    :catchall_71
    move-exception p0

    monitor-exit p1
    :try_end_73
    .catchall {:try_start_53 .. :try_end_73} :catchall_71

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_52

    const-string p1, "hdmi_control"

    .line 134
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 133
    invoke-static {p1}, Landroid/hardware/hdmi/IHdmiControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/hdmi/IHdmiControlService;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 137
    :try_start_10
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiHotplugEventListener:Landroid/hardware/hdmi/IHdmiHotplugEventListener;

    invoke-interface {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceEventListener:Landroid/hardware/hdmi/IHdmiDeviceEventListener;

    invoke-interface {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiSystemAudioModeChangeListener:Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;

    invoke-interface {p1, v0}, Landroid/hardware/hdmi/IHdmiControlService;->addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {p1}, Landroid/hardware/hdmi/IHdmiControlService;->getInputDevices()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_28} :catch_29

    goto :goto_39

    :catch_29
    move-exception p1

    .line 143
    sget-object v0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string v1, "Error registering listeners to HdmiControlService:"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_39

    .line 146
    :cond_32
    sget-object p1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string v0, "HdmiControlService is not available"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_39
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    .line 149
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.media.STREAM_MUTE_CHANGED_ACTION"

    .line 150
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mVolumeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->updateVolume()V

    :cond_52
    return-void
.end method

.method public onDeviceAvailable(Landroid/media/tv/TvInputHardwareInfo;[Landroid/media/tv/TvStreamConfig;)V
    .registers 6

    .line 158
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    new-instance v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    invoke-direct {v1, p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;-><init>(Lcom/android/server/tv/TvInputHardwareManager;Landroid/media/tv/TvInputHardwareInfo;)V

    .line 160
    invoke-virtual {v1, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V

    .line 161
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getCableConnectionStatus()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateCableConnectionStatusLocked(I)Z

    .line 162
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->buildHardwareListLocked()V

    .line 164
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 165
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 166
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result p1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_34

    .line 167
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->processPendingHdmiDeviceEventsLocked()V

    .line 169
    :cond_34
    monitor-exit v0

    return-void

    :catchall_36
    move-exception p0

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public onDeviceUnavailable(I)V
    .registers 11

    .line 181
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    if-nez v1, :cond_26

    .line 184
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDeviceUnavailable: Cannot find a connection with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    monitor-exit v0

    return-void

    :cond_26
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v1

    .line 187
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)V

    .line 188
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 189
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager;->buildHardwareListLocked()V

    .line 190
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareInfoLocked()Landroid/media/tv/TvInputHardwareInfo;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getType()I

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-ne v1, v2, :cond_6f

    .line 193
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiDeviceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4b
    :goto_4b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 194
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 195
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v4

    invoke-virtual {p1}, Landroid/media/tv/TvInputHardwareInfo;->getHdmiPortId()I

    move-result v5

    if-ne v4, v5, :cond_4b

    .line 196
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x5

    invoke-virtual {v4, v5, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 197
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 198
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4b

    .line 202
    :cond_6f
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v3, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 203
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 204
    monitor-exit v0

    return-void

    :catchall_7b
    move-exception p0

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_3 .. :try_end_7d} :catchall_7b

    throw p0
.end method

.method public onFirstFrameCaptured(II)V
    .registers 5

    .line 257
    iget-object p2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 258
    :try_start_3
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    if-nez p0, :cond_25

    .line 260
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirstFrameCaptured: Cannot find a connection with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    monitor-exit p2

    return-void

    .line 264
    :cond_25
    invoke-virtual {p0}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getOnFirstFrameCapturedLocked()Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_32

    .line 266
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 267
    invoke-virtual {p0, p1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->setOnFirstFrameCapturedLocked(Ljava/lang/Runnable;)V

    .line 269
    :cond_32
    monitor-exit p2

    return-void

    :catchall_34
    move-exception p0

    monitor-exit p2
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public onStreamConfigurationChanged(I[Landroid/media/tv/TvStreamConfig;I)V
    .registers 10

    .line 210
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 211
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    if-nez v1, :cond_25

    .line 213
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "StreamConfigurationChanged: Cannot find a connection with "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    monitor-exit v0

    return-void

    .line 217
    :cond_25
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetConfigsLengthLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v2

    .line 218
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v3

    .line 219
    invoke-virtual {v1, p2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateConfigsLocked([Landroid/media/tv/TvStreamConfig;)V

    .line 220
    iget-object v4, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_74

    .line 222
    invoke-virtual {v1, p3}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->updateCableConnectionStatusLocked(I)Z

    move-result p1

    const/4 p3, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_56

    .line 223
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result p1

    if-eq v3, p1, :cond_9a

    .line 224
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 225
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result p1

    .line 224
    invoke-virtual {p0, p3, p1, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 225
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9a

    :cond_56
    if-nez v2, :cond_5a

    move p1, p3

    goto :goto_5b

    :cond_5a
    move p1, v5

    .line 229
    :goto_5b
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetConfigsLengthLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result v2

    if-nez v2, :cond_63

    move v2, p3

    goto :goto_64

    :cond_63
    move v2, v5

    :goto_64
    if-eq p1, v2, :cond_9a

    .line 230
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    .line 231
    invoke-static {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->-$$Nest$mgetInputStateLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;)I

    move-result p1

    .line 230
    invoke-virtual {p0, p3, p1, v5, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 231
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9a

    .line 235
    :cond_74
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x7

    invoke-virtual {v2, v3, p1, p3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 237
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingTvinputInfoEvents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_81
    :goto_81
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_95

    .line 238
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    iget v3, v3, Landroid/os/Message;->arg1:I

    if-ne v3, p1, :cond_81

    .line 239
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_81

    .line 242
    :cond_95
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingTvinputInfoEvents:Ljava/util/List;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_9a
    :goto_9a
    invoke-virtual {v1}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallbackLocked()Landroid/media/tv/ITvInputHardwareCallback;

    move-result-object p0
    :try_end_9e
    .catchall {:try_start_3 .. :try_end_9e} :catchall_ae

    if-eqz p0, :cond_ac

    .line 247
    :try_start_a0
    invoke-interface {p0, p2}, Landroid/media/tv/ITvInputHardwareCallback;->onStreamConfigChanged([Landroid/media/tv/TvStreamConfig;)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_a3} :catch_a4
    .catchall {:try_start_a0 .. :try_end_a3} :catchall_ae

    goto :goto_ac

    :catch_a4
    move-exception p0

    .line 249
    :try_start_a5
    sget-object p1, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    const-string p2, "error in onStreamConfigurationChanged"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 252
    :cond_ac
    :goto_ac
    monitor-exit v0

    return-void

    :catchall_ae
    move-exception p0

    monitor-exit v0
    :try_end_b0
    .catchall {:try_start_a5 .. :try_end_b0} :catchall_ae

    throw p0
.end method

.method public final processPendingHdmiDeviceEventsLocked()V
    .registers 4

    .line 534
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingHdmiDeviceEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 535
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 536
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 538
    invoke-virtual {v2}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPortId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/tv/TvInputHardwareManager;->findHardwareInfoForHdmiPortLocked(I)Landroid/media/tv/TvInputHardwareInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 540
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 541
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_27
    return-void
.end method

.method public final processPendingTvInputInfoEventsLocked()V
    .registers 5

    .line 548
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mPendingTvinputInfoEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 549
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    .line 550
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 551
    iget-object v3, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 553
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 554
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_25
    return-void
.end method

.method public releaseHardware(ILandroid/media/tv/ITvInputHardware;II)V
    .registers 14

    .line 437
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 438
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mConnections:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/tv/TvInputHardwareManager$Connection;

    if-nez v2, :cond_26

    .line 440
    sget-object p0, Lcom/android/server/tv/TvInputHardwareManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid deviceId : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    monitor-exit v0

    return-void

    .line 443
    :cond_26
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getHardwareLocked()Landroid/media/tv/ITvInputHardware;

    move-result-object p1

    if-ne p1, p2, :cond_4c

    .line 444
    invoke-virtual {p0, v2, p3, p4}, Lcom/android/server/tv/TvInputHardwareManager;->checkUidChangedLocked(Lcom/android/server/tv/TvInputHardwareManager$Connection;II)Z

    move-result p0

    if-eqz p0, :cond_33

    goto :goto_4c

    .line 447
    :cond_33
    invoke-virtual {v2}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->getCallbackLocked()Landroid/media/tv/ITvInputHardwareCallback;

    move-result-object p0

    if-eqz p0, :cond_41

    .line 449
    invoke-interface {p0}, Landroid/media/tv/ITvInputHardwareCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, v2, p1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_41
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 451
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/tv/TvInputHardwareManager$Connection;->resetLocked(Lcom/android/server/tv/TvInputHardwareManager$TvInputHardwareImpl;Landroid/media/tv/ITvInputHardwareCallback;Landroid/media/tv/TvInputInfo;Ljava/lang/Integer;Ljava/lang/Integer;Landroid/media/tv/tunerresourcemanager/ResourceClientProfile;)V

    .line 452
    monitor-exit v0

    return-void

    .line 445
    :cond_4c
    :goto_4c
    monitor-exit v0

    return-void

    :catchall_4e
    move-exception p0

    .line 452
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3 .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public removeHardwareInput(Ljava/lang/String;)V
    .registers 5

    .line 374
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 375
    :try_start_3
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mInputMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_15

    .line 378
    iget-object v2, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHardwareInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 380
    :cond_15
    iget-object v1, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-static {v1, p1}, Lcom/android/server/tv/TvInputHardwareManager;->indexOfEqualValue(Landroid/util/SparseArray;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_22

    .line 382
    iget-object p0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mHdmiInputIdMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 384
    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception p0

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw p0
.end method

.method public final updateVolume()V
    .registers 3

    .line 561
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentMaxIndex:I

    .line 562
    iget-object v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/tv/TvInputHardwareManager;->mCurrentIndex:I

    return-void
.end method
