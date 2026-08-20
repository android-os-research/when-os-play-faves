.class public Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;
.super Ljava/lang/Thread;
.source "KnoxMUMContainerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->doSelfUninstall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

.field public final synthetic val$callingUid:I

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;Ljava/lang/String;I)V
    .registers 4

    .line 3499
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$callingUid:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 3504
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmActivityManager(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/ActivityManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 3505
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->this$0:Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$fgetmActivityManager(Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;)Landroid/app/ActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$callingUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    :cond_19
    const-wide/16 v0, 0x1f4

    .line 3509
    :try_start_1b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1e} :catch_1e

    .line 3511
    :catch_1e
    invoke-static {}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$5;->val$callingUid:I

    .line 3512
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    const/4 v2, 0x0

    .line 3511
    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->deletePackageAsUser(Ljava/lang/String;II)Z

    return-void
.end method
