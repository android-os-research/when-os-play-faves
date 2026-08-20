.class public Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;
.super Ljava/lang/Object;
.source "LocalDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestDisplayStateLocked(IFFILjava/util/ArrayList;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

.field public final synthetic val$brightnessChanged:Z

.field public final synthetic val$brightnessState:F

.field public final synthetic val$displayStateListeners:Ljava/util/ArrayList;

.field public final synthetic val$displayType:I

.field public final synthetic val$eventTime:J

.field public final synthetic val$oldState:I

.field public final synthetic val$physicalDisplayId:J

.field public final synthetic val$sdrBrightnessState:F

.field public final synthetic val$state:I

.field public final synthetic val$stateChanged:Z

.field public final synthetic val$stateLimit:I

.field public final synthetic val$stateLimitChanged:Z

.field public final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;ZZILjava/util/ArrayList;IJZFFIIJLandroid/os/IBinder;)V
    .registers 20

    move-object v0, p0

    move-object v1, p1

    .line 920
    iput-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    move v1, p2

    iput-boolean v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateChanged:Z

    move v1, p3

    iput-boolean v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateLimitChanged:Z

    move v1, p4

    iput v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateLimit:I

    move-object v1, p5

    iput-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayStateListeners:Ljava/util/ArrayList;

    move v1, p6

    iput v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    move-wide v1, p7

    iput-wide v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    move v1, p9

    iput-boolean v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    move v1, p10

    iput v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    move v1, p11

    iput v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    move v1, p12

    iput v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    move/from16 v1, p13

    iput v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    move-wide/from16 v1, p14

    iput-wide v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$eventTime:J

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final backlightToNits(F)F
    .registers 2

    .line 1164
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result p0

    return p0
.end method

.method public final brightnessToBacklight(F)F
    .registers 4

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_6

    return v0

    .line 1159
    :cond_6
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromBrightness(F)F

    move-result p0

    return p0
.end method

.method public run()V
    .registers 8

    .line 924
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I

    move-result v0

    .line 925
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateChanged:Z

    const/4 v2, 0x2

    if-nez v1, :cond_f

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateLimitChanged:Z

    if-eqz v1, :cond_29

    .line 926
    :cond_f
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateLimit:I

    if-ne v1, v2, :cond_14

    move v0, v2

    .line 929
    :cond_14
    sget-object v1, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteListenerStart()V

    .line 930
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayStateListeners:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I

    move-result v5

    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    invoke-static {v3, v4, v5, v0, v6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$mnotifyStateChangeStart(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Ljava/util/ArrayList;III)V

    .line 932
    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteListenerEnd()V

    .line 937
    :cond_29
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateLimitChanged:Z

    if-eqz v1, :cond_4b

    .line 938
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateLimit:I

    if-eq v1, v2, :cond_3b

    .line 949
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    goto :goto_3e

    .line 940
    :cond_3b
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 954
    :goto_3e
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayStateListeners:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I

    move-result v4

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    invoke-static {v1, v3, v4, v0, v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$mnotifyStateChangeFinish(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Ljava/util/ArrayList;III)V

    .line 959
    :cond_4b
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateLimit:I

    if-eqz v1, :cond_b6

    .line 960
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateChanged:Z

    if-eqz v1, :cond_9c

    .line 961
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display_state_limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateLimit:I

    .line 962
    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ) is limited, pending current request. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I

    move-result v2

    .line 964
    invoke-static {v2}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalDisplayAdapter"

    .line 961
    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateLimitChanged:Z

    if-nez v1, :cond_9c

    .line 968
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayStateListeners:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I

    move-result v3

    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$mnotifyStateChangeFinish(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Ljava/util/ArrayList;III)V

    .line 975
    :cond_9c
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    if-eqz v0, :cond_b5

    .line 976
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayBrightness(FF)V

    .line 977
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    invoke-static {v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmBrightnessState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V

    .line 978
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    invoke-static {v0, p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmSdrBrightnessState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V

    :cond_b5
    return-void

    .line 986
    :cond_b6
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    .line 987
    invoke-static {v1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v3

    const/4 v4, 0x3

    if-nez v3, :cond_c3

    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-nez v3, :cond_f3

    .line 989
    :cond_c3
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-static {v3}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v3

    if-nez v3, :cond_e0

    .line 990
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 991
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    .line 993
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayStateListeners:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I

    move-result v4

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    invoke-static {v1, v3, v4, v0, v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$mnotifyStateChangeFinish(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Ljava/util/ArrayList;III)V

    goto :goto_fd

    .line 996
    :cond_e0
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    const/4 v5, 0x4

    if-eq v3, v5, :cond_f9

    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$oldState:I

    if-ne v6, v5, :cond_ea

    goto :goto_f9

    :cond_ea
    const/4 v4, 0x6

    if-eq v3, v4, :cond_f5

    if-ne v6, v4, :cond_f0

    goto :goto_f5

    :cond_f0
    if-eqz v6, :cond_f3

    return-void

    :cond_f3
    move v2, v1

    goto :goto_fd

    .line 1002
    :cond_f5
    :goto_f5
    invoke-virtual {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    goto :goto_fd

    .line 998
    :cond_f9
    :goto_f9
    invoke-virtual {p0, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    move v2, v4

    .line 1016
    :goto_fd
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-eq v1, v5, :cond_106

    if-ne v2, v5, :cond_10d

    :cond_106
    if-ne v2, v1, :cond_10f

    iget-boolean v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateLimitChanged:Z

    if-eqz v6, :cond_10d

    goto :goto_10f

    :cond_10d
    move v3, v4

    goto :goto_115

    :cond_10f
    :goto_10f
    if-ne v1, v5, :cond_112

    move v4, v3

    .line 1019
    :cond_112
    invoke-virtual {p0, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setVrMode(Z)V

    .line 1028
    :goto_115
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessChanged:Z

    if-nez v1, :cond_11b

    if-eqz v3, :cond_130

    .line 1030
    :cond_11b
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    invoke-virtual {p0, v1, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayBrightness(FF)V

    .line 1031
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$brightnessState:F

    invoke-static {v1, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmBrightnessState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V

    .line 1032
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$sdrBrightnessState:F

    invoke-static {v1, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmSdrBrightnessState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V

    .line 1036
    :cond_130
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$state:I

    if-eq v1, v2, :cond_144

    .line 1037
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->setDisplayState(I)V

    .line 1039
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayStateListeners:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I

    move-result v3

    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$displayType:I

    invoke-static {v1, v2, v3, v0, p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$mnotifyStateChangeFinish(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Ljava/util/ArrayList;III)V

    :cond_144
    return-void
.end method

.method public final setDisplayBrightness(FF)V
    .registers 11

    .line 1112
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_91

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_91

    .line 1115
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmLastBrightnessRequestedTime(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;J)V

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayBrightness(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", brightnessState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", sdrBrightnessState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1129
    :try_start_46
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->brightnessToBacklight(F)F

    move-result v0

    .line 1130
    invoke-virtual {p0, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->brightnessToBacklight(F)F

    move-result v3

    .line 1132
    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->backlightToNits(F)F

    move-result v4

    .line 1133
    invoke-virtual {p0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->backlightToNits(F)F

    move-result v5

    .line 1136
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6d

    .line 1137
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmBacklightAdapter(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    move-result-object p0

    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->setLowPersistentBacklight(IF)V

    goto :goto_76

    .line 1139
    :cond_6d
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmBacklightAdapter(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    move-result-object p0

    invoke-virtual {p0, v3, v5, v0, v4}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->setBacklight(FFFF)V

    :goto_76
    const-string p0, "ScreenBrightness"

    .line 1145
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    .line 1143
    invoke-static {v1, v2, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    const-string p0, "SdrScreenBrightness"

    .line 1148
    invoke-static {p2}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result p1

    .line 1146
    invoke-static {v1, v2, p0, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V
    :try_end_88
    .catchall {:try_start_46 .. :try_end_88} :catchall_8c

    .line 1151
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_8c
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1152
    throw p0

    :cond_91
    :goto_91
    return-void
.end method

.method public final setDisplayState(I)V
    .registers 11

    const-string v0, "display_state: "

    const-string v1, "LocalDisplayAdapter"

    .line 1063
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z

    move-result v2

    const-wide/32 v3, 0x20000

    if-eqz v2, :cond_2c

    const-string v2, "SidekickInternal#endDisplayControl"

    .line 1064
    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1067
    :try_start_14
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmSidekickInternal(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/sidekick/SidekickInternal;->endDisplayControl()V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_27

    .line 1069
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1071
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)V

    goto :goto_2c

    :catchall_27
    move-exception p0

    .line 1069
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1070
    throw p0

    .line 1073
    :cond_2c
    :goto_2c
    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->getPowerModeForState(I)I

    move-result v2

    .line 1074
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDisplayState(id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1074
    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1079
    :try_start_58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmRequestedState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)I

    move-result v7

    invoke-static {v7}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (id:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$physicalDisplayId:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1080
    iget-boolean v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateLimitChanged:Z

    if-eqz v7, :cond_9b

    .line 1081
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ",L:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$stateLimit:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9d

    :cond_9b
    const-string v7, ""

    :goto_9d
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1079
    invoke-static {v1, v5}, Lcom/android/server/power/Slog;->dk(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v5, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmRequestedState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;I)V

    .line 1085
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->start()Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;

    move-result-object v5

    const/4 v6, 0x2

    if-ne p1, v6, :cond_bb

    .line 1086
    sget-object v7, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {v7}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteDisplayStart()V

    .line 1087
    :cond_bb
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    iget-object v7, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v7}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->val$token:Landroid/os/IBinder;

    invoke-virtual {v7, v8, v2}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDisplayPowerMode(Landroid/os/IBinder;I)V

    if-ne p1, v6, :cond_cf

    .line 1088
    sget-object v6, Lcom/android/server/power/PowerManagerUtil;->sCurrentScreenOnProfiler:Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;

    invoke-virtual {v6}, Lcom/android/server/power/PowerManagerUtil$ScreenOnProfiler;->noteDisplayEnd()V

    .line 1089
    :cond_cf
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Lcom/android/server/power/PowerManagerUtil$StopwatchLogger;->dk(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DisplayPowerMode"

    .line 1091
    invoke-static {v3, v4, v0, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V
    :try_end_ea
    .catchall {:try_start_58 .. :try_end_ea} :catchall_122

    .line 1093
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1097
    invoke-static {p1}, Landroid/view/Display;->isSuspendedState(I)Z

    move-result v0

    if-eqz v0, :cond_121

    const/4 v0, 0x1

    if-eq p1, v0, :cond_121

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmSidekickInternal(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v0

    if-eqz v0, :cond_121

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z

    move-result v0

    if-nez v0, :cond_121

    const-string v0, "SidekickInternal#startDisplayControl"

    .line 1099
    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1102
    :try_start_10b
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmSidekickInternal(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/sidekick/SidekickInternal;->startDisplayControl(I)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fputmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)V
    :try_end_118
    .catchall {:try_start_10b .. :try_end_118} :catchall_11c

    .line 1104
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_121

    :catchall_11c
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1105
    throw p0

    :cond_121
    :goto_121
    return-void

    :catchall_122
    move-exception p0

    .line 1093
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 1094
    throw p0
.end method

.method public final setVrMode(Z)V
    .registers 2

    .line 1051
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;->this$1:Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->-$$Nest$fgetmBacklightAdapter(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->setVrMode(Z)V

    return-void
.end method
