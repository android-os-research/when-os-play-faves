.class public final synthetic Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/ScanPool;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/ScanPool;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda14;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda14;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$0frhf5Y9t9QT_zoOzc27bSarvmc(Lcom/samsung/android/server/wifi/util/ScanPool;Landroid/net/wifi/ScanResult;)V

    return-void
.end method
