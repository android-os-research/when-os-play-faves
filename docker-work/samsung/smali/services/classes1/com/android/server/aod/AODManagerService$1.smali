.class public Lcom/android/server/aod/AODManagerService$1;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$1;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 180
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$1;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmScreenTurningOnLock(Lcom/android/server/aod/AODManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 181
    :try_start_7
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "screenTurningOn"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$1;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmAODChangeListener(Lcom/android/server/aod/AODManagerService;)Lcom/samsung/android/aod/AODManager$AODChangeListener;

    move-result-object v1

    if-eqz v1, :cond_29

    .line 183
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$1;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmAODChangeListener(Lcom/android/server/aod/AODManagerService;)Lcom/samsung/android/aod/AODManager$AODChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/aod/AODManager$AODChangeListener;->readyToScreenTurningOn()V

    .line 184
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$1;->this$0:Lcom/android/server/aod/AODManagerService;

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fputmAODChangeListener(Lcom/android/server/aod/AODManagerService;Lcom/samsung/android/aod/AODManager$AODChangeListener;)V

    goto :goto_33

    .line 186
    :cond_29
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "screenTurningOn : Do nothing, There is no Listener"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_33
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_7 .. :try_end_37} :catchall_35

    throw p0
.end method
