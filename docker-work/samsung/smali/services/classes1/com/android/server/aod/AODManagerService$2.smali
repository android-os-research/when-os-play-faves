.class public Lcom/android/server/aod/AODManagerService$2;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 199
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Lcom/android/server/aod/AODManagerService;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry updateAODTspState, mAODTspStateRetryCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v2}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmAODTspStateRetryCount(Lcom/android/server/aod/AODManagerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$maddAODTspLog(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;)V

    .line 200
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$2;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmIsAODModeEnabled(Lcom/android/server/aod/AODManagerService;)Z

    move-result v0

    const-string v1, "/sys/class/sec/tsp/cmd"

    invoke-static {p0, v1, v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$mupdateAODTspState(Lcom/android/server/aod/AODManagerService;Ljava/lang/String;Z)V

    return-void
.end method
