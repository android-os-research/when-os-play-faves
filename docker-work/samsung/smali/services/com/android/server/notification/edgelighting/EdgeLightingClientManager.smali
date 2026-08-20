.class public Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;
.super Ljava/lang/Object;
.source "EdgeLightingClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;,
        Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final EDGE_LIGHTING_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field public static final EDGE_LIGHTING_SERVICE_NAME:Ljava/lang/String; = "com.android.systemui.edgelighting.EdgeLightingService"

.field public static final EDGE_LIGHTING_SHOW_CONDITION_ALWAYS:I = 0x0

.field public static final EDGE_LIGHTING_SHOW_CONDITION_SCREEN_OFF:I = 0x2

.field public static final EDGE_LIGHTING_SHOW_CONDITION_SCREEN_ON:I = 0x1

.field public static final SETTING_EDGE_LIGHTING:Ljava/lang/String; = "edge_lighting"

.field public static final TAG:Ljava/lang/String; = "EdgeLightingClientManager"


# instance fields
.field public mCondition:I

.field public mContext:Landroid/content/Context;

.field public mEdgeLightingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEdgeLightingListenerManager:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

.field public mEdgeLightingSettingObserver:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

.field public mHandler:Landroid/os/Handler;

.field public final mHosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;",
            ">;"
        }
    .end annotation
.end field

.field public mIsConnectedMode:Z

.field public mNeedToRecheckSetting:Z


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCondition(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)I
    .registers 1

    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEdgeLightingList(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEdgeLightingListenerManager(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHosts(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsConnectedMode(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmCondition(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcreateEdgeLightingService(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;Landroid/os/UserHandle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->createEdgeLightingService(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    return v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 41
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mNeedToRecheckSetting:Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    .line 73
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    invoke-direct {v0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    .line 75
    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->getCondition()I

    move-result p1

    iput p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    .line 76
    new-instance p1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;

    invoke-direct {p1, p0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)V

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHandler:Landroid/os/Handler;

    .line 97
    new-instance p1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingSettingObserver:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    return-void
.end method


# virtual methods
.method public bind(Landroid/os/IBinder;ILandroid/content/ComponentName;)V
    .registers 13

    .line 167
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 168
    :try_start_3
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    if-eqz v1, :cond_3b

    .line 169
    :cond_b
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind : pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", condition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mHosts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_3b
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    if-eqz v2, :cond_41

    .line 174
    iget-object v3, v2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 175
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string p1, "bind : already registered"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {v2, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->updateCondition(I)V

    .line 177
    monitor-exit v0

    return-void

    .line 181
    :cond_63
    new-instance v8, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .line 182
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "bind."

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    monitor-exit v0

    return-void

    :catchall_89
    move-exception p0

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_3 .. :try_end_8b} :catchall_89

    throw p0
.end method

.method public final createEdgeLightingService(Landroid/os/UserHandle;)V
    .registers 5

    .line 146
    iget-boolean v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    if-eqz v0, :cond_1a

    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.edgelighting.EdgeLightingService"

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    :try_start_10
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_16

    goto :goto_1a

    :catch_16
    move-exception p0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    const-string v0, "-ClientManager start"

    .line 400
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 402
    :try_start_8
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 403
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_e

    .line 405
    :cond_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_87

    const-string v0, ""

    .line 406
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_2c

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    if-eqz v0, :cond_67

    .line 408
    :cond_2c
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    monitor-enter v1

    .line 409
    :try_start_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-EdgeLightingList : ["

    .line 410
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_40
    if-ge v3, v2, :cond_59

    .line 413
    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v2, -0x1

    if-eq v3, v4, :cond_56

    const-string v4, ", "

    .line 415
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    :cond_59
    const/16 v2, 0x5d

    .line 418
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, ""

    .line 420
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 421
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_2f .. :try_end_67} :catchall_84

    .line 423
    :cond_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void

    :catchall_84
    move-exception p0

    .line 421
    :try_start_85
    monitor-exit v1
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw p0

    :catchall_87
    move-exception p0

    .line 405
    :try_start_88
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_88 .. :try_end_89} :catchall_87

    throw p0
.end method

.method public existsHosts()Z
    .registers 2

    .line 247
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 248
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

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

    .line 249
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw p0
.end method

.method public final getCondition()I
    .registers 4

    .line 101
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "edge_lighting_show_condition"

    const/4 v1, 0x0

    const/4 v2, -0x2

    .line 105
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_12

    return v1

    :cond_12
    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    return v1

    :cond_1b
    return v0

    :cond_1c
    const/4 p0, 0x3

    return p0
.end method

.method public getEdgeLightingCondition()I
    .registers 5

    .line 253
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 254
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_17

    .line 255
    iget-boolean v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    if-nez v1, :cond_15

    .line 256
    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    monitor-exit v0

    return p0

    .line 258
    :cond_15
    monitor-exit v0

    return v3

    .line 260
    :cond_17
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 261
    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    monitor-exit v0

    return p0

    .line 263
    :cond_2d
    monitor-exit v0

    return v3

    :catchall_2f
    move-exception p0

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public getEdgeLightingState()I
    .registers 3

    .line 268
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    monitor-enter v0

    .line 269
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_e

    .line 270
    monitor-exit v0

    return v1

    :cond_e
    const/4 p0, 0x0

    .line 272
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 274
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public isAvailableEdgeLighting(I)Z
    .registers 7

    .line 213
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 214
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mNeedToRecheckSetting:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    .line 215
    iput-boolean v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mNeedToRecheckSetting:Z

    .line 216
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingSettingObserver:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->recheckEdgeLightingDefaultValue()V

    .line 218
    :cond_f
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_17

    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    if-eqz v1, :cond_4b

    .line 219
    :cond_17
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isAvailableEdgeLighting: condition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mCondition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mIsConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    .line 220
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_4b
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingSettingObserver:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    invoke-virtual {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->isEdgeLightingEnabled()Z

    move-result v1

    if-nez v1, :cond_55

    .line 223
    monitor-exit v0

    return v2

    .line 225
    :cond_55
    iget-boolean v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    const/4 v3, 0x7

    const/4 v4, 0x1

    if-nez v1, :cond_65

    .line 226
    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mCondition:I

    if-eq p0, v3, :cond_62

    and-int/2addr p0, p1

    if-eqz p0, :cond_63

    :cond_62
    move v2, v4

    :cond_63
    monitor-exit v0

    return v2

    .line 229
    :cond_65
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v4, :cond_6f

    .line 230
    monitor-exit v0

    return v2

    :cond_6f
    if-ne p1, v3, :cond_73

    .line 234
    monitor-exit v0

    return v4

    .line 236
    :cond_73
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_79
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    .line 237
    iget v1, v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->condition:I

    if-eq v1, v3, :cond_8c

    and-int/2addr v1, p1

    if-eqz v1, :cond_79

    .line 239
    :cond_8c
    monitor-exit v0

    return v4

    .line 242
    :cond_8e
    monitor-exit v0

    return v2

    :catchall_90
    move-exception p0

    .line 243
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_90

    throw p0
.end method

.method public isConnectedMode()Z
    .registers 1

    .line 122
    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    return p0
.end method

.method public isEdgeLightingSettingEnabled(Landroid/content/ContentResolver;)Z
    .registers 4

    const-string p0, "edge_lighting"

    const/4 v0, 0x1

    const/4 v1, -0x2

    .line 369
    invoke-static {p1, p0, v0, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isRunning()Z
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->isRunning()Z

    move-result p0

    return p0
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 3

    .line 130
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onBootPhaseAppsCanStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget-object v0, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->createEdgeLightingService(Landroid/os/UserHandle;)V

    return-void
.end method

.method public onScreenChanged(Z)V
    .registers 4

    .line 390
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 391
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_9
    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    if-eqz v1, :cond_9

    .line 393
    invoke-virtual {v1, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->onScreenChanged(Z)V

    goto :goto_9

    .line 396
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public onSwitchUser(I)V
    .registers 5

    .line 135
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object p1, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->createEdgeLightingService(Landroid/os/UserHandle;)V

    .line 137
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingSettingObserver:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;

    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingSettingObserver;->resetEdgeLightingEnabled()V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 5

    .line 141
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnlockUser : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    sget-object p1, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->createEdgeLightingService(Landroid/os/UserHandle;)V

    return-void
.end method

.method public registerListener(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .registers 3

    .line 297
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->register(Landroid/os/IBinder;Landroid/content/ComponentName;)V

    return-void
.end method

.method public setConnectedMode(Z)V
    .registers 2

    .line 126
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    return-void
.end method

.method public startEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;)V
    .registers 4

    const/4 v0, 0x7

    .line 306
    invoke-virtual {p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 307
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startEdgeLighting : edge lighting is disable"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    return-void
.end method

.method public startEdgeLightingInternal(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .registers 7

    .line 316
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 318
    :try_start_7
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 319
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 320
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startEdgeLightingInternal() reject edge lighting because application suspend package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateRejectHistory(Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v0

    .line 325
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 328
    :cond_2e
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 329
    :try_start_31
    iget-boolean v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    if-nez v1, :cond_41

    .line 330
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_41

    .line 331
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->startEdgeLightingService(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    .line 334
    :cond_41
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_47
    :goto_47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    if-eqz v1, :cond_47

    .line 336
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->onStartEdgeLighting(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V

    goto :goto_47

    .line 340
    :cond_59
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    .line 341
    monitor-exit v0

    return-void

    :catchall_88
    move-exception p0

    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_31 .. :try_end_8a} :catchall_88

    throw p0
.end method

.method public startEdgeLightingService(Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;I)V
    .registers 7

    .line 159
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    if-eqz v0, :cond_2f

    .line 160
    :cond_8
    sget-object v0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startEdgeLightingService : pkg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", reason = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2f
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p3, p1, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public startTurnOverLighting(Ljava/lang/String;ILcom/samsung/android/edge/SemEdgeLightingInfo;)V
    .registers 7

    .line 373
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.edgelighting.EdgeLightingService"

    .line 374
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_14

    const-string/jumbo v1, "packageName"

    .line 376
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_14
    const-string/jumbo p1, "reason"

    .line 378
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p3, :cond_22

    const-string/jumbo p1, "info"

    .line 380
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 383
    :cond_22
    :try_start_22
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p0

    .line 385
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2e
    return-void
.end method

.method public stopEdgeLighting(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x7

    .line 345
    invoke-virtual {p0, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->isAvailableEdgeLighting(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 346
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "stopEdgeLighting : edge lighting is disable"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    const/4 v0, 0x0

    .line 349
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->stopEdgeLightingInternal(Ljava/lang/String;I)V

    return-void
.end method

.method public stopEdgeLightingInternal(Ljava/lang/String;I)V
    .registers 7

    .line 353
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 354
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mIsConnectedMode:Z

    if-nez v1, :cond_2f

    .line 355
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2f

    .line 356
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopEdgeLightingInternal mHosts is null. pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_2f
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_35
    :goto_35
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    if-eqz v1, :cond_35

    .line 361
    invoke-virtual {v1, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->onStopEdgeLighting(Ljava/lang/String;I)V

    goto :goto_35

    .line 364
    :cond_47
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateEdgeLightingHistory(Ljava/lang/String;)V

    .line 365
    monitor-exit v0

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public unbind(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 8

    .line 188
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    monitor-enter v0

    .line 189
    :try_start_3
    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->DEBUG:Z

    if-eqz v1, :cond_30

    .line 190
    :cond_b
    sget-object v1, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbind : pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mHosts = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    const/4 v1, 0x0

    .line 193
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    :goto_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;

    if-eqz v3, :cond_37

    .line 195
    iget-object v4, v3, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$EdgeLightingHost;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    move-object v1, v3

    goto :goto_37

    :cond_4f
    if-nez v1, :cond_5b

    .line 201
    sget-object p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "unbind : cannot find the matched host"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    monitor-exit v0

    return-void

    .line 204
    :cond_5b
    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_72

    .line 205
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mHosts:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 206
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object p0

    const-string/jumbo v2, "unbind."

    invoke-virtual {p0, p2, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateHostHistory(Ljava/lang/String;Ljava/lang/String;)V

    :cond_72
    const/4 p0, 0x0

    .line 208
    invoke-interface {p1, v1, p0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 209
    monitor-exit v0

    return-void

    :catchall_78
    move-exception p0

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method public unregisterListener(Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 3

    .line 301
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->unregister(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public updateEdgeLightingPackageList(Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 278
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    monitor-enter p1

    .line 279
    :try_start_3
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p2, :cond_15

    .line 282
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_15
    if-nez v0, :cond_25

    .line 284
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_25

    .line 285
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->startEdgeLighting()V

    goto :goto_34

    :cond_25
    if-eqz v0, :cond_34

    .line 286
    iget-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_34

    .line 287
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->mEdgeLightingListenerManager:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->stopEdgeLighting()V

    .line 289
    :cond_34
    :goto_34
    monitor-exit p1

    return-void

    :catchall_36
    move-exception p0

    monitor-exit p1
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw p0
.end method
