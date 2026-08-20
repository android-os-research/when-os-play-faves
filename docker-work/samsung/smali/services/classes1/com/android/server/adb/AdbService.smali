.class public Lcom/android/server/adb/AdbService;
.super Landroid/debug/IAdbManager$Stub;
.source "AdbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/adb/AdbService$AdbConnectionPortListener;,
        Lcom/android/server/adb/AdbService$AdbSettingsObserver;,
        Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;,
        Lcom/android/server/adb/AdbService$Lifecycle;
    }
.end annotation


# static fields
.field public static final ADBD:Ljava/lang/String; = "adbd"

.field public static final CTL_START:Ljava/lang/String; = "ctl.start"

.field public static final CTL_STOP:Ljava/lang/String; = "ctl.stop"

.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "AdbService"

.field public static final USB_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.sys.usb.config"

.field public static final WIFI_PERSISTENT_CONFIG_PROPERTY:Ljava/lang/String; = "persist.adb.tls_server.enable"


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/debug/IAdbCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

.field public mIsAdbUsbEnabled:Z

.field public mIsAdbWifiEnabled:Z

.field public mObserver:Landroid/database/ContentObserver;

.field public final mPortListener:Lcom/android/server/adb/AdbService$AdbConnectionPortListener;

.field public final mTransports:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Landroid/debug/IAdbTransport;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6HiBca-TqxXHcm3XkL2QiU4eobo(ZBLandroid/debug/IAdbCallback;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/adb/AdbService;->lambda$setAdbEnabled$0(ZBLandroid/debug/IAdbCallback;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/android/server/adb/AdbService;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDebuggingManager(Lcom/android/server/adb/AdbService;)Lcom/android/server/adb/AdbDebuggingManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsAdbUsbEnabled(Lcom/android/server/adb/AdbService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsAdbWifiEnabled(Lcom/android/server/adb/AdbService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTransports(Lcom/android/server/adb/AdbService;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mbroadcastPortInfo(Lcom/android/server/adb/AdbService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbService;->broadcastPortInfo(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAdbEnabled(Lcom/android/server/adb/AdbService;ZB)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/adb/AdbService;->setAdbEnabled(ZB)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAdbdEnabledForTransport(Lcom/android/server/adb/AdbService;ZB)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/adb/AdbService;->setAdbdEnabledForTransport(ZB)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 246
    invoke-direct {p0}, Landroid/debug/IAdbManager$Stub;-><init>()V

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    new-instance v0, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbService$AdbConnectionPortListener;-><init>(Lcom/android/server/adb/AdbService;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mPortListener:Lcom/android/server/adb/AdbService$AdbConnectionPortListener;

    .line 95
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 238
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    .line 247
    iput-object p1, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    .line 249
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager;

    invoke-direct {v0, p1}, Lcom/android/server/adb/AdbDebuggingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    .line 251
    invoke-virtual {p0}, Lcom/android/server/adb/AdbService;->registerContentObservers()V

    .line 252
    const-class p1, Landroid/debug/AdbManagerInternal;

    new-instance v0, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/adb/AdbService$AdbManagerInternalImpl;-><init>(Lcom/android/server/adb/AdbService;Lcom/android/server/adb/AdbService$AdbManagerInternalImpl-IA;)V

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/adb/AdbService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/adb/AdbService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static containsFunction(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .line 192
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    return v1

    :cond_8
    const/16 v2, 0x2c

    if-lez v0, :cond_15

    add-int/lit8 v3, v0, -0x1

    .line 194
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v2, :cond_15

    return v1

    .line 195
    :cond_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    .line 196
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-ge v0, p1, :cond_27

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-eq p0, v2, :cond_27

    return v1

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$setAdbEnabled$0(ZBLandroid/debug/IAdbCallback;)V
    .registers 5

    .line 558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdbService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :try_start_26
    invoke-interface {p2, p0, p1}, Landroid/debug/IAdbCallback;->onDebuggingChanged(ZB)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_30

    :catch_2a
    move-exception p0

    const-string p1, "Unable to send onDebuggingChanged:"

    .line 565
    invoke-static {v1, p1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    return-void
.end method


# virtual methods
.method public allowDebugging(ZLjava/lang/String;)V
    .registers 6

    .line 300
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 302
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz p0, :cond_12

    .line 303
    invoke-virtual {p0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->allowDebugging(ZLjava/lang/String;)V

    :cond_12
    return-void
.end method

.method public allowWirelessDebugging(ZLjava/lang/String;)V
    .registers 6

    .line 353
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 355
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz p0, :cond_12

    .line 356
    invoke-virtual {p0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->allowWirelessDebugging(ZLjava/lang/String;)V

    :cond_12
    return-void
.end method

.method public bootCompleted()V
    .registers 4

    const-string v0, "AdbService"

    const-string v1, "boot completed"

    .line 291
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_19

    .line 293
    iget-boolean v1, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(ZB)V

    .line 294
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    iget-boolean p0, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(ZB)V

    :cond_19
    return-void
.end method

.method public final broadcastPortInfo(I)V
    .registers 5

    .line 471
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.adb.WIRELESS_DEBUG_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-ltz p1, :cond_b

    const/4 v1, 0x4

    goto :goto_c

    :cond_b
    const/4 v1, 0x5

    :goto_c
    const-string/jumbo v2, "status"

    .line 472
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "adb_port"

    .line 475
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 476
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->sendBroadcastWithDebugPermission(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 477
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sent port broadcast port="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AdbService"

    invoke-static {p1, p0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public clearDebuggingKeys()V
    .registers 4

    .line 317
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz p0, :cond_10

    .line 319
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->clearDebuggingKeys()V

    return-void

    .line 321
    :cond_10
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Cannot clear ADB debugging keys, AdbDebuggingManager not enabled"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public denyDebugging()V
    .registers 4

    .line 309
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz p0, :cond_f

    .line 311
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->denyDebugging()V

    :cond_f
    return-void
.end method

.method public denyWirelessDebugging()V
    .registers 4

    .line 362
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz p0, :cond_f

    .line 364
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->denyWirelessDebugging()V

    :cond_f
    return-void
.end method

.method public disablePairing()V
    .registers 4

    .line 415
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz p0, :cond_f

    .line 417
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->disablePairing()V

    :cond_f
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    .line 581
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "AdbService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 583
    :cond_b
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 584
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 586
    :try_start_16
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 587
    invoke-static {p2, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string p3, "--proto"

    .line 590
    invoke-virtual {p2, p3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    .line 594
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-eqz v4, :cond_40

    const-string v4, "-a"

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_40

    if-eqz p3, :cond_35

    goto :goto_40

    :cond_35
    const-string p0, "Dump current ADB state"

    .line 611
    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "  No commands available"

    .line 612
    invoke-virtual {v0, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6d

    :cond_40
    :goto_40
    if-eqz p3, :cond_4d

    .line 597
    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance p3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p3, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_5c

    :cond_4d
    const-string p1, "ADB MANAGER STATE (dumpsys adb):"

    .line 599
    invoke-virtual {v0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 601
    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 604
    :goto_5c
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz p0, :cond_6a

    const-string p1, "debugging_manager"

    const-wide v0, 0x10b00000001L

    .line 605
    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/android/server/adb/AdbDebuggingManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 609
    :cond_6a
    invoke-virtual {p2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_6d
    .catchall {:try_start_16 .. :try_end_6d} :catchall_71

    .line 615
    :goto_6d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_71
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 616
    throw p0
.end method

.method public enablePairingByPairingCode()V
    .registers 4

    .line 397
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz p0, :cond_f

    .line 399
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->enablePairingByPairingCode()V

    :cond_f
    return-void
.end method

.method public enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 405
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 407
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 408
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz p0, :cond_15

    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->enablePairingByQrCode(Ljava/lang/String;Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public getAdbWirelessPort()I
    .registers 4

    .line 423
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_11

    .line 425
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager;->getAdbWirelessPort()I

    move-result p0

    return p0

    .line 428
    :cond_11
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mConnectionPort:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    return p0
.end method

.method public getPairedDevices()[Landroid/debug/FingerprintAndPairDevice;
    .registers 6

    .line 370
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-nez p0, :cond_d

    return-object v2

    .line 374
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/adb/AdbDebuggingManager;->getPairedDevices()Ljava/util/Map;

    move-result-object p0

    .line 375
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [Landroid/debug/FingerprintAndPairDevice;

    const/4 v1, 0x0

    .line 377
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 378
    new-instance v3, Landroid/debug/FingerprintAndPairDevice;

    invoke-direct {v3}, Landroid/debug/FingerprintAndPairDevice;-><init>()V

    aput-object v3, v0, v1

    .line 379
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Landroid/debug/FingerprintAndPairDevice;->keyFingerprint:Ljava/lang/String;

    .line 380
    aget-object v3, v0, v1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/debug/PairDevice;

    iput-object v2, v3, Landroid/debug/FingerprintAndPairDevice;->device:Landroid/debug/PairDevice;

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_48
    return-object v0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11

    .line 574
    new-instance v0, Lcom/android/server/adb/AdbShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbShellCommand;-><init>(Lcom/android/server/adb/AdbService;)V

    .line 575
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 574
    invoke-virtual/range {v0 .. v5}, Lcom/android/modules/utils/BasicShellCommandHandler;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public isAdbWifiQrSupported()Z
    .registers 4

    .line 345
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const-string v2, "AdbService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/server/adb/AdbService;->isAdbWifiSupported()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.camera.any"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x1

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    return p0
.end method

.method public isAdbWifiSupported()Z
    .registers 4

    .line 332
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const-string v2, "AdbService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    .line 335
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.ethernet"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    goto :goto_28

    :cond_26
    const/4 p0, 0x0

    goto :goto_29

    :cond_28
    :goto_28
    const/4 p0, 0x1

    :goto_29
    return p0
.end method

.method public registerCallback(Landroid/debug/IAdbCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdbService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final registerContentObservers()V
    .registers 5

    .line 179
    :try_start_0
    new-instance v0, Lcom/android/server/adb/AdbService$AdbSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/server/adb/AdbService$AdbSettingsObserver;-><init>(Lcom/android/server/adb/AdbService;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mObserver:Landroid/database/ContentObserver;

    .line 180
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "adb_enabled"

    .line 181
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/adb/AdbService;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 180
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 183
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "adb_wifi_enabled"

    .line 184
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mObserver:Landroid/database/ContentObserver;

    .line 183
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_2b

    :catch_23
    move-exception p0

    const-string v0, "AdbService"

    const-string v1, "Error in registerContentObservers"

    .line 187
    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2b
    return-void
.end method

.method public final setAdbEnabled(ZB)V
    .registers 8

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAdbEnabled("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "), mIsAdbUsbEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAdbWifiEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", transportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdbService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_3c

    .line 510
    iget-boolean v0, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    if-eq p1, v0, :cond_3c

    .line 511
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    goto :goto_81

    :cond_3c
    const/4 v0, 0x1

    if-ne p2, v0, :cond_ea

    .line 512
    iget-boolean v0, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    if-eq p1, v0, :cond_ea

    .line 513
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    const-string/jumbo v0, "persist.adb.tls_server.enable"

    if-eqz p1, :cond_72

    .line 515
    invoke-static {}, Landroid/sysprop/AdbProperties;->secure()Ljava/util/Optional;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_81

    iget-object v2, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-nez v2, :cond_81

    const-string v2, "1"

    .line 517
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    new-instance v0, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    iget-object v2, p0, Lcom/android/server/adb/AdbService;->mPortListener:Lcom/android/server/adb/AdbService$AdbConnectionPortListener;

    invoke-direct {v0, v2}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;-><init>(Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortListener;)V

    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    .line 520
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_81

    :cond_72
    const-string v2, "0"

    .line 524
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    if-eqz v0, :cond_81

    .line 526
    invoke-virtual {v0}, Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;->cancelAndWait()V

    const/4 v0, 0x0

    .line 527
    iput-object v0, p0, Lcom/android/server/adb/AdbService;->mConnectionPortPoller:Lcom/android/server/adb/AdbDebuggingManager$AdbConnectionPortPoller;

    :cond_81
    :goto_81
    if-eqz p1, :cond_87

    .line 536
    invoke-virtual {p0}, Lcom/android/server/adb/AdbService;->startAdbd()V

    goto :goto_8a

    .line 538
    :cond_87
    invoke-virtual {p0}, Lcom/android/server/adb/AdbService;->stopAdbd()V

    .line 541
    :goto_8a
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mTransports:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_94
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_bd

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/debug/IAdbTransport;

    .line 543
    :try_start_a0
    invoke-interface {v2, p1, p2}, Landroid/debug/IAdbTransport;->onAdbEnabled(ZB)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_a0 .. :try_end_a3} :catch_a4

    goto :goto_94

    .line 545
    :catch_a4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send onAdbEnabled to transport "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 549
    :cond_bd
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz v0, :cond_c4

    .line 550
    invoke-virtual {v0, p1, p2}, Lcom/android/server/adb/AdbDebuggingManager;->setAdbEnabled(ZB)V

    .line 554
    :cond_c4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting enable = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", type = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v0, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/adb/AdbService$$ExternalSyntheticLambda0;-><init>(ZB)V

    invoke-virtual {p0, v0}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    :cond_ea
    return-void
.end method

.method public final setAdbdEnabledForTransport(ZB)V
    .registers 4

    if-nez p2, :cond_5

    .line 492
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    goto :goto_a

    :cond_5
    const/4 v0, 0x1

    if-ne p2, v0, :cond_a

    .line 494
    iput-boolean p1, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    :cond_a
    :goto_a
    if-eqz p1, :cond_10

    .line 497
    invoke-virtual {p0}, Lcom/android/server/adb/AdbService;->startAdbd()V

    goto :goto_13

    .line 499
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/adb/AdbService;->stopAdbd()V

    :goto_13
    return-void
.end method

.method public final startAdbd()V
    .registers 2

    const-string p0, "ctl.start"

    const-string v0, "adbd"

    .line 481
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final stopAdbd()V
    .registers 2

    .line 485
    iget-boolean v0, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    if-nez v0, :cond_f

    iget-boolean p0, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    if-nez p0, :cond_f

    const-string p0, "ctl.stop"

    const-string v0, "adbd"

    .line 486
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public systemReady()V
    .registers 7

    const-string v0, "AdbService"

    const-string/jumbo v1, "systemReady"

    .line 260
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "persist.sys.usb.config"

    const-string v2, ""

    .line 267
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "adb"

    .line 266
    invoke-static {v1, v2}, Lcom/android/server/adb/AdbService;->containsFunction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/adb/AdbService;->mIsAdbUsbEnabled:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_29

    const-string/jumbo v1, "persist.sys.test_harness"

    .line 270
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_29

    :cond_27
    move v1, v3

    goto :goto_2a

    :cond_29
    :goto_29
    move v1, v2

    :goto_2a
    const-string/jumbo v4, "persist.adb.tls_server.enable"

    const-string v5, "0"

    .line 273
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    .line 272
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    .line 277
    :try_start_3b
    iget-object v4, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "adb_enabled"

    if-eqz v1, :cond_43

    move v1, v2

    goto :goto_44

    :cond_43
    move v1, v3

    :goto_44
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 279
    iget-object v1, p0, Lcom/android/server/adb/AdbService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "adb_wifi_enabled"

    .line 280
    iget-boolean p0, p0, Lcom/android/server/adb/AdbService;->mIsAdbWifiEnabled:Z

    if-eqz p0, :cond_50

    goto :goto_51

    :cond_50
    move v2, v3

    .line 279
    :goto_51
    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_54
    .catch Ljava/lang/SecurityException; {:try_start_3b .. :try_end_54} :catch_55

    goto :goto_5a

    :catch_55
    const-string p0, "ADB_ENABLED is restricted."

    .line 283
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    return-void
.end method

.method public unpairDevice(Ljava/lang/String;)V
    .registers 5

    .line 388
    iget-object v0, p0, Lcom/android/server/adb/AdbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_DEBUGGING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 390
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mDebuggingManager:Lcom/android/server/adb/AdbDebuggingManager;

    if-eqz p0, :cond_12

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/server/adb/AdbDebuggingManager;->unpairDevice(Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public unregisterCallback(Landroid/debug/IAdbCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unregistering callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdbService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object p0, p0, Lcom/android/server/adb/AdbService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
