.class public final synthetic Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

.field public final synthetic f$1:Landroid/net/wifi/ScanResult;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/net/wifi/ScanResult;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda15;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda15;->f$1:Landroid/net/wifi/ScanResult;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda15;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda15;->f$1:Landroid/net/wifi/ScanResult;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$zpKhMVjkxup_V2mGY3GXXiaFq0c(Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/net/wifi/ScanResult;Ljava/lang/String;)V

    return-void
.end method
