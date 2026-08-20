.class public Lcom/android/server/SystemConfigService;
.super Lcom/android/server/SystemService;
.source "SystemConfigService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInterface:Landroid/os/ISystemConfig$Stub;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/SystemConfigService;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/SystemConfigService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 107
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Lcom/android/server/SystemConfigService$1;

    invoke-direct {v0, p0}, Lcom/android/server/SystemConfigService$1;-><init>(Lcom/android/server/SystemConfigService;)V

    iput-object v0, p0, Lcom/android/server/SystemConfigService;->mInterface:Landroid/os/ISystemConfig$Stub;

    .line 108
    iput-object p1, p0, Lcom/android/server/SystemConfigService;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 113
    iget-object v0, p0, Lcom/android/server/SystemConfigService;->mInterface:Landroid/os/ISystemConfig$Stub;

    const-string/jumbo v1, "system_config"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
