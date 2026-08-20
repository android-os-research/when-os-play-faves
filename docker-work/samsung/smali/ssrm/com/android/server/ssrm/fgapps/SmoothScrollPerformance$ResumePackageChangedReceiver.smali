.class Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;
.super Lcom/android/server/ssrm/common/callback/foreground/AResumePackageChangedER;
.source "SmoothScrollPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResumePackageChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    .line 126
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;->this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/callback/foreground/AResumePackageChangedER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 2

    .line 126
    check-cast p1, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V
    .registers 4
    .param p1, "event"    # Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    .line 129
    if-eqz p1, :cond_14

    .line 130
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;->this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    invoke-static {v0, p1}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->-$$Nest$fputresumePackageChangedE(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$ResumePackageChangedReceiver;->this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->-$$Nest$fgetresumePackageChangedE(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;->getResumedPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->onChanged(Ljava/lang/String;)V

    .line 133
    :cond_14
    return-void
.end method
