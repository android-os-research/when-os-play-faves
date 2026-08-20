.class public Lcom/android/server/job/restrictions/DeviceHealthRestriction$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceHealthRestriction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/job/restrictions/DeviceHealthRestriction;->onSystemServicesReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/restrictions/DeviceHealthRestriction;


# direct methods
.method public constructor <init>(Lcom/android/server/job/restrictions/DeviceHealthRestriction;)V
    .registers 2

    .line 77
    iput-object p1, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction$1;->this$0:Lcom/android/server/job/restrictions/DeviceHealthRestriction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const-string p1, "avg"

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string/jumbo v0, "reason"

    .line 81
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "description"

    .line 82
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", desc: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceHealthRestriction"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction$1;->this$0:Lcom/android/server/job/restrictions/DeviceHealthRestriction;

    invoke-static {v1, p1}, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->-$$Nest$mcheckScore(Lcom/android/server/job/restrictions/DeviceHealthRestriction;I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 87
    iget-object v1, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction$1;->this$0:Lcom/android/server/job/restrictions/DeviceHealthRestriction;

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, v0, p2}, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->-$$Nest$mupdateDeviceHealthStateLocked(Lcom/android/server/job/restrictions/DeviceHealthRestriction;ZILjava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_48
    iget-object p0, p0, Lcom/android/server/job/restrictions/DeviceHealthRestriction$1;->this$0:Lcom/android/server/job/restrictions/DeviceHealthRestriction;

    invoke-static {}, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->-$$Nest$sfgetDELAY_MILLIS()J

    move-result-wide p1

    invoke-static {p0, p1, p2}, Lcom/android/server/job/restrictions/DeviceHealthRestriction;->-$$Nest$mclearAndPostDelayed(Lcom/android/server/job/restrictions/DeviceHealthRestriction;J)V

    return-void
.end method
