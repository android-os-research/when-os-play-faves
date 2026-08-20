.class public Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;
.super Ljava/lang/Object;
.source "ResumeOnRebootServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceCallback;,
        Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;
    }
.end annotation


# static fields
.field public static final PROP_ROR_PROVIDER_PACKAGE:Ljava/lang/String; = "persist.sys.resume_on_reboot_provider_package"

.field public static final PROVIDER_PACKAGE:Ljava/lang/String;

.field public static final PROVIDER_REQUIRED_PERMISSION:Ljava/lang/String; = "android.permission.BIND_RESUME_ON_REBOOT_SERVICE"

.field public static final TAG:Ljava/lang/String; = "ResumeOnRebootServiceProvider"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string/jumbo v0, "ota"

    const-string/jumbo v1, "resume_on_reboot_service_package"

    const-string v2, ""

    .line 53
    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;->PROVIDER_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getServiceConnection()Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;
    .registers 4

    .line 105
    invoke-virtual {p0}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;->resolveService()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 109
    :cond_8
    new-instance v2, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;

    iget-object p0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/server/locksettings/ResumeOnRebootServiceProvider$ResumeOnRebootServiceConnection-IA;)V

    return-object v2
.end method

.method public final resolveService()Landroid/content/pm/ServiceInfo;
    .registers 5

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.service.resumeonreboot.ResumeOnRebootService"

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "persist.sys.resume_on_reboot_provider_package"

    const-string v2, ""

    .line 81
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_34

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using test app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ResumeOnRebootServiceProvider"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x4

    goto :goto_44

    :cond_34
    const v1, 0x100004

    .line 87
    sget-object v3, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;->PROVIDER_PACKAGE:Ljava/lang/String;

    if-eqz v3, :cond_44

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_44

    .line 88
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    :cond_44
    :goto_44
    iget-object p0, p0, Lcom/android/server/locksettings/ResumeOnRebootServiceProvider;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 93
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 94
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v1, :cond_4e

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v2, "android.permission.BIND_RESUME_ON_REBOOT_SERVICE"

    .line 95
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 96
    iget-object p0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0

    :cond_6b
    const/4 p0, 0x0

    return-object p0
.end method
