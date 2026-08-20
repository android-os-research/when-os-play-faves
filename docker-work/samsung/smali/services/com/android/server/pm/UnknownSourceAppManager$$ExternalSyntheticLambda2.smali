.class public final synthetic Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Function;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/server/pm/UnknownSourceAppManager$$ExternalSyntheticLambda2;->f$0:Ljava/util/function/Function;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/pm/UnknownSourceAppManager;->$r8$lambda$Smi8oGi_cZoCovFPoC7dFsSipmQ(Ljava/util/function/Function;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
