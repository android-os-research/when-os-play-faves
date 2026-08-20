.class public Lcom/android/server/am/GPUMemoryReclaimer$Dump;
.super Ljava/lang/Object;
.source "PerProcessNandswap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/GPUMemoryReclaimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Dump"
.end annotation


# instance fields
.field public self:Lcom/android/server/am/GPUMemoryReclaimer;

.field public final synthetic this$0:Lcom/android/server/am/GPUMemoryReclaimer;


# direct methods
.method public static synthetic $r8$lambda$QMQHuTwmHxxJ1aspZq0gKqvlSRA(Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->lambda$meminfo$0(Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/am/GPUMemoryReclaimer;Lcom/android/server/am/GPUMemoryReclaimer;)V
    .registers 3

    .line 2532
    iput-object p1, p0, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->this$0:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/GPUMemoryReclaimer;Lcom/android/server/am/GPUMemoryReclaimer;Lcom/android/server/am/GPUMemoryReclaimer$Dump-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/GPUMemoryReclaimer$Dump;-><init>(Lcom/android/server/am/GPUMemoryReclaimer;Lcom/android/server/am/GPUMemoryReclaimer;)V

    return-void
.end method

.method public static synthetic lambda$meminfo$0(Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;)I
    .registers 2

    .line 2616
    invoke-virtual {p0}, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->getPid()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->getPid()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public meminfo(Ljava/io/PrintWriter;)V
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2610
    iget-object v0, v1, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {v0}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    move-result-object v0

    if-nez v0, :cond_12

    const-string v0, "VendorPlugin is not initialized"

    .line 2611
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2615
    :cond_12
    iget-object v0, v1, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {v0}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->getReclaimableTasks()Ljava/util/ArrayList;

    move-result-object v0

    .line 2616
    new-instance v3, Lcom/android/server/am/GPUMemoryReclaimer$Dump$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/am/GPUMemoryReclaimer$Dump$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    const-string v3, "MemInfo"

    .line 2618
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2619
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2620
    new-instance v4, Ljava/util/ArrayList;

    const-string/jumbo v5, "pid"

    const-string/jumbo v6, "name"

    const-string/jumbo v7, "resident"

    const-string/jumbo v8, "reclaimed"

    const-string/jumbo v9, "raw"

    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2622
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2625
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-wide/16 v5, 0x0

    move-wide v7, v5

    :goto_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x5

    if-eqz v0, :cond_d4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;

    .line 2626
    invoke-virtual {v0}, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->getPid()I

    move-result v15

    .line 2628
    :try_start_69
    iget-object v9, v1, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {v9}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$Utils;

    move-result-object v9

    invoke-virtual {v9, v15}, Lcom/android/server/am/GPUMemoryReclaimer$Utils;->getProcessName(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_77

    const-string v9, "(unknown)"

    .line 2630
    :cond_77
    invoke-virtual {v0}, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->getMeminfoRaw()[J

    move-result-object v16

    .line 2631
    invoke-virtual {v0}, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->getResident()J

    move-result-wide v17

    .line 2632
    invoke-virtual {v0}, Lcom/android/server/am/GPUMemoryReclaimer$ReclaimableTask;->getReclaimed()J

    move-result-wide v19

    .line 2634
    new-instance v0, Ljava/util/ArrayList;

    new-array v14, v14, [Ljava/lang/String;

    .line 2635
    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v14, v13

    aput-object v9, v14, v12

    .line 2636
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v11

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v10

    invoke-static/range {v16 .. v16}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v14, v10

    .line 2634
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2637
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_ac} :catch_b1

    add-long v5, v5, v17

    add-long v7, v7, v19

    goto :goto_54

    :catch_b1
    move-exception v0

    .line 2641
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " : cannot find GPU memory info: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_54

    .line 2645
    :cond_d4
    new-instance v0, Ljava/util/ArrayList;

    new-array v4, v14, [Ljava/lang/String;

    const-string v9, "TOTAL"

    aput-object v9, v4, v13

    const-string v9, "-"

    aput-object v9, v4, v12

    .line 2647
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, ""

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 2645
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2648
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2650
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->printTable(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final meminfoPid(Ljava/io/PrintWriter;I)V
    .registers 11

    const-string v0, " "

    .line 2655
    iget-object v1, p0, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {v1}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    move-result-object v1

    if-nez v1, :cond_10

    const-string p0, "VendorPlugin is not initialized"

    .line 2656
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2661
    :cond_10
    :try_start_10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2662
    iget-object v1, p0, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {v1}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmUtils(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$Utils;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/am/GPUMemoryReclaimer$Utils;->getProcessName(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_23

    const-string v1, "(unknown)"

    .line 2664
    :cond_23
    iget-object v2, p0, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {v2}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->getMeminfoRaw(I)[J

    move-result-object v2

    .line 2665
    iget-object v3, p0, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {v3}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->calculateResident([J)J

    move-result-wide v3

    .line 2666
    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {p0}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->calculateReclaimed([J)J

    move-result-wide v5

    .line 2668
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2669
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2670
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2668
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_78} :catch_79

    goto :goto_8e

    .line 2672
    :catch_79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "gmr: failed to get meminfo pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_8e
    return-void
.end method

.method public final printTable(Ljava/io/PrintWriter;Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 p0, 0x0

    .line 2677
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 2678
    invoke-static {v0, p0}, Ljava/util/Arrays;->fill([II)V

    .line 2679
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move v3, p0

    .line 2680
    :goto_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_14

    .line 2681
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2682
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 2683
    aget v5, v0, v3

    if-le v5, v4, :cond_36

    move v4, v5

    :cond_36
    aput v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 2687
    :cond_3b
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, ""

    move v3, p0

    .line 2689
    :goto_4e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_8b

    .line 2690
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2691
    aget v5, v0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    :goto_63
    if-lez v5, :cond_79

    .line 2692
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v5, v5, -0x1

    goto :goto_63

    .line 2694
    :cond_79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    .line 2696
    :cond_8b
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3f

    :cond_8f
    return-void
.end method

.method public run(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 2536
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x1

    if-gt v0, v1, :cond_47

    const-string p2, "== GMR dump start =="

    .line 2537
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Configurations"

    .line 2538
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2539
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  feature enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$sfgetFEATURE_ENABLED()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2540
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  vendor_plugin: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/GPUMemoryReclaimer;->getVendorPluginName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2542
    invoke-virtual {p0, p1}, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->meminfo(Ljava/io/PrintWriter;)V

    const-string p0, "== GMR dump end =="

    .line 2544
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_75

    .line 2547
    :cond_47
    invoke-static {}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$sfgetIS_SHIP_BUILD()Z

    move-result v0

    if-eqz v0, :cond_54

    const-string/jumbo p0, "gmr: command failed in ship build"

    .line 2548
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_75

    .line 2550
    :cond_54
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->runCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_57} :catch_58

    goto :goto_75

    :catch_58
    move-exception p0

    .line 2554
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "gmr: exception "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2555
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_75
    return-void
.end method

.method public runCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9

    const-string v0, "dump "

    const/4 v1, 0x1

    .line 2561
    aget-object v1, p2, v1

    :try_start_5
    const-string/jumbo v2, "setprop"

    .line 2563
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v2, :cond_1d

    array-length v2, p2

    const/4 v5, 0x4

    if-ne v2, v5, :cond_1d

    .line 2564
    aget-object v2, p2, v4

    aget-object p2, p2, v3

    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->setprop(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b8

    :cond_1d
    const-string/jumbo v2, "meminfo"

    .line 2565
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_96

    const-string v5, " : invalid command"

    if-eqz v2, :cond_54

    .line 2566
    :try_start_28
    array-length v2, p2

    if-ne v2, v4, :cond_30

    .line 2567
    invoke-virtual {p0, p1}, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->meminfo(Ljava/io/PrintWriter;)V

    goto/16 :goto_b8

    .line 2568
    :cond_30
    array-length v2, p2

    if-ne v2, v3, :cond_3e

    .line 2569
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 2570
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->meminfoPid(Ljava/io/PrintWriter;I)V

    goto/16 :goto_b8

    .line 2572
    :cond_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b8

    :cond_54
    const-string/jumbo v2, "swapOut"

    .line 2574
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6a

    array-length v2, p2

    if-ne v2, v3, :cond_6a

    .line 2575
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 2576
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->swapOut(Ljava/io/PrintWriter;I)V

    goto :goto_b8

    :cond_6a
    const-string/jumbo v2, "swapIn"

    .line 2577
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_80

    array-length v2, p2

    if-ne v2, v3, :cond_80

    .line 2578
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 2579
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->swapIn(Ljava/io/PrintWriter;I)V

    goto :goto_b8

    .line 2581
    :cond_80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_95} :catch_96

    goto :goto_b8

    :catch_96
    move-exception p0

    .line 2584
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_b8
    return-void
.end method

.method public final setprop(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, " "

    const-string v1, "dump setprop "

    :try_start_4
    const-string/jumbo v2, "vendor_plugin"

    .line 2593
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 2594
    invoke-static {}, Lcom/android/server/am/GPUMemoryReclaimer;->getVendorPluginName()Ljava/lang/String;

    move-result-object v2

    .line 2595
    invoke-static {p3}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$sfput__VendorPluginName(Ljava/lang/String;)V

    .line 2600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2601
    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {p0}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$minit(Lcom/android/server/am/GPUMemoryReclaimer;)V

    goto :goto_80

    .line 2597
    :cond_3a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: invalid key"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_57} :catch_58

    return-void

    :catch_58
    move-exception p0

    .line 2603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2604
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_80
    return-void
.end method

.method public final swapIn(Ljava/io/PrintWriter;I)V
    .registers 5

    .line 2710
    iget-object v0, p0, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {v0}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p0, "Vendor plugin not initialized"

    .line 2711
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2714
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {p0}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->swapIn(I)I

    move-result p0

    .line 2715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Triggered swap-in for pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ret="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final swapOut(Ljava/io/PrintWriter;I)V
    .registers 5

    .line 2701
    iget-object v0, p0, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {v0}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p0, "Vendor plugin not initialized"

    .line 2702
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 2705
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/GPUMemoryReclaimer$Dump;->self:Lcom/android/server/am/GPUMemoryReclaimer;

    invoke-static {p0}, Lcom/android/server/am/GPUMemoryReclaimer;->-$$Nest$fgetmVendorPlugin(Lcom/android/server/am/GPUMemoryReclaimer;)Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/GPUMemoryReclaimer$VendorPlugin;->swapOut(I)I

    move-result p0

    .line 2706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Triggered swap-out for pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " ret="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
