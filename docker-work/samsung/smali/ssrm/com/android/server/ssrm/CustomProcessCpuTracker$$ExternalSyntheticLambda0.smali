.class public final synthetic Lcom/android/server/ssrm/CustomProcessCpuTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/os/KernelCpuUidTimeReader$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ssrm/CustomProcessCpuTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ssrm/CustomProcessCpuTracker;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    return-void
.end method


# virtual methods
.method public final onUidCpuTime(ILjava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/ssrm/CustomProcessCpuTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/ssrm/CustomProcessCpuTracker;

    check-cast p2, [J

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ssrm/CustomProcessCpuTracker;->lambda$collectCcuStats$0$com-android-server-ssrm-CustomProcessCpuTracker(I[J)V

    return-void
.end method
