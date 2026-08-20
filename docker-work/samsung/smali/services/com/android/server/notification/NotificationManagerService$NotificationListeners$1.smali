.class public Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->removeEdgeNotification(Ljava/lang/String;ILandroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

.field public final synthetic val$extra:Landroid/os/Bundle;

.field public final synthetic val$id:I

.field public final synthetic val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService$NotificationListeners;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 6

    .line 13374
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$id:I

    iput-object p5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 13377
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iget-object v0, v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 13379
    :try_start_6
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$id:I

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->val$extra:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Landroid/service/notification/INotificationListener;->onEdgeNotificationRemoved(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    goto :goto_2a

    :catch_10
    move-exception v1

    .line 13381
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationListeners$1;->this$1:Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable to notify listener (posted): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2a
    return-void
.end method
