.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;
.super Ljava/lang/Object;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 485
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public binderWithCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V
    .registers 2

    .line 481
    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public getDexLaumcherConfiguration()Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;
    .registers 2

    .line 470
    new-instance v0, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/custom/DeXLauncherConfigurationInternal;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 1

    .line 454
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    return-object p0
.end method

.method public getKLM()Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    .registers 1

    .line 474
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateKnoxCustom()Lcom/samsung/android/knox/custom/PrivateKnoxCustom;
    .registers 1

    .line 478
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/PrivateKnoxCustom;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/custom/PrivateKnoxCustom;

    move-result-object p0

    return-object p0
.end method

.method public getStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2

    .line 446
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .registers 1

    .line 489
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method

.method public getWindowManagerService()Landroid/view/IWindowManager;
    .registers 1

    .line 493
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    return-object p0
.end method

.method public getlauncherConfiguration()Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;
    .registers 2

    .line 450
    new-instance v0, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;

    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/custom/LauncherConfigurationInternal;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public settingsGlobalPutInt(Ljava/lang/String;I)V
    .registers 3

    .line 458
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public settingsSecurePutInt(Ljava/lang/String;I)V
    .registers 3

    .line 462
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public settingsSecurePutString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 466
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
