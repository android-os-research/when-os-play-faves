.class public Lcom/android/server/notification/NotificationManagerService$15;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->removeEdgeNotificationInternal(IILjava/lang/String;ILandroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic val$extra:Landroid/os/Bundle;

.field public final synthetic val$id:I

.field public final synthetic val$pkg:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILandroid/os/Bundle;I)V
    .registers 6

    .line 7682
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$id:I

    iput-object p4, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$extra:Landroid/os/Bundle;

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 7685
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$15;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$id:I

    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$extra:Landroid/os/Bundle;

    iget p0, p0, Lcom/android/server/notification/NotificationManagerService$15;->val$userId:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->removeEdgeNotification(Ljava/lang/String;ILandroid/os/Bundle;I)V

    return-void
.end method
