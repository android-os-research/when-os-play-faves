.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda28;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda28;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda28;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda28;->f$1:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->$r8$lambda$yOncBphVaR48Icfn8NEgIwtWPRY(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/util/List;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method
