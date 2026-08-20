.class public final Lcom/android/server/restrictions/RestrictionsManagerService;
.super Lcom/android/server/SystemService;
.source "RestrictionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "RestrictionsManagerService"


# instance fields
.field public final mRestrictionsManagerImpl:Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;-><init>(Lcom/android/server/restrictions/RestrictionsManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService;->mRestrictionsManagerImpl:Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 2

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/server/SystemService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService;->mRestrictionsManagerImpl:Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;

    const-string/jumbo v1, "restrictions"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
