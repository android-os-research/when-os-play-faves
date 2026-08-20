.class public Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;
.super Ljava/lang/Object;
.source "PermissionManagerServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setUidMode(IIILjava/lang/String;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

.field public final synthetic val$appId:I

.field public final synthetic val$appOp:I

.field public final synthetic val$checkAppOpsAllowed:Z

.field public final synthetic val$killUid:Z

.field public final synthetic val$pkgName:Ljava/lang/String;

.field public final synthetic val$userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;IIILjava/lang/String;ZZ)V
    .registers 8

    .line 2394
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    iput p2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$userId:I

    iput p3, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appId:I

    iput p4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appOp:I

    iput-object p5, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$pkgName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$checkAppOpsAllowed:Z

    iput-boolean p7, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$killUid:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 2397
    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$userId:I

    iget v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appId:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 2398
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->this$0:Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$fgetmContext(Lcom/android/server/pm/permission/PermissionManagerServiceImpl;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 2399
    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appOp:I

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v2, v4, :cond_26

    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$pkgName:Ljava/lang/String;

    .line 2400
    invoke-virtual {v1, v2, v0, v4}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    move v2, v3

    .line 2402
    :goto_27
    iget-boolean v4, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$checkAppOpsAllowed:Z

    if-eqz v4, :cond_2d

    if-nez v2, :cond_3f

    .line 2403
    :cond_2d
    iget v2, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appOp:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AppOpsManager;->setUidMode(III)V

    .line 2404
    iget-boolean v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$killUid:Z

    if-eqz v0, :cond_3f

    .line 2405
    iget v0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$appId:I

    iget p0, p0, Lcom/android/server/pm/permission/PermissionManagerServiceImpl$3;->val$userId:I

    const-string v1, "Permission related app op changed"

    invoke-static {v0, p0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->-$$Nest$smkillUid(IILjava/lang/String;)V

    :cond_3f
    return-void
.end method
