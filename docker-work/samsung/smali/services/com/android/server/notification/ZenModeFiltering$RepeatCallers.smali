.class public Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeFiltering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepeatCallers"
.end annotation


# instance fields
.field public final mOtherCalls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final mTelCalls:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mThresholdMinutes:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmThresholdMinutes(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I
    .registers 1

    iget p0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcleanUpCallsAfter(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUpCallsAfter(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misRepeat(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->isRepeat(Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mrecordCall(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->recordCall(Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    .line 511
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized checkCallers(Landroid/content/Context;[Ljava/lang/String;Landroid/util/ArraySet;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 632
    :try_start_1
    const-class v0, Landroid/telephony/TelephonyManager;

    .line 633
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 634
    :goto_f
    array-length v2, p2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_42

    .line 635
    aget-object v2, p2, v1

    if-nez v2, :cond_18

    goto :goto_3f

    .line 637
    :cond_18
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string/jumbo v5, "tel"

    .line 638
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 639
    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 640
    invoke-virtual {p0, v2, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->checkForNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_5e

    if-eqz v2, :cond_3f

    .line 641
    monitor-exit p0

    return v3

    .line 644
    :cond_35
    :try_start_35
    iget-object v4, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_5e

    if-eqz v2, :cond_3f

    .line 645
    monitor-exit p0

    return v3

    :cond_3f
    :goto_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_42
    if-eqz p3, :cond_5c

    .line 652
    :try_start_44
    invoke-virtual {p3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_48
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 653
    invoke-virtual {p0, p3, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->checkForNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3
    :try_end_58
    .catchall {:try_start_44 .. :try_end_58} :catchall_5e

    if-eqz p3, :cond_48

    .line 654
    monitor-exit p0

    return v3

    .line 660
    :cond_5c
    monitor-exit p0

    return v0

    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized checkForNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    monitor-enter p0

    .line 609
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_33

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 611
    monitor-exit p0

    return v1

    .line 614
    :cond_c
    :try_start_c
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_30

    .line 616
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 617
    invoke-static {p1, v2, p2}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_33

    if-eqz v2, :cond_1c

    .line 619
    monitor-exit p0

    return v1

    :cond_30
    const/4 p1, 0x0

    .line 624
    monitor-exit p0

    return p1

    :catchall_33
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized cleanUp(Landroid/util/ArrayMap;J)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 547
    :try_start_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_2a

    .line 549
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v1, p2

    if-gtz v3, :cond_24

    sub-long v1, p2, v1

    .line 550
    iget v3, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    mul-int/lit16 v3, v3, 0x3e8

    mul-int/lit8 v3, v3, 0x3c

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_27

    .line 551
    :cond_24
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2c

    :cond_27
    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 554
    :cond_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized cleanUpCallsAfter(J)V
    .registers 6

    monitor-enter p0

    .line 559
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_23

    .line 560
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_20

    .line 562
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_20
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 565
    :cond_23
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_2b
    if-ltz v0, :cond_45

    .line 566
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_42

    .line 568
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_47

    :cond_42
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    .line 571
    :cond_45
    monitor-exit p0

    return-void

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized isRepeat(Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 536
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->setThresholdMinutes(Landroid/content/Context;)V

    .line 537
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    const/4 v1, 0x0

    if-lez v0, :cond_2c

    if-nez p2, :cond_c

    goto :goto_2c

    .line 538
    :cond_c
    invoke-static {p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2a

    .line 539
    array-length v0, p2

    if-nez v0, :cond_16

    goto :goto_2a

    .line 540
    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 541
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 542
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 543
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->checkCallers(Landroid/content/Context;[Ljava/lang/String;Landroid/util/ArraySet;)Z

    move-result p1
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2e

    monitor-exit p0

    return p1

    .line 539
    :cond_2a
    :goto_2a
    monitor-exit p0

    return v1

    .line 537
    :cond_2c
    :goto_2c
    monitor-exit p0

    return v1

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized recordCall(Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Bundle;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 519
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->setThresholdMinutes(Landroid/content/Context;)V

    .line 520
    iget p1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    if-lez p1, :cond_2a

    if-nez p2, :cond_b

    goto :goto_2a

    .line 521
    :cond_b
    invoke-static {p2}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 522
    array-length p2, p1

    if-nez p2, :cond_15

    goto :goto_28

    .line 523
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 524
    iget-object p2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 525
    iget-object p2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->cleanUp(Landroid/util/ArrayMap;J)V

    .line 526
    invoke-virtual {p0, p1, p3, v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->recordCallers([Ljava/lang/String;Landroid/util/ArraySet;J)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_2c

    .line 527
    monitor-exit p0

    return-void

    .line 522
    :cond_28
    :goto_28
    monitor-exit p0

    return-void

    .line 520
    :cond_2a
    :goto_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized recordCallers([Ljava/lang/String;Landroid/util/ArraySet;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 582
    :goto_2
    :try_start_2
    array-length v1, p1

    if-ge v0, v1, :cond_3b

    .line 583
    aget-object v1, p1, v0

    if-nez v1, :cond_a

    goto :goto_38

    .line 585
    :cond_a
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "tel"

    .line 586
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 589
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 590
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 593
    :cond_2f
    iget-object v2, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mOtherCalls:Landroid/util/ArrayMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_38
    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3b
    if-eqz p2, :cond_59

    .line 600
    invoke-virtual {p2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_41
    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_59

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_41

    .line 601
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mTelCalls:Landroid/util/ArrayMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catchall {:try_start_2 .. :try_end_58} :catchall_5b

    goto :goto_41

    .line 604
    :cond_59
    monitor-exit p0

    return-void

    :catchall_5b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setThresholdMinutes(Landroid/content/Context;)V
    .registers 3

    .line 574
    iget v0, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    if-gtz v0, :cond_11

    .line 575
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e013c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->mThresholdMinutes:I

    :cond_11
    return-void
.end method
