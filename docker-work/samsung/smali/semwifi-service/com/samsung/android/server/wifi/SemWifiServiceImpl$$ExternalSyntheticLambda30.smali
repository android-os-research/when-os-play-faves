.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda30;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda30;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda30;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda30;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda30;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda30;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->$r8$lambda$1SDhdNfddk18S-XGRMMqxjnIS4Y(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;I)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object p0

    return-object p0
.end method
