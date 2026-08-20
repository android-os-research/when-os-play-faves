.class public Lcom/android/server/policy/PermissionPolicyService$Internal;
.super Lcom/android/server/policy/PermissionPolicyInternal;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PermissionPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Internal"
.end annotation


# instance fields
.field public final mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public static bridge synthetic -$$Nest$misNoDisplayActivity(Lcom/android/server/policy/PermissionPolicyService$Internal;Landroid/content/pm/ActivityInfo;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isNoDisplayActivity(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$monActivityManagerReady(Lcom/android/server/policy/PermissionPolicyService$Internal;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/PermissionPolicyService$Internal;->onActivityManagerReady()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldShowNotificationDialogOrClearFlags(Lcom/android/server/policy/PermissionPolicyService$Internal;Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z
    .registers 8

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/policy/PermissionPolicyService$Internal;->shouldShowNotificationDialogOrClearFlags(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .registers 2

    .line 1152
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Lcom/android/server/policy/PermissionPolicyInternal;-><init>()V

    .line 1154
    new-instance p1, Lcom/android/server/policy/PermissionPolicyService$Internal$1;

    invoke-direct {p1, p0}, Lcom/android/server/policy/PermissionPolicyService$Internal$1;-><init>(Lcom/android/server/policy/PermissionPolicyService$Internal;)V

    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyService$Internal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/policy/PermissionPolicyService$Internal;-><init>(Lcom/android/server/policy/PermissionPolicyService;)V

    return-void
.end method


# virtual methods
.method public checkStartActivity(Landroid/content/Intent;ILjava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p3, :cond_3b

    .line 1196
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isActionRemovedForCallingPackage(Landroid/content/Intent;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3b

    .line 1198
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action Removed: starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (uid="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1203
    :cond_3b
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_54

    const/16 p0, 0x3e8

    if-ne p2, p0, :cond_53

    const-string p0, "android"

    .line 1204
    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_54

    :cond_53
    return v0

    :cond_54
    const/4 p0, 0x1

    return p0
.end method

.method public final isActionRemovedForCallingPackage(Landroid/content/Intent;ILjava/lang/String;)Z
    .registers 7

    .line 1389
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v2, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    .line 1393
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string v2, "android.telecom.action.CHANGE_DEFAULT_DIALER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    return v1

    .line 1398
    :cond_19
    :try_start_19
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1399
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 1398
    invoke-virtual {p0, p3, v1, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 1400
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_2d} :catch_33

    const/16 p2, 0x1d

    if-lt p0, p2, :cond_4b

    const/4 p0, 0x1

    return p0

    .line 1406
    :catch_33
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find application info for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    const-string p0, "android.intent.extra.CALLING_PACKAGE"

    .line 1409
    invoke-virtual {p1, p0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return v1
.end method

.method public isInitialized(I)Z
    .registers 2

    .line 1373
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$misStarted(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result p0

    return p0
.end method

.method public isIntentToPermissionDialog(Landroid/content/Intent;)Z
    .registers 3

    .line 1230
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1231
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object p0

    .line 1230
    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    .line 1232
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2c

    .line 1233
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    :cond_2c
    const/4 p0, 0x1

    goto :goto_2f

    :cond_2e
    const/4 p0, 0x0

    :goto_2f
    return p0
.end method

.method public final isLauncherIntent(Landroid/content/Intent;)Z
    .registers 3

    .line 1324
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    .line 1325
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 1326
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    const-string v0, "android.intent.category.LAUNCHER"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    .line 1327
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    const-string v0, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    .line 1328
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object p0

    const-string p1, "android.intent.category.CAR_LAUNCHER"

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_38

    :cond_36
    const/4 p0, 0x1

    goto :goto_39

    :cond_38
    const/4 p0, 0x0

    :goto_39
    return p0
.end method

.method public final isNoDisplayActivity(Landroid/content/pm/ActivityInfo;)Z
    .registers 5

    .line 1244
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getThemeResource()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    .line 1250
    :cond_8
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v1

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v2, Lcom/android/internal/R$styleable;->Window:[I

    .line 1251
    invoke-virtual {v1, p1, p0, v2, v0}, Lcom/android/internal/policy/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/internal/policy/AttributeCache$Entry;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 1253
    iget-object p0, p0, Lcom/android/internal/policy/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    :cond_1e
    return v0
.end method

.method public final isTaskPotentialTrampoline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/TaskInfo;Landroid/content/Intent;)Z
    .registers 6

    .line 1298
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_1e

    iget-object p0, p4, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0, p5}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_1e

    iget p0, p4, Landroid/app/TaskInfo;->numActivities:I

    if-ne p0, p2, :cond_1e

    iget-object p0, p4, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1300
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    const/4 p2, 0x0

    :goto_1f
    return p2
.end method

.method public final isTaskStartedFromLauncher(Ljava/lang/String;Landroid/app/TaskInfo;)Z
    .registers 4

    .line 1332
    iget-object v0, p2, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p1, p2, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 1333
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public final launchNotificationPermissionRequestDialog(Ljava/lang/String;Landroid/os/UserHandle;ILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .registers 11

    .line 1338
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 1339
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10040000

    .line 1341
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.content.pm.action.REQUEST_PERMISSIONS_FOR_OTHER"

    .line 1342
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    .line 1344
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_35

    .line 1346
    iget-object v3, p4, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->checkedOptions:Landroid/app/ActivityOptions;

    if-eqz v3, :cond_35

    .line 1347
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_35

    iget-object v3, p4, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->clearOptionsAnimation:Ljava/lang/Runnable;

    if-eqz v3, :cond_35

    move v3, v1

    goto :goto_36

    :cond_35
    move v3, v2

    :goto_36
    if-eqz v3, :cond_49

    .line 1349
    iget-object v4, p4, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->checkedOptions:Landroid/app/ActivityOptions;

    .line 1350
    invoke-virtual {v4}, Landroid/app/ActivityOptions;->getRemoteAnimationAdapter()Landroid/view/RemoteAnimationAdapter;

    move-result-object v4

    iget-object v5, p4, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->checkedOptions:Landroid/app/ActivityOptions;

    .line 1351
    invoke-virtual {v5}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v5

    .line 1349
    invoke-static {v4, v5}, Landroid/app/ActivityOptions;->makeRemoteAnimation(Landroid/view/RemoteAnimationAdapter;Landroid/window/RemoteTransition;)Landroid/app/ActivityOptions;

    move-result-object v4

    goto :goto_53

    .line 1352
    :cond_49
    new-instance v4, Landroid/app/ActivityOptions;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-direct {v4, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 1353
    :goto_53
    invoke-virtual {v4, v1, v2}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    .line 1354
    invoke-virtual {v4, p3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    if-eqz v3, :cond_60

    .line 1361
    iget-object p3, p4, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;->clearOptionsAnimation:Ljava/lang/Runnable;

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 1364
    :cond_60
    :try_start_60
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmContext(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p0, v0, p3, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_6d} :catch_6e

    goto :goto_87

    :catch_6e
    move-exception p0

    .line 1366
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "couldn\'t start grant permission dialogfor other package "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_87
    return-void
.end method

.method public final onActivityManagerReady()V
    .registers 3

    .line 1186
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1187
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1188
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->mActivityInterceptorCallback:Lcom/android/server/wm/ActivityInterceptorCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerActivityStartInterceptor(ILcom/android/server/wm/ActivityInterceptorCallback;)V

    return-void
.end method

.method public final pkgHasRunningLauncherTask(Ljava/lang/String;Landroid/app/TaskInfo;)Z
    .registers 9

    .line 1304
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1305
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v1, 0x0

    .line 1308
    :try_start_9
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1309
    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAppTasks(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    move v2, v1

    .line 1310
    :goto_18
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_41

    .line 1311
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$AppTask;

    invoke-virtual {v3}, Landroid/app/ActivityManager$AppTask;->getTaskInfo()Landroid/app/ActivityManager$RecentTaskInfo;

    move-result-object v3

    .line 1312
    iget v4, v3, Landroid/app/TaskInfo;->taskId:I

    iget v5, p2, Landroid/app/TaskInfo;->taskId:I

    if-eq v4, v5, :cond_3e

    iget-boolean v4, v3, Landroid/app/TaskInfo;->isFocused:Z

    if-eqz v4, :cond_3e

    iget-boolean v4, v3, Landroid/app/TaskInfo;->isRunning:Z

    if-eqz v4, :cond_3e

    .line 1313
    invoke-virtual {p0, p1, v3}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isTaskStartedFromLauncher(Ljava/lang/String;Landroid/app/TaskInfo;)Z

    move-result v3
    :try_end_3a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_3a} :catch_41

    if-eqz v3, :cond_3e

    const/4 p0, 0x1

    return p0

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :catch_41
    :cond_41
    return v1
.end method

.method public setOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V
    .registers 3

    .line 1378
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmLock(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1379
    :try_start_7
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0, p1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fputmOnInitializedCallback(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/policy/PermissionPolicyInternal$OnInitializedCallback;)V

    .line 1380
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final shouldForceShowNotificationPermissionRequest(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 9

    .line 1419
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_bf

    .line 1420
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_bf

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1421
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bf

    .line 1422
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v2

    const/16 v3, 0x17

    if-ge v2, v3, :cond_2d

    goto/16 :goto_bf

    .line 1430
    :cond_2d
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmLock(Lcom/android/server/policy/PermissionPolicyService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 1431
    :try_start_34
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmBootCompleted(Lcom/android/server/policy/PermissionPolicyService;)Z

    move-result v3

    if-nez v3, :cond_3e

    .line 1432
    monitor-exit v2

    return v1

    .line 1434
    :cond_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_bc

    .line 1436
    invoke-interface {v0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v2

    const-string v3, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_bb

    const-wide/32 v2, 0xb9cec21

    .line 1437
    invoke-static {v2, v3, p1, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JLjava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_bb

    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/app/KeyguardManager;

    move-result-object v2

    .line 1438
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_61

    goto :goto_bb

    .line 1442
    :cond_61
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackageApi;->getUid()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserHandle;->getUid(I)I

    move-result v0

    .line 1443
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/notification/NotificationManagerInternal;

    move-result-object v2

    if-nez v2, :cond_7e

    .line 1444
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    const-class v3, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v2, v3}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fputmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;Lcom/android/server/notification/NotificationManagerInternal;)V

    .line 1446
    :cond_7e
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v2}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmNotificationManager(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/notification/NotificationManagerInternal;

    move-result-object v2

    const/4 v3, 0x1

    .line 1447
    invoke-interface {v2, p1, v0, v3}, Lcom/android/server/notification/NotificationManagerInternal;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result v2

    if-lez v2, :cond_8d

    move v2, v3

    goto :goto_8e

    :cond_8d
    move v2, v1

    .line 1448
    :goto_8e
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v4}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPermissionManagerInternal(Lcom/android/server/policy/PermissionPolicyService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v4

    const-string v5, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v4, v0, v5}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9e

    move v0, v3

    goto :goto_9f

    :cond_9e
    move v0, v1

    .line 1450
    :goto_9f
    iget-object p0, p0, Lcom/android/server/policy/PermissionPolicyService$Internal;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v4, "android.permission.POST_NOTIFICATIONS"

    invoke-virtual {p0, v4, p1, p2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0

    const p1, 0x8037

    and-int/2addr p0, p1

    if-eqz p0, :cond_b3

    move p0, v3

    goto :goto_b4

    :cond_b3
    move p0, v1

    :goto_b4
    if-nez v0, :cond_bb

    if-eqz v2, :cond_bb

    if-nez p0, :cond_bb

    move v1, v3

    :cond_bb
    :goto_bb
    return v1

    :catchall_bc
    move-exception p0

    .line 1434
    :try_start_bd
    monitor-exit v2
    :try_end_be
    .catchall {:try_start_bd .. :try_end_be} :catchall_bc

    throw p0

    :cond_bf
    :goto_bf
    if-nez v0, :cond_d9

    .line 1424
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot check for Notification prompt, no package for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d9
    return v1
.end method

.method public shouldShowNotificationDialogForTask(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;)Z
    .registers 14

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 1239
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/policy/PermissionPolicyService$Internal;->shouldShowNotificationDialogOrClearFlags(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final shouldShowNotificationDialogOrClearFlags(Landroid/app/TaskInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/ActivityOptions;Ljava/lang/String;Z)Z
    .registers 15

    const/4 v0, 0x0

    if-eqz p4, :cond_41

    if-eqz p2, :cond_41

    if-eqz p1, :cond_41

    if-eqz p6, :cond_41

    .line 1283
    iget-boolean v1, p1, Landroid/app/TaskInfo;->isFocused:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p1, Landroid/app/TaskInfo;->isVisible:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p1, Landroid/app/TaskInfo;->isRunning:Z

    if-nez v1, :cond_18

    :cond_15
    if-nez p7, :cond_18

    goto :goto_41

    .line 1288
    :cond_18
    invoke-virtual {p0, p4}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isLauncherIntent(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_40

    if-eqz p5, :cond_26

    .line 1289
    invoke-virtual {p5}, Landroid/app/ActivityOptions;->isEligibleForLegacyPermissionPrompt()Z

    move-result p5

    if-nez p5, :cond_40

    .line 1290
    :cond_26
    invoke-virtual {p0, p2, p1}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isTaskStartedFromLauncher(Ljava/lang/String;Landroid/app/TaskInfo;)Z

    move-result p5

    if-nez p5, :cond_40

    move-object v1, p0

    move-object v2, p6

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    move-object v6, p4

    .line 1291
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/PermissionPolicyService$Internal;->isTaskPotentialTrampoline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/TaskInfo;Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_41

    if-eqz p7, :cond_40

    .line 1293
    invoke-virtual {p0, p2, p1}, Lcom/android/server/policy/PermissionPolicyService$Internal;->pkgHasRunningLauncherTask(Ljava/lang/String;Landroid/app/TaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_41

    :cond_40
    const/4 v0, 0x1

    :cond_41
    :goto_41
    return v0
.end method

.method public showNotificationPromptIfNeeded(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x0

    .line 1214
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PermissionPolicyService$Internal;->showNotificationPromptIfNeeded(Ljava/lang/String;IILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    return-void
.end method

.method public showNotificationPromptIfNeeded(Ljava/lang/String;IILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V
    .registers 6

    .line 1219
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    if-eqz p1, :cond_13

    const/4 v0, -0x1

    if-eq p3, v0, :cond_13

    .line 1221
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PermissionPolicyService$Internal;->shouldForceShowNotificationPermissionRequest(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_13

    .line 1225
    :cond_10
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PermissionPolicyService$Internal;->launchNotificationPermissionRequestDialog(Ljava/lang/String;Landroid/os/UserHandle;ILcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptorInfo;)V

    :cond_13
    :goto_13
    return-void
.end method
