.class Lcom/android/server/ssrm/CustomFrequencyManagerService$6;
.super Landroid/app/IProcessObserver$Stub;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 1373
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$6;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 1375
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 1378
    return-void
.end method

.method public onProcessDied(II)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1382
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$6;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeHyPerRelease(II)V

    .line 1383
    return-void
.end method
