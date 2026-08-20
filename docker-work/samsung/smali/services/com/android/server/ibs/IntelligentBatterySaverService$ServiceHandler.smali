.class public Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;
.super Landroid/os/Handler;
.source "IntelligentBatterySaverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverService;Landroid/os/Looper;)V
    .registers 3

    .line 187
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    .line 188
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 193
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v0, :cond_f

    if-eq p1, v1, :cond_9

    goto :goto_2d

    .line 203
    :cond_9
    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-static {p0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->-$$Nest$mforceResetEveryPolicy(Lcom/android/server/ibs/IntelligentBatterySaverService;)V

    goto :goto_2d

    .line 195
    :cond_f
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverService;->-$$Nest$fgetmServiceHandler(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 197
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverService;->-$$Nest$fgetmIBSScpmManager(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    move-result-object p1

    if-eqz p1, :cond_2d

    .line 198
    iget-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverService;->-$$Nest$fgetmIBSScpmManager(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    iget-object p0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService;->mIBSFastDrainPolicy:Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;

    invoke-virtual {p1, p0}, Lcom/android/server/ibs/IntelligentBatterySaverScpmManager;->updateSCPMParametersFromDB(Lcom/android/server/ibs/IntelligentBatterySaverFastDrainPolicy;)V

    :cond_2d
    :goto_2d
    return-void
.end method
