.class public Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;
.super Landroid/os/Handler;
.source "EdgeLightingClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)V
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .line 79
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 81
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 82
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 83
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.edgelighting.EdgeLightingService"

    .line 84
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "packagename"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/os/Parcelable;

    const-string/jumbo v3, "info"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "reason"

    .line 87
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 88
    invoke-static {}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startService packagename="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",reason="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :try_start_54
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager$1;->this$0:Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;

    invoke-static {p0}, Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;->-$$Nest$fgetmContext(Lcom/android/server/notification/edgelighting/EdgeLightingClientManager;)Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5f} :catch_60

    goto :goto_64

    :catch_60
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_64
    return-void
.end method
