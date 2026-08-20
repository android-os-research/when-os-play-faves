.class public Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;
.super Ljava/lang/Object;
.source "BlobStoreManagerService.java"

# interfaces
.implements Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlobStorageStatsAugmenter"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method public static synthetic $r8$lambda$GakadKjDaYgva1CVpB3ih-4wedc(Landroid/os/UserHandle;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->lambda$augmentStatsForUser$5(Landroid/os/UserHandle;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kg9zqhcDaAJ5lbpIRP5r9mf_LcE(IZLjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->lambda$augmentStatsForUid$3(IZLjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LJ33bhb9r4x5r3gCOlrsIH96vmY(ILjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->lambda$augmentStatsForUid$2(ILjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RfLTE6hdFTMRBaxMTzPG24SSk0c(Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->lambda$augmentStatsForUser$4(Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bnXLd7X8D--0GoWJpYuyXLBP3N4(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->lambda$augmentStatsForPackageForUser$0(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vNici74ZpLRpLd2of1tkmfus06g(Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->lambda$augmentStatsForPackageForUser$1(Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .registers 2

    .line 1298
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    return-void
.end method

.method public static synthetic lambda$augmentStatsForPackageForUser$0(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V
    .registers 5

    .line 1307
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 1308
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_11
    return-void
.end method

.method public static synthetic lambda$augmentStatsForPackageForUser$1(Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .registers 5

    .line 1313
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p4, p0, p1, p2}, Lcom/android/server/blob/BlobMetadata;->shouldAttributeToLeasee(Ljava/lang/String;IZ)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 1315
    invoke-virtual {p4}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_11
    return-void
.end method

.method public static synthetic lambda$augmentStatsForUid$2(ILjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V
    .registers 5

    .line 1328
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    if-ne v0, p0, :cond_d

    .line 1329
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_d
    return-void
.end method

.method public static synthetic lambda$augmentStatsForUid$3(IZLjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .registers 4

    .line 1334
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->shouldAttributeToLeasee(IZ)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 1336
    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_d
    return-void
.end method

.method public static synthetic lambda$augmentStatsForUser$4(Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V
    .registers 4

    .line 1348
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    return-void
.end method

.method public static synthetic lambda$augmentStatsForUser$5(Landroid/os/UserHandle;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .registers 5

    .line 1352
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/blob/BlobMetadata;->shouldAttributeToUser(I)Z

    move-result p0

    if-eqz p0, :cond_11

    .line 1353
    invoke-virtual {p2}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_11
    return-void
.end method


# virtual methods
.method public augmentStatsForPackageForUser(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .registers 9

    .line 1305
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1306
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    .line 1310
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1306
    invoke-static {v1, v2, v3}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mforEachSessionInUser(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V

    .line 1312
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p3, p4, v0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mforEachBlob(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;)V

    .line 1319
    iget-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    add-long/2addr p2, v0

    iput-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    return-void
.end method

.method public augmentStatsForUid(Landroid/content/pm/PackageStats;IZ)V
    .registers 8

    .line 1325
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1326
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1327
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2, v1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;-><init>(ILjava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v2, v3, v0}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mforEachSessionInUser(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V

    .line 1333
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p3, v1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;-><init>(IZLjava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mforEachBlob(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;)V

    .line 1340
    iget-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    add-long/2addr p2, v0

    iput-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    return-void
.end method

.method public augmentStatsForUser(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V
    .registers 8

    .line 1346
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1347
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/atomic/AtomicLong;)V

    .line 1349
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1347
    invoke-static {v1, v2, v3}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mforEachSessionInUser(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V

    .line 1351
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, v0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda5;-><init>(Landroid/os/UserHandle;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mforEachBlob(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;)V

    .line 1357
    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    return-void
.end method
