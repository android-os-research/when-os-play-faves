.class public Lcom/android/server/location/LocationManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationManagerService;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2

    .line 528
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$1;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 3

    .line 531
    iget-object p2, p0, Lcom/android/server/location/LocationManagerService$1;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object p2, p2, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 532
    :try_start_5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$1;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {p0, p1}, Lcom/android/server/location/LocationManagerService;->-$$Nest$monPackageRemovedLocked(Lcom/android/server/location/LocationManagerService;Ljava/lang/String;)V

    .line 533
    monitor-exit p2

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p2
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method
