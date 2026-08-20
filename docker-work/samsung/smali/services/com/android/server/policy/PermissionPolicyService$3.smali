.class public Lcom/android/server/policy/PermissionPolicyService$3;
.super Landroid/content/BroadcastReceiver;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PermissionPolicyService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final mPermControllerManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Landroid/permission/PermissionControllerManager;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserSetupUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 3

    .line 318
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 319
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0xc8

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    .line 320
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mPermControllerManagers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 p1, 0x1

    .line 327
    :try_start_1
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    .line 329
    invoke-virtual {v0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    .line 328
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_16
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_16} :catch_1b

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :catch_1b
    :goto_1b
    move v0, p1

    :goto_1c
    const-string v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    .line 333
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 335
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v1

    if-nez v1, :cond_30

    return-void

    :cond_30
    if-eqz v0, :cond_66

    .line 340
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_62

    .line 341
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    monitor-enter v0

    .line 342
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, p1

    :goto_44
    if-ltz v1, :cond_58

    .line 343
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService$3;->updateUid(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_44

    .line 345
    :cond_58
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 346
    monitor-exit v0

    goto :goto_62

    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3d .. :try_end_61} :catchall_5f

    throw p0

    .line 348
    :cond_62
    :goto_62
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PermissionPolicyService$3;->updateUid(I)V

    goto :goto_7f

    .line 350
    :cond_66
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    monitor-enter p1

    .line 351
    :try_start_69
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 352
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    :cond_7e
    monitor-exit p1

    :goto_7f
    return-void

    :catchall_80
    move-exception p0

    monitor-exit p1
    :try_end_82
    .catchall {:try_start_69 .. :try_end_82} :catchall_80

    throw p0
.end method

.method public final updateUid(I)V
    .registers 6

    .line 359
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mPermControllerManagers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionControllerManager;

    if-nez v1, :cond_26

    .line 362
    new-instance v1, Landroid/permission/PermissionControllerManager;

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 363
    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$smgetUserContext(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/server/PermissionThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 364
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mPermControllerManagers:Ljava/util/Map;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_26
    invoke-virtual {v1, p1}, Landroid/permission/PermissionControllerManager;->updateUserSensitiveForApp(I)V

    return-void
.end method
