.class public Lcom/android/server/usb/UsbPermissionManager;
.super Ljava/lang/Object;
.source "UsbPermissionManager.java"


# static fields
.field public static final DEBUG:Z = true

.field public static final LOG_TAG:Ljava/lang/String; = "UsbPermissionManager"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPermissionsByUser:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPermissionsByUser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/usb/UsbUserPermissionManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mUsbService:Lcom/android/server/usb/UsbService;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbService;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    .line 54
    iput-object p1, p0, Lcom/android/server/usb/UsbPermissionManager;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/server/usb/UsbPermissionManager;->mUsbService:Lcom/android/server/usb/UsbService;

    return-void
.end method


# virtual methods
.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 12

    .line 123
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 124
    iget-object p4, p0, Lcom/android/server/usb/UsbPermissionManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/UserManager;

    .line 125
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 126
    :try_start_11
    invoke-virtual {p4}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p4

    .line 127
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_36

    .line 129
    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v3

    const-string/jumbo v4, "user_permissions"

    const-wide v5, 0x20b00000001L

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/android/server/usb/UsbUserPermissionManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 132
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_11 .. :try_end_37} :catchall_3b

    .line 133
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void

    :catchall_3b
    move-exception p0

    .line 132
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;
    .registers 7

    .line 59
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 60
    :try_start_3
    iget-object v1, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbUserPermissionManager;

    if-nez v1, :cond_28

    .line 62
    new-instance v1, Lcom/android/server/usb/UsbUserPermissionManager;

    iget-object v2, p0, Lcom/android/server/usb/UsbPermissionManager;->mContext:Landroid/content/Context;

    .line 63
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    const/4 v4, 0x0

    .line 62
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbPermissionManager;->mUsbService:Lcom/android/server/usb/UsbService;

    .line 63
    invoke-virtual {v3, p1}, Lcom/android/server/usb/UsbService;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/server/usb/UsbUserPermissionManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbUserSettingsManager;)V

    .line 64
    iget-object p0, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66
    :cond_28
    monitor-exit v0

    return-object v1

    :catchall_2a
    move-exception p0

    .line 67
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method public getPermissionsForUser(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbUserPermissionManager;
    .registers 2

    .line 71
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    return-object p0
.end method

.method public remove(Landroid/os/UserHandle;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    .line 76
    :try_start_3
    iget-object p0, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 77
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public usbAccessoryRemoved(Landroid/hardware/usb/UsbAccessory;)V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 110
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 112
    iget-object v2, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbUserPermissionManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbUserPermissionManager;->removeAccessoryPermissions(Landroid/hardware/usb/UsbAccessory;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 114
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_34

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "accessory"

    .line 118
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 119
    iget-object p0, p0, Lcom/android/server/usb/UsbPermissionManager;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_34
    move-exception p0

    .line 114
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public usbDeviceRemoved(Landroid/hardware/usb/UsbDevice;)V
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 87
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 89
    iget-object v2, p0, Lcom/android/server/usb/UsbPermissionManager;->mPermissionsByUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbUserPermissionManager;

    invoke-virtual {v2, p1}, Lcom/android/server/usb/UsbUserPermissionManager;->removeDevicePermissions(Landroid/hardware/usb/UsbDevice;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 91
    :cond_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_4b

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "device"

    .line 95
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 98
    sget-object p1, Lcom/android/server/usb/UsbPermissionManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "usbDeviceRemoved, sending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object p0, p0, Lcom/android/server/usb/UsbPermissionManager;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void

    :catchall_4b
    move-exception p0

    .line 91
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p0
.end method
