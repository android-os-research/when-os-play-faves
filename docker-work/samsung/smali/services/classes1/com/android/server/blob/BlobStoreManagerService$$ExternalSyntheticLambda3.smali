.class public final synthetic Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/blob/BlobStoreManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iput p2, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda3;->f$1:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget p0, p0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda3;->f$1:I

    check-cast p1, Ljava/util/Map$Entry;

    invoke-static {v0, p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->$r8$lambda$742KXJQS5y5y9vVuMACAI0mcWZE(Lcom/android/server/blob/BlobStoreManagerService;ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method
