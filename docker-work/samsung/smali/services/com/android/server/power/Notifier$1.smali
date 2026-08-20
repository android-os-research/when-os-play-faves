.class public Lcom/android/server/power/Notifier$1;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->onScreenStateChangeStartedByProximity(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/Notifier;

.field public final synthetic val$proximity:Z


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier;Z)V
    .registers 3

    .line 456
    iput-object p1, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    iput-boolean p2, p0, Lcom/android/server/power/Notifier$1;->val$proximity:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onScreenStateChangeStartedByProximity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/Notifier$1;->val$proximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerManagerNotifier"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v0}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmContext(Lcom/android/server/power/Notifier;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/Notifier$1;->val$proximity:Z

    if-eqz v1, :cond_2a

    .line 461
    iget-object p0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p0}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmScreenOffByProximityIntent(Lcom/android/server/power/Notifier;)Landroid/content/Intent;

    move-result-object p0

    goto :goto_30

    :cond_2a
    iget-object p0, p0, Lcom/android/server/power/Notifier$1;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {p0}, Lcom/android/server/power/Notifier;->-$$Nest$fgetmScreenOnByProximityIntent(Lcom/android/server/power/Notifier;)Landroid/content/Intent;

    move-result-object p0

    :goto_30
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 460
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
