.class public final synthetic Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/ScanPool;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    iput-wide p2, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda10;->f$1:J

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda10;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    iget-wide v1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda10;->f$1:J

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {v0, v1, v2, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$88O_7F8E8XPqZohI5VDbPcYt6wI(Lcom/samsung/android/server/wifi/util/ScanPool;JLandroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method
