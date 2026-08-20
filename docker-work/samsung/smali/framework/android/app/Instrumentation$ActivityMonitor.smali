.class public Landroid/app/Instrumentation$ActivityMonitor;
.super Ljava/lang/Object;
.source "Instrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityMonitor"
.end annotation


# instance fields
.field private final greylist-max-o mBlock:Z

.field private final greylist-max-o mClass:Ljava/lang/String;

.field greylist-max-o mHits:I

.field private final greylist-max-o mIgnoreMatchingSpecificIntents:Z

.field greylist-max-o mLastActivity:Landroid/app/Activity;

.field private final greylist-max-o mResult:Landroid/app/Instrumentation$ActivityResult;

.field private final greylist-max-o mWhich:Landroid/content/IntentFilter;


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 598
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 654
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 655
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 656
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 657
    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 658
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    .line 659
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/IntentFilter;Landroid/app/Instrumentation$ActivityResult;Z)V
    .registers 6
    .param p1, "which"    # Landroid/content/IntentFilter;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 598
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 615
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 616
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 617
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 618
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 619
    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    .line 620
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Landroid/app/Instrumentation$ActivityResult;Z)V
    .registers 6
    .param p1, "cls"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/app/Instrumentation$ActivityResult;
    .param p3, "block"    # Z

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 595
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    .line 598
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 637
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    .line 638
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    .line 639
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    .line 640
    iput-boolean p3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    .line 641
    iput-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    .line 642
    return-void
.end method


# virtual methods
.method public final whitelist getFilter()Landroid/content/IntentFilter;
    .registers 2

    .line 675
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    return-object v0
.end method

.method public final whitelist getHits()I
    .registers 2

    .line 698
    iget v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mHits:I

    return v0
.end method

.method public final whitelist getLastActivity()Landroid/app/Activity;
    .registers 2

    .line 706
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final whitelist getResult()Landroid/app/Instrumentation$ActivityResult;
    .registers 2

    .line 683
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mResult:Landroid/app/Instrumentation$ActivityResult;

    return-object v0
.end method

.method final greylist-max-o ignoreMatchingSpecificIntents()Z
    .registers 2

    .line 668
    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    return v0
.end method

.method public final whitelist isBlocking()Z
    .registers 2

    .line 691
    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mBlock:Z

    return v0
.end method

.method final greylist-max-o match(Landroid/content/Context;Landroid/app/Activity;Landroid/content/Intent;)Z
    .registers 9
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "intent"    # Landroid/content/Intent;

    .line 789
    iget-boolean v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mIgnoreMatchingSpecificIntents:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 790
    return v1

    .line 792
    :cond_6
    monitor-enter p0

    .line 793
    :try_start_7
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mWhich:Landroid/content/IntentFilter;

    const/4 v2, 0x1

    if-eqz v0, :cond_1a

    .line 794
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "Instrumentation"

    invoke-virtual {v0, v3, p3, v2, v4}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 796
    monitor-exit p0

    return v1

    .line 798
    :cond_1a
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_46

    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, "cls":Ljava/lang/String;
    if-eqz p2, :cond_2b

    .line 801
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_3a

    .line 802
    :cond_2b
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 803
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 805
    :cond_3a
    :goto_3a
    if-eqz v0, :cond_44

    iget-object v3, p0, Landroid/app/Instrumentation$ActivityMonitor;->mClass:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    .line 806
    :cond_44
    monitor-exit p0

    return v1

    .line 809
    .end local v0    # "cls":Ljava/lang/String;
    :cond_46
    if-eqz p2, :cond_4d

    .line 810
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 811
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 813
    :cond_4d
    monitor-exit p0

    return v2

    .line 814
    :catchall_4f
    move-exception v0

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_7 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public blacklist onStartActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .registers 5
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "options"    # Landroid/os/Bundle;

    .line 765
    invoke-virtual {p0, p2}, Landroid/app/Instrumentation$ActivityMonitor;->onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onStartActivity(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 783
    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist waitForActivity()Landroid/app/Activity;
    .registers 3

    .line 716
    monitor-enter p0

    .line 717
    :goto_1
    :try_start_1
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_11

    if-nez v0, :cond_b

    .line 719
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_11

    .line 721
    :goto_8
    goto :goto_1

    .line 720
    :catch_9
    move-exception v0

    goto :goto_8

    .line 723
    :cond_b
    nop

    .line 724
    .local v0, "res":Landroid/app/Activity;
    const/4 v1, 0x0

    :try_start_d
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 725
    monitor-exit p0

    return-object v0

    .line 726
    .end local v0    # "res":Landroid/app/Activity;
    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_11

    throw v0
.end method

.method public final whitelist waitForActivityWithTimeout(J)Landroid/app/Activity;
    .registers 5
    .param p1, "timeOut"    # J

    .line 739
    monitor-enter p0

    .line 740
    :try_start_1
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_16

    if-nez v0, :cond_a

    .line 742
    :try_start_5
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_16

    .line 744
    goto :goto_a

    .line 743
    :catch_9
    move-exception v0

    .line 746
    :cond_a
    :goto_a
    :try_start_a
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 747
    monitor-exit p0

    return-object v1

    .line 749
    :cond_11
    nop

    .line 750
    .local v0, "res":Landroid/app/Activity;
    iput-object v1, p0, Landroid/app/Instrumentation$ActivityMonitor;->mLastActivity:Landroid/app/Activity;

    .line 751
    monitor-exit p0

    return-object v0

    .line 753
    .end local v0    # "res":Landroid/app/Activity;
    :catchall_16
    move-exception v0

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_a .. :try_end_18} :catchall_16

    throw v0
.end method
