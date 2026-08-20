.class public Lcom/android/server/print/RemotePrintServiceRecommendationService;
.super Ljava/lang/Object;
.source "RemotePrintServiceRecommendationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;,
        Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;
    }
.end annotation


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "RemotePrintServiceRecS"


# instance fields
.field public final mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mIsBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;

.field public mService:Landroid/printservice/recommendation/IRecommendationService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsBound(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/print/RemotePrintServiceRecommendationService;)Landroid/printservice/recommendation/IRecommendationService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmService(Lcom/android/server/print/RemotePrintServiceRecommendationService;Landroid/printservice/recommendation/IRecommendationService;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V
    .registers 7

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    .line 135
    iput-object p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    .line 136
    new-instance v1, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    invoke-direct {v1, p0, p3}, Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;-><init>(Lcom/android/server/print/RemotePrintServiceRecommendationService;Lcom/android/server/print/RemotePrintServiceRecommendationService$RemotePrintServiceRecommendationServiceCallbacks;)V

    iput-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    .line 139
    :try_start_13
    invoke-virtual {p0, p2}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->getServiceIntent(Landroid/os/UserHandle;)Landroid/content/Intent;

    move-result-object p3

    .line 141
    monitor-enter v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_18} :catch_40

    const v2, 0x4000001

    .line 142
    :try_start_1b
    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    if-eqz p1, :cond_25

    .line 148
    monitor-exit v0

    goto :goto_48

    .line 146
    :cond_25
    new-instance p0, Ljava/lang/Exception;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to bind to service "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 148
    :goto_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_1b .. :try_end_3d} :catchall_3e

    :try_start_3d
    throw p0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_3e} :catch_40

    :catchall_3e
    move-exception p0

    goto :goto_3c

    :catch_40
    move-exception p0

    const-string p1, "RemotePrintServiceRecS"

    const-string p2, "Could not connect to print service recommendation service"

    .line 150
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    return-void
.end method


# virtual methods
.method public close()V
    .registers 6

    .line 159
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    :try_start_3
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_26

    if-eqz v1, :cond_16

    const/4 v2, 0x0

    .line 162
    :try_start_8
    invoke-interface {v1, v2}, Landroid/printservice/recommendation/IRecommendationService;->registerCallbacks(Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c
    .catchall {:try_start_8 .. :try_end_b} :catchall_26

    goto :goto_14

    :catch_c
    move-exception v1

    :try_start_d
    const-string v3, "RemotePrintServiceRecS"

    const-string v4, "Could not unregister callbacks"

    .line 164
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    :goto_14
    iput-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    .line 170
    :cond_16
    iget-boolean v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    if-eqz v1, :cond_24

    .line 171
    iget-object v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mConnection:Lcom/android/server/print/RemotePrintServiceRecommendationService$Connection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    .line 172
    iput-boolean v1, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    .line 174
    :cond_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    throw p0
.end method

.method public finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 179
    iget-boolean v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mIsBound:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mService:Landroid/printservice/recommendation/IRecommendationService;

    if-eqz v0, :cond_12

    :cond_8
    const-string v0, "RemotePrintServiceRecS"

    const-string v1, "Service still connected on finalize()"

    .line 180
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/android/server/print/RemotePrintServiceRecommendationService;->close()V

    .line 184
    :cond_12
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final getServiceIntent(Landroid/os/UserHandle;)Landroid/content/Intent;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.printservice.recommendation.RecommendationService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    const v2, 0x10000084

    .line 85
    invoke-virtual {v0, v1, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 90
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8e

    const/4 v0, 0x0

    .line 94
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 96
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object p0, p0, Lcom/android/server/print/RemotePrintServiceRecommendationService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 101
    invoke-virtual {p0, v3, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_86

    .line 107
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_7e

    .line 111
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string p1, "android.permission.BIND_PRINT_RECOMMENDATION_SERVICE"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5b

    .line 118
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 119
    invoke-virtual {p0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0

    .line 113
    :cond_5b
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not require permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_7e
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Service is not part of the system"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_86
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Cannot read appInfo for service"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_8e
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " instead of exactly one service found"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method
