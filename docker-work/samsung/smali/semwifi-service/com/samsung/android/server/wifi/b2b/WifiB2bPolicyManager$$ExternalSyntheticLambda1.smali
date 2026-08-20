.class public final synthetic Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;

    check-cast p1, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;->$r8$lambda$_JIYZajIjmBgBpl-cPwmapt0Sos(Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicyManager;Lcom/samsung/android/server/wifi/b2b/WifiB2bPolicy;)V

    return-void
.end method
