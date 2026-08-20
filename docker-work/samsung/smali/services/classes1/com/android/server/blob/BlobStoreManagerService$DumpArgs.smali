.class public final Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;
.super Ljava/lang/Object;
.source "BlobStoreManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DumpArgs"
.end annotation


# static fields
.field public static final FLAG_DUMP_BLOBS:I = 0x2

.field public static final FLAG_DUMP_CONFIG:I = 0x4

.field public static final FLAG_DUMP_SESSIONS:I = 0x1


# instance fields
.field public mDumpAll:Z

.field public final mDumpBlobIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mDumpHelp:Z

.field public final mDumpPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mDumpUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mDumpUnredacted:Z

.field public final mDumpUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSelectedSectionFlags:I


# direct methods
.method public static bridge synthetic -$$Nest$mdumpArgsUsage(Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;Landroid/util/IndentingPrintWriter;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->dumpArgsUsage(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 1806
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    .line 1729
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    .line 1730
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    .line 1731
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    return-void
.end method

.method public static getIntArgRequired([Ljava/lang/String;ILjava/lang/String;)I
    .registers 6

    .line 1855
    array-length v0, p0

    if-ge p1, v0, :cond_2b

    .line 1860
    :try_start_3
    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_9} :catch_a

    return p0

    .line 1862
    :catch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1856
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLongArgRequired([Ljava/lang/String;ILjava/lang/String;)J
    .registers 6

    .line 1868
    array-length v0, p0

    if-ge p1, v0, :cond_2b

    .line 1873
    :try_start_3
    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_9} :catch_a

    return-wide p0

    .line 1875
    :catch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1869
    :cond_2b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getStringArgRequired([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1848
    array-length v0, p0

    if-ge p1, v0, :cond_6

    .line 1851
    aget-object p0, p0, p1

    return-object p0

    .line 1849
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parse([Ljava/lang/String;)Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;
    .registers 8

    .line 1809
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    invoke-direct {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;-><init>()V

    if-nez p0, :cond_8

    return-object v0

    :cond_8
    const/4 v1, 0x0

    .line 1814
    :goto_9
    array-length v2, p0

    if-ge v1, v2, :cond_109

    .line 1815
    aget-object v2, p0, v1

    const-string v3, "--all"

    .line 1816
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_104

    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    goto/16 :goto_104

    :cond_21
    const-string v3, "--unredacted"

    .line 1818
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f7

    const-string v3, "-u"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    goto/16 :goto_f7

    :cond_33
    const-string v3, "--sessions"

    .line 1823
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1824
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->allowDumpSessions()V

    goto/16 :goto_106

    :cond_40
    const-string v3, "--blobs"

    .line 1825
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 1826
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->allowDumpBlobs()V

    goto/16 :goto_106

    :cond_4d
    const-string v3, "--config"

    .line 1827
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 1828
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->allowDumpConfig()V

    goto/16 :goto_106

    :cond_5a
    const-string v3, "--package"

    .line 1829
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e8

    const-string v3, "-p"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    goto/16 :goto_e8

    :cond_6c
    const-string v3, "--uid"

    .line 1831
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_88

    .line 1832
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v3, "uid"

    invoke-static {p0, v1, v3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getIntArgRequired([Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_106

    :cond_88
    const-string v3, "--user"

    .line 1833
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 1834
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v3, "userId"

    invoke-static {p0, v1, v3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getIntArgRequired([Ljava/lang/String;ILjava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_106

    :cond_a3
    const-string v3, "--blob"

    .line 1835
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "blobId"

    if-nez v3, :cond_d8

    const-string v3, "-b"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b6

    goto :goto_d8

    :cond_b6
    const-string v3, "--help"

    .line 1837
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d5

    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c7

    goto :goto_d5

    .line 1841
    :cond_c7
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    invoke-static {p0, v1, v5}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getLongArgRequired([Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_106

    .line 1838
    :cond_d5
    :goto_d5
    iput-boolean v4, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpHelp:Z

    goto :goto_106

    .line 1836
    :cond_d8
    :goto_d8
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1, v5}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getLongArgRequired([Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_106

    .line 1830
    :cond_e8
    :goto_e8
    iget-object v2, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v3, "packageName"

    invoke-static {p0, v1, v3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getStringArgRequired([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_106

    .line 1819
    :cond_f7
    :goto_f7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_101

    if-nez v2, :cond_106

    .line 1821
    :cond_101
    iput-boolean v4, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUnredacted:Z

    goto :goto_106

    .line 1817
    :cond_104
    :goto_104
    iput-boolean v4, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpAll:Z

    :cond_106
    :goto_106
    add-int/2addr v1, v4

    goto/16 :goto_9

    :cond_109
    return-object v0
.end method


# virtual methods
.method public allowDumpBlobs()V
    .registers 2

    .line 1767
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    return-void
.end method

.method public allowDumpConfig()V
    .registers 2

    .line 1778
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    return-void
.end method

.method public allowDumpSessions()V
    .registers 2

    .line 1756
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    return-void
.end method

.method public final dumpArgsUsage(Landroid/util/IndentingPrintWriter;)V
    .registers 3

    const-string v0, "--help | -h"

    .line 1881
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Dump this help text"

    .line 1882
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string v0, "--sessions"

    .line 1883
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Dump only the sessions info"

    .line 1884
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string v0, "--blobs"

    .line 1885
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Dump only the committed blobs info"

    .line 1886
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string v0, "--config"

    .line 1887
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Dump only the config values"

    .line 1888
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string v0, "--package | -p [package-name]"

    .line 1889
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Dump blobs info associated with the given package"

    .line 1890
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string v0, "--uid | -u [uid]"

    .line 1891
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Dump blobs info associated with the given uid"

    .line 1892
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string v0, "--user [user-id]"

    .line 1893
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Dump blobs info in the given user"

    .line 1894
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string v0, "--blob | -b [session-id | blob-id]"

    .line 1895
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Dump blob info corresponding to the given ID"

    .line 1896
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string v0, "--full | -f"

    .line 1897
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Dump full unredacted blobs data"

    .line 1898
    invoke-virtual {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public final printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 1902
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1903
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public shouldDumpAllSections()Z
    .registers 2

    .line 1752
    iget-boolean v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpAll:Z

    if-nez v0, :cond_b

    iget p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public shouldDumpBlob(J)Z
    .registers 4

    .line 1789
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 1790
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method

.method public shouldDumpBlobs()Z
    .registers 3

    .line 1771
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1774
    :cond_8
    iget p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public shouldDumpConfig()Z
    .registers 3

    .line 1782
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1785
    :cond_8
    iget p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public shouldDumpFull()Z
    .registers 1

    .line 1794
    iget-boolean p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUnredacted:Z

    return p0
.end method

.method public shouldDumpHelp()Z
    .registers 1

    .line 1803
    iget-boolean p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpHelp:Z

    return p0
.end method

.method public shouldDumpSession(Ljava/lang/String;IJ)Z
    .registers 7

    .line 1736
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    .line 1737
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_12

    return v1

    .line 1740
    :cond_12
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_27

    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    .line 1741
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_27

    return v1

    .line 1744
    :cond_27
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_3c

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 1745
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-gez p0, :cond_3c

    return v1

    :cond_3c
    const/4 p0, 0x1

    return p0
.end method

.method public shouldDumpSessions()Z
    .registers 3

    .line 1760
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 1763
    :cond_8
    iget p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/2addr p0, v1

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method public shouldDumpUser(I)Z
    .registers 3

    .line 1798
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    .line 1799
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method
