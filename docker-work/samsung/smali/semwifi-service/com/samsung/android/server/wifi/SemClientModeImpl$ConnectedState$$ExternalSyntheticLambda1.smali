.class public final synthetic Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectedState;->$r8$lambda$-zyHmZSlebOvTblNWEN_fw7a6ss(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
