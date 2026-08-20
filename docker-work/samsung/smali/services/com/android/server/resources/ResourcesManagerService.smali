.class public Lcom/android/server/resources/ResourcesManagerService;
.super Lcom/android/server/SystemService;
.source "ResourcesManagerService.java"


# instance fields
.field public mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field public final mService:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmActivityManagerService(Lcom/android/server/resources/ResourcesManagerService;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/resources/ResourcesManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 52
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance p1, Lcom/android/server/resources/ResourcesManagerService$1;

    invoke-direct {p1, p0}, Lcom/android/server/resources/ResourcesManagerService$1;-><init>(Lcom/android/server/resources/ResourcesManagerService;)V

    iput-object p1, p0, Lcom/android/server/resources/ResourcesManagerService;->mService:Landroid/os/IBinder;

    const-string/jumbo v0, "resources"

    .line 53
    invoke-virtual {p0, v0, p1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 1

    return-void
.end method

.method public setActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .line 100
    iput-object p1, p0, Lcom/android/server/resources/ResourcesManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method
