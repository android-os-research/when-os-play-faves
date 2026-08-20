.class public Lcom/android/server/cover/CoverManagerService;
.super Lcom/android/server/SystemService;
.source "CoverManagerService.java"


# static fields
.field public static final SEM_COVER_SERVICE:Ljava/lang/String; = "cover"


# instance fields
.field public final mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-direct {v0, p1}, Lcom/android/server/cover/CoverManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    const/16 v0, 0x258

    if-ne p1, v0, :cond_9

    .line 55
    iget-object p0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-virtual {p0}, Lcom/android/server/cover/CoverManagerServiceImpl;->systemRunning()V

    :cond_9
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerService;->mCoverManagerServiceImpl:Lcom/android/server/cover/CoverManagerServiceImpl;

    const-string v1, "cover"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
