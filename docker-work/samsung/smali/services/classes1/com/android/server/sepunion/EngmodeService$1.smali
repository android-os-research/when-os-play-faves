.class public Lcom/android/server/sepunion/EngmodeService$1;
.super Ljava/util/TimerTask;
.source "EngmodeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/EngmodeService;->makeRunTimeTask()Ljava/util/TimerTask;
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

    .line 92
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmTimeThread(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 97
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmTimeThread(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "engmode_service"

    const-string v0, "Time thread already running, pass"

    .line 98
    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 103
    :cond_1c
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;

    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fputmTimeThread(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/Thread;)V

    .line 104
    iget-object p0, p0, Lcom/android/server/sepunion/EngmodeService$1;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {p0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmTimeThread(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3b
    return-void
.end method
