.class public Lcom/android/server/am/KillPolicyManager$AutoRestartParameterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutoRestartParameterReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 288
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    const-string p0, "MIN_TRIGGER_SIZE"

    const/16 p1, 0xa

    .line 292
    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string p1, "NEVER_COLLECT_WITHIN"

    const/16 v0, 0xc

    .line 294
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "COMPACT_TRIGGER_SIZE"

    const/16 v1, 0x12c

    .line 296
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "NATIVE_FLOOD_RATIO"

    const/16 v2, 0x1e

    .line 298
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "SYSPERS_FLOOD_RATIO"

    .line 300
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 303
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetRANGE_AUTO_RESTART_MIN_TRIGGER_SIZE()Ljava/time/temporal/ValueRange;

    move-result-object v2

    int-to-long v3, p0

    invoke-virtual {v2, v3, v4}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 304
    invoke-static {p0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfputsMinTriggerSize(I)V

    .line 307
    :cond_34
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetRANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN()Ljava/time/temporal/ValueRange;

    move-result-object p0

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result p0

    if-eqz p0, :cond_42

    .line 308
    invoke-static {p1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfputsNeverCollectWithin(I)V

    .line 311
    :cond_42
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetRANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE()Ljava/time/temporal/ValueRange;

    move-result-object p0

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result p0

    if-eqz p0, :cond_50

    .line 312
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfputsCompactTriggerSize(I)V

    .line 315
    :cond_50
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetRANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO()Ljava/time/temporal/ValueRange;

    move-result-object p0

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result p0

    if-eqz p0, :cond_5e

    .line 316
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfputsNativeFloodRatio(I)V

    .line 319
    :cond_5e
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetRANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO()Ljava/time/temporal/ValueRange;

    move-result-object p0

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result p0

    if-eqz p0, :cond_6c

    .line 320
    invoke-static {p2}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfputsSyspersFloodRatio(I)V

    .line 323
    :cond_6c
    sget-boolean p0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p0, :cond_c6

    .line 324
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Auto Restart Parameter Updated. {"

    .line 325
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "sMinTriggerSize="

    .line 326
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsMinTriggerSize()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sNeverCollectWithin="

    .line 327
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsNeverCollectWithin()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sCompactTriggerSize="

    .line 328
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsCompactTriggerSize()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sNativeFloodRatio="

    .line 329
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsNativeFloodRatio()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sSyspersFloodRatio="

    .line 330
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$sfgetsSyspersFloodRatio()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "}"

    .line 331
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityManager_KPM"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c6
    return-void
.end method
