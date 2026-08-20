.class public final synthetic Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

.field public final synthetic f$1:Ljava/util/Set;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/Set;J)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda11;->f$1:Ljava/util/Set;

    iput-wide p3, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda11;->f$2:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda11;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda11;->f$1:Ljava/util/Set;

    iget-wide v2, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda11;->f$2:J

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$-tANORSTtkITpg8bhy2JZILbVeY(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/Set;JLandroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method
