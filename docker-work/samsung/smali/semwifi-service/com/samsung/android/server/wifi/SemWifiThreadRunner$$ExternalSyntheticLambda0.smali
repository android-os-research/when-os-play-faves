.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiThreadRunner$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

.field public final synthetic f$1:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Ljava/util/function/Supplier;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiThreadRunner$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/Supplier;

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->$r8$lambda$h8VDi9Y-ecLhfJ5yp4zDBCFrEBI(Lcom/samsung/android/server/wifi/util/SemGeneralUtil$Mutable;Ljava/util/function/Supplier;)V

    return-void
.end method
