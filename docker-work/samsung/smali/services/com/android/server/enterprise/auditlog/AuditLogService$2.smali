.class public Lcom/android/server/enterprise/auditlog/AuditLogService$2;
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

    .line 230
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d2

    .line 234
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.REBOOT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    goto/16 :goto_d2

    .line 245
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    const-string p1, "AuditLogService"

    const-string p2, "ACTION_LOCKED_BOOT_COMPLETED"

    .line 246
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-$$Nest$fputmIsBootCompleted(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)V

    .line 249
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-$$Nest$fgetmLinkedHashMap(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object p1

    monitor-enter p1

    .line 250
    :try_start_3a
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-$$Nest$fgetmLinkedHashMap(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 251
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 252
    :goto_48
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 253
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/Admin;

    .line 254
    invoke-virtual {v0, p2}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    goto :goto_48

    .line 256
    :cond_58
    monitor-exit p1

    goto/16 :goto_f8

    :catchall_5b
    move-exception p0

    monitor-exit p1
    :try_end_5d
    .catchall {:try_start_3a .. :try_end_5d} :catchall_5b

    throw p0

    .line 257
    :cond_5e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8f

    .line 258
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 259
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "The device time has been changed. Current Time = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 258
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_f8

    .line 261
    :cond_8f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f8

    const-string p1, "Managed Profile has been created successfully"

    const-string v0, "android.intent.extra.USER"

    .line 263
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserHandle;

    if-eqz p2, :cond_c1

    .line 266
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    if-lez p2, :cond_c1

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_c1
    move-object v7, p1

    .line 271
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 272
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "AuditLogService"

    .line 271
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_f8

    .line 237
    :cond_d2
    :goto_d2
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-$$Nest$fgetmLinkedHashMap(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object p1

    monitor-enter p1

    .line 238
    :try_start_d9
    iget-object p0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {p0}, Lcom/android/server/enterprise/auditlog/AuditLogService;->-$$Nest$fgetmLinkedHashMap(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    .line 239
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 240
    :goto_e7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f7

    .line 241
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/enterprise/auditlog/Admin;

    .line 242
    invoke-virtual {p2}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    goto :goto_e7

    .line 244
    :cond_f7
    monitor-exit p1

    :cond_f8
    :goto_f8
    return-void

    :catchall_f9
    move-exception p0

    monitor-exit p1
    :try_end_fb
    .catchall {:try_start_d9 .. :try_end_fb} :catchall_f9

    throw p0
.end method
