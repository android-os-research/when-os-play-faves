.class public final Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PmsLoggingReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .registers 2

    .line 7900
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 7903
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    .line 7904
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_31

    .line 7905
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[api] PmsLoggingReceiver: onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PowerManagerService"

    invoke-static {p2, p1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7906
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msendDPSIDuration(Lcom/android/server/power/PowerManagerService;)V

    .line 7907
    iget-object p1, p0, Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msendCurrentBrightnessStatus(Lcom/android/server/power/PowerManagerService;)V

    .line 7908
    iget-object p0, p0, Lcom/android/server/power/PowerManagerService$PmsLoggingReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerService;->-$$Nest$msendBrightnessLearningMaxLimitCount(Lcom/android/server/power/PowerManagerService;)V

    :cond_31
    return-void
.end method
