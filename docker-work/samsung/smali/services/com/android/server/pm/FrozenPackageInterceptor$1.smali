.class public Lcom/android/server/pm/FrozenPackageInterceptor$1;
.super Lcom/android/server/wm/ActivityInterceptorCallback;
.source "FrozenPackageInterceptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/FrozenPackageInterceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/FrozenPackageInterceptor;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/FrozenPackageInterceptor;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/android/server/pm/FrozenPackageInterceptor$1;->this$0:Lcom/android/server/pm/FrozenPackageInterceptor;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityInterceptorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
    .registers 7

    .line 52
    iget-object v0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->aInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 56
    :cond_6
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 57
    iget-object v2, p0, Lcom/android/server/pm/FrozenPackageInterceptor$1;->this$0:Lcom/android/server/pm/FrozenPackageInterceptor;

    invoke-static {v2}, Lcom/android/server/pm/FrozenPackageInterceptor;->-$$Nest$fgetmPMInternal(Lcom/android/server/pm/FrozenPackageInterceptor;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget v3, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->callingUid:I

    iget v4, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->userId:I

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object p0, p0, Lcom/android/server/pm/FrozenPackageInterceptor$1;->this$0:Lcom/android/server/pm/FrozenPackageInterceptor;

    .line 58
    invoke-static {p0, v0}, Lcom/android/server/pm/FrozenPackageInterceptor;->-$$Nest$misPackageBeingInstalled(Lcom/android/server/pm/FrozenPackageInterceptor;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_21

    goto :goto_2f

    .line 62
    :cond_21
    iget p0, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->userId:I

    invoke-static {p0, v0}, Lcom/android/internal/app/FrozenAppActivity;->createIntent(ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 64
    new-instance v0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;

    iget-object p1, p1, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->checkedOptions:Landroid/app/ActivityOptions;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;-><init>(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-object v0

    :cond_2f
    :goto_2f
    return-object v1
.end method
