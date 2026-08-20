.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicLong;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;->f$1:I

    iput-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;->f$2:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;->f$1:I

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;->f$2:Ljava/util/concurrent/atomic/AtomicLong;

    check-cast p1, Lcom/android/server/blob/BlobMetadata;

    invoke-static {v0, v1, p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->$r8$lambda$fhcZ3XYjcc5ocSyafJDV2TGviSQ(Ljava/lang/String;ILjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V

    return-void
.end method
