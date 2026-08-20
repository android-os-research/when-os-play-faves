.class public Lcom/android/server/vibrator/VibrationSettings$2;
.super Ljava/lang/Object;
.source "VibrationSettings.java"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vibrator/VibrationSettings;->registerFoldStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vibrator/VibrationSettings;


# direct methods
.method public constructor <init>(Lcom/android/server/vibrator/VibrationSettings;)V
    .registers 2

    .line 1101
    iput-object p1, p0, Lcom/android/server/vibrator/VibrationSettings$2;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldStateChanged(Z)V
    .registers 4

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFoldStateChanged isFolded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VibrationSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object p0, p0, Lcom/android/server/vibrator/VibrationSettings$2;->this$0:Lcom/android/server/vibrator/VibrationSettings;

    invoke-static {p0}, Lcom/android/server/vibrator/VibrationSettings;->-$$Nest$mgetDefaultVibratorController(Lcom/android/server/vibrator/VibrationSettings;)Lcom/android/server/vibrator/VibratorController;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/vibrator/VibratorController;->setFoldState(Z)V

    return-void
.end method

.method public onTableModeChanged(Z)V
    .registers 3

    .line 1110
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onTableModeChanged. isTableMode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VibrationSettings"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
