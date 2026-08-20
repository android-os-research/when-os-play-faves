.class public Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageChangeIntentReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 2

    .line 2253
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const-string p1, "android.intent.action.PACKAGE_REMOVED"

    .line 2257
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v0, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mgetPackageName(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 2258
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2259
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v2

    if-eqz v0, :cond_130

    .line 2262
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_130

    if-eqz v1, :cond_130

    .line 2263
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_130

    .line 2264
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2c} :catch_12c

    const-string v4, "ApplicationPolicy"

    const/4 v5, 0x0

    if-eqz v3, :cond_9c

    .line 2265
    :try_start_31
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    .line 2266
    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v3

    const-string v6, "android.intent.extra.REPLACING"

    const/4 v7, 0x0

    .line 2267
    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 2269
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_46
    :goto_46
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_87

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 2270
    new-instance v9, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v9, v8}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2271
    iget-object v10, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v10, v9, v0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[Lcom/samsung/android/knox/application/ManagedAppInfo;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    move-result-object v9

    if-eqz v9, :cond_46

    .line 2272
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v10, "applicationUninstallationCount"

    invoke-static {v9, v8, v0, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mupdateCount(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    if-nez v6, :cond_46

    .line 2275
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v9, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misSystemApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_46

    .line 2276
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v10, 0x2

    invoke-static {v9, v0, v8, v10, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$msetApplicationPkgNameControlState(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z

    .line 2278
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/high16 v10, 0x1000000

    invoke-static {v9, v0, v8, v10, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$msetApplicationPkgNameControlState(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z

    const-string v8, "App removed, clear masks"

    .line 2281
    invoke-static {v4, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    :cond_87
    if-nez v6, :cond_11c

    .line 2286
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_11c

    .line 2287
    iget-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mreconcileRuntimePermissionsOnUninstallation(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V

    goto/16 :goto_11c

    :cond_9c
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    .line 2290
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_be

    .line 2291
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_11c

    iget-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p2, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misSystemApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_11c

    .line 2292
    iget-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p2, v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mreconcileRuntimePermissionsOnInstallation(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V

    goto :goto_11c

    :cond_be
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    .line 2294
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11c

    .line 2295
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$fgetmEdmStorageProvider(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 2297
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d4
    :goto_d4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_fe

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2298
    new-instance v7, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v7, v6}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2299
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v8, v7, v0, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[Lcom/samsung/android/knox/application/ManagedAppInfo;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    move-result-object v7

    if-eqz v7, :cond_d4

    .line 2300
    iget-object v7, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v8, "applicationInstallationCount"

    invoke-static {v7, v6, v0, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mupdateCount(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    const-string v6, "App install count incremented"

    .line 2301
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4

    .line 2305
    :cond_fe
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misSystemApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 2306
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v3, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mupdateSystemAppDisableState(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V

    .line 2309
    :cond_10b
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$misDualApp(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result p2

    if-nez p2, :cond_11c

    .line 2310
    iget-object p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p2, v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mreconcileRuntimePermissionsOnInstallation(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V

    .line 2314
    :cond_11c
    :goto_11c
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_130

    .line 2315
    iget-object p0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {p0, v0, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mgetProvidersFromPackage(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mrefreshWidgetStatus(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/util/List;I)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_12b} :catch_12c

    goto :goto_130

    :catch_12c
    move-exception p0

    .line 2320
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_130
    :goto_130
    return-void
.end method
