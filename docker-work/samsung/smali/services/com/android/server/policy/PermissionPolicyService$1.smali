.class public Lcom/android/server/policy/PermissionPolicyService$1;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PermissionPolicyService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 2

    .line 197
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 10

    .line 200
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$misStarted(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 202
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, p1, v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$msynchronizePackagePermissionsAndAppOpsForUser(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V

    .line 205
    :cond_11
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    if-nez p2, :cond_76

    .line 208
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 209
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmLock(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 210
    :goto_24
    :try_start_24
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmIsStarted(Lcom/android/server/policy/PermissionPolicyService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    .line 211
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmIsStarted(Lcom/android/server/policy/PermissionPolicyService;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    if-eqz v2, :cond_43

    .line 213
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 216
    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_24 .. :try_end_47} :catchall_73

    .line 217
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4b
    :goto_4b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 218
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    const-wide/16 v3, 0x0

    const/16 v5, 0x3e8

    move-object v2, p1

    move v6, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;JII)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 221
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, p1, v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$msynchronizePackagePermissionsAndAppOpsForUser(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V

    goto :goto_4b

    :catchall_73
    move-exception p0

    .line 216
    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw p0

    :cond_76
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I)V
    .registers 5

    .line 230
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 231
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$misStarted(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 232
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, p1, v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$msynchronizePackagePermissionsAndAppOpsForUser(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V

    .line 233
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0, p2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$mresetAppOpPermissionsIfNotRequestedForUid(Lcom/android/server/policy/PermissionPolicyService;I)V

    :cond_16
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 4

    .line 239
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 240
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0, p1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$misStarted(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 241
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$1;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0, p2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$mresetAppOpPermissionsIfNotRequestedForUid(Lcom/android/server/policy/PermissionPolicyService;I)V

    :cond_11
    return-void
.end method
