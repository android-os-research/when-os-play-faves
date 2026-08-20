.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda43;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iput p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda43;->f$1:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda43;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda43;->f$1:I

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->$r8$lambda$3tOsaUiUefE2-gal88GgZV0WsfE(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
