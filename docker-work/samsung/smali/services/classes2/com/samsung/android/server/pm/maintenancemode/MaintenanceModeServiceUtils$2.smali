.class public Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$2;
.super Landroid/content/BroadcastReceiver;
.source "MaintenanceModeServiceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->notifyOtherServices()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)V
    .registers 2

    .line 496
    iput-object p1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$2;->this$0:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 499
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.intent.action.RESPONSE_PREPROCESSING_MAINTENANCE_MODE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_51

    const-string p1, "android.intent.extra.PACKAGE_NAME"

    .line 500
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 501
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MaintenanceMode"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_34

    .line 503
    iget-object p2, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$2;->this$0:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-static {p2}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->-$$Nest$fgetmRemainingPkgs(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 505
    :cond_34
    iget-object p1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$2;->this$0:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-static {p1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->-$$Nest$fgetmRemainingPkgs(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_51

    iget-object p1, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$2;->this$0:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-static {p1}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->-$$Nest$fgetmLatch(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 506
    iget-object p0, p0, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils$2;->this$0:Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;

    invoke-static {p0}, Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;->-$$Nest$fgetmLatch(Lcom/samsung/android/server/pm/maintenancemode/MaintenanceModeServiceUtils;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_51
    return-void
.end method
