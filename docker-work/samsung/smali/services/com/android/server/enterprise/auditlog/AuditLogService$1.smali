.class public Lcom/android/server/enterprise/auditlog/AuditLogService$1;
.super Landroid/content/BroadcastReceiver;
.source "AuditLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/AuditLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .registers 2

    .line 192
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final logRemovableMediaEvents(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .registers 14

    .line 203
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const-string p2, "android.os.storage.extra.STORAGE_VOLUME"

    .line 207
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageVolume;

    if-eqz p1, :cond_a1

    .line 208
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_19

    goto/16 :goto_a1

    .line 211
    :cond_19
    iget-object p2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    iget-object p2, p2, Lcom/android/server/enterprise/auditlog/AuditLogService;->mInjector:Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;

    invoke-virtual {p2}, Lcom/android/server/enterprise/auditlog/AuditLogService$Injector;->storageManagerGetVolumes()Ljava/util/List;

    move-result-object p2

    .line 212
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_25
    :goto_25
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/VolumeInfo;

    .line 213
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4c

    goto :goto_25

    .line 216
    :cond_4c
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 217
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 218
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removable Media Event : External SD Card "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v8, "AuditLogService"

    .line 217
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_76
    invoke-virtual {v0}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/storage/DiskInfo;->isUsb()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 222
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 223
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Removable Media Event : USB HOST MEMORY "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v7, "AuditLogService"

    .line 222
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_25

    :cond_a1
    :goto_a1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "Mounted"

    .line 196
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->logRemovableMediaEvents(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_23

    .line 197
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string v0, "Unmounted"

    .line 198
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/enterprise/auditlog/AuditLogService$1;->logRemovableMediaEvents(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method
