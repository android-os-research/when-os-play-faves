.class public Lcom/android/server/display/VirtualDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;,
        Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;,
        Lcom/android/server/display/VirtualDisplayAdapter$Callback;,
        Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "VirtualDisplayAdapter"

.field public static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "virtual:"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public mDefaultDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public final mHandler:Landroid/os/Handler;

.field public mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

.field public final mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

.field public final mVirtualDisplayDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$ScKG0ljaGnYOWZC8-aFVPnszZc0(Ljava/lang/String;Z)Landroid/os/IBinder;
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->lambda$new$0(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDefaultDeviceInfo(Lcom/android/server/display/VirtualDisplayAdapter;)Lcom/android/server/display/DisplayDeviceInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mDefaultDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/VirtualDisplayAdapter;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLogicalDisplayMapper(Lcom/android/server/display/VirtualDisplayAdapter;)Lcom/android/server/display/LogicalDisplayMapper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleBinderDiedLocked(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->handleBinderDiedLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleMediaProjectionStoppedLocked(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->handleMediaProjectionStoppedLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .registers 11

    .line 104
    new-instance v5, Lcom/android/server/display/VirtualDisplayAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/display/VirtualDisplayAdapter$$ExternalSyntheticLambda0;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/VirtualDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;)V
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v5, "VirtualDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 91
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 113
    iput-object p3, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 114
    iput-object p5, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

    return-void
.end method

.method public static synthetic lambda$new$0(Ljava/lang/String;Z)Landroid/os/IBinder;
    .registers 2

    .line 105
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)Lcom/android/server/display/DisplayDevice;
    .registers 24

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v5, p4

    .line 120
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    move-result-object v0

    and-int/lit8 v1, p6, 0x4

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 122
    :goto_11
    invoke-interface/range {p1 .. p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 123
    iget-object v2, v12, Lcom/android/server/display/VirtualDisplayAdapter;->mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

    invoke-interface {v2, v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "virtual:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {v12, v0}, Lcom/android/server/display/VirtualDisplayAdapter;->getNextUniqueIndex(Ljava/lang/String;)I

    move-result v10

    .line 127
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/display/VirtualDisplayConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5a

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_71

    .line 131
    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_71
    move-object v9, v0

    .line 133
    new-instance v11, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    new-instance v8, Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    iget-object v0, v12, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v1, p1

    invoke-direct {v8, v1, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;-><init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/os/Handler;)V

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v3, v15

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object v14, v11

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Ljava/lang/String;ILandroid/hardware/display/VirtualDisplayConfig;)V

    .line 137
    iget-object v0, v12, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v13, :cond_a1

    .line 141
    :try_start_96
    new-instance v0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;

    invoke-direct {v0, v12, v15}, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    invoke-interface {v13, v0}, Landroid/media/projection/IMediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_9e
    .catch Landroid/os/RemoteException; {:try_start_96 .. :try_end_9e} :catch_9f

    goto :goto_a1

    :catch_9f
    const/4 v0, 0x0

    goto :goto_a6

    :cond_a1
    :goto_a1
    const/4 v0, 0x0

    .line 143
    :try_start_a2
    invoke-interface {v15, v14, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_a5
    .catch Landroid/os/RemoteException; {:try_start_a2 .. :try_end_a5} :catch_a6

    return-object v14

    .line 145
    :catch_a6
    :goto_a6
    iget-object v1, v12, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {v14, v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic dumpLocked(Ljava/io/PrintWriter;)V
    .registers 2

    .line 82
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getNextUniqueIndex(Ljava/lang/String;)I
    .registers 5

    .line 208
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 213
    :cond_a
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 214
    :cond_14
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 215
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 216
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->-$$Nest$fgetmUniqueIndex(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I

    move-result v2

    if-lt v2, v1, :cond_14

    .line 220
    invoke-static {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->-$$Nest$fgetmUniqueIndex(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_14

    :cond_38
    return v1
.end method

.method public getVirtualDisplayDeviceLocked(Landroid/os/IBinder;)Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    .registers 2

    .line 165
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    return-object p0
.end method

.method public getVirtualDisplaySurfaceLocked(Landroid/os/IBinder;)Landroid/view/Surface;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 171
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz p0, :cond_f

    .line 173
    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getSurfaceLocked()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final handleBinderDiedLocked(Landroid/os/IBinder;)V
    .registers 2

    .line 228
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final handleMediaProjectionStoppedLocked(Landroid/os/IBinder;)V
    .registers 3

    .line 232
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz p0, :cond_25

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Virtual display device released because media projection stopped: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VirtualDisplayAdapter"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {p0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->stopLocked()V

    :cond_25
    return-void
.end method

.method public bridge synthetic registerLocked()V
    .registers 1

    .line 82
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    return-void
.end method

.method public releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;
    .registers 3

    .line 186
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    .line 188
    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    const/4 v0, 0x0

    .line 189
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_12
    return-object p0
.end method

.method public resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V
    .registers 5

    .line 157
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz p0, :cond_d

    .line 159
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->resizeLocked(III)V

    :cond_d
    return-void
.end method

.method public setDefaultDisplayDeviceInfoLocked(Lcom/android/server/display/DisplayDeviceInfo;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mDefaultDeviceInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-void
.end method

.method public setLogicalDisplayMapperLocked(Lcom/android/server/display/LogicalDisplayMapper;)V
    .registers 2

    .line 246
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mLogicalDisplayMapper:Lcom/android/server/display/LogicalDisplayMapper;

    return-void
.end method

.method public setVirtualDisplayStateLocked(Landroid/os/IBinder;Z)V
    .registers 3

    .line 198
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz p0, :cond_d

    .line 200
    invoke-virtual {p0, p2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setDisplayState(Z)V

    :cond_d
    return-void
.end method

.method public setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V
    .registers 3

    .line 179
    iget-object p0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    if-eqz p0, :cond_d

    .line 181
    invoke-virtual {p0, p2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceLocked(Landroid/view/Surface;)V

    :cond_d
    return-void
.end method
