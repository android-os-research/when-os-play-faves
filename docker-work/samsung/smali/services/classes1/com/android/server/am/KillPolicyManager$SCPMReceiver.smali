.class public Lcom/android/server/am/KillPolicyManager$SCPMReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SCPMReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .registers 6

    .line 1919
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$SCPMReceiver;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "ActivityManager_KPM"

    const-string v1, "SCPMReceiver() called."

    .line 1920
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1921
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "sec.app.policy.UPDATE.kpm"

    .line 1922
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Context when entered SCPM Receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmContext(Lcom/android/server/am/KillPolicyManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmContext(Lcom/android/server/am/KillPolicyManager;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 1925
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling registerReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmContext(Lcom/android/server/am/KillPolicyManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_56

    :cond_51
    const-string p0, " Fatal due to mContext being null"

    .line 1928
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_56
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1934
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "sec.app.policy.UPDATE.kpm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 1935
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION***"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ActivityManager_KPM"

    invoke-static {p2, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$SCPMReceiver;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->updateSCPMParametersFromDB()V

    :cond_2c
    return-void
.end method
