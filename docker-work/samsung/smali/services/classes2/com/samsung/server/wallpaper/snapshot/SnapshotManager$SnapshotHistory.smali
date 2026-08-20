.class public Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;
.super Ljava/lang/Object;
.source "SnapshotManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/snapshot/SnapshotManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotHistory"
.end annotation


# instance fields
.field public desc:Ljava/lang/String;

.field public key:I

.field public results:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public time:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 4

    .line 702
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    iput p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->type:I

    .line 704
    iput p2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->key:I

    .line 705
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->time:Ljava/lang/String;

    .line 706
    iput-object p3, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    iput p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->type:I

    .line 711
    iput p2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->key:I

    .line 712
    iput-object p3, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->time:Ljava/lang/String;

    .line 713
    iput-object p4, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    iput p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->type:I

    .line 697
    iput p2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->key:I

    .line 698
    iput-object p3, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->time:Ljava/lang/String;

    .line 699
    iput-object p4, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->results:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(IILjava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->type:I

    .line 690
    iput p2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->key:I

    .line 691
    invoke-static {}, Lcom/samsung/server/wallpaper/snapshot/SnapshotHelper;->getCurrentTime()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->time:Ljava/lang/String;

    .line 692
    iput-object p3, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->results:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 9

    .line 718
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 719
    iget v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->type:I

    const-string v2, "%-15s"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4e

    const/4 v5, 0x2

    if-eq v1, v5, :cond_40

    const/4 v5, 0x3

    if-eq v1, v5, :cond_32

    const/4 v5, 0x4

    if-eq v1, v5, :cond_24

    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "UNKNOWN"

    aput-object v5, v1, v3

    .line 733
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5b

    :cond_24
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "PARTIAL CLEAR"

    aput-object v5, v1, v3

    .line 730
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5b

    :cond_32
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "CLEAR"

    aput-object v5, v1, v3

    .line 727
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5b

    :cond_40
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "RESTORE"

    aput-object v5, v1, v3

    .line 724
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5b

    :cond_4e
    new-array v1, v4, [Ljava/lang/Object;

    const-string v5, "BACKUP"

    aput-object v5, v1, v3

    .line 721
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5b
    new-array v1, v4, [Ljava/lang/Object;

    .line 736
    iget v2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->key:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "key = %2d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-array v1, v4, [Ljava/lang/Object;

    .line 737
    iget-object v2, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->time:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string v2, "%30s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 738
    iget-object v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->results:Ljava/util/Map;

    const-string v2, "\t"

    if-eqz v1, :cond_119

    .line 739
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_119

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 740
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 741
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 743
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v7, v3

    const-string/jumbo v6, "{%-3d,"

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v6, -0x9

    if-eq v5, v6, :cond_10c

    const/4 v6, -0x4

    if-eq v5, v6, :cond_106

    const/4 v6, -0x3

    if-eq v5, v6, :cond_100

    const/4 v6, -0x2

    if-eq v5, v6, :cond_fa

    packed-switch v5, :pswitch_data_12e

    new-array v6, v4, [Ljava/lang/Object;

    .line 770
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    const-string v5, " %-2d"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_111

    :pswitch_e2
    const-string v5, "Migrate to prior data"

    .line 767
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_111

    :pswitch_e8
    const-string v5, "No data"

    .line 764
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_111

    :pswitch_ee
    const-string v5, "Reset to default"

    .line 761
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_111

    :pswitch_f4
    const-string v5, "Success"

    .line 758
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_111

    :cond_fa
    const-string v5, "Failed to copy file"

    .line 746
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_111

    :cond_100
    const-string v5, "Already has backup wallpaper"

    .line 749
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_111

    :cond_106
    const-string v5, "Maximum numer exceeded"

    .line 752
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_111

    :cond_10c
    const-string v5, "Unknown error"

    .line 755
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_111
    const-string/jumbo v5, "}"

    .line 773
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_8b

    .line 777
    :cond_119
    iget-object v1, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->desc:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_129

    .line 778
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/samsung/server/wallpaper/snapshot/SnapshotManager$SnapshotHistory;->desc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 781
    :cond_129
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_12e
    .packed-switch 0x3e9
        :pswitch_f4
        :pswitch_ee
        :pswitch_e8
        :pswitch_e2
    .end packed-switch
.end method
