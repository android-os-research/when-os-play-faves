.class public final synthetic Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    iput p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    iget p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->$r8$lambda$XfCo8INj2nDLjQRNV408e35jK5M(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;I)V

    return-void
.end method
