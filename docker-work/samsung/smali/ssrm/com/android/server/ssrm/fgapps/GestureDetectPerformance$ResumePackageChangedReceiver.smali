.class Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$ResumePackageChangedReceiver;
.super Lcom/android/server/ssrm/common/callback/foreground/AResumePackageChangedER;
.source "GestureDetectPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResumePackageChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    .line 199
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$ResumePackageChangedReceiver;->this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/callback/foreground/AResumePackageChangedER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 2

    .line 199
    check-cast p1, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$ResumePackageChangedReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V
    .registers 3
    .param p1, "event"    # Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    .line 202
    if-eqz p1, :cond_7

    .line 203
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$ResumePackageChangedReceiver;->this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-static {v0, p1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->-$$Nest$fputresumePackageChangedE(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V

    .line 205
    :cond_7
    return-void
.end method
