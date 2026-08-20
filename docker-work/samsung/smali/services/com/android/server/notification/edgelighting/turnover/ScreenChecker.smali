.class public Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;
.super Ljava/lang/Object;
.source "ScreenChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ScreenChecker"


# instance fields
.field public mLastSensorValue:Z

.field public mListener:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 2

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mLastSensorValue:Z

    return-void
.end method

.method public isRunning()Z
    .registers 1

    .line 104
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mListener:Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public run(Lcom/android/server/notification/edgelighting/turnover/ScreenChecker$Listener;)V
    .registers 2

    const/4 p1, 0x0

    .line 72
    iput-boolean p1, p0, Lcom/android/server/notification/edgelighting/turnover/ScreenChecker;->mLastSensorValue:Z

    return-void
.end method
