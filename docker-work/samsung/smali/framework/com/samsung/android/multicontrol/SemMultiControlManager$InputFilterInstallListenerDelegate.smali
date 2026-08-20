.class Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;
.super Lcom/samsung/android/multicontrol/IInputFilterInstallListener$Stub;
.source "SemMultiControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multicontrol/SemMultiControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputFilterInstallListenerDelegate"
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    .line 178
    invoke-direct {p0}, Lcom/samsung/android/multicontrol/IInputFilterInstallListener$Stub;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    .line 180
    return-void
.end method


# virtual methods
.method blacklist nullOutListenerLocked()V
    .registers 2

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    .line 215
    return-void
.end method

.method public blacklist onInstalled()V
    .registers 3

    .line 185
    invoke-static {}, Lcom/samsung/android/multicontrol/SemMultiControlManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 186
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    .line 187
    .local v1, "listener":Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    .line 189
    if-eqz v1, :cond_d

    .line 190
    invoke-interface {v1}, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;->onInstalled()V

    .line 192
    :cond_d
    return-void

    .line 187
    .end local v1    # "listener":Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public blacklist onUninstalled()V
    .registers 3

    .line 197
    invoke-static {}, Lcom/samsung/android/multicontrol/SemMultiControlManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 198
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    .line 199
    .local v1, "listener":Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    .line 201
    if-eqz v1, :cond_d

    .line 202
    invoke-interface {v1}, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;->onUninstalled()V

    .line 204
    :cond_d
    return-void

    .line 199
    .end local v1    # "listener":Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 208
    invoke-static {}, Lcom/samsung/android/multicontrol/SemMultiControlManager;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 209
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListenerDelegate;->mListener:Lcom/samsung/android/multicontrol/SemMultiControlManager$InputFilterInstallListener;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 210
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method
