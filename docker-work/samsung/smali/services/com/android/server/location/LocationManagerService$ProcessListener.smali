.class public Lcom/android/server/location/LocationManagerService$ProcessListener;
.super Ljava/lang/Object;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/ActivityManager$SemProcessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcessListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/LocationManagerService;


# direct methods
.method public static synthetic $r8$lambda$AjrU1oaH3uoyHfVJlUOnEiSgAfc(Lcom/android/server/location/LocationManagerService$ProcessListener;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/location/LocationManagerService$ProcessListener;->lambda$onProcessDied$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/LocationManagerService;)V
    .registers 2

    .line 1612
    iput-object p1, p0, Lcom/android/server/location/LocationManagerService$ProcessListener;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onProcessDied$0(I)V
    .registers 3

    .line 1623
    iget-object v0, p0, Lcom/android/server/location/LocationManagerService$ProcessListener;->this$0:Lcom/android/server/location/LocationManagerService;

    iget-object v0, v0, Lcom/android/server/location/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1624
    :try_start_5
    iget-object p0, p0, Lcom/android/server/location/LocationManagerService$ProcessListener;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {p0, p1}, Lcom/android/server/location/LocationManagerService;->-$$Nest$monProcessDiedLocked(Lcom/android/server/location/LocationManagerService;I)V

    .line 1625
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4

    return-void
.end method

.method public onProcessDied(II)V
    .registers 4

    .line 1621
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService$ProcessListener;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->-$$Nest$fgetmMockLocationRecord(Lcom/android/server/location/LocationManagerService;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 1622
    iget-object p1, p0, Lcom/android/server/location/LocationManagerService$ProcessListener;->this$0:Lcom/android/server/location/LocationManagerService;

    invoke-static {p1}, Lcom/android/server/location/LocationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/location/LocationManagerService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/location/LocationManagerService$ProcessListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/location/LocationManagerService$ProcessListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/LocationManagerService$ProcessListener;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1a
    return-void
.end method
