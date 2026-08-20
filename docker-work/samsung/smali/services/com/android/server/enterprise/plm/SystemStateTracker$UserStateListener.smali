.class public Lcom/android/server/enterprise/plm/SystemStateTracker$UserStateListener;
.super Landroid/content/BroadcastReceiver;
.source "SystemStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/plm/SystemStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserStateListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/plm/SystemStateTracker;)V
    .registers 2

    .line 426
    iput-object p1, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$UserStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/plm/SystemStateTracker;Lcom/android/server/enterprise/plm/SystemStateTracker$UserStateListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/plm/SystemStateTracker$UserStateListener;-><init>(Lcom/android/server/enterprise/plm/SystemStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 429
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 430
    invoke-static {}, Lcom/android/server/enterprise/plm/SystemStateTracker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object p0, p0, Lcom/android/server/enterprise/plm/SystemStateTracker$UserStateListener;->this$0:Lcom/android/server/enterprise/plm/SystemStateTracker;

    .line 433
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    const/4 v0, 0x0

    .line 432
    invoke-static {p0, p2, p1, v0}, Lcom/android/server/enterprise/plm/common/PlmMessage;->obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
