.class public Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.super Ljava/lang/Object;
.source "ActivityMetricsLaunchObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityMetricsLaunchObserver$Temperature;
    }
.end annotation


# static fields
.field public static final TEMPERATURE_COLD:I = 0x1

.field public static final TEMPERATURE_HOT:I = 0x3

.field public static final TEMPERATURE_WARM:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityLaunchCancelled(J)V
    .registers 3

    return-void
.end method

.method public onActivityLaunchFinished(JLandroid/content/ComponentName;J)V
    .registers 6

    return-void
.end method

.method public onActivityLaunched(JLandroid/content/ComponentName;I)V
    .registers 5

    return-void
.end method

.method public onIntentFailed(J)V
    .registers 3

    return-void
.end method

.method public onIntentStarted(Landroid/content/Intent;J)V
    .registers 4

    return-void
.end method

.method public onReportFullyDrawn(JJ)V
    .registers 5

    return-void
.end method
