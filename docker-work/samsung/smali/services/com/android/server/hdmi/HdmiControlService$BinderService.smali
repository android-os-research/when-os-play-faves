.class public final Lcom/android/server/hdmi/HdmiControlService$BinderService;
.super Landroid/hardware/hdmi/IHdmiControlService$Stub;
.source "HdmiControlService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BinderService"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public static synthetic $r8$lambda$owdB1AV81E3Glsxymmg_bhOPbu4(Ljava/lang/Integer;)I
    .registers 1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService$BinderService;->lambda$getAllowedCecSettingIntValues$0(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 2

    .line 1817
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlService$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Lcom/android/server/hdmi/HdmiControlService$BinderService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService;-><init>(Lcom/android/server/hdmi/HdmiControlService;)V

    return-void
.end method

.method public static synthetic lambda$getAllowedCecSettingIntValues$0(Ljava/lang/Integer;)I
    .registers 1

    .line 2591
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public addCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 4

    .line 2551
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$menforceAccessPermission(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2552
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$maddCecSettingChangeListener(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public addDeviceEventListener(Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V
    .registers 3

    .line 2048
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2049
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$maddDeviceEventListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiDeviceEventListener;)V

    return-void
.end method

.method public addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 3

    .line 2022
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2023
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    return-void
.end method

.method public addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 3

    .line 2008
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2009
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->addHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    return-void
.end method

.method public addHdmiMhlVendorCommandListener(Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V
    .registers 3

    .line 2401
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2402
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$maddHdmiMhlVendorCommandListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiMhlVendorCommandListener;)V

    return-void
.end method

.method public addHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 3

    .line 2036
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2037
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$maddHotplugEventListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method public addSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 3

    .line 2108
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2109
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$maddSystemAudioModeChangeListner(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method public addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V
    .registers 4

    .line 2257
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2258
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->addVendorCommandListener(Landroid/hardware/hdmi/IHdmiVendorCommandListener;I)V

    return-void
.end method

.method public askRemoteDeviceToBecomeActiveSource(I)V
    .registers 4

    .line 2179
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2180
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$11;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public canChangeSystemAudioMode()Z
    .registers 2

    .line 2062
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2063
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    if-nez p0, :cond_f

    const/4 p0, 0x0

    return p0

    .line 2067
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->hasSystemAudioDevice()Z

    move-result p0

    return p0
.end method

.method public clearTimerRecording(II[B)V
    .registers 6

    .line 2364
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2365
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$20;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deviceSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5

    .line 1839
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1840
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 12

    .line 2480
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "HdmiControlService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 2481
    :cond_f
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2483
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "mProhibitMode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p3}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmProhibitMode(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2484
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "mPowerStatus: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p3}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmPowerStatusController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecPowerStatusController;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/hdmi/HdmiCecPowerStatusController;->getPowerStatus()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2485
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "mIsCecAvailable: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p3}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmIsCecAvailable(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2486
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "mCecVersion: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p3}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecVersion(Lcom/android/server/hdmi/HdmiControlService;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2487
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "mIsAbsoluteVolumeControlEnabled: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p3}, Lcom/android/server/hdmi/HdmiControlService;->isAbsoluteVolumeControlEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "System_settings:"

    .line 2490
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2491
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2492
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "mMhlInputChangeEnabled: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p3}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmMhlInputChangeEnabled(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2493
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "mSystemAudioActivated: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p3}, Lcom/android/server/hdmi/HdmiControlService;->isSystemAudioActivated()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2494
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "mHdmiCecVolumeControlEnabled: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p3}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecVolumeControl(Lcom/android/server/hdmi/HdmiControlService;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2495
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string p2, "CEC settings:"

    .line 2498
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2499
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2500
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p2

    .line 2501
    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllSettings()Ljava/util/List;

    move-result-object p3

    .line 2502
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getUserSettings()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2503
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_11c
    :goto_11c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2504
    invoke-virtual {p2, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->isStringValueType(Ljava/lang/String;)Z

    move-result v2

    const-string v3, " [modifiable]"

    const-string v4, ""

    const-string v5, ")"

    const-string v6, " (default: "

    if-eqz v2, :cond_16a

    .line 2505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (string): "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2506
    invoke-virtual {p2, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getDefaultStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2507
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    goto :goto_15f

    :cond_15e
    move-object v3, v4

    :goto_15f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2505
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11c

    .line 2508
    :cond_16a
    invoke-virtual {p2, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->isIntValueType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11c

    .line 2509
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " (int): "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2510
    invoke-virtual {p2, v1}, Lcom/android/server/hdmi/HdmiCecConfig;->getDefaultIntValue(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2511
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_198

    goto :goto_199

    :cond_198
    move-object v3, v4

    :goto_199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2509
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_11c

    .line 2514
    :cond_1a5
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo p2, "mMhlController: "

    .line 2516
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2517
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2518
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmMhlController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiMhlControllerStub;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiMhlControllerStub;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2519
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2520
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecNetwork(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/hdmi/HdmiCecNetwork;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2521
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object p2

    if-eqz p2, :cond_1e3

    const-string/jumbo p2, "mCecController: "

    .line 2522
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2523
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2524
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2525
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_1e3
    return-void
.end method

.method public getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;
    .registers 2

    .line 1832
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1834
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getActiveSource()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getAllowedCecSettingIntValues(Ljava/lang/String;)[I
    .registers 4

    .line 2586
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2587
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2589
    :try_start_9
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 2590
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedIntValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2591
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/server/hdmi/HdmiControlService$BinderService$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0
    :try_end_24
    .catchall {:try_start_9 .. :try_end_24} :catchall_28

    .line 2593
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_28
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2594
    throw p0
.end method

.method public getAllowedCecSettingStringValues(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2575
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2576
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2578
    :try_start_9
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getAllowedStringValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 2580
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2581
    throw p0
.end method

.method public getCecSettingIntValue(Ljava/lang/String;)I
    .registers 4

    .line 2621
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2622
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2624
    :try_start_9
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 2626
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2627
    throw p0
.end method

.method public getCecSettingStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 2599
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2600
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2602
    :try_start_9
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 2604
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2605
    throw p0
.end method

.method public getDeviceList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 2138
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2139
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecNetwork(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeCecDevicesLocked()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getInputDevices()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 2127
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2130
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecNetwork(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getSafeExternalInputsLocked()Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    .line 2131
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mgetMhlDevicesLocked(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object p0

    .line 2130
    invoke-static {v0, p0}, Lcom/android/server/hdmi/HdmiUtils;->mergeToUnmodifiableList(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getMessageHistorySize()I
    .registers 2

    .line 2540
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$menforceAccessPermission(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2541
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 2542
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecController;->getMessageHistorySize()I

    move-result p0

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public getPhysicalAddress()I
    .registers 2

    .line 2082
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2083
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLock(Lcom/android/server/hdmi/HdmiControlService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2084
    :try_start_c
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecNetwork(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecNetwork;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecNetwork;->getPhysicalAddress()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 2085
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public getPortInfo()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/hdmi/HdmiPortInfo;",
            ">;"
        }
    .end annotation

    .line 2054
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2055
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_12

    .line 2056
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    goto :goto_18

    .line 2057
    :cond_12
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getPortInfo()Ljava/util/List;

    move-result-object p0

    :goto_18
    return-object p0
.end method

.method public getSupportedTypes()[I
    .registers 5

    .line 1820
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1822
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLocalDevices(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v0, :cond_29

    .line 1824
    iget-object v3, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v3}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmLocalDevices(Lcom/android/server/hdmi/HdmiControlService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_29
    return-object v1
.end method

.method public getSystemAudioMode()Z
    .registers 2

    .line 2073
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2074
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    .line 2075
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->audioSystem()Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    move-result-object p0

    if-eqz v0, :cond_19

    .line 2076
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isSystemAudioActivated()Z

    move-result v0

    if-nez v0, :cond_21

    :cond_19
    if-eqz p0, :cond_23

    .line 2077
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->isSystemAudioActivated()Z

    move-result p0

    if-eqz p0, :cond_23

    :cond_21
    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public getUserCecSettings()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2564
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2567
    :try_start_9
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecConfig;->getUserSettings()Ljava/util/List;

    move-result-object p0
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 2569
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_17
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2570
    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2473
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2474
    new-instance v1, Lcom/android/server/hdmi/HdmiControlShellCommand;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlShellCommand;-><init>(Landroid/hardware/hdmi/IHdmiControlService$Stub;)V

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 2475
    invoke-virtual/range {v1 .. v8}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public oneTouchPlay(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5

    .line 1964
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1965
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is calling oneTouchPlay."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$5;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public portSelect(ILandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5

    .line 1886
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1887
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$2;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public powerOffRemoteDevice(II)V
    .registers 5

    .line 2144
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2145
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$9;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public powerOnRemoteDevice(II)V
    .registers 5

    .line 2159
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2160
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$10;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public queryDisplayStatus(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 4

    .line 1996
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1997
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$7;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeCecSettingChangeListener(Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V
    .registers 4

    .line 2558
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$menforceAccessPermission(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2559
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mremoveCecSettingChangeListener(Lcom/android/server/hdmi/HdmiControlService;Ljava/lang/String;Landroid/hardware/hdmi/IHdmiCecSettingChangeListener;)V

    return-void
.end method

.method public removeHdmiCecVolumeControlFeatureListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V
    .registers 3

    .line 2029
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2030
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->removeHdmiControlVolumeControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiCecVolumeControlFeatureListener;)V

    return-void
.end method

.method public removeHdmiControlStatusChangeListener(Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V
    .registers 3

    .line 2015
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2016
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mremoveHdmiControlStatusChangeListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiControlStatusChangeListener;)V

    return-void
.end method

.method public removeHotplugEventListener(Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V
    .registers 3

    .line 2042
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2043
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mremoveHotplugEventListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiHotplugEventListener;)V

    return-void
.end method

.method public removeSystemAudioModeChangeListener(Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V
    .registers 3

    .line 2115
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2116
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mremoveSystemAudioModeChangeListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiSystemAudioModeChangeListener;)V

    return-void
.end method

.method public reportAudioStatus(IIIZ)V
    .registers 5

    .line 2419
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p2}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2420
    iget-object p2, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance p3, Lcom/android/server/hdmi/HdmiControlService$BinderService$23;

    invoke-direct {p3, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$23;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I)V

    invoke-virtual {p2, p3}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendKeyEvent(IIZ)V
    .registers 6

    .line 1919
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1920
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$3;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendMhlVendorCommand(III[B)V
    .registers 13

    .line 2380
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2381
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v7, Lcom/android/server/hdmi/HdmiControlService$BinderService$21;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiControlService$BinderService$21;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III[B)V

    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendStandby(II)V
    .registers 5

    .line 2287
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2288
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$16;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendVendorCommand(II[BZ)V
    .registers 13

    .line 2264
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2265
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v7, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p4

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiControlService$BinderService$15;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IZI[B)V

    invoke-virtual {v0, v7}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendVolumeKeyEvent(IIZ)V
    .registers 6

    .line 1943
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1944
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$4;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;IIZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setArcMode(Z)V
    .registers 3

    .line 2232
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2233
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$BinderService$14;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;)V

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCecSettingIntValue(Ljava/lang/String;I)V
    .registers 5

    .line 2632
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2633
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2635
    :try_start_9
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->setIntValue(Ljava/lang/String;I)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 2637
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2638
    throw p0
.end method

.method public setCecSettingStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 2610
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2611
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2613
    :try_start_9
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_16

    .line 2615
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2616
    throw p0
.end method

.method public setHdmiRecordListener(Landroid/hardware/hdmi/IHdmiRecordListener;)V
    .registers 3

    .line 2311
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2312
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$msetHdmiRecordListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiRecordListener;)V

    return-void
.end method

.method public setInputChangeListener(Landroid/hardware/hdmi/IHdmiInputChangeListener;)V
    .registers 3

    .line 2121
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2122
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$msetInputChangeListener(Lcom/android/server/hdmi/HdmiControlService;Landroid/hardware/hdmi/IHdmiInputChangeListener;)V

    return-void
.end method

.method public setMessageHistorySize(I)Z
    .registers 3

    .line 2531
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$menforceAccessPermission(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2532
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 p0, 0x0

    return p0

    .line 2535
    :cond_f
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController;->setMessageHistorySize(I)Z

    move-result p0

    return p0
.end method

.method public setProhibitMode(Z)V
    .registers 3

    .line 2247
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2248
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 2251
    :cond_e
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setProhibitMode(Z)V

    return-void
.end method

.method public setStandbyMode(Z)V
    .registers 4

    .line 2407
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2408
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$22;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$22;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSystemAudioMode(ZLandroid/hardware/hdmi/IHdmiControlCallback;)V
    .registers 5

    .line 2090
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2091
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$8;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Landroid/hardware/hdmi/IHdmiControlCallback;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSystemAudioModeOnForAudioOnlySource()V
    .registers 3

    .line 2443
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2444
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$24;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$BinderService$24;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSystemAudioMute(Z)V
    .registers 4

    .line 2216
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2217
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$13;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSystemAudioVolume(III)V
    .registers 6

    .line 2200
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2201
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$12;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;III)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public shouldHandleTvPowerKey()Z
    .registers 2

    .line 1990
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1991
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->shouldHandleTvPowerKey()Z

    move-result p0

    return p0
.end method

.method public startOneTouchRecord(I[B)V
    .registers 5

    .line 2317
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2318
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService$BinderService$17;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startTimerRecording(II[B)V
    .registers 6

    .line 2348
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2349
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService$BinderService$19;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;II[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopOneTouchRecord(I)V
    .registers 4

    .line 2332
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 2333
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$18;

    invoke-direct {v1, p0, p1}, Lcom/android/server/hdmi/HdmiControlService$BinderService$18;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toggleAndFollowTvPower()V
    .registers 4

    .line 1977
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$minitBinderCall(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 1978
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Process pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is calling toggleAndFollowTvPower."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1980
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$BinderService;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v1, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/HdmiControlService$BinderService$6;-><init>(Lcom/android/server/hdmi/HdmiControlService$BinderService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method
