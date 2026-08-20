.class public Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;
.super Ljava/lang/Object;
.source "CompanionDevicePresenceMonitor.java"

# interfaces
.implements Lcom/android/server/companion/AssociationStore$OnChangeListener;
.implements Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;
.implements Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;,
        Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "CompanionDevice_PresenceMonitor"


# instance fields
.field public final mAssociationStore:Lcom/android/server/companion/AssociationStore;

.field public final mBleScanner:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

.field public final mBtConnectionListener:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;

.field public final mCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

.field public final mConnectedBtDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mNearbyBleDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mReportedSelfManagedDevices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mSchedulerHelper:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

.field public final mSimulated:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSimulated(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monDeviceGone(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;Ljava/util/Set;ILjava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    .line 82
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    .line 86
    new-instance v0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

    invoke-direct {v0, p0}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;-><init>(Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)V

    iput-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSchedulerHelper:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

    .line 91
    iput-object p1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    .line 92
    iput-object p2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

    .line 94
    new-instance p2, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;

    invoke-direct {p2, p1, p0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;-><init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener$Callback;)V

    iput-object p2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mBtConnectionListener:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;

    .line 96
    new-instance p2, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-direct {p2, p1, p0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;-><init>(Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/BleCompanionDeviceScanner$Callback;)V

    iput-object p2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mBleScanner:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    return-void
.end method

.method public static enforceCallerShellOrRoot()V
    .registers 2

    .line 291
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_13

    if-nez v0, :cond_b

    goto :goto_13

    .line 294
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is neither Shell nor Root"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_13
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 9

    const-string v0, "Companion Device Present: "

    .line 301
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 302
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v1, "<empty>\n"

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    .line 303
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    .line 304
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 305
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void

    :cond_23
    const-string v0, "\n"

    .line 308
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v2, "  Connected Bluetooth Devices: "

    .line 311
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 312
    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/16 v3, 0xa

    const-string v4, "    "

    if-eqz v2, :cond_3d

    .line 313
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_6c

    .line 315
    :cond_3d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 316
    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 317
    iget-object v6, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v6, v5}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v5

    .line 318
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_46

    :cond_6c
    :goto_6c
    const-string v2, "  Nearby BLE Devices: "

    .line 322
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 323
    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 324
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_ac

    .line 326
    :cond_7d
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 327
    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_86
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 328
    iget-object v6, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v6, v5}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v5

    .line 329
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v6

    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_86

    :cond_ac
    :goto_ac
    const-string v2, "  Self-Reported Devices: "

    .line 333
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 334
    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_bd

    .line 335
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_ec

    .line 337
    :cond_bd
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 338
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_ec

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 339
    iget-object v2, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {v2, v1}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object v1

    .line 340
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_c6

    :cond_ec
    :goto_ec
    return-void
.end method

.method public final enforceAssociationExists(I)V
    .registers 4

    .line 213
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {p0, p1}, Lcom/android/server/companion/AssociationStore;->getAssociationById(I)Landroid/companion/AssociationInfo;

    move-result-object p0

    if-eqz p0, :cond_9

    return-void

    .line 214
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Association with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public init(Landroid/content/Context;)V
    .registers 4

    .line 104
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 106
    iget-object v1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mBtConnectionListener:Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;

    invoke-virtual {v1, v0}, Lcom/android/server/companion/presence/BluetoothCompanionDeviceConnectionListener;->init(Landroid/bluetooth/BluetoothAdapter;)V

    .line 107
    iget-object v1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mBleScanner:Lcom/android/server/companion/presence/BleCompanionDeviceScanner;

    invoke-virtual {v1, p1, v0}, Lcom/android/server/companion/presence/BleCompanionDeviceScanner;->init(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;)V

    goto :goto_18

    :cond_11
    const-string p1, "CompanionDevice_PresenceMonitor"

    const-string v0, "BluetoothAdapter is NOT available."

    .line 109
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :goto_18
    iget-object p1, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mAssociationStore:Lcom/android/server/companion/AssociationStore;

    invoke-interface {p1, p0}, Lcom/android/server/companion/AssociationStore;->registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V

    return-void
.end method

.method public isDevicePresent(I)Z
    .registers 4

    .line 121
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    .line 122
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_31

    goto :goto_33

    :cond_31
    const/4 p0, 0x0

    goto :goto_34

    :cond_33
    :goto_33
    const/4 p0, 0x1

    :goto_34
    return p0
.end method

.method public onAssociationRemoved(Landroid/companion/AssociationInfo;)V
    .registers 4

    .line 275
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    .line 281
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 283
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onBleCompanionDeviceFound(I)V
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    const-string v1, "ble"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onBleCompanionDeviceLost(I)V
    .registers 4

    .line 177
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mNearbyBleDevices:Ljava/util/Set;

    const-string v1, "ble"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onBluetoothCompanionDeviceConnected(I)V
    .registers 4

    .line 162
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    const-string v1, "bt"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onBluetoothCompanionDeviceDisconnected(I)V
    .registers 4

    .line 167
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mConnectedBtDevices:Ljava/util/Set;

    const-string v1, "bt"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public final onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDevice_Gone() id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "CompanionDevice_PresenceMonitor"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    return-void

    .line 260
    :cond_2a
    invoke-virtual {p0, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result p1

    if-eqz p1, :cond_31

    return-void

    .line 266
    :cond_31
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

    invoke-interface {p0, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;->onDeviceDisappeared(I)V

    return-void
.end method

.method public final onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDevice_Present() id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "CompanionDevice_PresenceMonitor"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result p3

    .line 231
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_2d

    return-void

    .line 239
    :cond_2d
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mCallback:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;

    invoke-interface {p0, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$Callback;->onDeviceAppeared(I)V

    return-void
.end method

.method public onSelfManagedDeviceConnected(I)V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    const-string v1, "application-reported"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onSelfManagedDeviceDisconnected(I)V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    const-string v1, "application-reported"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public onSelfManagedDeviceReporterBinderDied(I)V
    .registers 4

    .line 157
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mReportedSelfManagedDevices:Ljava/util/Set;

    const-string v1, "application-reported"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method

.method public simulateDeviceAppeared(I)V
    .registers 4

    .line 187
    invoke-static {}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->enforceCallerShellOrRoot()V

    .line 189
    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->enforceAssociationExists(I)V

    .line 191
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    const-string/jumbo v1, "simulated"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDevicePresent(Ljava/util/Set;ILjava/lang/String;)V

    .line 193
    iget-object p0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSchedulerHelper:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;->scheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V

    return-void
.end method

.method public simulateDeviceDisappeared(I)V
    .registers 4

    .line 203
    invoke-static {}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->enforceCallerShellOrRoot()V

    .line 205
    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->enforceAssociationExists(I)V

    .line 207
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSchedulerHelper:Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor$SimulatedDevicePresenceSchedulerHelper;->unscheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V

    .line 209
    iget-object v0, p0, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->mSimulated:Ljava/util/Set;

    const-string/jumbo v1, "simulated"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onDeviceGone(Ljava/util/Set;ILjava/lang/String;)V

    return-void
.end method
