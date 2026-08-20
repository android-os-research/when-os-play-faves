.class public final Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;
.super Landroid/os/IThermalEventListener$Stub;
.source "HighBrightnessModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/HighBrightnessModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SkinThermalStatusObserver"
.end annotation


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

.field public mStarted:Z

.field public mThermalService:Landroid/os/IThermalService;

.field public final synthetic this$0:Lcom/android/server/display/HighBrightnessModeController;


# direct methods
.method public static synthetic $r8$lambda$jle4RAfd1f0qorg84L_kZGMJ0zQ(Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;Landroid/os/Temperature;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->lambda$notifyThrottling$0(Landroid/os/Temperature;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/HighBrightnessModeController;Lcom/android/server/display/HighBrightnessModeController$Injector;Landroid/os/Handler;)V
    .registers 4

    .line 798
    iput-object p1, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-direct {p0}, Landroid/os/IThermalEventListener$Stub;-><init>()V

    .line 799
    iput-object p2, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    .line 800
    iput-object p3, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$notifyThrottling$0(Landroid/os/Temperature;)V
    .registers 4

    .line 811
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-virtual {p1}, Landroid/os/Temperature;->getStatus()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fgetmHbmData(Lcom/android/server/display/HighBrightnessModeController;)Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->thermalStatusLimit:I

    if-gt p1, v1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    invoke-static {v0, p1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fputmIsThermalStatusWithinLimit(Lcom/android/server/display/HighBrightnessModeController;Z)V

    .line 813
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    invoke-static {p0}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$mupdateHbmMode(Lcom/android/server/display/HighBrightnessModeController;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "  SkinThermalStatusObserver:"

    .line 857
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 859
    iget-object p0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    if-eqz p0, :cond_25

    const-string p0, "    ThermalService available"

    .line 860
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2a

    :cond_25
    const-string p0, "    ThermalService not available"

    .line 862
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2a
    return-void
.end method

.method public notifyThrottling(Landroid/os/Temperature;)V
    .registers 4

    .line 810
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;Landroid/os/Temperature;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startObserving()V
    .registers 4

    .line 818
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mStarted:Z

    if-eqz v0, :cond_5

    return-void

    .line 824
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mInjector:Lcom/android/server/display/HighBrightnessModeController$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/HighBrightnessModeController$Injector;->getThermalService()Landroid/os/IThermalService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    const-string v1, "HighBrightnessModeController"

    if-nez v0, :cond_17

    const-string p0, "Could not observe thermal status. Service not available"

    .line 826
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_17
    const/4 v2, 0x3

    .line 832
    :try_start_18
    invoke-interface {v0, p0, v2}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    const/4 v0, 0x1

    .line 833
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mStarted:Z
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_1f

    goto :goto_25

    :catch_1f
    move-exception p0

    const-string v0, "Failed to register thermal status listener"

    .line 835
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void
.end method

.method public stopObserving()V
    .registers 4

    .line 840
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->this$0:Lcom/android/server/display/HighBrightnessModeController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/HighBrightnessModeController;->-$$Nest$fputmIsThermalStatusWithinLimit(Lcom/android/server/display/HighBrightnessModeController;Z)V

    .line 841
    iget-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mStarted:Z

    if-nez v0, :cond_b

    return-void

    .line 848
    :cond_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    invoke-interface {v0, p0}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    const/4 v0, 0x0

    .line 849
    iput-boolean v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mStarted:Z
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "HighBrightnessModeController"

    const-string v2, "Failed to unregister thermal status listener"

    .line 851
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    const/4 v0, 0x0

    .line 853
    iput-object v0, p0, Lcom/android/server/display/HighBrightnessModeController$SkinThermalStatusObserver;->mThermalService:Landroid/os/IThermalService;

    return-void
.end method
