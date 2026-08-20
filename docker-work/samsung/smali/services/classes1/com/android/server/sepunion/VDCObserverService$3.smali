.class public Lcom/android/server/sepunion/VDCObserverService$3;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "VDCObserverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/VDCObserverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/VDCObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/VDCObserverService;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$3;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 239
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$3;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    const/4 p2, 0x2

    invoke-static {p0, p2, p4, p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/VDCObserverService;IILandroid/content/ComponentName;)V

    :cond_8
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 231
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$3;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    const/4 p2, 0x1

    invoke-static {p0, p2, p4, p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/VDCObserverService;IILandroid/content/ComponentName;)V

    :cond_8
    return-void
.end method

.method public noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_9

    .line 247
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$3;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    const/16 p2, 0x17

    invoke-static {p0, p2, p4, p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$mhandleUsageStatsChanged(Lcom/android/server/sepunion/VDCObserverService;IILandroid/content/ComponentName;)V

    :cond_9
    return-void
.end method
