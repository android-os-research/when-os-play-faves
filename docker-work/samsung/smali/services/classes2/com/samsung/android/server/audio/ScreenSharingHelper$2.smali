.class public Lcom/samsung/android/server/audio/ScreenSharingHelper$2;
.super Lcom/samsung/android/server/audio/FrequentWorker;
.source "ScreenSharingHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/ScreenSharingHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/server/audio/FrequentWorker<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/ScreenSharingHelper;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-direct {p0}, Lcom/samsung/android/server/audio/FrequentWorker;-><init>()V

    const/16 p1, 0x3e8

    .line 122
    iput p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mPeriodMs:I

    .line 123
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/samsung/android/server/audio/FrequentWorker;->mCachedValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public func()Ljava/lang/Boolean;
    .registers 5

    .line 128
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 130
    :try_start_4
    iget-object v2, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {v2}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->-$$Nest$fgetmDisplayManager(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->semGetActiveDlnaDevice()Landroid/hardware/display/SemDlnaDevice;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_15

    .line 133
    invoke-virtual {v2}, Landroid/hardware/display/SemDlnaDevice;->getDlnaType()I

    move-result v3

    .line 136
    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->this$0:Lcom/samsung/android/server/audio/ScreenSharingHelper;

    invoke-static {p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper;->-$$Nest$fgetmIsDLNAEnabled(Lcom/samsung/android/server/audio/ScreenSharingHelper;)Z

    move-result p0

    if-eqz p0, :cond_27

    if-eqz v3, :cond_25

    const/4 p0, 0x2

    if-eq v3, p0, :cond_25

    const/4 p0, 0x3

    if-ne v3, p0, :cond_27

    :cond_25
    const/4 p0, 0x1

    goto :goto_28

    :cond_27
    const/4 p0, 0x0

    :goto_28
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_30

    .line 140
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_30
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    throw p0
.end method

.method public bridge synthetic func()Ljava/lang/Object;
    .registers 1

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/ScreenSharingHelper$2;->func()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
