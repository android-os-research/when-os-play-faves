.class public Lcom/android/server/usb/UsbHostManager;
.super Ljava/lang/Object;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbHostManager$ConnectionRecord;
    }
.end annotation


# static fields
.field public static final ACTION_USB_OTG_CONNECTION:Ljava/lang/String; = "com.samsung.UsbOtgCableConnection"

.field public static final DEBUG:Z = true

.field public static final EXTRA_CONNECTION_STATE:Ljava/lang/String; = "Connect"

.field public static final LINUX_FOUNDATION_VID:I = 0x1d6b

.field public static final MAX_CONNECT_RECORDS:I = 0x20

.field public static final MAX_UNIQUE_CODE_GENERATION_ATTEMPTS:I = 0xa

.field public static final TAG:Ljava/lang/String; = "UsbHostManager"

.field public static final USB_CONTROL_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/usb_notify/usb_control"

.field public static final USB_HOST_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/host_notify"

.field public static final sFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field public mBootCompleted:Z

.field public final mConnected:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usb/UsbHostManager$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mConnections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/usb/UsbHostManager$ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSettingsLock"
        }
    .end annotation
.end field

.field public mCurrentUnlockedUser:I

.field public final mDevices:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/hardware/usb/UsbDevice;",
            ">;"
        }
    .end annotation
.end field

.field public mHandlerLock:Ljava/lang/Object;

.field public final mHasMidiFeature:Z

.field public final mHostDenyList:[Ljava/lang/String;

.field public final mHostPathObserver:Landroid/os/UEventObserver;

.field public mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

.field public final mLock:Ljava/lang/Object;

.field public final mMidiDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/UsbDirectMidiDevice;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mMidiUniqueCodes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mNumConnects:I

.field public final mPendingIntent:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingIntentLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public final mPendingIntentLock:Ljava/lang/Object;

.field public final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field public final mRandom:Ljava/util/Random;

.field public mSettingsLock:Ljava/lang/Object;

.field public mSystemReady:Z

.field public final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field public final mUsbControlObserver:Landroid/os/UEventObserver;

.field public mUsbDeviceConnectionHandler:Landroid/content/ComponentName;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHandlerLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$SPDYSM5zj7AWqCOdeQkFCup_bCc(Lcom/android/server/usb/UsbHostManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/usb/UsbHostManager;->monitorUsbHostBus()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmUsbAlsaManager(Lcom/android/server/usb/UsbHostManager;)Lcom/android/server/usb/UsbAlsaManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbroadcastWithPendingQueue(Lcom/android/server/usb/UsbHostManager;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbHostManager;->broadcastWithPendingQueue(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 105
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usb/UsbHostManager;->sFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .registers 8

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    .line 98
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    .line 110
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mMidiDevices:Ljava/util/HashMap;

    .line 117
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mMidiUniqueCodes:Ljava/util/HashSet;

    .line 119
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mRandom:Ljava/util/Random;

    const/4 v0, 0x0

    .line 705
    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostManager;->mBootCompleted:Z

    const/16 v1, -0x2710

    .line 706
    iput v1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentUnlockedUser:I

    .line 739
    new-instance v1, Lcom/android/server/usb/UsbHostManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbHostManager$1;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mHostPathObserver:Landroid/os/UEventObserver;

    .line 772
    new-instance v2, Lcom/android/server/usb/UsbHostManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbHostManager$2;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbControlObserver:Landroid/os/UEventObserver;

    .line 795
    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostManager;->mSystemReady:Z

    .line 797
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mPendingIntentLock:Ljava/lang/Object;

    .line 798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mPendingIntent:Ljava/util/ArrayList;

    .line 263
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1070133

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostDenyList:[Ljava/lang/String;

    .line 267
    iput-object p2, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 268
    iput-object p3, p0, Lcom/android/server/usb/UsbHostManager;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x10402eb

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 271
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_99

    .line 272
    sget-object p3, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v0, "deviceConnectionHandler is not empty"

    invoke-static {p3, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    :cond_99
    const-string p2, "DEVPATH=/devices/virtual/host_notify"

    .line 277
    invoke-virtual {v1, p2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string p2, "DEVPATH=/devices/virtual/usb_notify/usb_control"

    .line 278
    invoke-virtual {v2, p2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "android.software.midi"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/usb/UsbHostManager;->mHasMidiFeature:Z

    return-void
.end method

.method private native monitorUsbHostBus()V
.end method

.method private native nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
.end method


# virtual methods
.method public final addConnectionRecord(Ljava/lang/String;I[B)V
    .registers 6

    .line 332
    iget v0, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    .line 333
    :goto_6
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_16

    .line 334
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_6

    .line 336
    :cond_16
    new-instance v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;-><init>(Lcom/android/server/usb/UsbHostManager;Ljava/lang/String;I[B)V

    .line 338
    iget-object p3, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {p3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 p3, -0x1

    if-eq p2, p3, :cond_25

    .line 340
    iput-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    :cond_25
    if-nez p2, :cond_2d

    .line 343
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_2d
    if-ne p2, p3, :cond_34

    .line 345
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_34
    :goto_34
    return-void
.end method

.method public bootCompleted()V
    .registers 3

    .line 709
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v1, "boot completed"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 710
    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostManager;->mBootCompleted:Z

    return-void
.end method

.method public final broadcastWithPendingQueue(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 5

    .line 802
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mPendingIntentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 803
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usb/UsbHostManager;->mSystemReady:Z

    if-eqz v1, :cond_2f

    .line 804
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 805
    sget-object p0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcasting "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " extras: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4b

    .line 807
    :cond_2f
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mPendingIntent:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 808
    sget-object p0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    :goto_4b
    monitor-exit v0

    return-void

    :catchall_4d
    move-exception p0

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public final checkUsbInterfacesDenyListed(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Z
    .registers 6

    .line 662
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptors()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :cond_a
    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 663
    instance-of v3, v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-nez v3, :cond_1b

    goto :goto_a

    .line 666
    :cond_1b
    check-cast v2, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 667
    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v1

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/usb/UsbHostManager;->isDenyListed(II)Z

    move-result v1

    if-nez v1, :cond_a

    :cond_2b
    if-eqz v1, :cond_36

    .line 674
    sget-object p0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "usb interface class is deny listed"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_36
    const/4 p0, 0x1

    return p0
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 11

    .line 608
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 610
    iget-object p4, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter p4

    .line 611
    :try_start_7
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    if-eqz v0, :cond_15

    const-string v1, "default_usb_host_connection_handler"

    const-wide v2, 0x10b00000001L

    .line 612
    invoke-static {p1, v1, v2, v3, v0}, Lcom/android/internal/util/dump/DumpUtils;->writeComponentName(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/content/ComponentName;)V

    .line 616
    :cond_15
    monitor-exit p4
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_a4

    .line 617
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    :try_start_19
    iget-object p4, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {p4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_23
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "devices"

    const-wide v3, 0x20b00000002L

    .line 619
    iget-object v5, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    invoke-static {p1, v2, v3, v4, v1}, Lcom/android/internal/usb/DumpUtils;->writeDevice(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbDevice;)V

    goto :goto_23

    :cond_42
    const-string p4, "num_connects"

    const-wide v1, 0x10500000003L

    .line 622
    iget v3, p0, Lcom/android/server/usb/UsbHostManager;->mNumConnects:I

    invoke-virtual {p1, p4, v1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 624
    iget-object p4, p0, Lcom/android/server/usb/UsbHostManager;->mConnections:Ljava/util/LinkedList;

    invoke-virtual {p4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_54
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    const-string v2, "connections"

    const-wide v3, 0x20b00000004L

    .line 625
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto :goto_54

    .line 628
    :cond_6b
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_75
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_9c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/ArrayList;

    .line 629
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_85
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbDirectMidiDevice;

    const-string v2, "midi_devices"

    const-wide v3, 0x20b00000005L

    .line 630
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/android/server/usb/UsbDirectMidiDevice;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto :goto_85

    .line 633
    :cond_9c
    monitor-exit v0
    :try_end_9d
    .catchall {:try_start_19 .. :try_end_9d} :catchall_a1

    .line 635
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void

    :catchall_a1
    move-exception p0

    .line 633
    :try_start_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw p0

    :catchall_a4
    move-exception p0

    .line 616
    :try_start_a5
    monitor-exit p4
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw p0
.end method

.method public dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 642
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    if-eqz v0, :cond_4e

    const-string v0, "Last Connected USB Device:"

    .line 643
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 644
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_48

    aget-object v0, p2, v1

    const-string v2, "-dump-short"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_48

    .line 646
    :cond_18
    aget-object v0, p2, v1

    const-string v2, "-dump-tree"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 647
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpTree(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 648
    :cond_28
    aget-object v0, p2, v1

    const-string v2, "-dump-list"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 649
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpList(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 650
    :cond_38
    aget-object p2, p2, v1

    const-string v0, "-dump-raw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_53

    .line 651
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpRaw(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    .line 645
    :cond_48
    :goto_48
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mLastConnect:Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->dumpShort(Lcom/android/internal/util/IndentingPrintWriter;)V

    goto :goto_53

    :cond_4e
    const-string p0, "No USB Devices have been connected."

    .line 654
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_53
    :goto_53
    return-void
.end method

.method public final generateNewUsbDeviceIdentifier()Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :cond_2
    const/16 v2, 0xa

    if-le v1, v2, :cond_13

    .line 687
    sget-object v1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string v3, "MIDI unique code array resetting"

    invoke-static {v1, v3}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mMidiUniqueCodes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    move v1, v0

    :cond_13
    const-string v3, ""

    move v4, v0

    :goto_16
    const/4 v5, 0x3

    if-ge v4, v5, :cond_31

    .line 693
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_31
    add-int/lit8 v1, v1, 0x1

    .line 696
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mMidiUniqueCodes:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 697
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mMidiUniqueCodes:Ljava/util/HashSet;

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object v3
.end method

.method public final getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 292
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 6

    .line 576
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 577
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 578
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_d

    .line 580
    :cond_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final getUsbDeviceConnectionHandler()Landroid/content/ComponentName;
    .registers 2

    .line 302
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 304
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public final isDenyListed(II)Z
    .registers 5

    const/4 p0, 0x1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_6

    return p0

    .line 323
    :cond_6
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_14

    if-ne p2, p0, :cond_14

    goto :goto_15

    :cond_14
    move p0, v1

    :goto_15
    return p0
.end method

.method public final isDenyListed(Ljava/lang/String;)Z
    .registers 6

    .line 308
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHostDenyList:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_16

    .line 310
    iget-object v3, p0, Lcom/android/server/usb/UsbHostManager;->mHostDenyList:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_16
    return v1
.end method

.method public final logUsbDevice(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V
    .registers 13

    .line 357
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    move-result-object p0

    const-string v0, "<unknown>"

    const/4 v1, 0x0

    if-eqz p0, :cond_22

    .line 359
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getVendorID()I

    move-result v0

    .line 360
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductID()I

    move-result v2

    .line 361
    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getMfgString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v3

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getProductString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object v4

    .line 363
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getDeviceReleaseString()Ljava/lang/String;

    move-result-object v5

    .line 364
    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->getSerialString(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Ljava/lang/String;

    move-result-object p0

    goto :goto_28

    :cond_22
    move-object p0, v0

    move-object v3, p0

    move-object v4, v3

    move-object v5, v4

    move v0, v1

    move v2, v0

    :goto_28
    const/16 v6, 0x1d6b

    if-ne v0, v6, :cond_2d

    return-void

    .line 370
    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioInterface()Z

    move-result v6

    .line 371
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v7

    .line 372
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasStorageInterface()Z

    move-result p1

    .line 375
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "USB device attached: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x2

    new-array v10, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v10, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v10, v2

    const-string/jumbo v0, "vidpid %04x:%04x"

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v3, v0, v1

    aput-object v4, v0, v2

    aput-object v5, v0, v9

    const/4 v3, 0x3

    aput-object p0, v0, v3

    const-string p0, " mfg/product/ver/serial %s/%s/%s/%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p0, v3, [Ljava/lang/Object;

    .line 379
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, p0, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, p0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p0, v9

    const-string p1, " hasAudio/HID/Storage: %b/%b/%b"

    .line 378
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 380
    sget-object p1, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 7

    .line 715
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser: userHandle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget v0, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentUnlockedUser:I

    .line 717
    iput p1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentUnlockedUser:I

    .line 724
    iget-boolean p1, p0, Lcom/android/server/usb/UsbHostManager;->mBootCompleted:Z

    if-eqz p1, :cond_6b

    const/16 p1, -0x2710

    if-ne v0, p1, :cond_6b

    .line 725
    iget-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 726
    :try_start_26
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 727
    sget-object v2, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dealWithPendingDevices: deviceName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_30

    .line 730
    :cond_66
    monitor-exit p1

    goto :goto_6b

    :catchall_68
    move-exception p0

    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_26 .. :try_end_6a} :catchall_68

    throw p0

    :cond_6b
    :goto_6b
    return-void
.end method

.method public openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserPermissionManager;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;
    .registers 8

    .line 588
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostManager;->isDenyListed(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 592
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    if-eqz v1, :cond_1c

    .line 599
    invoke-virtual {p2, v1, p3, p4, p5}, Lcom/android/server/usb/UsbUserPermissionManager;->checkPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)V

    .line 600
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbHostManager;->nativeOpenDevice(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 595
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "device "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist or is restricted"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 590
    :cond_38
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "USB device is on a restricted bus"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_40
    move-exception p0

    .line 601
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_3
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 286
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 297
    :try_start_3
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager;->mUsbDeviceConnectionHandler:Landroid/content/ComponentName;

    .line 298
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public systemReady()V
    .registers 6

    .line 555
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_b
    new-instance v1, Lcom/android/server/usb/UsbHostManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbHostManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usb/UsbHostManager;)V

    .line 560
    new-instance v2, Ljava/lang/Thread;

    const/4 v3, 0x0

    const-string v4, "UsbService host thread"

    invoke-direct {v2, v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 561
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_b .. :try_end_1c} :catchall_40

    .line 564
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mPendingIntentLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    .line 565
    :try_start_20
    iput-boolean v0, p0, Lcom/android/server/usb/UsbHostManager;->mSystemReady:Z

    .line 566
    :goto_22
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mPendingIntent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 567
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mPendingIntent:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 568
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_22

    .line 570
    :cond_3b
    monitor-exit v1

    return-void

    :catchall_3d
    move-exception p0

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_20 .. :try_end_3f} :catchall_3d

    throw p0

    :catchall_40
    move-exception p0

    .line 561
    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public final usbDeviceAdded(Ljava/lang/String;II[B)Z
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 391
    sget-object v4, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "usbDeviceAdded - start: deviceAddress="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " deviceClass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " deviceSubclass="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usb/UsbHostManager;->isDenyListed(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3c

    const-string v0, "device address is Deny listed"

    .line 399
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 404
    :cond_3c
    invoke-virtual {v0, v2, v3}, Lcom/android/server/usb/UsbHostManager;->isDenyListed(II)Z

    move-result v3

    if-eqz v3, :cond_48

    const-string v0, "device class is deny listed"

    .line 406
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 411
    :cond_48
    new-instance v3, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    move-object/from16 v5, p4

    invoke-direct {v3, v1, v5}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    if-nez v2, :cond_58

    .line 413
    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbHostManager;->checkUsbInterfacesDenyListed(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Z

    move-result v2

    if-nez v2, :cond_58

    return v6

    .line 418
    :cond_58
    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbHostManager;->logUsbDevice(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 420
    iget-object v2, v0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 421
    :try_start_5e
    iget-object v5, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7c

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device already on mDevices list: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    monitor-exit v2

    return v6

    .line 428
    :cond_7c
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->toAndroidUsbDeviceBuilder()Landroid/hardware/usb/UsbDevice$Builder;

    move-result-object v5

    const/4 v7, 0x1

    if-nez v5, :cond_92

    const-string v5, "Couldn\'t create UsbDevice object."

    .line 430
    invoke-static {v4, v5}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x2

    .line 433
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors()[B

    move-result-object v3

    .line 432
    invoke-virtual {v0, v1, v5, v3}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    goto/16 :goto_150

    .line 435
    :cond_92
    new-instance v8, Lcom/android/server/usb/UsbSerialReader;

    iget-object v9, v0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/usb/UsbHostManager;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    iget-object v11, v5, Landroid/hardware/usb/UsbDevice$Builder;->serialNumber:Ljava/lang/String;

    invoke-direct {v8, v9, v10, v11}, Lcom/android/server/usb/UsbSerialReader;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbPermissionManager;Ljava/lang/String;)V

    .line 437
    invoke-virtual {v5, v8}, Landroid/hardware/usb/UsbDevice$Builder;->build(Landroid/hardware/usb/IUsbSerialReader;)Landroid/hardware/usb/UsbDevice;

    move-result-object v5

    .line 438
    invoke-virtual {v8, v5}, Lcom/android/server/usb/UsbSerialReader;->setDevice(Ljava/lang/Object;)V

    .line 440
    iget-object v8, v0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Added device "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-boolean v8, v0, Lcom/android/server/usb/UsbHostManager;->mBootCompleted:Z

    if-eqz v8, :cond_e2

    iget v8, v0, Lcom/android/server/usb/UsbHostManager;->mCurrentUnlockedUser:I

    const/16 v9, -0x2710

    if-eq v8, v9, :cond_e2

    .line 447
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getUsbDeviceConnectionHandler()Landroid/content/ComponentName;

    move-result-object v8

    if-nez v8, :cond_d5

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttached(Landroid/hardware/usb/UsbDevice;)V

    goto :goto_e2

    :cond_d5
    const-string/jumbo v9, "usbDeviceConnectionHandler is not null"

    .line 451
    invoke-static {v4, v9}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v9

    invoke-virtual {v9, v5, v8}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->deviceAttachedForFixedHandler(Landroid/hardware/usb/UsbDevice;Landroid/content/ComponentName;)V

    .line 457
    :cond_e2
    :goto_e2
    iget-object v8, v0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v8, v1, v5, v3}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceAdded(Ljava/lang/String;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;)V

    .line 459
    iget-boolean v8, v0, Lcom/android/server/usb/UsbHostManager;->mHasMidiFeature:Z

    if-eqz v8, :cond_12d

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usb/UsbHostManager;->generateNewUsbDeviceIdentifier()Ljava/lang/String;

    move-result-object v8

    .line 465
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 467
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->containsUniversalMidiDeviceEndpoint()Z

    move-result v10

    if-eqz v10, :cond_10b

    .line 468
    iget-object v10, v0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-static {v10, v5, v3, v7, v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->create(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)Lcom/android/server/usb/UsbDirectMidiDevice;

    move-result-object v10

    if-eqz v10, :cond_106

    .line 471
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10b

    :cond_106
    const-string v10, "Universal Midi Device is null."

    .line 473
    invoke-static {v4, v10}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_10b
    :goto_10b
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->containsLegacyMidiDeviceEndpoint()Z

    move-result v10

    if-eqz v10, :cond_122

    .line 477
    iget-object v10, v0, Lcom/android/server/usb/UsbHostManager;->mContext:Landroid/content/Context;

    invoke-static {v10, v5, v3, v6, v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->create(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)Lcom/android/server/usb/UsbDirectMidiDevice;

    move-result-object v8

    if-eqz v8, :cond_11d

    .line 480
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_122

    :cond_11d
    const-string v8, "Legacy Midi Device is null."

    .line 482
    invoke-static {v4, v8}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_122
    :goto_122
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12d

    .line 487
    iget-object v8, v0, Lcom/android/server/usb/UsbHostManager;->mMidiDevices:Ljava/util/HashMap;

    invoke-virtual {v8, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    :cond_12d
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors()[B

    move-result-object v8

    .line 492
    invoke-virtual {v0, v1, v6, v8}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    const/16 v9, 0x4d

    .line 497
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v10

    invoke-virtual {v5}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v11

    .line 498
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioInterface()Z

    move-result v12

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v13

    .line 499
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasStorageInterface()Z

    move-result v14

    const/4 v15, 0x1

    const-wide/16 v16, 0x0

    .line 496
    invoke-static/range {v9 .. v17}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZZZIJ)V

    .line 502
    :goto_150
    monitor-exit v2
    :try_end_151
    .catchall {:try_start_5e .. :try_end_151} :catchall_158

    const-string/jumbo v0, "usbDeviceAdded - end"

    .line 504
    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :catchall_158
    move-exception v0

    .line 502
    :try_start_159
    monitor-exit v2
    :try_end_15a
    .catchall {:try_start_159 .. :try_end_15a} :catchall_158

    throw v0
.end method

.method public final usbDeviceRemoved(Ljava/lang/String;)V
    .registers 15

    .line 511
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usbDeviceRemoved - start: deviceAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v1, p0, Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 514
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/usb/UsbHostManager;->mDevices:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    if-eqz v2, :cond_c4

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed device at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbAlsaManager;->usbDeviceRemoved(Ljava/lang/String;)V

    .line 518
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbPermissionManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    .line 521
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mMidiDevices:Ljava/util/HashMap;

    .line 522
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_84

    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5c
    :goto_5c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbDirectMidiDevice;

    if-eqz v3, :cond_5c

    .line 526
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_5c

    .line 529
    :cond_6e
    sget-object v0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "USB MIDI Devices Removed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_84
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostManager;->getCurrentUserSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V

    .line 533
    iget-object v0, p0, Lcom/android/server/usb/UsbHostManager;->mConnected:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 535
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/usb/UsbHostManager;->addConnectionRecord(Ljava/lang/String;I[B)V

    if-eqz v0, :cond_dd

    .line 538
    new-instance p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    iget-object v3, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mDescriptors:[B

    invoke-direct {p0, p1, v3}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;-><init>(Ljava/lang/String;[B)V

    const/16 v4, 0x4d

    .line 542
    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioInterface()Z

    move-result v7

    .line 543
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasStorageInterface()Z

    move-result v9

    const/4 v10, 0x0

    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    iget-wide v2, v0, Lcom/android/server/usb/UsbHostManager$ConnectionRecord;->mTimestamp:J

    sub-long v11, p0, v2

    .line 541
    invoke-static/range {v4 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIZZZIJ)V

    goto :goto_dd

    .line 548
    :cond_c4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removed device at "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was already gone"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_dd
    :goto_dd
    monitor-exit v1
    :try_end_de
    .catchall {:try_start_1a .. :try_end_de} :catchall_e7

    .line 551
    sget-object p0, Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "usbDeviceRemoved - end"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_e7
    move-exception p0

    .line 550
    :try_start_e8
    monitor-exit v1
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw p0
.end method
