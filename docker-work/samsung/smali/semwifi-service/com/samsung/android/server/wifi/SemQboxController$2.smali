.class Lcom/samsung/android/server/wifi/SemQboxController$2;
.super Landroid/os/Handler;
.source "SemQboxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemQboxController;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemQboxController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemQboxController;Landroid/os/Looper;)V
    .registers 3

    .line 122
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemQboxController$2;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1d

    const/4 v1, 0x3

    if-eq v0, v1, :cond_15

    const/4 p1, 0x4

    if-eq v0, p1, :cond_f

    goto :goto_4a

    .line 143
    :cond_f
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$2;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$mremoveAllInternal(Lcom/samsung/android/server/wifi/SemQboxController;)V

    goto :goto_4a

    .line 139
    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$2;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$mremoveUidInternal(Lcom/samsung/android/server/wifi/SemQboxController;I)V

    goto :goto_4a

    .line 135
    :cond_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$2;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$maddUidInternal(Lcom/samsung/android/server/wifi/SemQboxController;I)V

    goto :goto_4a

    .line 127
    :cond_25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_PRIMARY_IFACE_CHANGED: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$smlogd(Ljava/lang/String;)V

    if-eqz p1, :cond_4a

    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 130
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemQboxController$2;->this$0:Lcom/samsung/android/server/wifi/SemQboxController;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemQboxController;->-$$Nest$minterfaceChanged(Lcom/samsung/android/server/wifi/SemQboxController;Ljava/lang/String;)V

    :cond_4a
    :goto_4a
    return-void
.end method
