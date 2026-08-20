.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iput p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda9;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda9;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda9;->f$1:I

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->$r8$lambda$kMocGQsyytVOQAf8ofszmaYxK6U(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;I)V

    return-void
.end method
