.class public Lcom/android/server/enterprise/application/ApplicationPolicy$12;
.super Ljava/lang/Thread;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->reapplyRuntimePermissions(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;I)V
    .registers 3

    .line 10385
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iput p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string/jumbo v0, "packageName"

    const-string v1, "adminUid"

    .line 10389
    :try_start_5
    iget v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->val$userId:I

    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->userExist(I)Z

    move-result v2

    if-nez v2, :cond_15

    const-string p0, "ApplicationPolicy"

    const-string v0, "User removed"

    .line 10390
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_15
    const/4 v2, 0x0

    .line 10405
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$fgetmPackageManager(Lcom/android/server/enterprise/application/ApplicationPolicy;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget v4, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->val$userId:I

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->applyRuntimePermissionsForAllApplicationsForMdm(II)Z

    .line 10407
    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v2

    .line 10410
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    const-string v4, "ApplicationRuntimePermissions"

    iget v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->val$userId:I

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_70

    .line 10412
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_70

    .line 10413
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    :goto_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_70

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 10414
    invoke-virtual {v3, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 10415
    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_3f

    if-eqz v3, :cond_3f

    .line 10417
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5e

    goto :goto_3f

    .line 10420
    :cond_5e
    iget-object v5, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v5, v4, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mupdateRuntimePermissions(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6b} :catch_6c

    goto :goto_3f

    :catch_6c
    move-exception p0

    .line 10425
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_70
    return-void
.end method

.method public final userExist(I)Z
    .registers 4

    .line 10430
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 10432
    invoke-virtual {p0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object p0

    .line 10433
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "ApplicationPolicy"

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 10434
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v0, p1, :cond_15

    const-string p0, "User found"

    .line 10435
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2e
    const-string p0, "User not found"

    .line 10439
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method
