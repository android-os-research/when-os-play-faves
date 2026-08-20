.class public Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
.super Lcom/android/server/usage/AppTimeLimitController$UsageGroup;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppUsageGroup"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method public constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V
    .registers 9

    .line 436
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 437
    invoke-direct/range {p0 .. p8}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onLimitReached()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 453
    invoke-super {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->onLimitReached()V

    .line 455
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    return-void
.end method

.method public remove()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 443
    invoke-super {p0}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->remove()V

    .line 444
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverAppRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    if-eqz v0, :cond_12

    .line 446
    iget p0, p0, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserverId:I

    invoke-virtual {v0, p0}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->removeAppUsageGroup(I)V

    :cond_12
    return-void
.end method
