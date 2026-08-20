.class Lcom/android/internal/util/StateMachine$LogRecords;
.super Ljava/lang/Object;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogRecords"
.end annotation


# static fields
.field private static final blacklist DEFAULT_SIZE:I = 0x14


# instance fields
.field private blacklist mCount:I

.field private blacklist mLogOnlyTransitions:Z

.field private blacklist mLogRecVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/internal/util/StateMachine$LogRec;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMaxSize:I

.field private blacklist mOldestIndex:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLogRecVector(Lcom/android/internal/util/StateMachine$LogRecords;)Ljava/util/Vector;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxSize(Lcom/android/internal/util/StateMachine$LogRecords;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    return p0
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 581
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    .line 582
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    .line 583
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    .line 584
    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    .line 585
    iput-boolean v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z

    .line 591
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/util/StateMachine$LogRecords-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/util/StateMachine$LogRecords;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized blacklist add(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    .registers 16
    .param p1, "sm"    # Lcom/android/internal/util/StateMachine;
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "messageInfo"    # Ljava/lang/String;
    .param p4, "state"    # Lcom/android/internal/util/IState;
    .param p5, "orgState"    # Lcom/android/internal/util/IState;
    .param p6, "transToState"    # Lcom/android/internal/util/IState;

    monitor-enter p0

    .line 668
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    .line 669
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    if-ge v0, v1, :cond_23

    .line 670
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    new-instance v8, Lcom/android/internal/util/StateMachine$LogRec;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/StateMachine$LogRec;-><init>(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V

    invoke-virtual {v0, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_44

    .line 672
    .end local p0    # "this":Lcom/android/internal/util/StateMachine$LogRecords;
    :cond_23
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/util/StateMachine$LogRec;

    .line 673
    .local v1, "pmi":Lcom/android/internal/util/StateMachine$LogRec;
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    .line 674
    iget v2, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    if-lt v0, v2, :cond_3b

    .line 675
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    .line 677
    :cond_3b
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/util/StateMachine$LogRec;->update(Lcom/android/internal/util/StateMachine;Landroid/os/Message;Ljava/lang/String;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;Lcom/android/internal/util/IState;)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_46

    .line 679
    .end local v1    # "pmi":Lcom/android/internal/util/StateMachine$LogRec;
    :goto_44
    monitor-exit p0

    return-void

    .line 667
    .end local p1    # "sm":Lcom/android/internal/util/StateMachine;
    .end local p2    # "msg":Landroid/os/Message;
    .end local p3    # "messageInfo":Ljava/lang/String;
    .end local p4    # "state":Lcom/android/internal/util/IState;
    .end local p5    # "orgState":Lcom/android/internal/util/IState;
    .end local p6    # "transToState":Lcom/android/internal/util/IState;
    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist cleanup()V
    .registers 2

    monitor-enter p0

    .line 634
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 635
    monitor-exit p0

    return-void

    .line 633
    .end local p0    # "this":Lcom/android/internal/util/StateMachine$LogRecords;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized blacklist count()I
    .registers 2

    monitor-enter p0

    .line 627
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 627
    .end local p0    # "this":Lcom/android/internal/util/StateMachine$LogRecords;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized blacklist get(I)Lcom/android/internal/util/StateMachine$LogRec;
    .registers 4
    .param p1, "index"    # I

    monitor-enter p0

    .line 643
    :try_start_1
    iget v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    add-int/2addr v0, p1

    .line 644
    .local v0, "nextIndex":I
    iget v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    if-lt v0, v1, :cond_9

    .line 645
    sub-int/2addr v0, v1

    .line 647
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine$LogRecords;->size()I

    move-result v1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_1c

    if-lt v0, v1, :cond_12

    .line 648
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 650
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/StateMachine$LogRec;
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1c

    monitor-exit p0

    return-object v1

    .line 642
    .end local v0    # "nextIndex":I
    .end local p0    # "this":Lcom/android/internal/util/StateMachine$LogRecords;
    .end local p1    # "index":I
    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist logOnlyTransitions()Z
    .registers 2

    monitor-enter p0

    .line 613
    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 613
    .end local p0    # "this":Lcom/android/internal/util/StateMachine$LogRecords;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized blacklist setLogOnlyTransitions(Z)V
    .registers 2
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 609
    :try_start_1
    iput-boolean p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogOnlyTransitions:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 610
    monitor-exit p0

    return-void

    .line 608
    .end local p0    # "this":Lcom/android/internal/util/StateMachine$LogRecords;
    .end local p1    # "enable":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist setSize(I)V
    .registers 3
    .param p1, "maxSize"    # I

    monitor-enter p0

    .line 602
    :try_start_1
    iput p1, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mMaxSize:I

    .line 603
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mOldestIndex:I

    .line 604
    iput v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mCount:I

    .line 605
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 606
    monitor-exit p0

    return-void

    .line 601
    .end local p0    # "this":Lcom/android/internal/util/StateMachine$LogRecords;
    .end local p1    # "maxSize":I
    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized blacklist size()I
    .registers 2

    monitor-enter p0

    .line 620
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/util/StateMachine$LogRecords;->mLogRecVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return v0

    .line 620
    .end local p0    # "this":Lcom/android/internal/util/StateMachine$LogRecords;
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
