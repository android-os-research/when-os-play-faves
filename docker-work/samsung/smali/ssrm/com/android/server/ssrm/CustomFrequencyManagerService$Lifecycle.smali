.class public Lcom/android/server/ssrm/CustomFrequencyManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mCfms:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 391
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 392
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 2
    .param p1, "phase"    # I

    .line 402
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 396
    new-instance v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-virtual {p0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$Lifecycle;->mCfms:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 397
    const-string v1, "CustomFrequencyManagerService"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 398
    return-void
.end method
