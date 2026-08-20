.class public Lcom/android/server/am/KillPolicyManager$LmkdCounter;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LmkdCounter"
.end annotation


# instance fields
.field public bServiceKillCount:J

.field public bServiceKillOccurredCount:I

.field public cachedMinKillCount:J

.field public cycleBServiceKillCount:J

.field public cycleCachedMinKillCount:J

.field public cycleHomeToPercKillCount:J

.field public cyclePickedKillCount:J

.field public cyclePreviousKillCount:J

.field public cycleSeedbedKillCount:J

.field public cycleTotalKillCount:J

.field public cycleVisToFgKillCount:J

.field public kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public pickedKillCount:J

.field public prevBServiceCountOfLmkd:J

.field public prevCachedMinCountOfLmkd:J

.field public prevCycleBServiceCountOfLmkd:J

.field public prevCycleCachedMinCountOfLmkd:J

.field public prevCycleHomeToPercCountOfLmkd:J

.field public prevCyclePickedCountOfLmkd:J

.field public prevCyclePreviousCountOfLmkd:J

.field public prevCycleSeedbedCountOfLmkd:J

.field public prevCycleTotalCountOfLmkd:J

.field public prevCycleVisToFgCountOfLmkd:J

.field public prevPickedCountOfLmkd:J

.field public prevPreviousCountOfLmkd:J

.field public prevSeedbedCountOfLmkd:J

.field public prevTinyCycleBServiceCountOfLmkd:J

.field public prevTinyCycleCachedMinCountOfLmkd:J

.field public prevTinyCyclePickedCountOfLmkd:J

.field public prevTinyCyclePreviousCountOfLmkd:J

.field public prevTinyCycleSeedbedCountOfLmkd:J

.field public prevTotalCountOfLmkd:J

.field public previousKillCount:J

.field public previousKillOccurredCount:I

.field public seedbedKillCount:J

.field public final synthetic this$0:Lcom/android/server/am/KillPolicyManager;

.field public tinyCycleBServiceKillCount:J

.field public tinyCycleCachedMinKillCount:J

.field public tinyCyclePickedKillCount:J

.field public tinyCyclePreviousKillCount:J

.field public tinyCycleSeedbedKillCount:J

.field public totalKillCount:J


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 2774
    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v3, 0x0

    .line 2775
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    .line 2776
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    .line 2777
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleSeedbedKillCount:J

    .line 2778
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    .line 2779
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    .line 2780
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    .line 2781
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleHomeToPercKillCount:J

    .line 2782
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleVisToFgKillCount:J

    .line 2784
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->totalKillCount:J

    .line 2785
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cachedMinKillCount:J

    .line 2786
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->seedbedKillCount:J

    .line 2787
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->pickedKillCount:J

    .line 2788
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    .line 2789
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillCount:J

    .line 2791
    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iput-wide v5, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleTotalCountOfLmkd:J

    .line 2792
    iget-wide v7, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iput-wide v7, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleCachedMinCountOfLmkd:J

    .line 2793
    iget-wide v9, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iput-wide v9, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleSeedbedCountOfLmkd:J

    .line 2794
    iget-wide v11, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iput-wide v11, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePickedCountOfLmkd:J

    .line 2795
    iget-wide v13, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iput-wide v13, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleBServiceCountOfLmkd:J

    .line 2796
    iget-wide v3, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePreviousCountOfLmkd:J

    move-wide v15, v3

    .line 2797
    iget-wide v3, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleHomeToPercCountOfLmkd:J

    .line 2798
    iget-wide v1, v2, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleVisToFgCountOfLmkd:J

    .line 2800
    iput-wide v5, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    .line 2801
    iput-wide v7, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    .line 2802
    iput-wide v9, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevSeedbedCountOfLmkd:J

    .line 2803
    iput-wide v11, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    .line 2804
    iput-wide v13, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    move-wide v1, v15

    .line 2805
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    const/4 v3, 0x0

    .line 2807
    iput v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 2808
    iput v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    const-wide/16 v3, 0x0

    .line 2810
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    .line 2811
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleSeedbedKillCount:J

    .line 2812
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    .line 2813
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    .line 2814
    iput-wide v3, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    .line 2816
    iput-wide v7, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleCachedMinCountOfLmkd:J

    .line 2817
    iput-wide v9, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleSeedbedCountOfLmkd:J

    .line 2818
    iput-wide v11, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePickedCountOfLmkd:J

    .line 2819
    iput-wide v13, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleBServiceCountOfLmkd:J

    .line 2820
    iput-wide v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePreviousCountOfLmkd:J

    move-object/from16 v1, p2

    .line 2822
    iput-object v1, v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    return-void
.end method


# virtual methods
.method public fillTinyCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V
    .registers 6

    .line 2923
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleCachedMinCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    .line 2924
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleSeedbedCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleSeedbedKillCount:J

    .line 2925
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePickedCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    .line 2926
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleBServiceCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    .line 2927
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePreviousCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    .line 2929
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_6e

    .line 2930
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "TinyCycle currentKillCountLmkd : (cPr : "

    .line 2931
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePreviousKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cSv : "

    .line 2932
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleBServiceKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cPi : "

    .line 2933
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCyclePickedKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cSb : "

    .line 2934
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleSeedbedKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cCm : "

    .line 2935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->tinyCycleCachedMinKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2936
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2939
    :cond_6e
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleCachedMinCountOfLmkd:J

    .line 2940
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleSeedbedCountOfLmkd:J

    .line 2941
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePickedCountOfLmkd:J

    .line 2942
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCycleBServiceCountOfLmkd:J

    .line 2943
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTinyCyclePreviousCountOfLmkd:J

    return-void
.end method

.method public getCycleLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V
    .registers 6

    .line 2826
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleTotalCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    .line 2827
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleCachedMinCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    .line 2828
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleSeedbedCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleSeedbedKillCount:J

    .line 2829
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePickedCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    .line 2830
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleBServiceCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    .line 2831
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePreviousCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    .line 2832
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleHomeToPercCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleHomeToPercKillCount:J

    .line 2833
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleVisToFgCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleVisToFgKillCount:J

    .line 2835
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_8d

    .line 2836
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Cycle currentKillCountLmkd : (cE : "

    .line 2837
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2838
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleTotalKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cPr : "

    .line 2839
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePreviousKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cSv : "

    .line 2841
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2842
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleBServiceKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cPi : "

    .line 2843
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2844
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cyclePickedKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cSb : "

    .line 2845
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2846
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleSeedbedKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", cCm : "

    .line 2847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2848
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cycleCachedMinKillCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 2849
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2850
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    :cond_8d
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleTotalCountOfLmkd:J

    .line 2854
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleCachedMinCountOfLmkd:J

    .line 2855
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleSeedbedCountOfLmkd:J

    .line 2856
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePickedCountOfLmkd:J

    .line 2857
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleBServiceCountOfLmkd:J

    .line 2858
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCyclePreviousCountOfLmkd:J

    .line 2859
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->homeToPercCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleHomeToPercCountOfLmkd:J

    .line 2860
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->visToFgCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCycleVisToFgCountOfLmkd:J

    return-void
.end method

.method public getLmkdPreviousAndBServiceKillCount(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;)V
    .registers 8

    .line 2864
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->totalKillCount:J

    .line 2865
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cachedMinKillCount:J

    .line 2866
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevSeedbedCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->seedbedKillCount:J

    .line 2867
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->pickedKillCount:J

    .line 2868
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    .line 2869
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_45

    .line 2872
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillOccurredCount:I

    .line 2873
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    if-eqz v0, :cond_45

    .line 2874
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmPrevPackage(Lcom/android/server/am/KillPolicyManager;)Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x2bc

    invoke-static {v0, v1, v4}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V

    .line 2876
    :cond_45
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_60

    .line 2877
    iget v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillOccurredCount:I

    .line 2878
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    if-eqz v0, :cond_60

    .line 2879
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$fgetmPrevPackage(Lcom/android/server/am/KillPolicyManager;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x320

    invoke-static {v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->-$$Nest$mmarkKilledPackage(Lcom/android/server/am/KillPolicyManager$KpmRaw;Ljava/lang/String;I)V

    .line 2882
    :cond_60
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_10a

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->kpmRaw:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager;->-$$Nest$mgetCurrentKpmRawPolicy(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v1

    if-ne v0, v1, :cond_10a

    .line 2883
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "prevKillCount : (pE : "

    .line 2884
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2885
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pPr : "

    .line 2886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2887
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pSv : "

    .line 2888
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2889
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pPi : "

    .line 2890
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2891
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pSb : "

    .line 2892
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2893
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevSeedbedCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pCm : "

    .line 2894
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2895
    iget-wide v1, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 2896
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2897
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager_KPM"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 2898
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string v2, "currentKillCount : (cE : "

    .line 2899
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2900
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->totalKillCount:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cPr : "

    .line 2901
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2902
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->previousKillCount:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cSv : "

    .line 2903
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2904
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->bServiceKillCount:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cPi : "

    .line 2905
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2906
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->pickedKillCount:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cSb : "

    .line 2907
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2908
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->seedbedKillCount:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", cCm : "

    .line 2909
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2910
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->cachedMinKillCount:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2911
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2912
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    :cond_10a
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->totalCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevTotalCountOfLmkd:J

    .line 2915
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->cachedMinCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevCachedMinCountOfLmkd:J

    .line 2916
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->seedbedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevSeedbedCountOfLmkd:J

    .line 2917
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->pickedCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPickedCountOfLmkd:J

    .line 2918
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->bServiceCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevBServiceCountOfLmkd:J

    .line 2919
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->previousCountOfLmkd:J

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->prevPreviousCountOfLmkd:J

    return-void
.end method
