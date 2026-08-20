.class public final synthetic Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/server/knox/dar/DarManagerService;

    invoke-static {p0, p1}, Lcom/android/server/knox/dar/ddar/core/DualDarManagerImpl;->$r8$lambda$9VVaXNAQHpygxkHmzFrgiCo_yys(Ljava/lang/String;Lcom/android/server/knox/dar/DarManagerService;)V

    return-void
.end method
