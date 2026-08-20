.class public Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;
.super Landroid/os/Handler;
.source "VolumeMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VolumeMonitorHandler"
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;


# direct methods
.method public static synthetic $r8$lambda$jHlTrIaqS4bzffMqGlz3F3uHsn4(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->lambda$handleMessage$0()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;)V
    .registers 2

    .line 220
    iput-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$0()V
    .registers 1

    .line 235
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-static {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->-$$Nest$msendVolumeData(Lcom/samsung/android/server/audio/VolumeMonitorService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 223
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/32 v0, 0xea60

    const/4 v2, 0x1

    if-eqz p1, :cond_75

    if-eq p1, v2, :cond_13

    const-string p0, "AS.VolumeMonitor"

    const-string p1, "Not supported message"

    .line 255
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a9

    .line 235
    :cond_13
    new-instance p1, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;)V

    invoke-static {p1}, Lcom/samsung/android/server/audio/AudioExecutor;->execute(Ljava/lang/Runnable;)V

    .line 237
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object p1, p1, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-static {p1}, Lcom/samsung/android/server/audio/VolumeMonitorService;->-$$Nest$fgetmStateLock(Lcom/samsung/android/server/audio/VolumeMonitorService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 238
    :try_start_24
    iget-object v3, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v3, v3, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-static {v3}, Lcom/samsung/android/server/audio/VolumeMonitorService;->-$$Nest$fgetmEnabled(Lcom/samsung/android/server/audio/VolumeMonitorService;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_38

    .line 239
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-static {p0, v4}, Lcom/samsung/android/server/audio/VolumeMonitorService;->-$$Nest$fputmState(Lcom/samsung/android/server/audio/VolumeMonitorService;I)V

    .line 240
    monitor-exit p1

    return-void

    .line 243
    :cond_38
    iget-object v3, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v3, v3, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-static {v3}, Lcom/samsung/android/server/audio/VolumeMonitorService;->-$$Nest$misMusicPlaying(Lcom/samsung/android/server/audio/VolumeMonitorService;)Z

    move-result v3

    if-eqz v3, :cond_62

    const-string v3, "AS.VolumeMonitor"

    const-string v4, "Music is playing"

    .line 244
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v3, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v3, v3, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-static {v3}, Lcom/samsung/android/server/audio/VolumeMonitorService;->-$$Nest$fgetmVolumeHandler(Lcom/samsung/android/server/audio/VolumeMonitorService;)Landroid/os/Handler;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-static {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->-$$Nest$fgetmVolumeHandler(Lcom/samsung/android/server/audio/VolumeMonitorService;)Landroid/os/Handler;

    move-result-object p0

    .line 246
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 245
    invoke-virtual {v3, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 248
    monitor-exit p1

    return-void

    :cond_62
    const-string v0, "AS.VolumeMonitor"

    const-string v1, "Music is stopped"

    .line 250
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-static {p0, v4}, Lcom/samsung/android/server/audio/VolumeMonitorService;->-$$Nest$fputmState(Lcom/samsung/android/server/audio/VolumeMonitorService;I)V

    .line 252
    monitor-exit p1

    goto :goto_a9

    :catchall_72
    move-exception p0

    monitor-exit p1
    :try_end_74
    .catchall {:try_start_24 .. :try_end_74} :catchall_72

    throw p0

    .line 225
    :cond_75
    iget-object p1, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object p1, p1, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-static {p1}, Lcom/samsung/android/server/audio/VolumeMonitorService;->-$$Nest$fgetmStateLock(Lcom/samsung/android/server/audio/VolumeMonitorService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 226
    :try_start_7e
    iget-object v3, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v3, v3, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-static {v3}, Lcom/samsung/android/server/audio/VolumeMonitorService;->-$$Nest$fgetmState(Lcom/samsung/android/server/audio/VolumeMonitorService;)I

    move-result v3

    if-ne v3, v2, :cond_8a

    monitor-exit p1

    return-void

    .line 228
    :cond_8a
    iget-object v3, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v3, v3, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-static {v3, v2}, Lcom/samsung/android/server/audio/VolumeMonitorService;->-$$Nest$fputmState(Lcom/samsung/android/server/audio/VolumeMonitorService;I)V

    .line 229
    iget-object v3, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object v3, v3, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-static {v3}, Lcom/samsung/android/server/audio/VolumeMonitorService;->-$$Nest$fgetmVolumeHandler(Lcom/samsung/android/server/audio/VolumeMonitorService;)Landroid/os/Handler;

    move-result-object v3

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread$VolumeMonitorHandler;->this$1:Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;

    iget-object p0, p0, Lcom/samsung/android/server/audio/VolumeMonitorService$VolumeMonitorThread;->this$0:Lcom/samsung/android/server/audio/VolumeMonitorService;

    invoke-static {p0}, Lcom/samsung/android/server/audio/VolumeMonitorService;->-$$Nest$fgetmVolumeHandler(Lcom/samsung/android/server/audio/VolumeMonitorService;)Landroid/os/Handler;

    move-result-object p0

    .line 230
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 229
    invoke-virtual {v3, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 232
    monitor-exit p1

    :goto_a9
    return-void

    :catchall_aa
    move-exception p0

    monitor-exit p1
    :try_end_ac
    .catchall {:try_start_7e .. :try_end_ac} :catchall_aa

    throw p0
.end method
