.class public final Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;
.super Lcom/android/server/contentcapture/ContentCaptureManagerInternal;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/contentcapture/ContentCaptureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V
    .registers 2

    .line 908
    iput-object p1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    return-void
.end method


# virtual methods
.method public getOptionsForPackage(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;
    .registers 3

    .line 943
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->getOptions(ILjava/lang/String;)Landroid/content/ContentCaptureOptions;

    move-result-object p0

    return-object p0
.end method

.method public isContentCaptureServiceForUser(II)Z
    .registers 6

    .line 912
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 913
    :try_start_7
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledLocked(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 914
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_20

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "isContentCaptureServiceForUser() disabled!"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_20
    monitor-exit v0

    return v2

    .line 917
    :cond_22
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1800(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-eqz p0, :cond_32

    .line 919
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->isContentCaptureServiceForUserLocked(I)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 921
    :cond_32
    monitor-exit v0

    return v2

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public notifyActivityEvent(ILandroid/content/ComponentName;I)V
    .registers 6

    .line 949
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 950
    :try_start_7
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledLocked(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 951
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_1f

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "notifyActivityEvent() disabled!"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_1f
    monitor-exit v0

    return-void

    .line 954
    :cond_21
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2200(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-eqz p0, :cond_2e

    .line 956
    invoke-virtual {p0, p2, p3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onActivityEventLocked(Landroid/content/ComponentName;I)V

    .line 958
    :cond_2e
    monitor-exit v0

    return-void

    :catchall_30
    move-exception p0

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public sendActivityAssistData(ILandroid/os/IBinder;Landroid/os/Bundle;)Z
    .registers 7

    .line 928
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # getter for: Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$1900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 929
    :try_start_7
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledLocked(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 930
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    iget-boolean p0, p0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz p0, :cond_20

    invoke-static {}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "sendActivityAssistData() disabled!"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :cond_20
    monitor-exit v0

    return v2

    .line 933
    :cond_22
    iget-object p0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;->this$0:Lcom/android/server/contentcapture/ContentCaptureManagerService;

    # invokes: Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;
    invoke-static {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->access$2000(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p0

    check-cast p0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    if-eqz p0, :cond_32

    .line 935
    invoke-virtual {p0, p2, p3}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->sendActivityAssistDataLocked(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 937
    :cond_32
    monitor-exit v0

    return v2

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_7 .. :try_end_36} :catchall_34

    throw p0
.end method
