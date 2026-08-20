.class public Lcom/android/server/PACMService$1;
.super Landroid/os/Handler;
.source "PACMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PACMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/PACMService;


# direct methods
.method public constructor <init>(Lcom/android/server/PACMService;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 147
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    goto :goto_70

    :cond_6
    const-string p1, "PACMService"

    const-string v1, "MESSAGE_CHECK_BOARDCAST_RECEIVER"

    .line 149
    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/android/server/PACMService;->-$$Nest$sfgetmReceiverList()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_19

    const-string p0, "List is null"

    .line 151
    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 155
    :cond_19
    invoke-static {}, Lcom/android/server/PACMService;->-$$Nest$sfgetmReceiverList()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    invoke-static {v2}, Lcom/android/server/PACMService;->-$$Nest$fgetmReceiver(Lcom/android/server/PACMService;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    .line 156
    iget-object p1, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    invoke-static {p1}, Lcom/android/server/PACMService;->-$$Nest$mregisterForBroadcasts(Lcom/android/server/PACMService;)V

    .line 157
    iget-object p0, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    invoke-static {p0}, Lcom/android/server/PACMService;->-$$Nest$fgetmHandler(Lcom/android/server/PACMService;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_70

    .line 159
    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already registered BroadcastReceiver! ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/PACMService;->-$$Nest$sfgetmReceiverList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object p1, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    invoke-static {p1}, Lcom/android/server/PACMService;->-$$Nest$fgetmHandler(Lcom/android/server/PACMService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 161
    iget-object p0, p0, Lcom/android/server/PACMService$1;->this$0:Lcom/android/server/PACMService;

    invoke-static {p0}, Lcom/android/server/PACMService;->-$$Nest$fgetmHandler(Lcom/android/server/PACMService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_70
    :goto_70
    return-void
.end method
