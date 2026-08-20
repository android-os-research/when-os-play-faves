.class public Lcom/android/server/DualAppManagerService$InternalHandler;
.super Landroid/os/Handler;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DualAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InternalHandler"
.end annotation


# static fields
.field public static final MSG_NOTIFY_LAUNCHER_CHANGE:I = 0x1

.field public static final MSG_UPDATE_DATA_WEDGE_ACTIVITY_CHANGE:I = 0x4

.field public static final MSG_UPDATE_DATA_WEDGE_INPUT_CONTEXT_CHANGE:I = 0x5

.field public static final MSG_UPDATE_USAGE_INFO:I = 0x3

.field public static final MSG_UPDATE_WHITELIST_INFO:I = 0x2


# instance fields
.field public final synthetic this$0:Lcom/android/server/DualAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/DualAppManagerService;)V
    .registers 2

    .line 158
    iput-object p1, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/DualAppManagerService;Lcom/android/server/DualAppManagerService$InternalHandler-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/DualAppManagerService$InternalHandler;-><init>(Lcom/android/server/DualAppManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage() START "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualAppManagerService"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :try_start_17
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_41

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3b

    const/4 p0, 0x4

    if-eq v0, p0, :cond_33

    const/4 p0, 0x5

    if-eq v0, p0, :cond_29

    goto :goto_6f

    .line 193
    :cond_29
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, v0}, Lcom/android/server/DualAppManagerService;->-$$Nest$smupdateWedgeAboutInputContext(Ljava/lang/String;I)V

    goto :goto_6f

    .line 189
    :cond_33
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/DualAppManagerService;->-$$Nest$smupdateWedgeAboutActivity(Ljava/lang/String;)V

    goto :goto_6f

    .line 185
    :cond_3b
    iget-object p0, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-virtual {p0}, Lcom/android/server/DualAppManagerService;->updateDAUsage()V

    goto :goto_6f

    .line 180
    :cond_41
    iget-object v0, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-virtual {v0}, Lcom/android/server/DualAppManagerService;->updateWhitelistPackages()V

    .line 181
    iget-object p0, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-virtual {p0}, Lcom/android/server/DualAppManagerService;->updateInstalledWhitelistPackages()V

    goto :goto_6f

    .line 173
    :cond_4c
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.da.daagent"

    const-string v2, "com.samsung.android.da.daagent.service.SwitchLauncherService"

    .line 174
    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "defaultLauncher"

    .line 175
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    invoke-static {}, Lcom/android/server/DualAppManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, p0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_6a} :catch_6b

    goto :goto_6f

    :catch_6b
    move-exception p0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    :goto_6f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "handleMessage() END"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
