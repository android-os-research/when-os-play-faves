.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;->f$0:Lcom/samsung/android/server/wifi/SemWifiServiceImpl;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticLambda13;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl;->$r8$lambda$E9GhkpiH1v0UJMxaa1yFQzM-eI0(Lcom/samsung/android/server/wifi/SemWifiServiceImpl;Ljava/lang/String;Z)V

    return-void
.end method
