.class Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$1;
.super Landroid/database/ContentObserver;
.source "CustomFrequencyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->startObserving(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 1232
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$1;->this$1:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 1235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$1;->onChange(ZLandroid/net/Uri;)V

    .line 1236
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 1240
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver$1;->this$1:Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;->-$$Nest$mcheckRestrictionSetting(Lcom/android/server/ssrm/CustomFrequencyManagerService$PerformanceRestrictionObserver;)V

    .line 1241
    return-void
.end method
