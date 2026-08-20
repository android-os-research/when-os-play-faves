.class public final synthetic Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda2;
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

    iput-object p1, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/util/ScanPool$$ExternalSyntheticLambda2;->f$0:Ljava/util/List;

    check-cast p1, Ljava/util/Set;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/util/ScanPool;->$r8$lambda$s-a-XEjOk_zUF_u8IkFw0FwzqMk(Ljava/util/List;Ljava/util/Set;)V

    return-void
.end method
