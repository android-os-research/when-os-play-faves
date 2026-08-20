.class Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;
.super Lcom/android/server/ssrm/common/callback/foreground/AResumePackageChangedER;
.source "ListScrollPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/ListScrollPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResumePackageChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    .line 120
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;->this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/callback/foreground/AResumePackageChangedER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 2

    .line 120
    check-cast p1, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V
    .registers 4
    .param p1, "event"    # Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    .line 123
    if-eqz p1, :cond_14

    .line 124
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;->this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    invoke-static {v0, p1}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->-$$Nest$fputresumePackageChangedE(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ResumePackageChangedReceiver;->this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->-$$Nest$fgetresumePackageChangedE(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;->getResumedPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->onChanged(Ljava/lang/String;)V

    .line 127
    :cond_14
    return-void
.end method
