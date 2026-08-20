.class public Lcom/android/server/VaultKeeperService$1;
.super Landroid/os/Handler;
.source "VaultKeeperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VaultKeeperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/VaultKeeperService;


# direct methods
.method public constructor <init>(Lcom/android/server/VaultKeeperService;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 163
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const-string v1, "VaultKeeperService"

    const/4 v2, 0x2

    if-eq p1, v0, :cond_27

    if-eq p1, v2, :cond_b

    goto :goto_62

    .line 178
    :cond_b
    iget-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {p1}, Lcom/android/server/VaultKeeperService;->-$$Nest$fgetmWakeLock(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_62

    .line 179
    iget-object p0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {p0}, Lcom/android/server/VaultKeeperService;->-$$Nest$fgetmWakeLock(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string/jumbo p0, "wakelock is released!!"

    .line 180
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 165
    :cond_27
    iget-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {p1}, Lcom/android/server/VaultKeeperService;->-$$Nest$fgetmHandler(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 166
    iget-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {p1}, Lcom/android/server/VaultKeeperService;->-$$Nest$fgetmHandler(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    :cond_3c
    iget-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {p1}, Lcom/android/server/VaultKeeperService;->-$$Nest$fgetmWakeLock(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_57

    .line 170
    iget-object p1, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {p1}, Lcom/android/server/VaultKeeperService;->-$$Nest$fgetmWakeLock(Lcom/android/server/VaultKeeperService;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string/jumbo p1, "wakelock is acquired!!"

    .line 171
    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_57
    iget-object p0, p0, Lcom/android/server/VaultKeeperService$1;->this$0:Lcom/android/server/VaultKeeperService;

    invoke-static {p0}, Lcom/android/server/VaultKeeperService;->-$$Nest$fgetmHandler(Lcom/android/server/VaultKeeperService;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_62
    :goto_62
    return-void
.end method
