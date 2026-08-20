.class public final Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;
.super Lcom/android/server/SystemService;
.source "EnterpriseDeviceManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field public mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 318
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 319
    new-instance v0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 2

    .line 336
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$msystemReady(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 326
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(I)V
    .registers 3

    .line 345
    iget-object v0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-static {v0, p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$monStartUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;I)V

    .line 346
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$mupdateCurrentUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    .line 364
    iget-object p0, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl$Lifecycle;->mService:Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;

    invoke-static {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;->-$$Nest$mupdateCurrentUser(Lcom/android/server/enterprise/EnterpriseDeviceManagerServiceImpl;)V

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    return-void
.end method
