.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;IZ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda35;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iput p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda35;->f$1:I

    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda35;->f$2:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda35;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iget v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda35;->f$1:I

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda35;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->$r8$lambda$b50ljIz04p00sxeMOBrRDx6ydRo(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;IZ)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
