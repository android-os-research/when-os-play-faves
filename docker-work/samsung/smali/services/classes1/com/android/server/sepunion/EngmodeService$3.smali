.class public Lcom/android/server/sepunion/EngmodeService$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "EngmodeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/EngmodeService;->registerNetworkCallback()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 8

    const-string p1, "engmode_service"

    const-string v0, "Network is available"

    .line 141
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :try_start_7
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmTimerObserve(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;

    move-result-object v0

    if-nez v0, :cond_37

    .line 145
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, v0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fputmTimerObserve(Lcom/android/server/sepunion/EngmodeService;Ljava/util/Timer;)V

    .line 146
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p1}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$mmakeRunTimeTask(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fputmRunTimeTask(Lcom/android/server/sepunion/EngmodeService;Ljava/util/TimerTask;)V

    .line 147
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p1}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmTimerObserve(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmRunTimeTask(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1499700

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_95

    .line 149
    :cond_37
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmNeedUpdate(Lcom/android/server/sepunion/EngmodeService;)Z

    move-result v0

    if-nez v0, :cond_45

    const-string p0, "There is no need for update"

    .line 150
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 154
    :cond_45
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmTimeThread(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_57

    const-string p0, "Previous thread is alive, skip this time"

    .line 155
    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 159
    :cond_57
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p1}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmRunTimeTask(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/TimerTask;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 160
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p1}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$mmakeRunTimeTask(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fputmRunTimeTask(Lcom/android/server/sepunion/EngmodeService;Ljava/util/TimerTask;)V

    .line 162
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p1}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmTimerObserve(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 163
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    invoke-static {p1, v0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fputmTimerObserve(Lcom/android/server/sepunion/EngmodeService;Ljava/util/Timer;)V

    .line 164
    iget-object p1, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p1}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmTimerObserve(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$3;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmRunTimeTask(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x1499700

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_90} :catch_91

    goto :goto_95

    :catch_91
    move-exception p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_95
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 2

    const-string p0, "engmode_service"

    const-string p1, "Network isn\'t available"

    .line 173
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
