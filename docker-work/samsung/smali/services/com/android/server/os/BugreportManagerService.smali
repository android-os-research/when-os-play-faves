.class public Lcom/android/server/os/BugreportManagerService;
.super Lcom/android/server/SystemService;
.source "BugreportManagerService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "BugreportManagerService"


# instance fields
.field public mService:Lcom/android/server/os/BugreportManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .line 39
    new-instance v0, Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/os/BugreportManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/os/BugreportManagerService;->mService:Lcom/android/server/os/BugreportManagerServiceImpl;

    const-string v1, "bugreport"

    .line 40
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
