.class public Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;
.super Ljava/lang/Object;
.source "SemInputMotionEventDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;,
        Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$MyInputEventReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemInputMotionEventDispatcher"

.field private static volatile uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;


# instance fields
.field private final cancelDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

.field private final context:Landroid/content/Context;

.field private inputEventReceiver:Landroid/view/InputEventReceiver;

.field private inputHandlerThread:Landroid/os/HandlerThread;

.field private inputMonitor:Landroid/view/InputMonitor;

.field private final listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetlisteners(Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputEventReceiver:Landroid/view/InputEventReceiver;

    .line 28
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputHandlerThread:Landroid/os/HandlerThread;

    .line 29
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->cancelDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->context:Landroid/content/Context;

    .line 33
    return-void
.end method

.method private checkSecurityPermission(Ljava/lang/String;)Z
    .registers 5
    .param p1, "caller"    # Ljava/lang/String;

    .line 54
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_11

    .line 55
    const-string v0, "SemInputMotionEventDispatcher"

    const-string v2, "SemInputMotionEventDispatcher only available from system UID."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return v1

    .line 58
    :cond_11
    const-string v0, "secinputdev"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "SemInput"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 59
    const/4 v0, 0x1

    return v0

    .line 61
    :cond_23
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 36
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    if-nez v0, :cond_17

    .line 37
    const-class v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    monitor-enter v0

    .line 38
    :try_start_7
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    if-nez v1, :cond_12

    .line 39
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    .line 41
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 43
    :cond_17
    :goto_17
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    return-object v0
.end method

.method public static isCreated()Z
    .registers 1

    .line 47
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->uniqueInstance:Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;

    if-nez v0, :cond_6

    .line 48
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private registerInputEventReceiver()V
    .registers 6

    .line 111
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->context:Landroid/content/Context;

    const-string v1, "SemInputMotionEventDispatcher"

    if-nez v0, :cond_c

    .line 112
    const-string v0, "registerInputEventReceiver: context is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 115
    :cond_c
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    .line 117
    .local v0, "displayId":I
    :try_start_10
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    const-string v3, "secinputdev"

    invoke-virtual {v2, v3, v0}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    .line 118
    if-nez v2, :cond_1f

    .line 119
    return-void

    .line 121
    :cond_1f
    new-instance v2, Landroid/os/HandlerThread;

    const/4 v3, -0x8

    invoke-direct {v2, v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputHandlerThread:Landroid/os/HandlerThread;

    .line 122
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 123
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$MyInputEventReceiver;

    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v3}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$MyInputEventReceiver;-><init>(Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputEventReceiver:Landroid/view/InputEventReceiver;

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerInputEventReceiver: displayId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_53} :catch_54

    .line 127
    goto :goto_6b

    .line 125
    :catch_54
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerInputEventReceiver: e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_6b
    return-void
.end method

.method private unregisterInputEventReceiver()V
    .registers 4

    .line 131
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputEventReceiver:Landroid/view/InputEventReceiver;

    const-string v1, "SemInputMotionEventDispatcher"

    const/4 v2, 0x0

    if-eqz v0, :cond_11

    .line 132
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 133
    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputEventReceiver:Landroid/view/InputEventReceiver;

    .line 134
    const-string v0, "unregisterInputEventReceiver: dispose InputEventReceiver"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1f

    .line 137
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 138
    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    .line 139
    const-string v0, "unregisterInputEventReceiver: dispose InputMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_28

    .line 142
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 143
    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputHandlerThread:Landroid/os/HandlerThread;

    .line 145
    :cond_28
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 166
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_44

    if-gtz v0, :cond_b

    .line 167
    monitor-exit p0

    return-void

    .line 170
    :cond_b
    :try_start_b
    const-string v0, "dumping SemInputMotionEventDispatcher"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 171
    const-string v0, "- registered listeners"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    .line 173
    .local v1, "listener":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_41
    .catchall {:try_start_b .. :try_end_41} :catchall_44

    .line 174
    .end local v1    # "listener":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    goto :goto_1b

    .line 175
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;
    :cond_42
    monitor-exit p0

    return-void

    .line 165
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_44
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dumpEvents(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 178
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->cancelDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->getQueue()Ljava/util/Queue;

    move-result-object v0

    .line 179
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 180
    return-void

    .line 183
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- canceled MotionEvent: max "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->cancelDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->getMaxQueueSize()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_50

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 185
    .local v2, "data":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    .end local v2    # "data":Ljava/lang/String;
    goto :goto_2d

    .line 187
    :cond_50
    const-string v1, "  end SemInputMotionEventDispatcher canceled"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public declared-synchronized pilferPointers(Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    monitor-enter p0

    .line 98
    if-eqz p1, :cond_38

    .line 99
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->checkSecurityPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 102
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_38

    .line 103
    invoke-virtual {v0}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 104
    const-string v0, "SemInputMotionEventDispatcher"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->cancelDumpsys:Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDumpsysData;->createDataAndAddQueue(Ljava/lang/String;)V

    goto :goto_38

    .line 100
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;
    :cond_2d
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only SemInput service can use it"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_35

    .line 97
    .end local p1    # "listener":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    :catchall_35
    move-exception p1

    monitor-exit p0

    throw p1

    .line 108
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;
    .restart local p1    # "listener":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    :cond_38
    :goto_38
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerMotionEventListener(Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;)Z
    .registers 6
    .param p1, "listener"    # Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    monitor-enter p0

    .line 65
    if-eqz p1, :cond_4b

    .line 66
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->checkSecurityPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 69
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_22

    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->inputMonitor:Landroid/view/InputMonitor;

    if-nez v0, :cond_22

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->registerInputEventReceiver()V

    .line 73
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;
    :cond_22
    const-string v0, "SemInputMotionEventDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerMotionEventListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_48

    .line 74
    monitor-exit p0

    return v1

    .line 67
    :cond_40
    :try_start_40
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only SemInput service can use it"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_48
    .catchall {:try_start_40 .. :try_end_48} :catchall_48

    .line 64
    .end local p1    # "listener":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1

    .line 76
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;
    .restart local p1    # "listener":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    :cond_4b
    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized unregisterMotionEventListener(Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;)Z
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;

    monitor-enter p0

    .line 80
    if-eqz p1, :cond_4f

    .line 81
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->checkSecurityPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 84
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 85
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 86
    const-string v0, "SemInputMotionEventDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterMotionEventListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_41

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;->unregisterInputEventReceiver()V
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_4c

    .line 91
    .end local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;
    :cond_41
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 82
    :cond_44
    :try_start_44
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only SemInput service can use it"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_4c

    .line 79
    .end local p1    # "listener":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    :catchall_4c
    move-exception p1

    monitor-exit p0

    throw p1

    .line 94
    .restart local p0    # "this":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher;
    .restart local p1    # "listener":Lcom/samsung/android/hardware/secinputdev/SemInputMotionEventDispatcher$SemInputMotionEventListener;
    :cond_4f
    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method
