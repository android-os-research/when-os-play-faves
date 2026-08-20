.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda18;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iput-boolean p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda18;->f$1:Z

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda18;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda18;->f$1:Z

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->$r8$lambda$AEI9hclvBO7W8ODOTXjIwMOjeas(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
