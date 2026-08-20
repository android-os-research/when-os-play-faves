.class Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;
.super Lcom/android/server/ssrm/common/callback/foreground/AResumePackageChangedER;
.source "DynamicLoadDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/DynamicLoadDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResumePackageChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/DynamicLoadDetector;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/DynamicLoadDetector;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/DynamicLoadDetector;

    .line 297
    iput-object p1, p0, Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/callback/foreground/AResumePackageChangedER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 2

    .line 297
    check-cast p1, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;)V
    .registers 4
    .param p1, "event"    # Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;

    .line 300
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/callback/foreground/ResumePackageChangedE;->getResumedPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/ssrm/DynamicLoadDetector;->mForegroundPackageName:Ljava/lang/String;

    .line 301
    invoke-static {}, Lcom/android/server/ssrm/DynamicLoadDetector;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 302
    sget-object v0, Lcom/android/server/ssrm/DynamicLoadDetector;->TAG:Ljava/lang/String;

    const-string v1, "ResumePackageChangedReceiver: onEventOccurred"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_15
    iget-object v0, p0, Lcom/android/server/ssrm/DynamicLoadDetector$ResumePackageChangedReceiver;->this$0:Lcom/android/server/ssrm/DynamicLoadDetector;

    invoke-virtual {v0}, Lcom/android/server/ssrm/DynamicLoadDetector;->onFgAppChanged()V

    .line 305
    return-void
.end method
