.class public final Lcom/android/server/om/OverlayManagerService$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UserReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    .line 737
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$UserReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$UserReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    .line 740
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 741
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/32 v2, 0x4000000

    if-nez v1, :cond_6a

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_23

    goto :goto_97

    :cond_23
    if-eq p1, v0, :cond_97

    :try_start_25
    const-string p2, "OMS ACTION_USER_ADDED"

    .line 745
    invoke-static {v2, v3, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 746
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_31
    .catchall {:try_start_25 .. :try_end_31} :catchall_65

    :try_start_31
    const-string v0, "OMS_DEBUG"

    .line 747
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ACTION_USER_ADDED] userId : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateOverlaysForUser(I)Landroid/util/ArraySet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$mupdatePackageManagerLocked(Lcom/android/server/om/OverlayManagerService;Ljava/util/Set;)Landroid/util/SparseArray;

    .line 750
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmWallpaperThemeManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/om/wallpapertheme/SemWallpaperThemeManager;->syncWallpaperThemeStateForUser(I)V

    .line 752
    monitor-exit p2
    :try_end_5e
    .catchall {:try_start_31 .. :try_end_5e} :catchall_62

    .line 754
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_97

    :catchall_62
    move-exception p0

    .line 752
    :try_start_63
    monitor-exit p2
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_62

    :try_start_64
    throw p0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_65

    :catchall_65
    move-exception p0

    .line 754
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 755
    throw p0

    :cond_6a
    if-eq p1, v0, :cond_97

    :try_start_6c
    const-string p2, "OMS ACTION_USER_REMOVED"

    .line 762
    invoke-static {v2, v3, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 763
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p2}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmLock(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_78
    .catchall {:try_start_6c .. :try_end_78} :catchall_92

    .line 764
    :try_start_78
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmImpl(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerServiceImpl;->onUserRemoved(I)V

    .line 765
    iget-object p0, p0, Lcom/android/server/om/OverlayManagerService$UserReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p0}, Lcom/android/server/om/OverlayManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->forgetAllPackageInfos(I)V

    .line 766
    monitor-exit p2
    :try_end_8b
    .catchall {:try_start_78 .. :try_end_8b} :catchall_8f

    .line 768
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_97

    :catchall_8f
    move-exception p0

    .line 766
    :try_start_90
    monitor-exit p2
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_8f

    :try_start_91
    throw p0
    :try_end_92
    .catchall {:try_start_91 .. :try_end_92} :catchall_92

    :catchall_92
    move-exception p0

    .line 768
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 769
    throw p0

    :cond_97
    :goto_97
    return-void
.end method
