.class public Lcom/android/server/enterprise/geofencing/GeofenceService$2;
.super Landroid/content/BroadcastReceiver;
.source "GeofenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/geofencing/GeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .registers 2

    .line 233
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 236
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_29

    const-string v0, "android.intent.action.USER_REMOVED"

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 238
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-virtual {p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 239
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 240
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-virtual {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_66

    :cond_29
    if-eqz p1, :cond_66

    const-string v0, "android.intent.action.USER_STOPPED"

    .line 242
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    const/4 p1, -0x1

    const-string v0, "android.intent.extra.user_handle"

    .line 243
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_3e

    return-void

    .line 246
    :cond_3e
    iget-object p2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/geofencing/GeofenceService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p2

    const-string v0, "ADMIN"

    const-string v1, "adminUid"

    invoke-virtual {p2, v0, v1, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 248
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 249
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {v0, p2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$mdeleteGeofenceActiveListByAdmin(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V

    goto :goto_50

    :cond_66
    :goto_66
    return-void
.end method
