.class public Lcom/android/server/pm/PersonaManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .registers 2

    .line 2390
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 2393
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2394
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmAnalyticsReceiver(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2396
    :cond_15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2397
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmAnalyticsReceiver(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2399
    :cond_2a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v2, 0x0

    const-string v3, "PersonaManagerService"

    const/4 v4, 0x1

    if-eqz p1, :cond_70

    .line 2400
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_70

    const-string v5, "com.samsung.android.knox.containeragent"

    .line 2401
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_54

    const-string v5, "com.samsung.android.knox.containercore"

    .line 2402
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 2403
    :cond_54
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$fgetmContext(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-nez v5, :cond_61

    return-void

    .line 2405
    :cond_61
    invoke-virtual {v5, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_70

    const-string v6, "enable container critical app !"

    .line 2407
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    invoke-virtual {v5, p1, v4, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 2413
    :cond_70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v1, -0x2710

    const-string v5, "android.intent.extra.user_handle"

    if-nez p1, :cond_c4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_89

    goto :goto_c4

    .line 2434
    :cond_89
    :try_start_89
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 2435
    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-nez p2, :cond_117

    .line 2437
    iget-object p2, p0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mgetPersonaManager(Lcom/android/server/pm/PersonaManagerService;)Lcom/samsung/android/knox/SemPersonaManager;

    move-result-object p2

    invoke-virtual {p2, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object p2

    .line 2438
    :goto_a1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_117

    .line 2439
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2440
    invoke-static {p1, v0}, Lcom/android/server/knox/ContainerDependencyWrapper;->isRequiredAppForKnox(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_bc

    .line 2442
    iget-object v1, p0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$minstallExistingPackageForPersona(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_bc} :catch_bf

    :cond_bc
    add-int/lit8 v2, v2, 0x1

    goto :goto_a1

    :catch_bf
    move-exception p0

    .line 2447
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_117

    .line 2415
    :cond_c4
    :goto_c4
    :try_start_c4
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 2416
    invoke-virtual {p2, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 2417
    invoke-static {p1, p2}, Lcom/android/server/knox/ContainerDependencyWrapper;->isDisallowedAppForKnox(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 2419
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mdeletePkg(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)Z

    .line 2422
    :cond_db
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_117

    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$misPackageInstalledAsUser(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 2423
    iget-object v0, p0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$misStubApp(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 2425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete stub app. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2426
    iget-object p0, p0, Lcom/android/server/pm/PersonaManagerService$5;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {p0, p2, p1}, Lcom/android/server/pm/PersonaManagerService;->-$$Nest$mdeletePkg(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)Z
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_112} :catch_113

    goto :goto_117

    :catch_113
    move-exception p0

    .line 2430
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_117
    :goto_117
    return-void
.end method
