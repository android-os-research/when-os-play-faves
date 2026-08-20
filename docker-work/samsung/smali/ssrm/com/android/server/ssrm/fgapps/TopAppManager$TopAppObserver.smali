.class Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "TopAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/TopAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopAppObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/TopAppManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/TopAppManager;

    .line 190
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 193
    const/4 v0, 0x0

    .line 194
    .local v0, "isTopAppChanged":Z
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmTopAppProcessSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 195
    :try_start_8
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmTopAppProcessSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eq v2, p3, :cond_19

    .line 196
    const/4 v0, 0x1

    .line 198
    :cond_19
    if-eqz p3, :cond_29

    .line 199
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmTopAppProcessSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_36

    .line 201
    :cond_29
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmTopAppProcessSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 203
    :goto_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_54

    .line 204
    if-eqz v0, :cond_42

    .line 205
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmCfms(Lcom/android/server/ssrm/fgapps/TopAppManager;)Lcom/android/server/ssrm/CustomFrequencyManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->onTopAppChanged()V

    .line 207
    :cond_42
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmUidPidMap(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void

    .line 203
    :catchall_54
    move-exception v2

    :try_start_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v2
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 212
    return-void
.end method

.method public onProcessDied(II)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "threadMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmTopAppProcessSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    .line 218
    :try_start_8
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmUidPidMap(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v2, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmTopAppProcessSet(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashSet;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 220
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_72

    .line 222
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-virtual {v1, p1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->getProcessThread(I)Ljava/util/Vector;

    move-result-object v2

    .line 223
    .local v2, "tids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmCfms(Lcom/android/server/ssrm/fgapps/TopAppManager;)Lcom/android/server/ssrm/CustomFrequencyManagerService;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->removePerfMgrThread(I)V

    .line 224
    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_36
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 225
    .local v3, "tid":I
    iget-object v4, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v4}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmCfms(Lcom/android/server/ssrm/fgapps/TopAppManager;)Lcom/android/server/ssrm/CustomFrequencyManagerService;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->removePerfMgrThread(I)V

    .line 226
    .end local v3    # "tid":I
    goto :goto_36

    .line 228
    :cond_50
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmProcessThreadMap(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 229
    :try_start_57
    iget-object v1, p0, Lcom/android/server/ssrm/fgapps/TopAppManager$TopAppObserver;->this$0:Lcom/android/server/ssrm/fgapps/TopAppManager;

    invoke-static {v1}, Lcom/android/server/ssrm/fgapps/TopAppManager;->-$$Nest$fgetmProcessThreadMap(Lcom/android/server/ssrm/fgapps/TopAppManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    move-object v0, v1

    .line 230
    if-eqz v0, :cond_6d

    .line 231
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 233
    :cond_6d
    monitor-exit v3

    .line 234
    return-void

    .line 233
    :catchall_6f
    move-exception v1

    monitor-exit v3
    :try_end_71
    .catchall {:try_start_57 .. :try_end_71} :catchall_6f

    throw v1

    .line 220
    .end local v2    # "tids":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/Integer;>;"
    :catchall_72
    move-exception v2

    :try_start_73
    monitor-exit v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v2
.end method
