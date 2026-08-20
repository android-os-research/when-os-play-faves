.class public Lcom/android/server/am/KillPolicyManager$LmkdCountReader;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LmkdCountReader"
.end annotation


# instance fields
.field public bServiceCountOfLmkd:J

.field public cachedMinCountOfLmkd:J

.field public homeToPercCountOfLmkd:J

.field public pickedCountOfLmkd:J

.field public previousCountOfLmkd:J

.field public seedbedCountOfLmkd:J

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public totalCountOfLmkd:J

.field public visToFgCountOfLmkd:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .registers 4

    .line 2666
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2669
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 2670
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 2671
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    .line 2672
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 2673
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 2674
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 2675
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    .line 2676
    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    return-void
.end method


# virtual methods
.method public final getKillCountForAdjRange(IIJ)J
    .registers 5

    .line 2679
    invoke-static {p1, p2}, Lcom/android/server/am/ProcessList;->getLmkdKillCount(II)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_e

    const-string p0, "ActivityManager"

    const-string p1, "getKillCountForAdjRange() - getLmkdKillCount returns null"

    .line 2681
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide p3

    .line 2684
    :cond_e
    invoke-virtual {p0}, Ljava/lang/Integer;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public readLmkdKillCount()V
    .registers 6

    .line 2688
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    const/4 v2, 0x0

    const/16 v3, 0x3e7

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    .line 2690
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    const/16 v3, 0x384

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    .line 2692
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    const/16 v3, 0x353

    const/16 v4, 0x35c

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    .line 2694
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    const/16 v3, 0x321

    const/16 v4, 0x352

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    .line 2696
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    const/16 v3, 0x2bd

    const/16 v4, 0x320

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    .line 2698
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    const/16 v3, 0x259

    const/16 v4, 0x2bc

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    .line 2700
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    const/16 v3, 0xc8

    const/16 v4, 0x258

    invoke-virtual {p0, v3, v4, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    .line 2702
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    const/16 v3, 0xc7

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->getKillCountForAdjRange(IIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    .line 2704
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_b1

    .line 2705
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "readLmkdKillCount() : (E : "

    .line 2706
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2707
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Pr : "

    .line 2708
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2709
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Sv : "

    .line 2710
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2711
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Pi : "

    .line 2712
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2713
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Sb : "

    .line 2714
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2715
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", Cm : "

    .line 2716
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2717
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 2718
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2719
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ActivityManager_KPM"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b1
    return-void
.end method
