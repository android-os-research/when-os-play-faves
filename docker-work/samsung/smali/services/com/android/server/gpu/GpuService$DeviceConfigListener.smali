.class public final Lcom/android/server/gpu/GpuService$DeviceConfigListener;
.super Ljava/lang/Object;
.source "GpuService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/gpu/GpuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceConfigListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/gpu/GpuService;


# direct methods
.method public constructor <init>(Lcom/android/server/gpu/GpuService;)V
    .registers 3

    .line 152
    iput-object p1, p0, Lcom/android/server/gpu/GpuService$DeviceConfigListener;->this$0:Lcom/android/server/gpu/GpuService;

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    invoke-static {p1}, Lcom/android/server/gpu/GpuService;->-$$Nest$fgetmContext(Lcom/android/server/gpu/GpuService;)Landroid/content/Context;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    const-string v0, "game_driver"

    .line 154
    invoke-static {v0, p1, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 6

    .line 159
    iget-object v0, p0, Lcom/android/server/gpu/GpuService$DeviceConfigListener;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {v0}, Lcom/android/server/gpu/GpuService;->-$$Nest$fgetmDeviceConfigLock(Lcom/android/server/gpu/GpuService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 160
    :try_start_7
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    const-string/jumbo v2, "updatable_driver_production_denylists"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 162
    iget-object v1, p0, Lcom/android/server/gpu/GpuService$DeviceConfigListener;->this$0:Lcom/android/server/gpu/GpuService;

    const-string/jumbo v2, "updatable_driver_production_denylists"

    const-string v3, ""

    .line 163
    invoke-virtual {p1, v2, v3}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-static {v1, p1}, Lcom/android/server/gpu/GpuService;->-$$Nest$mparseDenylists(Lcom/android/server/gpu/GpuService;Ljava/lang/String;)V

    .line 165
    iget-object p0, p0, Lcom/android/server/gpu/GpuService$DeviceConfigListener;->this$0:Lcom/android/server/gpu/GpuService;

    invoke-static {p0}, Lcom/android/server/gpu/GpuService;->-$$Nest$msetDenylist(Lcom/android/server/gpu/GpuService;)V

    .line 167
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw p0
.end method
