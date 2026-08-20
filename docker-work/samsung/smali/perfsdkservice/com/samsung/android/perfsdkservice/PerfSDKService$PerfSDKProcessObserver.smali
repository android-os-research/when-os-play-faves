.class Lcom/samsung/android/perfsdkservice/PerfSDKService$PerfSDKProcessObserver;
.super Landroid/app/IProcessObserver$Stub;
.source "PerfSDKService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/perfsdkservice/PerfSDKService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerfSDKProcessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/perfsdkservice/PerfSDKService;


# direct methods
.method constructor <init>(Lcom/samsung/android/perfsdkservice/PerfSDKService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/perfsdkservice/PerfSDKService;

    .line 170
    iput-object p1, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService$PerfSDKProcessObserver;->this$0:Lcom/samsung/android/perfsdkservice/PerfSDKService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 173
    if-eqz p3, :cond_7

    .line 174
    iget-object v0, p0, Lcom/samsung/android/perfsdkservice/PerfSDKService$PerfSDKProcessObserver;->this$0:Lcom/samsung/android/perfsdkservice/PerfSDKService;

    invoke-virtual {v0}, Lcom/samsung/android/perfsdkservice/PerfSDKService;->getForegroundPackagename()Ljava/lang/String;

    .line 179
    :cond_7
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 189
    return-void
.end method
