.class Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;
.super Ljava/lang/Object;
.source "WifiBackOffController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FccChannelModeController"
.end annotation


# static fields
.field static final CHANNEL_BACKOFF_TYPE_DISABLE:I = -0x1

.field static final CHANNEL_BACKOFF_TYPE_ENABLE:I = 0x0

.field static final CHANNEL_BACKOFF_TYPE_ENABLE_EXCEPT_6G:I = 0x1

.field static final CHANNEL_BACKOFF_TYPE_UNKNOWN:I = -0x2

.field private static final SERVICE_STATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "SemWifiBackOff.Fcc"


# instance fields
.field private final context:Landroid/content/Context;

.field private final fccBackOffStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isBlockedFccBackoffChanges:Z

.field private final isWifi6ESupported:Z

.field private lastServiceState:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;


# direct methods
.method public static synthetic $r8$lambda$ZcG3qKa5bIBc0XcwwooIKB_2tJY(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Landroid/content/Context;Z)V
    .registers 4

    .line 192
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 190
    iput p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->lastServiceState:I

    .line 193
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->context:Landroid/content/Context;

    .line 194
    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->isWifi6ESupported:Z

    .line 195
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->fccBackOffStates:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Landroid/content/Context;ZLcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;-><init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Landroid/content/Context;Z)V

    return-void
.end method

.method private checkAndSetupForNormal(Ljava/lang/String;)V
    .registers 5

    .line 215
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    .line 216
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    return-void

    .line 219
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$mgetServiceState(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_19

    .line 220
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    goto :goto_1a

    :cond_19
    move v0, v1

    :goto_1a
    iput v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->lastServiceState:I

    if-eq v0, v1, :cond_2b

    if-eqz v0, :cond_27

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2b

    const/4 v2, 0x2

    if-eq v0, v2, :cond_27

    goto :goto_2e

    .line 224
    :cond_27
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    goto :goto_2e

    .line 228
    :cond_2b
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->checkNetworkCountryCodeAndSetup(Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method private checkAndSetupForWifiOnlyModel(Ljava/lang/String;)V
    .registers 4

    const-string v0, "SemWifiBackOff.Fcc"

    const-string v1, "wifi only model: set power reduction mode"

    .line 247
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->isWifi6ESupported:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->isAirplaneModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 250
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    goto :goto_1e

    :cond_16
    const/4 v0, 0x1

    .line 252
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    goto :goto_1e

    .line 255
    :cond_1b
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    :goto_1e
    return-void
.end method

.method private checkNetworkCountryCodeAndSetup(Ljava/lang/String;)V
    .registers 5

    .line 236
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$mgetNetworkCountryIso(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Ljava/lang/String;

    move-result-object v0

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->lastServiceState:I

    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " telephony country iso: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiBackOff.Fcc"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    const/4 v0, 0x0

    .line 240
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    goto :goto_39

    :cond_35
    const/4 v0, -0x1

    .line 242
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    :goto_39
    return-void
.end method

.method private getChannelBackOffModeString(I)Ljava/lang/String;
    .registers 2

    const/4 p0, -0x1

    if-eq p1, p0, :cond_11

    if-eqz p1, :cond_e

    const/4 p0, 0x1

    if-eq p1, p0, :cond_b

    const-string p0, "unknown"

    return-object p0

    :cond_b
    const-string p0, "wifi6e_only"

    return-object p0

    :cond_e
    const-string p0, "enabled"

    return-object p0

    :cond_11
    const-string p0, "disabled"

    return-object p0
.end method

.method private getServiceStateString(I)Ljava/lang/String;
    .registers 2

    const/4 p0, -0x1

    if-eq p1, p0, :cond_19

    if-eqz p1, :cond_16

    const/4 p0, 0x1

    if-eq p1, p0, :cond_13

    const/4 p0, 0x2

    if-eq p1, p0, :cond_10

    .line 321
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    const-string p0, "STATE_EMERGENCY_ONLY"

    return-object p0

    :cond_13
    const-string p0, "STATE_OUT_OF_SERVICE"

    return-object p0

    :cond_16
    const-string p0, "STATE_IN_SERVICE"

    return-object p0

    :cond_19
    const-string p0, "SERVICE_STATE_UNKNOWN"

    return-object p0
.end method

.method private isAirplaneModeEnabled()Z
    .registers 4

    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$fgetfacade(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->context:Landroid/content/Context;

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->getIntegerSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_13

    move v2, v0

    :cond_13
    return v2
.end method

.method private synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 6

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - fccChannelMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "): "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->getChannelBackOffModeString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->isBlockedFccBackoffChanges:Z

    if-eqz p0, :cond_24

    const-string p0, " (blocked)"

    goto :goto_26

    :cond_24
    const-string p0, ""

    :goto_26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 291
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private setFccChannelModeEnabled(Ljava/lang/String;I)V
    .registers 5

    .line 278
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->fccBackOffStates:Ljava/util/HashMap;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_14

    return-void

    .line 282
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->fccBackOffStates:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFccChannelBackOff: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->getChannelBackOffModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Fcc"

    .line 283
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$fgetwifiNative(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;->setFccChannelBackoffEnabled(Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method checkAndSetup(Ljava/lang/String;)V
    .registers 3

    .line 203
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->isBlockedFccBackoffChanges:Z

    if-eqz v0, :cond_c

    const-string p0, "SemWifiBackOff.Fcc"

    const-string p1, "skip to check channel backoff state. (blocked by app)"

    .line 204
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 207
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/util/SemRilUtil;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 208
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->checkAndSetupForWifiOnlyModel(Ljava/lang/String;)V

    goto :goto_1b

    .line 210
    :cond_18
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->checkAndSetupForNormal(Ljava/lang/String;)V

    :goto_1b
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - serviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->lastServiceState:I

    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->fccBackOffStates:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;Ljava/io/PrintWriter;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method forceEnable(Ljava/lang/String;Z)V
    .registers 5

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceEnableFccChannelBackoff by app iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.Fcc"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_22

    const/4 p2, 0x0

    goto :goto_23

    :cond_22
    const/4 p2, -0x1

    .line 273
    :goto_23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->fccBackOffStates:Ljava/util/HashMap;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->setFccChannelModeEnabled(Ljava/lang/String;I)V

    return-void
.end method

.method resetState(Ljava/lang/String;)V
    .registers 3

    .line 199
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->fccBackOffStates:Ljava/util/HashMap;

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method setEnable(Z)V
    .registers 2

    .line 265
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$FccChannelModeController;->isBlockedFccBackoffChanges:Z

    return-void
.end method
