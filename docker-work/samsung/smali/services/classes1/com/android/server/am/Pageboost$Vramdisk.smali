.class public final Lcom/android/server/am/Pageboost$Vramdisk;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Vramdisk"
.end annotation


# static fields
.field public static final DEVICE_SEGMENT_MID_RAMSIZE:J = 0x180000000L

.field public static ENABLED:Z = false

.field public static final MAX_QUOTA_PER_APP:J = 0x6400000L


# instance fields
.field public amount_mlocked:J

.field public mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

.field public mFixedApps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mMlockManager:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/Pageboost$VramdiskMlockManager;",
            ">;"
        }
    .end annotation
.end field

.field public num_apps:I


# direct methods
.method public static bridge synthetic -$$Nest$sfgetENABLED()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 759
    iput v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    const-wide/16 v0, 0x0

    .line 760
    iput-wide v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    .line 763
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 766
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mMlockManager:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 769
    iput-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mFixedApps:Ljava/util/LinkedList;

    return-void
.end method

.method public static getDalvikcacheFileList(Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 782
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const-string v1, "/system/"

    .line 783
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v1, "/product/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    :cond_15
    const-string v0, "/data/dalvik-cache/arm/"

    const-string v1, "/data/dalvik-cache/arm64/"

    .line 786
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "art"

    const-string v2, "dex"

    const-string/jumbo v3, "vdex"

    .line 787
    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x2f

    const/16 v4, 0x40

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@classes."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 789
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_4d
    const/4 v5, 0x2

    if-ge v4, v5, :cond_7e

    move v5, v3

    :goto_51
    const/4 v6, 0x3

    if-ge v5, v6, :cond_7b

    .line 793
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 794
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 795
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 796
    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_80

    :cond_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    :cond_7b
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    :cond_7e
    move-object v0, v2

    goto :goto_85

    :catch_80
    move-exception p0

    const/4 v0, 0x0

    .line 803
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_85
    :goto_85
    return-object v0
.end method

.method public static getFilesVramdiskStaticTarget(Ljava/lang/String;[J)Ljava/util/LinkedList;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J)",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 812
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    .line 814
    aput-wide v3, p1, v2

    const/4 v5, 0x0

    .line 816
    :try_start_d
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_19

    return-object v5

    .line 820
    :cond_19
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 821
    invoke-virtual {v7, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 822
    :cond_21
    :goto_21
    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b1

    .line 823
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    .line 824
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v8, v6

    move v9, v2

    :goto_33
    if-ge v9, v8, :cond_21

    aget-object v10, v6, v9

    .line 825
    invoke-virtual {v10}, Ljava/io/File;->isDirectory()Z

    move-result v11

    if-eqz v11, :cond_41

    .line 826
    invoke-virtual {v7, v10}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a7

    .line 828
    :cond_41
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v11

    .line 829
    aget-wide v13, p1, v2

    add-long/2addr v13, v11

    const-wide/32 v15, 0x6400000

    cmp-long v13, v13, v15

    if-lez v13, :cond_50

    goto :goto_21

    .line 832
    :cond_50
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 833
    aget-wide v13, p1, v2

    add-long/2addr v13, v11

    aput-wide v13, p1, v2

    .line 836
    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a7

    const-string v10, "/system/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_76

    const-string v10, "/product/"

    invoke-virtual {v0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a7

    .line 838
    :cond_76
    invoke-static/range {p0 .. p0}, Lcom/android/server/am/Pageboost$Vramdisk;->getDalvikcacheFileList(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v10

    if-eqz v10, :cond_a7

    .line 840
    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_80
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/io/File;

    .line 841
    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v12

    .line 842
    aget-wide v17, p1, v2

    add-long v17, v17, v12

    cmp-long v14, v17, v15

    if-lez v14, :cond_99

    goto :goto_a7

    .line 845
    :cond_99
    invoke-virtual {v11}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 846
    aget-wide v17, p1, v2

    add-long v17, v17, v12

    aput-wide v17, p1, v2
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_a6} :catch_aa

    goto :goto_80

    :cond_a7
    :goto_a7
    add-int/lit8 v9, v9, 0x1

    goto :goto_33

    :catch_aa
    move-exception v0

    .line 854
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 855
    aput-wide v3, p1, v2

    move-object v1, v5

    :cond_b1
    return-object v1
.end method

.method public static setConfiguration(J)V
    .registers 5

    .line 775
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dram size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetPAGEBOOST_IGNORE_DRAM_SPECIFICATION()Z

    move-result v0

    if-nez v0, :cond_2a

    const-wide v0, 0x180000000L

    cmp-long p0, p0, v0

    if-ltz p0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 p0, 0x1

    :goto_2b
    sput-boolean p0, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    return-void
.end method


# virtual methods
.method public addApp(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 871
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v1, p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->contains(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_28

    .line 872
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "already mlocked : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 877
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isApkPathCorrect()Z

    move-result v1

    if-nez v1, :cond_2f

    return v0

    .line 881
    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$Vramdisk;->createMlockInfo(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    move-result-object v1

    if-nez v1, :cond_51

    .line 883
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "vramdisk failed to add : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 887
    :cond_51
    invoke-static {p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->-$$Nest$mgetSizeForVramdisk(Lcom/android/server/am/Pageboost$PageboostAppInfo;)J

    move-result-wide v3

    .line 890
    iget v5, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    .line 892
    iget-wide v5, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    add-long/2addr v5, v3

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/Pageboost$Vramdisk;->setMlockSize(J)V

    .line 893
    iget-object v5, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v5, p1, v0}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 894
    invoke-virtual {p0, v1}, Lcom/android/server/am/Pageboost$Vramdisk;->mlockAll(Lcom/android/server/am/Pageboost$VramdiskMlockManager;)V

    .line 896
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vramdisk add : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", size : , stat : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vramdisk add,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    return v2
.end method

.method public applyFixedApp(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V
    .registers 5

    if-eqz p1, :cond_27

    .line 955
    iget-object v0, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/Pageboost$Vramdisk;->inFixedAppList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 956
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyFixedApp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$Vramdisk;->addApp(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    :cond_27
    return-void
.end method

.method public applyFixedAppList()V
    .registers 6

    .line 939
    iget-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mFixedApps:Ljava/util/LinkedList;

    if-nez v0, :cond_5

    return-void

    .line 943
    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 944
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyFixedAppList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetmGlobalAppLRU()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 948
    invoke-virtual {p0, v1}, Lcom/android/server/am/Pageboost$Vramdisk;->addApp(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    goto :goto_9

    :cond_3b
    return-void
.end method

.method public createMlockInfo(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Lcom/android/server/am/Pageboost$VramdiskMlockManager;
    .registers 5

    const/4 p0, 0x1

    new-array p0, p0, [J

    const-wide/16 v0, 0x0

    .line 982
    invoke-static {p1, v0, v1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->-$$Nest$msetSizeForVramdisk(Lcom/android/server/am/Pageboost$PageboostAppInfo;J)V

    .line 983
    iget-object v0, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/server/am/Pageboost$Vramdisk;->getFilesVramdiskStaticTarget(Ljava/lang/String;[J)Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    aget-wide v1, p0, v1

    .line 985
    invoke-static {p1, v1, v2}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->-$$Nest$msetSizeForVramdisk(Lcom/android/server/am/Pageboost$PageboostAppInfo;J)V

    .line 986
    new-instance p0, Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    invoke-direct {p0, v0}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;-><init>(Ljava/util/LinkedList;)V

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return-object p0
.end method

.method public gatherFixedApps(Ljava/util/LinkedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 927
    sget-boolean v0, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_8

    return-void

    .line 933
    :cond_8
    iput-object p1, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mFixedApps:Ljava/util/LinkedList;

    return-void
.end method

.method public inFixedAppList(Ljava/lang/String;)Z
    .registers 3

    .line 965
    iget-object p0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mFixedApps:Ljava/util/LinkedList;

    if-eqz p0, :cond_1c

    .line 966
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 967
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method public mlockAll(Lcom/android/server/am/Pageboost$VramdiskMlockManager;)V
    .registers 2

    .line 992
    iget-object p0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mMlockManager:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 993
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->mlockAllFiles()V

    return-void
.end method

.method public munlockAll(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V
    .registers 3

    .line 997
    iget-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    iget-object v0, v0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 998
    iget-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mMlockManager:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    if-eqz p1, :cond_20

    .line 1001
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->hasPinnedFile()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1002
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->munlockAllFiles()V

    .line 1003
    :cond_1b
    iget-object p0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mMlockManager:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method public removeApp(Lcom/android/server/am/Pageboost$PageboostAppInfo;Ljava/lang/String;I)V
    .registers 11

    if-nez p1, :cond_3

    return-void

    .line 909
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->contains(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    .line 913
    :cond_c
    invoke-static {p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->-$$Nest$mgetSizeForVramdisk(Lcom/android/server/am/Pageboost$PageboostAppInfo;)J

    move-result-wide v0

    .line 914
    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$Vramdisk;->munlockAll(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V

    .line 916
    iget-object v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v2, p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    .line 917
    iget v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    .line 918
    iget-wide v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/Pageboost$Vramdisk;->setMlockSize(J)V

    .line 920
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vramdisk remove : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", stat : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vramdisk remove,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    return-void
.end method

.method public final setMlockSize(J)V
    .registers 5

    .line 1018
    iput-wide p1, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-gez p1, :cond_a

    .line 1020
    iput-wide v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    :cond_a
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "amount per app : 104857600\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[cur] app : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1011
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "amount : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "per-app info : \n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1013
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {p0}, Lcom/android/server/am/Pageboost$PageboostAppList;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
