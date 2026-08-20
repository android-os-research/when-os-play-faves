.class public final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    .line 1392
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .registers 1

    .line 1487
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public getRingerModeAffectedStreams(I)I
    .registers 3

    or-int/lit8 p1, p1, 0x26

    .line 1498
    iget-object p0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p0, p0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_c

    or-int/lit16 p0, p1, 0x818

    goto :goto_e

    :cond_c
    and-int/lit16 p0, p1, -0x819

    :goto_e
    return p0
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 16

    const/4 p5, 0x0

    const/4 v0, 0x1

    if-eq p1, p2, :cond_6

    move v1, v0

    goto :goto_7

    :cond_6
    move v1, p5

    :goto_7
    if-ne p4, v0, :cond_b

    move v2, v0

    goto :goto_c

    :cond_b
    move v2, p5

    :goto_c
    const/4 v3, -0x1

    if-eqz p2, :cond_21

    if-eq p2, v0, :cond_15

    const/4 v0, 0x2

    if-eq p2, v0, :cond_15

    goto :goto_1e

    .line 1470
    :cond_15
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, v0, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v0, :cond_1e

    move v2, p2

    :goto_1c
    move v5, p5

    goto :goto_2f

    :cond_1e
    :goto_1e
    move v2, p2

    :goto_1f
    move v5, v3

    goto :goto_2f

    :cond_21
    if-eqz v1, :cond_2d

    .line 1459
    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p5, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez p5, :cond_2b

    move p5, v0

    goto :goto_1c

    :cond_2b
    move p5, v3

    goto :goto_1c

    :cond_2d
    move v2, p4

    goto :goto_1f

    :goto_2f
    if-eq v5, v3, :cond_3c

    .line 1476
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v6, 0x0

    const/4 v9, 0x0

    const-string/jumbo v7, "ringerModeExternal"

    move-object v8, p3

    invoke-static/range {v4 .. v9}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1480
    :cond_3c
    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    return v2
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .registers 16

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, p2, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    .line 1405
    :goto_7
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v4, v3, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz v4, :cond_17

    if-ne v4, v1, :cond_20

    iget-object v3, v3, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1407
    invoke-static {v3}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1410
    :cond_17
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    :cond_20
    const/4 v3, -0x1

    if-eqz p2, :cond_49

    const/4 p5, 0x2

    if-eq p2, v1, :cond_29

    if-eq p2, p5, :cond_29

    goto :goto_61

    :cond_29
    if-eqz v2, :cond_41

    if-nez p1, :cond_41

    .line 1424
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v5, v4, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eq v5, p5, :cond_5f

    const/4 p5, 0x3

    if-eq v5, p5, :cond_5f

    if-ne v5, v1, :cond_41

    iget-object p5, v4, Lcom/android/server/notification/ZenModeHelper;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 1428
    invoke-static {p5}, Landroid/service/notification/ZenModeConfig;->areAllPriorityOnlyRingerSoundsMuted(Landroid/service/notification/ZenModeConfig;)Z

    move-result p5

    if-eqz p5, :cond_41

    goto :goto_5f

    .line 1431
    :cond_41
    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget p5, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-eqz p5, :cond_61

    move p5, v0

    goto :goto_62

    :cond_49
    if-eqz v2, :cond_61

    .line 1415
    iget-boolean p5, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz p5, :cond_61

    .line 1416
    iget-object p5, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    iget v0, p5, Lcom/android/server/notification/ZenModeHelper;->mZenMode:I

    if-nez v0, :cond_57

    move v0, v1

    goto :goto_58

    :cond_57
    move v0, v3

    .line 1419
    :goto_58
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p5, v1}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetPreviousRingerModeSetting(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    :cond_5f
    :goto_5f
    move p5, p2

    goto :goto_63

    :cond_61
    :goto_61
    move p5, p2

    :goto_62
    move v0, v3

    :goto_63
    if-eq v0, v3, :cond_71

    .line 1438
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v7, "ringerModeInternal"

    move v5, v0

    invoke-static/range {v4 .. v9}, Lcom/android/server/notification/ZenModeHelper;->-$$Nest$msetManualZenMode(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_71
    if-nez v2, :cond_77

    if-ne v0, v3, :cond_77

    if-eq p4, p5, :cond_7a

    .line 1442
    :cond_77
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    :cond_7a
    return p5
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "ZenModeHelper"

    return-object p0
.end method
