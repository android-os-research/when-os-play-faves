.class public Lcom/android/server/WiredAccessoryManager$2;
.super Landroid/os/Handler;
.source "WiredAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WiredAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/WiredAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/android/server/WiredAccessoryManager;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5

    .line 287
    iput-object p1, p0, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 290
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4b

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3c

    const/4 p1, 0x3

    if-eq v0, p1, :cond_c

    goto :goto_61

    .line 301
    :cond_c
    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmContext(Lcom/android/server/WiredAccessoryManager;)Landroid/content/Context;

    move-result-object v0

    const v2, 0x103012b

    invoke-direct {p1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 303
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {v0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmContext(Lcom/android/server/WiredAccessoryManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x104057d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 305
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 306
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmWakeLock(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_61

    .line 296
    :cond_3c
    iget-object p1, p0, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$monSystemReady(Lcom/android/server/WiredAccessoryManager;)V

    .line 297
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmWakeLock(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_61

    .line 292
    :cond_4b
    iget-object v0, p0, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$msetDevicesState(Lcom/android/server/WiredAccessoryManager;IILjava/lang/String;)V

    .line 293
    iget-object p0, p0, Lcom/android/server/WiredAccessoryManager$2;->this$0:Lcom/android/server/WiredAccessoryManager;

    invoke-static {p0}, Lcom/android/server/WiredAccessoryManager;->-$$Nest$fgetmWakeLock(Lcom/android/server/WiredAccessoryManager;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_61
    return-void
.end method
