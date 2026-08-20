.class public final synthetic Lcom/samsung/android/server/pm/install/PdpUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Supplier;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PdpUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PdpUtils$$ExternalSyntheticLambda0;->f$0:Ljava/util/function/Supplier;

    invoke-static {p0}, Lcom/samsung/android/server/pm/install/PdpUtils;->$r8$lambda$pVqkcDKoFW5eO8XgjtUU27AVsdY(Ljava/util/function/Supplier;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
