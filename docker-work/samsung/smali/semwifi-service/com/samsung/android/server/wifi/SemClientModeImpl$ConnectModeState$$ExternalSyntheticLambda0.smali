.class public final synthetic Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState$$ExternalSyntheticLambda0;->f$0:Ljava/util/Set;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$ConnectModeState;->$r8$lambda$CxqGfWq8YNtaJPylpmpLStE8U_U(Ljava/util/Set;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
