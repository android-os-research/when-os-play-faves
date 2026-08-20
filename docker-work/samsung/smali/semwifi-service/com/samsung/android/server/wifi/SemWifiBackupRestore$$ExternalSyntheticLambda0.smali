.class public final synthetic Lcom/samsung/android/server/wifi/SemWifiBackupRestore$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    iput p2, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/server/wifi/SemWifiBackupRestore;

    iget p0, p0, Lcom/samsung/android/server/wifi/SemWifiBackupRestore$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/SemWifiBackupRestore;->$r8$lambda$hu-erx0BWKOn21yqHAv5rOU_gi8(Lcom/samsung/android/server/wifi/SemWifiBackupRestore;I)V

    return-void
.end method
