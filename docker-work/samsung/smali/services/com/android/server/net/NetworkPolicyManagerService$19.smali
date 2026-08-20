.class public Lcom/android/server/net/NetworkPolicyManagerService$19;
.super Landroid/database/ContentObserver;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkPolicyManagerService;->initOffPeakContentObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 7427
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 7

    .line 7430
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1

    .line 7431
    :try_start_5
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetKEY_IS_IN_OFF_PEAK_TIME()Ljava/lang/String;

    move-result-object v0

    .line 7432
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 7431
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_23

    .line 7434
    monitor-exit p1

    return-void

    .line 7436
    :cond_23
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mcheckOffPeakEnable(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    const-string v0, "NetworkPolicy"

    .line 7437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "off peak change subid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isoffpeakEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetisOffPeakEnable()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7438
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmActiveNotifs(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_55
    :goto_55
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;

    .line 7439
    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;->getId()I

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_55

    .line 7440
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mcancelNotification(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$NotificationId;)V

    goto :goto_55

    .line 7443
    :cond_6f
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7444
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetKEY_SM_EXTRAS_SUBID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_7b
    .catchall {:try_start_5 .. :try_end_7b} :catchall_a0

    .line 7446
    :try_start_7b
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$19;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmContext(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetKEY_SM_PROVIDER_CONTENT_URI()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$sfgetKEY_SM_PROVIDER_METHOR_UPDATE_POLICY()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v1, v2, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_95
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7b .. :try_end_95} :catch_96
    .catchall {:try_start_7b .. :try_end_95} :catchall_a0

    goto :goto_9e

    :catch_96
    move-exception p0

    :try_start_97
    const-string p2, "NetworkPolicy"

    const-string v0, " call to smart manager has exception "

    .line 7449
    invoke-static {p2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7451
    :goto_9e
    monitor-exit p1

    return-void

    :catchall_a0
    move-exception p0

    monitor-exit p1
    :try_end_a2
    .catchall {:try_start_97 .. :try_end_a2} :catchall_a0

    throw p0
.end method
