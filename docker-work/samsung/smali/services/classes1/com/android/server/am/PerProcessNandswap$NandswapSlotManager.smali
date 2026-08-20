.class public final Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PerProcessNandswap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NandswapSlotManager"
.end annotation


# instance fields
.field public mMaxSlots:I

.field public mSlotLifetime:I

.field public mSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/PerProcessNandswap$NandswapSlot;",
            ">;"
        }
    .end annotation
.end field

.field public self:Lcom/android/server/am/PerProcessNandswap;

.field public final synthetic this$0:Lcom/android/server/am/PerProcessNandswap;


# direct methods
.method public static bridge synthetic -$$Nest$msetMaxSlots(Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->setMaxSlots(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/PerProcessNandswap;II)V
    .registers 5

    .line 1989
    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->this$0:Lcom/android/server/am/PerProcessNandswap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1985
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    .line 1990
    iput-object p2, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->self:Lcom/android/server/am/PerProcessNandswap;

    .line 1991
    iput p3, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mMaxSlots:I

    .line 1992
    iput p4, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlotLifetime:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/PerProcessNandswap;IILcom/android/server/am/PerProcessNandswap$NandswapSlotManager-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;-><init>(Lcom/android/server/am/PerProcessNandswap;Lcom/android/server/am/PerProcessNandswap;II)V

    return-void
.end method


# virtual methods
.method public addApp(Ljava/lang/String;I)V
    .registers 7

    .line 2004
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2006
    :try_start_3
    invoke-static {p1, p2}, Lcom/android/server/am/PerProcessNandswap$NandswapLogger;->saveSlotAddLog(Ljava/lang/String;I)V

    .line 2007
    iget-object v1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;

    iget-object v3, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->this$0:Lcom/android/server/am/PerProcessNandswap;

    iget p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlotLifetime:I

    invoke-direct {v2, v3, p1, p2, p0}, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;-><init>(Lcom/android/server/am/PerProcessNandswap;Ljava/lang/String;II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2008
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw p0
.end method

.method public decreaseLifetimeByAppEntry(Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;)V
    .registers 8

    .line 2031
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2033
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_59

    .line 2034
    iget-object v2, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;

    .line 2035
    iget v3, v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->lifetime:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->lifetime:I

    if-gtz v3, :cond_56

    .line 2039
    iget-object v3, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->self:Lcom/android/server/am/PerProcessNandswap;

    iget-object v4, v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->pid:I

    invoke-static {v3, v4, v5}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$mgetProcessRecord(Lcom/android/server/am/PerProcessNandswap;Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 2041
    invoke-static {p1, v3}, Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;->-$$Nest$mevictRequest(Lcom/android/server/am/PerProcessNandswap$NandswapMsgHandler;Lcom/android/server/am/ProcessRecord;)V

    goto :goto_56

    .line 2044
    :cond_2d
    invoke-static {}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to evict, but app does not exist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "already killed"

    .line 2045
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->removeSlot(Lcom/android/server/am/PerProcessNandswap$NandswapSlot;Ljava/lang/String;)V

    :cond_56
    :goto_56
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2049
    :cond_59
    monitor-exit v0

    return-void

    :catchall_5b
    move-exception p0

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_3 .. :try_end_5d} :catchall_5b

    throw p0
.end method

.method public dumpApps(Ljava/io/PrintWriter;)V
    .registers 8

    .line 2061
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2062
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;

    .line 2065
    iget-object v3, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->this$0:Lcom/android/server/am/PerProcessNandswap;

    iget-object v4, v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->pid:I

    invoke-static {v3, v4, v5}, Lcom/android/server/am/PerProcessNandswap;->-$$Nest$mgetProcessRecord(Lcom/android/server/am/PerProcessNandswap;Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    if-nez v3, :cond_24

    const-string v3, " killed"

    goto :goto_45

    .line 2069
    :cond_24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " adj="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ppnState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->ppnState:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2070
    :goto_45
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "(pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") life="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->lifetime:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 2072
    :cond_73
    monitor-exit v0

    return-void

    :catchall_75
    move-exception p0

    monitor-exit v0
    :try_end_77
    .catchall {:try_start_3 .. :try_end_77} :catchall_75

    throw p0
.end method

.method public isEmpty()Z
    .registers 1

    .line 2057
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isFull()Z
    .registers 2

    .line 2053
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mMaxSlots:I

    if-lt v0, p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public removeApp(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 2012
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2013
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_24

    .line 2014
    iget-object v2, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;

    .line 2015
    iget-object v3, v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->processName:Ljava/lang/String;

    if-ne p1, v3, :cond_21

    iget v3, v2, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->pid:I

    if-ne p2, v3, :cond_21

    .line 2016
    invoke-virtual {p0, v2, p3}, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->removeSlot(Lcom/android/server/am/PerProcessNandswap$NandswapSlot;Ljava/lang/String;)V

    goto :goto_24

    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 2020
    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception p0

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public final removeSlot(Lcom/android/server/am/PerProcessNandswap$NandswapSlot;Ljava/lang/String;)V
    .registers 6

    .line 2024
    iget-object v0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2025
    :try_start_3
    iget-object v1, p1, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/PerProcessNandswap$NandswapSlot;->pid:I

    invoke-static {v1, v2, p2}, Lcom/android/server/am/PerProcessNandswap$NandswapLogger;->saveSlotDeleteLog(Ljava/lang/String;ILjava/lang/String;)V

    .line 2026
    iget-object p0, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlots:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2027
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public final setMaxSlots(I)V
    .registers 2

    .line 1996
    iput p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mMaxSlots:I

    return-void
.end method

.method public final setSlotLifetime(I)V
    .registers 2

    .line 2000
    iput p1, p0, Lcom/android/server/am/PerProcessNandswap$NandswapSlotManager;->mSlotLifetime:I

    return-void
.end method
