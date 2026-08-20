.class public Lcom/android/server/am/ActivityManagerService$Injector;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mNmi:Lcom/android/server/NetworkManagementInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 21292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21293
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final ensureHasNetworkManagementInternal()Z
    .registers 2

    .line 21323
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    if-nez v0, :cond_e

    .line 21324
    const-class v0, Lcom/android/server/NetworkManagementInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/NetworkManagementInternal;

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    .line 21326
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public getAppOpsService(Ljava/io/File;Landroid/os/Handler;)Lcom/android/server/appop/AppOpsService;
    .registers 4

    .line 21301
    new-instance v0, Lcom/android/server/appop/AppOpsService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$Injector;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/appop/AppOpsService;-><init>(Ljava/io/File;Landroid/os/Handler;Landroid/content/Context;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 21297
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getProcessList(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ProcessList;
    .registers 2

    .line 21319
    new-instance p0, Lcom/android/server/am/ProcessList;

    invoke-direct {p0}, Lcom/android/server/am/ProcessList;-><init>()V

    return-object p0
.end method

.method public getUiHandler(Lcom/android/server/am/ActivityManagerService;)Landroid/os/Handler;
    .registers 2

    .line 21305
    new-instance p0, Lcom/android/server/am/ActivityManagerService$UiHandler;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$UiHandler;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-object p0
.end method

.method public isNetworkRestrictedForUid(I)Z
    .registers 3

    .line 21309
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService$Injector;->ensureHasNetworkManagementInternal()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 21310
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$Injector;->mNmi:Lcom/android/server/NetworkManagementInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementInternal;->isNetworkRestrictedForUid(I)Z

    move-result p0

    return p0

    :cond_d
    const/4 p0, 0x0

    return p0
.end method
