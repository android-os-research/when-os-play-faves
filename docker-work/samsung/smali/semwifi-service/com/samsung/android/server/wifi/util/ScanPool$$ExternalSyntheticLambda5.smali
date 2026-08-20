.class public final synthetic Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda5;->f$0:Ljava/util/List;

    check-cast p1, Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$O2QWfn8Nlg1SGkW-fC-PIzMqPxY(Ljava/util/List;Lcom/samsung/android/server/wifi/util/ScanPool$ScanResultUpdatedListener;)V

    return-void
.end method
