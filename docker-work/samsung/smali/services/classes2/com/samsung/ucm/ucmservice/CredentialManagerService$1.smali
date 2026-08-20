.class public Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;
.super Landroid/os/Handler;
.source "CredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/ucm/ucmservice/CredentialManagerService;-><init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 222
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 225
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12f

    const/4 v2, 0x4

    if-eq v0, v2, :cond_35

    const/4 p1, 0x5

    if-eq v0, p1, :cond_17

    const/4 p1, 0x6

    if-eq v0, p1, :cond_10

    goto/16 :goto_13e

    .line 281
    :cond_10
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mshowODEProgressNotification(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    goto/16 :goto_13e

    :cond_17
    const-string p1, "UcmService"

    const-string v0, "MSG_REFRESH_APPLET_INFO is called..."

    .line 227
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$fgetmAppletsInfoLock(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 229
    :try_start_25
    iget-object p1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mwritePersistentAppletsInfoLocked(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    .line 231
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p0}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mreadPersistentAppletsInfoLocked(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)V

    .line 232
    monitor-exit v0

    goto/16 :goto_13e

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_25 .. :try_end_34} :catchall_32

    throw p0

    .line 245
    :cond_35
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "packageName"

    .line 246
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "status"

    .line 247
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "errorCode"

    .line 248
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "UcmService"

    .line 249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_PACKAGE_LICENSE_UPDATE packageName-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",status-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", errorCode-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_c3

    const-string/jumbo v4, "success"

    .line 252
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c3

    if-nez v3, :cond_c3

    const-string v2, "event"

    .line 253
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 255
    :try_start_85
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mgetUCMMDMService(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyLicenseStatus(ILjava/lang/String;)Z

    move-result v0

    const-string v1, "UcmService"

    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  notifyLicenseStatus Activate status- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_a5} :catch_a7

    goto/16 :goto_129

    :catch_a7
    move-exception v0

    const-string v1, "UcmService"

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_129

    :cond_c3
    const/16 v1, 0xcb

    if-eq v3, v1, :cond_e7

    const/16 v1, 0x2bc

    if-eq v3, v1, :cond_e7

    const/16 v1, 0x2bd

    if-eq v3, v1, :cond_e7

    const-string p0, "UcmService"

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "skip network error case: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e7
    const-string v1, "event"

    const/4 v2, 0x2

    .line 265
    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 267
    :try_start_ed
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mgetUCMMDMService(Lcom/samsung/ucm/ucmservice/CredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyLicenseStatus(ILjava/lang/String;)Z

    move-result v0

    const-string v1, "UcmService"

    .line 268
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  notifyLicenseStatus expire status- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_10d} :catch_10e

    goto :goto_129

    :catch_10e
    move-exception v0

    const-string v1, "UcmService"

    .line 270
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The exception occurs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :goto_129
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mrefreshAgentList(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Bundle;)V

    goto :goto_13e

    .line 235
    :cond_12f
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$mrefreshAgentList(Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/os/Bundle;)V

    .line 236
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_13e

    .line 237
    iget-object p0, p0, Lcom/samsung/ucm/ucmservice/CredentialManagerService$1;->this$0:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    invoke-static {p0, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->-$$Nest$msendRefreshFinishIntent(Lcom/samsung/ucm/ucmservice/CredentialManagerService;I)V

    :cond_13e
    :goto_13e
    return-void
.end method
