.class Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "ResumePackageChangedEG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsageStatsWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;


# direct methods
.method private constructor <init>(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;)V
    .registers 2

    .line 18
    iput-object p1, p0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher;->this$0:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher;-><init>(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;)V

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 25
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher;->this$0:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;

    invoke-static {v1}, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;->-$$Nest$fgetmPrevPackageName(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 26
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher;->this$0:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;

    invoke-static {v1, v0}, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;->-$$Nest$fputmPrevPackageName(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;Ljava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher;->this$0:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;

    new-instance v2, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    invoke-direct {v2, v0}, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;->setLastEvent(Lcom/android/server/ssrm/common/IEvent;)V

    .line 28
    iget-object v1, p0, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG$UsageStatsWatcher;->this$0:Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;

    invoke-virtual {v1}, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedEG;->notifyReceivers()V

    .line 30
    :cond_24
    return-void
.end method

.method public noteStopComponent(Landroid/content/ComponentName;Landroid/content/Intent;II)V
    .registers 5
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "instanceId"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method
