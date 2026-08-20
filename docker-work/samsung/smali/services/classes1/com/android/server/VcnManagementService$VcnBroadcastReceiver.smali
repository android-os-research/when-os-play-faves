.class public Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VcnManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VcnManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VcnBroadcastReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/VcnManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/VcnManagementService;)V
    .registers 2

    .line 441
    iput-object p1, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/VcnManagementService;Lcom/android/server/VcnManagementService$VcnBroadcastReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;-><init>(Lcom/android/server/VcnManagementService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 444
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 446
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_fc

    goto :goto_46

    :sswitch_10
    const-string v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_46

    :cond_19
    const/4 v1, 0x4

    goto :goto_46

    :sswitch_1b
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_46

    :cond_24
    const/4 v1, 0x3

    goto :goto_46

    :sswitch_26
    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_46

    :cond_2f
    const/4 v1, 0x2

    goto :goto_46

    :sswitch_31
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    goto :goto_46

    :cond_3a
    const/4 v1, 0x1

    goto :goto_46

    :sswitch_3c
    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    :goto_46
    packed-switch v1, :pswitch_data_112

    .line 483
    invoke-static {}, Lcom/android/server/VcnManagementService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "received unexpected intent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fb

    .line 456
    :pswitch_64
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_db

    .line 458
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_75

    goto :goto_db

    .line 464
    :cond_75
    iget-object p1, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {p1}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmLock(Lcom/android/server/VcnManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 465
    :try_start_7c
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 466
    iget-object v1, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v1}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmConfigs(Lcom/android/server/VcnManagementService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8f
    :goto_8f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 467
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/vcn/VcnConfig;

    invoke-virtual {v3}, Landroid/net/vcn/VcnConfig;->getProvisioningPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 468
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8f

    .line 472
    :cond_b5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_b9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_cb

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 473
    iget-object v2, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {v2, v1}, Lcom/android/server/VcnManagementService;->-$$Nest$mstopAndClearVcnConfigInternalLocked(Lcom/android/server/VcnManagementService;Landroid/os/ParcelUuid;)V

    goto :goto_b9

    .line 476
    :cond_cb
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_d6

    .line 477
    iget-object p0, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {p0}, Lcom/android/server/VcnManagementService;->-$$Nest$mwriteConfigsToDiskLocked(Lcom/android/server/VcnManagementService;)V

    .line 479
    :cond_d6
    monitor-exit v0

    goto :goto_fb

    :catchall_d8
    move-exception p0

    monitor-exit v0
    :try_end_da
    .catchall {:try_start_7c .. :try_end_da} :catchall_d8

    throw p0

    .line 459
    :cond_db
    :goto_db
    iget-object p0, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package name was empty or null for intent with action"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/VcnManagementService;->-$$Nest$mlogWtf(Lcom/android/server/VcnManagementService;Ljava/lang/String;)V

    return-void

    .line 451
    :pswitch_f2
    iget-object p0, p0, Lcom/android/server/VcnManagementService$VcnBroadcastReceiver;->this$0:Lcom/android/server/VcnManagementService;

    invoke-static {p0}, Lcom/android/server/VcnManagementService;->-$$Nest$fgetmTelephonySubscriptionTracker(Lcom/android/server/VcnManagementService;)Lcom/android/server/vcn/TelephonySubscriptionTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/vcn/TelephonySubscriptionTracker;->handleSubscriptionsChanged()V

    :goto_fb
    return-void

    :sswitch_data_fc
    .sparse-switch
        -0x304ed112 -> :sswitch_3c
        0xff13fb5 -> :sswitch_31
        0x1f50b9c2 -> :sswitch_26
        0x5c1076e2 -> :sswitch_1b
        0x5e33a4ad -> :sswitch_10
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_f2
        :pswitch_64
        :pswitch_f2
        :pswitch_f2
        :pswitch_64
    .end packed-switch
.end method
