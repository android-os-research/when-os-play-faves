.class Lcom/samsung/android/game/GameManagerService$DisplayListener;
.super Ljava/lang/Object;
.source "GameManagerService.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;
    }
.end annotation


# static fields
.field private static final SECURE_SETTINGS_REFRESH_RATE_MODE:Ljava/lang/String; = "refresh_rate_mode"


# instance fields
.field private final MULTI_RESOLUTION_SUPPORTED:Z

.field private density:I

.field private longPixel:I

.field private shortPixel:I

.field final synthetic this$0:Lcom/samsung/android/game/GameManagerService;

.field private vrrMode:I


# direct methods
.method constructor <init>(Lcom/samsung/android/game/GameManagerService;)V
    .registers 5

    .line 1042
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1035
    const-string v0, "WQHD,FHD,HD"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->MULTI_RESOLUTION_SUPPORTED:Z

    .line 1037
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->longPixel:I

    .line 1038
    iput v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->shortPixel:I

    .line 1039
    iput v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->density:I

    .line 1040
    iput v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->vrrMode:I

    .line 1043
    # getter for: Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/game/GameManagerService;->access$200(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1044
    .local p1, "cr":Landroid/content/ContentResolver;
    const-string v2, "refresh_rate_mode"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->vrrMode:I

    .line 1046
    if-eqz v0, :cond_34

    .line 1047
    const-string v0, "GameManager"

    const-string v1, "multi-resolution is supported"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService$DisplayListener;->checkIfResolutionChanged()Z

    .line 1052
    :cond_34
    return-void
.end method

.method private checkIfResolutionChanged()Z
    .registers 8

    .line 1119
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1120
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/game/GameManagerService;->access$200(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1121
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1122
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1123
    .local v2, "newLongPixel":I
    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1124
    .local v3, "newShortPixel":I
    iget v4, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 1125
    .local v4, "newDensity":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dpi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", longPixel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", shortPixel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "GameManager"

    invoke-static {v6, v5}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget v5, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->longPixel:I

    if-ne v2, v5, :cond_67

    iget v5, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->shortPixel:I

    if-ne v3, v5, :cond_67

    iget v5, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->density:I

    if-eq v4, v5, :cond_65

    goto :goto_67

    .line 1133
    :cond_65
    const/4 v5, 0x0

    return v5

    .line 1128
    :cond_67
    :goto_67
    iput v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->longPixel:I

    .line 1129
    iput v3, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->shortPixel:I

    .line 1130
    iput v4, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->density:I

    .line 1131
    const/4 v5, 0x1

    return v5
.end method

.method private checkIfVrrSettingChanged()Z
    .registers 7

    .line 1093
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$200(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1094
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "refresh_rate_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1095
    .local v1, "newVrrMode":I
    iget v3, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->vrrMode:I

    if-eq v1, v3, :cond_2c

    .line 1096
    iput v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->vrrMode:I

    .line 1097
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v2, "onDisplayChanged(): refresh_rate_mode: %s"

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "GameManager"

    invoke-static {v4, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    return v3

    .line 1100
    :cond_2c
    return v2
.end method

.method private sendVrrSettingChangedToGos()V
    .registers 5

    .line 1105
    const-string v0, "GameManager"

    const-string v1, "mDisplayListener before send intent to GameIntentService"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1107
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1108
    const-string v2, "type"

    const/16 v3, 0xe

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1110
    :try_start_1a
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->access$200(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1111
    const-string v2, "mDisplayListener after send intent to GameIntentService"

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_2a} :catch_2b
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_2a} :catch_2b

    .line 1115
    goto :goto_34

    .line 1112
    :catch_2b
    move-exception v2

    .line 1113
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "mDisplayListener failed to send intent to GameIntentService"

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 1116
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_34
    return-void
.end method


# virtual methods
.method getResLog()Ljava/lang/String;
    .registers 3

    .line 1142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->longPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->shortPixel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->density:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ppi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDisplayAdded(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 1139
    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 8
    .param p1, "displayId"    # I

    .line 1060
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$300(Lcom/samsung/android/game/GameManagerService;)Z

    move-result v0

    if-eqz v0, :cond_95

    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$400(Lcom/samsung/android/game/GameManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    if-nez v0, :cond_12

    goto/16 :goto_95

    .line 1062
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;
    invoke-static {v0}, Lcom/samsung/android/game/GameManagerService;->access$400(Lcom/samsung/android/game/GameManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 1063
    .local v0, "tempDisplay":Landroid/view/Display;
    if-nez v0, :cond_1f

    return-void

    .line 1065
    :cond_1f
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v1

    .line 1066
    .local v1, "displayState":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisplayChanged. displyId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameManager"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1067
    if-eqz p1, :cond_48

    return-void

    .line 1069
    :cond_48
    const/4 v2, 0x2

    if-ne v1, v2, :cond_78

    .line 1070
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;
    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->access$500(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/FgCheckThread;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 1071
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;
    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->access$500(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/FgCheckThread;

    move-result-object v2

    const/16 v3, 0x2717

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/FgCheckThread;->sendEmptyMessage(I)V

    .line 1074
    :cond_5e
    iget-boolean v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->MULTI_RESOLUTION_SUPPORTED:Z

    if-eqz v2, :cond_8b

    .line 1075
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService$DisplayListener;->checkIfResolutionChanged()Z

    move-result v2

    .line 1076
    .local v2, "isResolutionChanged":Z
    if-eqz v2, :cond_77

    .line 1078
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/samsung/android/game/GameManagerService;->access$700(Lcom/samsung/android/game/GameManagerService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/samsung/android/game/GameManagerService$DisplayListener$DisplayNotifyRunnable;-><init>(Lcom/samsung/android/game/GameManagerService$DisplayListener;Lcom/samsung/android/game/GameManagerService$1;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1080
    .end local v2    # "isResolutionChanged":Z
    :cond_77
    goto :goto_8b

    .line 1081
    :cond_78
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;
    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->access$500(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/FgCheckThread;

    move-result-object v2

    if-eqz v2, :cond_8b

    .line 1082
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService$DisplayListener;->this$0:Lcom/samsung/android/game/GameManagerService;

    # getter for: Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;
    invoke-static {v2}, Lcom/samsung/android/game/GameManagerService;->access$500(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/FgCheckThread;

    move-result-object v2

    const/16 v3, 0x2716

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/FgCheckThread;->sendEmptyMessage(I)V

    .line 1086
    :cond_8b
    :goto_8b
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService$DisplayListener;->checkIfVrrSettingChanged()Z

    move-result v2

    .line 1087
    .local v2, "isVrrSettingChanged":Z
    if-eqz v2, :cond_94

    .line 1088
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService$DisplayListener;->sendVrrSettingChangedToGos()V

    .line 1090
    :cond_94
    return-void

    .line 1060
    .end local v0    # "tempDisplay":Landroid/view/Display;
    .end local v1    # "displayState":I
    .end local v2    # "isVrrSettingChanged":Z
    :cond_95
    :goto_95
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2
    .param p1, "displayId"    # I

    .line 1056
    return-void
.end method
