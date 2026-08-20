.class public final synthetic Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/Set;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/util/ScanPool;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda0;->f$1:Ljava/util/Set;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$eXnsDJcu7Vqyi1-2dzciTL-4jPY(Lcom/samsung/android/server/wifi/util/ScanPool;Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method
