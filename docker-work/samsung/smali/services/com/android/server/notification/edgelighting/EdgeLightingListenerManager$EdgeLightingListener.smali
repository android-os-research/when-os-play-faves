.class public Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;
.super Ljava/lang/Object;
.source "EdgeLightingListenerManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EdgeLightingListener"
.end annotation


# static fields
.field public static final MSG_EDGE_LIGHTING_STARTED:I = 0x1

.field public static final MSG_EDGE_LIGHTING_STOPPED:I = 0x2


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public isEdgeLighting:Z

.field public mHandler:Landroid/os/Handler;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

.field public final token:Landroid/os/IBinder;

.field public final uid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetcomponent(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetisEdgeLighting(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgettoken(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputisEdgeLighting(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->isEdgeLighting:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$m_onEdgeLightingStarted(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->_onEdgeLightingStarted()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$m_onEdgeLightingStopped(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->_onEdgeLightingStopped()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    .registers 7

    .line 171
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    new-instance v0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;

    invoke-static {p1}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->-$$Nest$fgetmLooper(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;)Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener$1;-><init>(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Landroid/os/Handler;

    .line 172
    iput-object p2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    .line 173
    iput-object p3, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    .line 174
    iput p4, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->pid:I

    .line 175
    iput p5, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->uid:I

    if-eqz p2, :cond_28

    const/4 p1, 0x0

    .line 178
    :try_start_1b
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_1f

    goto :goto_28

    .line 181
    :catch_1f
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "EdgeLightingListener : linkToDeath error"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    return-void
.end method


# virtual methods
.method public final _onEdgeLightingStarted()V
    .registers 3

    .line 220
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 222
    invoke-interface {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onEdgeLightingStarted()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_16

    :catch_c
    move-exception p0

    .line 225
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_onEdgeLightingStarted : RemoteException : "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_16
    return-void
.end method

.method public final _onEdgeLightingStopped()V
    .registers 3

    .line 231
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    invoke-static {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/edge/IEdgeLightingCallback;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 233
    invoke-interface {p0}, Lcom/samsung/android/edge/IEdgeLightingCallback;->onEdgeLightingStopped()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_16

    :catch_c
    move-exception p0

    .line 236
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_onEdgeLightingStopped : RemoteException : "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_16
    :goto_16
    return-void
.end method

.method public binderDied()V
    .registers 4

    .line 187
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->getInstance()Lcom/android/server/notification/edgelighting/EdgeLightingHistory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "binderDied."

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->updateListenerHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 190
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    invoke-static {v0}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->-$$Nest$fgetmListeners(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 191
    :try_start_3a
    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;

    invoke-static {v1}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->-$$Nest$fgetmListeners(Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 192
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3a .. :try_end_44} :catchall_4b

    .line 193
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_4b
    move-exception p0

    .line 192
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public onEdgeLightingStarted()V
    .registers 3

    .line 197
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 198
    :cond_a
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEdgeLightingStarted"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_14
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    if-nez v0, :cond_23

    .line 201
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "onEdgeLightingStarted : token is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 204
    :cond_23
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onEdgeLightingStopped()V
    .registers 3

    .line 208
    sget-boolean v0, Lcom/android/server/notification/edgelighting/EdgeLightingHistory;->IS_DEV_DEBUG:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 209
    :cond_a
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onEdgeLightingStopped"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_14
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->token:Landroid/os/IBinder;

    if-nez v0, :cond_23

    .line 212
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "onEdgeLightingStopped : token is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 215
    :cond_23
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  [Listener: component:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingListenerManager$EdgeLightingListener;->uid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
