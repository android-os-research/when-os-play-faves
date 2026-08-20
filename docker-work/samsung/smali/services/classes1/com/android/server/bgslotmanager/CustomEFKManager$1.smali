.class public Lcom/android/server/bgslotmanager/CustomEFKManager$1;
.super Landroid/os/CountDownTimer;
.source "CustomEFKManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bgslotmanager/CustomEFKManager;->runBootEFKBoost()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJ)V
    .registers 6

    .line 74
    iput-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    const-string v0, "DynamicHiddenApp_CustomEFKManager"

    const-string/jumbo v1, "setEFKBoostRestoreTimer onfinish"

    .line 85
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$mrestoreEFKAfterBoot(Lcom/android/server/bgslotmanager/CustomEFKManager;)V

    return-void
.end method

.method public onTick(J)V
    .registers 5

    .line 76
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0x2bf20

    cmp-long p1, p1, v0

    const-string p2, "DynamicHiddenApp_CustomEFKManager"

    if-ltz p1, :cond_1c

    const-string/jumbo p1, "setEFKBoostRestoreTimer onTick after 3minutes"

    .line 77
    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$1;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {p1}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$mrestoreEFKAfterBoot(Lcom/android/server/bgslotmanager/CustomEFKManager;)V

    .line 79
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    goto :goto_22

    :cond_1c
    const-string/jumbo p0, "setEFKBoostRestoreTimer onTick"

    .line 81
    invoke-static {p2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_22
    return-void
.end method
