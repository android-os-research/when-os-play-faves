.class public Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;
.super Ljava/lang/Object;
.source "StateNotifier.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/cover/StateNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CoverStateListenerInfo"
.end annotation


# instance fields
.field public final component:Landroid/content/ComponentName;

.field public final pid:I

.field public final synthetic this$0:Lcom/android/server/sepunion/cover/StateNotifier;

.field public final token:Landroid/os/IBinder;

.field public final type:I

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/cover/StateNotifier;Landroid/os/IBinder;Landroid/content/ComponentName;III)V
    .registers 7

    .line 121
    iput-object p1, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    .line 123
    iput-object p3, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->component:Landroid/content/ComponentName;

    .line 124
    iput p4, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->pid:I

    .line 125
    iput p5, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->uid:I

    .line 126
    iput p6, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 131
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "binderDied : binder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$fgetmListeners(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 133
    :try_start_21
    iget-object v1, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-static {v1}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$fgetmListeners(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_46

    .line 135
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$fgetmHighPriorityListeners(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 136
    :try_start_32
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->this$0:Lcom/android/server/sepunion/cover/StateNotifier;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$fgetmHighPriorityListeners(Lcom/android/server/sepunion/cover/StateNotifier;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 137
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_32 .. :try_end_3c} :catchall_43

    .line 138
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_43
    move-exception p0

    .line 137
    :try_start_44
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0

    :catchall_46
    move-exception p0

    .line 134
    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw p0
.end method

.method public onCoverAppStateChanged(Z)V
    .registers 3

    .line 196
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 197
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onCoverAppStateChanged : token is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 200
    :cond_f
    iget p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_29

    .line 203
    :try_start_15
    invoke-static {v0}, Lcom/samsung/android/cover/ICoverWindowStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 205
    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverWindowStateListenerCallback;->onCoverAppCovered(Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_29

    :catch_1f
    move-exception p0

    .line 208
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed onCoverAppCovered callback"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    :goto_29
    return-void
.end method

.method public onCoverAttachStateChanged(Z)V
    .registers 3

    .line 178
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 179
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onCoverAttachStateChanged : token is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 182
    :cond_f
    iget p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_29

    .line 185
    :try_start_15
    invoke-static {v0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 187
    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverAttachStateChanged(Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_29

    :catch_1f
    move-exception p0

    .line 190
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed onCoverAttachStateChanged callback"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    :goto_29
    return-void
.end method

.method public onCoverSwitchStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 143
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onCoverSwitchStateChanged : token is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 146
    :cond_f
    iget p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_28

    .line 149
    :try_start_14
    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManagerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManagerCallback;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 151
    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverManagerCallback;->coverCallback(Lcom/samsung/android/cover/CoverState;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1d} :catch_1e

    goto :goto_28

    :catch_1e
    move-exception p0

    .line 154
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed onCoverStateChanged coverCallback"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_28
    :goto_28
    return-void
.end method

.method public onCoverSwitchStateChanged(Z)V
    .registers 3

    .line 160
    iget-object v0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_f

    .line 161
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onCoverSwitchStateChanged : token is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 164
    :cond_f
    iget p0, p0, Lcom/android/server/sepunion/cover/StateNotifier$CoverStateListenerInfo;->type:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_29

    .line 167
    :try_start_15
    invoke-static {v0}, Lcom/samsung/android/cover/ICoverStateListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverStateListenerCallback;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 169
    invoke-interface {p0, p1}, Lcom/samsung/android/cover/ICoverStateListenerCallback;->onCoverSwitchStateChanged(Z)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f

    goto :goto_29

    :catch_1f
    move-exception p0

    .line 172
    invoke-static {}, Lcom/android/server/sepunion/cover/StateNotifier;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed onCoverSwitchStateChanged callback"

    invoke-static {p1, v0, p0}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_29
    :goto_29
    return-void
.end method
