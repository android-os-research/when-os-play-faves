.class public final Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
.super Landroid/os/Handler;
.source "GeofenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/geofencing/GeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GeofencingHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V
    .registers 3

    .line 171
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 172
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    if-eqz p1, :cond_c1

    .line 177
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    const/4 p1, 0x3

    if-eq v0, p1, :cond_f

    goto/16 :goto_c1

    .line 187
    :cond_f
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$mcheckMonitoring(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    goto/16 :goto_c1

    .line 180
    :cond_16
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 181
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$mloadGeofenceActiveList(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V

    .line 182
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$mcheckMonitoring(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    goto/16 :goto_c1

    .line 198
    :cond_24
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 199
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$misDeviceInsideGeofence(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 200
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c1

    .line 201
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.knox.intent.action.DEVICE_INSIDE_GEOFENCE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 203
    :goto_48
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5d

    .line 204
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    :cond_5d
    const-string v0, "com.samsung.android.knox.intent.extra.ID"

    .line 206
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 207
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v2, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    .line 208
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 209
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$mgetPackageNameForUid(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;

    move-result-object p1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 214
    :try_start_86
    iget-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {p1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object p1

    .line 215
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 216
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object p0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-static {p0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_bc} :catch_bd

    goto :goto_c1

    :catch_bd
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c1
    :goto_c1
    return-void
.end method
