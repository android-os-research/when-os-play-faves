.class public final Lcom/android/server/attention/AttentionManagerService$LocalService;
.super Landroid/attention/AttentionManagerInternal;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 2

    .line 512
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-direct {p0}, Landroid/attention/AttentionManagerInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$LocalService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$LocalService;-><init>(Lcom/android/server/attention/AttentionManagerService;)V

    return-void
.end method


# virtual methods
.method public cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V
    .registers 2

    .line 525
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    return-void
.end method

.method public checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z
    .registers 4

    .line 520
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/attention/AttentionManagerService;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    move-result p0

    return p0
.end method

.method public isAttentionServiceSupported()Z
    .registers 1

    .line 515
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-boolean p0, p0, Lcom/android/server/attention/AttentionManagerService;->mIsServiceEnabled:Z

    return p0
.end method

.method public onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z
    .registers 2

    .line 531
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->onStartProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)Z

    move-result p0

    return p0
.end method

.method public onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V
    .registers 2

    .line 536
    iget-object p0, p0, Lcom/android/server/attention/AttentionManagerService$LocalService;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/attention/AttentionManagerService;->onStopProximityUpdates(Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V

    return-void
.end method
