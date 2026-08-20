.class public final Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;
.super Lcom/android/internal/util/RingBuffer;
.source "NetworkPolicyLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/util/RingBuffer<",
        "Lcom/android/server/net/NetworkPolicyLogger$Data;",
        ">;"
    }
.end annotation


# static fields
.field public static final sDate:Ljava/util/Date;

.field public static final sFormatter:Ljava/text/SimpleDateFormat;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 425
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd\'T\'HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 427
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 430
    const-class v0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    invoke-direct {p0, v0, p1}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method public appIdleStateChanged(IZ)V
    .registers 4

    .line 526
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 529
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0x8

    .line 530
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 531
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 532
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 533
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public appIdleWlChanged(IZ)V
    .registers 4

    .line 537
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 540
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xe

    .line 541
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 542
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 543
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 544
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public deviceIdleModeEnabled(Z)V
    .registers 4

    .line 516
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 519
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x7

    .line 520
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 521
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 522
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public event(Ljava/lang/String;)V
    .registers 4

    .line 448
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 451
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x0

    .line 452
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 453
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public firewallChainEnabled(IZ)V
    .registers 4

    .line 584
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 587
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xc

    .line 588
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 589
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 590
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public final formatDate(J)Ljava/lang/String;
    .registers 3

    .line 694
    sget-object p0, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sDate:Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 695
    sget-object p1, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContent(Lcom/android/server/net/NetworkPolicyLogger$Data;)Ljava/lang/String;
    .registers 4

    .line 647
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    packed-switch p0, :pswitch_data_e0

    .line 689
    :pswitch_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 686
    :pswitch_a
    iget-wide v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    iget-object p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetSubscriptionPlanChangedLog(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 683
    :pswitch_13
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetMeteredDenylistChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 681
    :pswitch_1c
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetMeteredAllowlistChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 670
    :pswitch_25
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetAppIdleWlChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 679
    :pswitch_2e
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetFirewallChainEnabledLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 677
    :pswitch_37
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetUidFirewallRuleChangedLog(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 674
    :pswitch_42
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetTempPowerSaveWlChangedLog(IZILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 672
    :pswitch_4f
    iget-boolean p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetParoleStateChanged(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 668
    :pswitch_56
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetAppIdleChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 666
    :pswitch_5f
    iget-boolean p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetDeviceIdleModeEnabled(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 664
    :pswitch_66
    iget-boolean p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetRestrictBackgroundChangedLog(ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 662
    :pswitch_6f
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-static {p0}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetUserRemovedLog(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 660
    :pswitch_76
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget-boolean p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    invoke-static {p0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetMeterednessChangedLog(IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 658
    :pswitch_7f
    iget p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    invoke-static {p0, v0, p1}, Lcom/android/server/net/NetworkPolicyLogger;->-$$Nest$smgetPolicyChangedLog(III)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 654
    :pswitch_8a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 655
    invoke-static {v1}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 651
    :pswitch_bb
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    iget v1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    iget p1, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield4:I

    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService$UidBlockedState;->toString(III)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 649
    :pswitch_dc
    iget-object p0, p1, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    return-object p0

    nop

    :pswitch_data_e0
    .packed-switch 0x0
        :pswitch_dc
        :pswitch_bb
        :pswitch_8a
        :pswitch_7f
        :pswitch_76
        :pswitch_6f
        :pswitch_66
        :pswitch_5f
        :pswitch_56
        :pswitch_4f
        :pswitch_42
        :pswitch_37
        :pswitch_2e
        :pswitch_5
        :pswitch_25
        :pswitch_1c
        :pswitch_13
        :pswitch_a
    .end packed-switch
.end method

.method public meteredAllowlistChanged(IZ)V
    .registers 4

    .line 595
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 598
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xf

    .line 599
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 600
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 601
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 602
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public meteredDenylistChanged(IZ)V
    .registers 4

    .line 606
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 609
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0x10

    .line 610
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 611
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 612
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public meterednessChanged(IZ)V
    .registers 4

    .line 484
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 487
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x4

    .line 488
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 489
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 490
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public networkBlocked(IIII)V
    .registers 6

    .line 459
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 462
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x1

    .line 463
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 464
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 465
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 466
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 467
    iput p4, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield4:I

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public paroleStateChanged(Z)V
    .registers 4

    .line 548
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 551
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0x9

    .line 552
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 553
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public restrictBackgroundChanged(ZZ)V
    .registers 4

    .line 505
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 508
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x6

    .line 509
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 510
    iput-boolean p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 511
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield2:Z

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public reverseDump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 6

    .line 617
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/net/NetworkPolicyLogger$Data;

    .line 618
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_9
    if-ltz v1, :cond_2f

    .line 619
    aget-object v2, v0, v1

    if-nez v2, :cond_15

    const-string v2, "NULL"

    .line 620
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2c

    .line 623
    :cond_15
    iget-wide v2, v2, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->formatDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v2, " - "

    .line 624
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 625
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/server/net/NetworkPolicyLogger$LogBuffer;->getContent(Lcom/android/server/net/NetworkPolicyLogger$Data;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    :cond_2f
    return-void
.end method

.method public subscriptionPlansChanged(I[Landroid/telephony/SubscriptionPlan;JLjava/lang/String;)V
    .registers 11

    .line 633
    array-length p1, p2

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p1, :cond_3b

    aget-object v1, p2, v0

    .line 634
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez v2, :cond_f

    return-void

    .line 637
    :cond_f
    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v3, 0x11

    .line 638
    iput v3, v2, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 639
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/SubscriptionPlan;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", calling: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 640
    iput-wide p3, v2, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    .line 641
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3b
    return-void
.end method

.method public tempPowerSaveWlChanged(IZILjava/lang/String;)V
    .registers 6

    .line 559
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 562
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xa

    .line 563
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 564
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 565
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 566
    iput-boolean p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->bfield1:Z

    .line 567
    iput-object p4, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->sfield1:Ljava/lang/String;

    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public uidFirewallRuleChanged(III)V
    .registers 5

    .line 572
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 575
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/16 v0, 0xb

    .line 576
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 577
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 578
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 579
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public uidPolicyChanged(III)V
    .registers 5

    .line 472
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 475
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x3

    .line 476
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 477
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 478
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 479
    iput p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public uidStateChanged(IIJI)V
    .registers 7

    .line 435
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 438
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x2

    .line 439
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 440
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 441
    iput p2, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield2:I

    .line 442
    iput p5, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield3:I

    .line 443
    iput-wide p3, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->lfield1:J

    .line 444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method

.method public userRemoved(I)V
    .registers 4

    .line 495
    invoke-virtual {p0}, Lcom/android/internal/util/RingBuffer;->getNextSlot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/net/NetworkPolicyLogger$Data;

    if-nez p0, :cond_9

    return-void

    .line 498
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyLogger$Data;->reset()V

    const/4 v0, 0x5

    .line 499
    iput v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->type:I

    .line 500
    iput p1, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->ifield1:I

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkPolicyLogger$Data;->timeStamp:J

    return-void
.end method
